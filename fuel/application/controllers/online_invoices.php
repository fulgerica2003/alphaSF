<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Online_invoices extends CI_Controller {
		
		private $vars=array();
		private $cFieldsInfo=array();
		private $user_id;
		private $user_email;
		private $user_lang;
		
		function Online_invoices() {
			parent::__construct();
			
			$this->load->helper('form');
			$this->load->helper(array('form', 'url'));

			$this->load->model('ss_suppliers_cat_model');
			$this->load->model('ss_suppliers_model');
			$this->load->model('ss_suppliers_model');
			$this->load->model('ss_invoices_model');

			$this->load->library('form_validation');
			$this->load->library('session');
			$this->load->library('ion_auth');

			if (!$this->ion_auth->logged_in()){
				// redirect-ul se face in _variables/online_invoices.php, teoretic aici nici nu ar trebui sa ajunga
				} else {
				$user = $this->ion_auth->user()->row();
				$this->user_id = $user->id;
				$this->user_email = $user->email;
			}
			
			$this->fuel->language->detect(true);
			$this->lang->load('ss', $this->fuel->language->selected());
		}

		function index(){

			$this->vars['suppCat'] = $this->optsSupplCat();
			$this->vars['payOpts'] = get_payment_types();
			
			$calc_details = $this->session->userdata('calcInvDetails');
			if (isset($calc_details) && $calc_details != null){
				// datele venite din simulatorul de pe prima pagina
				$amount = $calc_details['amount'];
				$payment_method = 6;
				$currency = get_currency_id('ron');
				$this->vars['calcTipPlata'] = $calc_details['tipPlata'];
				$this->vars['calcAmount'] = $amount;
				$this->vars['calcCurrency'] = $currency;
				$this->vars['calcModIncasare'] = $payment_method;
				$this->vars['calcFee'] = $calc_details['fee'];
				$this->vars['calcTotal'] = $calc_details['total'];
				$this->session->unset_userdata('calcInvDetails');
				}else{
				// $amount = $this->get_amount($this->input->post('amount'), $this->input->post('valFract'));
				// $payment_method = $this->input->post('modIncasare');
				// $currency = $this->input->post('currency');
			}
			
			$this->fuel->pages->render('online_invoices',$this->vars);
		}
		
				
		public function validate(){ 
			
			$this->vars['suppCat'] = $this->optsSupplCat();
			$this->vars['payOpts'] = get_payment_types();
			
			ob_start();
	 		$this->suppliers_by_cat($this->input->post('supplier_category'));
	 		$this->vars['suppliers'] = ob_get_contents();
			ob_end_clean();
			
			ob_start();
	 		$this->add_custom_fields($this->input->post('supplier'));
	 		$this->vars['customFields'] = ob_get_contents();
			ob_end_clean();	
			
			$this->form_validation->set_rules('valInt', $this->lang->line('invoices_amount'), 'required|is_natural_no_zero|min_length[1]');
			$this->form_validation->set_rules('valFract', $this->lang->line('invoices_amount'), 'required|is_natural_no_zero|min_length[1]|max_length[2]');
			$this->form_validation->set_rules('tipPlata', $this->lang->line('invoices_pay'), 'required');
			$this->form_validation->set_rules('fee', $this->lang->line('invoices_fee'), 'required');
			$this->form_validation->set_rules('total', $this->lang->line('invoices_total'), 'required');
			
			foreach ($this->cFieldsInfo as $cfield){
				var_dump($cfield['fieldType']);
				if ($cfield['fieldType']='text'){
					$this->form_validation->set_rules($cfield['fieldId'], $cfield['fieldLabel'], 'required|alpha_numeric');	
				}
				elseif ($cfield['fieldType']='number'){
					$this->form_validation->set_rules($cfield['fieldId'], $cfield['fieldLabel'], 'required|numeric');	
				} elseif ($cfield['fieldType']='textarea'){
					$this->form_validation->set_rules($cfield['fieldId'], $cfield['fieldLabel'], 'required|alpha_numeric|max_length[150]');	
				} else {
					$this->form_validation->set_rules($cfield['fieldId'], $cfield['fieldLabel'], 'required');	
				}
				
			}
			
			
			if ($this->form_validation->run() == FALSE)
			{
				ob_start();
	 			$this->add_custom_fields($this->input->post('supplier'));
	 			$this->vars['customFields'] = ob_get_contents();
				ob_end_clean();	
				
				$this->fuel->pages->render('online_invoices',$this->vars);
			}
			else
			{	
				
				$this->vars['displayConfirm'] = 'true';
				
				$this->session->unset_userdata('invoiceDetails');
				$this->session->set_userdata('invoiceDetails', $this->get_invoice_details());
				
				$this->vars['suppCat'] = $this->optsSupplCat();
				$this->vars['payOpts'] = get_payment_types();
				$this->fuel->pages->render('online_invoices',$this->vars);
			}
		}
		
		public function add(){
			
			if ($this->input->post('confirmCheck') === '1'){
				// daca a bifat ca e de acord, salvez
				$invoice_details = $this->session->userdata('invoiceDetails');
				if (!$invoice_details){
					redirect('online_invoices');
				}
				$unid = $this->save($invoice_details);
				$this->session->unset_userdata('invoiceDetails');
				
				if (strtolower($invoice_details['id_payment_type']) === 'card'){
					$invoice_card_details['amount'] = $invoice_details['total'];
					$invoice_card_details['currency'] = $invoice_details['currency'];
					$invoice_card_details['unid'] = $invoice_details['unid'];
					$invoice_card_details['user_id'] = $this->user_id;
					$payment_form = get_payment_form($invoice_card_details);
					echo $payment_form; // redirectarea catre pagina de succes se face din pay/card_response
					}else if (strtolower($invoice_details['id_payment_type']) === 'cont'){
					
					$event = 'inv_cont';
					
					$msg_codes = trigger_event($event, $unid);
					$vars['message'] = sprintf($this->lang->line($msg_codes[0]), $unid);
					$vars['link'] = 'online_invoices';
					$vars['text'] = 'invoices_thanks_cmd';
					$vars['title'] = 'invoices_thanks';
					$this->fuel->pages->render('online_thanks', $vars);
				}
				}else{
				redirect('online_invoices');
			}
		}
		
		private function get_invoice_details(){
			$unid = uniqid('#F');
			
			$values['unid'] = $unid;
			$values['id_user'] = $this->user_id;
			$values['id_payment_type'] = strtolower($this->input->post('tipPlata'));
			$values['amount'] = $this->input->post('valInt') . '.' . $this->input->post('valFract');
			$values['currency'] = strtolower($this->input->post('currency'));
			
			$values['id_supplier_cat'] = $this->input->post('supplier_category');
			$values['id_supplier'] = $this->input->post('supplier');
			
			$values['fee'] = $this->input->post('fee');
			$values['total'] = $this->input->post('total');
			$values['status'] = get_status('init');
			
			$custom_fields = array('s1', 's2', 's3', 's4', 's5', 's6');
			foreach($custom_fields as $field){
				
				//nu merge pe php < 5.5 if (!empty($this->input->post($field))){
				if ($this->input->post($field)){
					$values[$field] = $this->input->post($field);
				}
			}
			
			return $values;
		}
		
		private function save($invoice_details){
			$this->ss_invoices_model->save_invoice($invoice_details);
			
			return $invoice_details['unid'];
		}
				
		private function optsSupplCat(){
			$suppcat=$this->ss_suppliers_cat_model->list_items();
			$opts='<option value="">'.lang('invoices_pick').'</option>';
			
			$selectedSuppCat=$this->input->post('supplier_category');
			
			foreach ($suppcat as $row)
			{
				$opts = $opts. '<option value="'. $row['id'].'"'. ($row['id'] != $selectedSuppCat ? '' : ' selected') .'>'.$row['name'].'</option>';
			}
			return $opts;
			
		}
		
		/**** afisez lista de furnizori in functie de categoria selectata; e apelata prin jquery
		*/
		public function suppliers_by_cat($id_cat, $clang = 'ro'){
		
			$str = '<option value="" label="' . lang('invoices_pick') . '">' . lang('invoices_pick') . '</option>';
			$options = $this->ss_suppliers_model->options_list(NULL, NULL, array('id_cat' => $id_cat));
			$selectedSupplier = $this->input->post('supplier');
			
			foreach($options as $key => $val)
			{
				$str = $str . '<option value="'. $key .'"'. ($key != $selectedSupplier ? '' : ' selected') .'>'.$val.'</option>';
			}
			
			echo $str;
		}
		
		public function add_custom_fields($query, $clang='ro'){
			
			$this->user_lang=$clang;
			
			$supplier = $this->get_supplier($query);
			
			//nu merge pe php < 5.5 if (!empty($supplier)){
			if ($supplier){
				// parcurg lista de campuri ca sa vad pe care trebuie sa le randez
				// tin cont de campurile care au setat si, ti, unde i = 1...6
				echo $this->add_details_field('s1', $supplier->s1, $supplier->t1);
				echo $this->add_details_field('s2', $supplier->s2, $supplier->t2);
				echo $this->add_details_field('s3', $supplier->s3, $supplier->t3);
				echo $this->add_details_field('s4', $supplier->s4, $supplier->t4);
				echo $this->add_details_field('s5', $supplier->s5, $supplier->t5);
				echo $this->add_details_field('s6', $supplier->s6, $supplier->t6);
			}
		}
		
		private function get_supplier($id_supplier){
			$where['select'] = 's1, t1, s2, t2, s3, t3, s4, t4, s5, t5, s6, t6, name';
			$where['where'] = array('id' => $id_supplier);
			$where['limit'] = 1;
			
			$query = $this->ss_suppliers_model->query($where);
			
			//nu merge pe php < 5.5 if (!empty($query->result())){
			if ($query->result()){
				$results = $query->result();
				$supplier = $results[0];
				return $supplier;
				} else {
				return null;
			}
		}
		
		private function add_details_field($field_id, $label_vals, $type_val){				
			$inputField='';
			//nu merge pe php < 5.5 if (!empty($label_vals) && strlen($label_vals) > 0 && !empty($type_val) && strlen($type_val) > 0){
			if ($label_vals && strlen($label_vals) > 0 && $type_val && strlen($type_val) > 0){
				
				$label = get_label($label_vals,$this->user_lang);
				
				$this->cFieldsInfo[]= array('fieldId'=>$field_id,
				'fieldLabel'=>$label, 'fieldType'=>$type_val);
				
				if ($type_val=='text' or $type_val=='number') {	
					
					$fdata = array(
					'name'        => $field_id,
					'id'          => $field_id,
					'value'       => $this->input->post($field_id),
					'maxlength'   => '100',
					'size'        => '50',
					'type'		  => 'text',
					'class'       => 'agent-input invoice-custom-field',
					'style'       => 'width:100%',
					);
					
					$inputField = 
					'<div class="input-box">'.form_error( $field_id,
					'<div id="ERR" class="eroare afiseaza">
					<a name="ERR"></a>
					<span id="ERRTXT">',
					'</span>
					<span class="close-eroare">x</span>
					</div>').
					'<div class="agent-lable">'.$label.'</div>
					<div name="test">'. form_input($fdata).'</div>					
					<div class="clearfix"></div>
					</div>';
				}
				
				if ($type_val=='date') {	
					
					$fdata = array(
					'name'        => $field_id,
					'id'          => $field_id,
					'value'       => $this->input->post($field_id),
					'maxlength'   => '100',
					'size'        => '50',
					'type'		  => 'text',
					'class'       => 'agent-input invoice-custom-field datefield',
					'style'       => 'width:100%',
					);
					
					$inputField = 
					'<div class="input-box">'.form_error( $field_id,
					'<div id="ERR" class="eroare afiseaza">
					<a name="ERR"></a>
					<span id="ERRTXT">',
					'</span>
					<span class="close-eroare">x</span>
					</div>').
					'<div class="agent-lable">'.$label.'</div>
					<div name="test">'. form_input($fdata).'</div>					
					<div class="clearfix"></div>
					</div>';
				}
				if ($type_val=='textarea') {								
					$fdata = array(
					'name'        => $field_id,
					'id'          => $field_id,
					'value'       => $this->input->post($field_id),
					'rows'        => '3',
					'type'		  => 'textarea',
					'class'       => 'agent-input invoice-custom-field',
					'style'       => 'width:100%',
					);	
					$inputField =
					'<div class="input-box">'.form_error( $field_id,
					'<div id="ERR" class="eroare afiseaza">
					<a name="ERR"></a>
					<span id="ERRTXT">',
					'</span>
					<span class="close-eroare">x</span>
					</div>').
					'<div class="agent-lable">'.$label.'</div>
					<div name="test">'. form_textarea($fdata) .'</div>					
					<div class="clearfix"></div>
					</div>';					
				}
				
				return $inputField;
			}
		}
		
		public function update_total(){
			
			echo compute_fee($_GET);
		}
	
	}
?>