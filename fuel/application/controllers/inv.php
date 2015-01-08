<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php
class Inv extends CI_Controller {
		
		private $vars=array();
		private $cFieldsInfo=array();
		private $user_id;
		private $user_email;



		
	function index(){
		
		$this->vars['suppCat'] = $this->optsSupplCat();
	 	$this->vars['payOpts'] = get_payment_types();
		$this->fuel->pages->render('inv',$this->vars);
	
	}
	
	function Inv() {
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
				//redirect('online_payments/?showLogin=');
		} else {
			$user = $this->ion_auth->user()->row();
			$this->user_id = $user->id;
			$this->user_email = $user->email;
		}
     }
	
	public function save(){
			
			$unid = uniqid('#F');
			
			$values['unid'] = $unid;
			$values['id_user'] = $this->user_id;
			$values['id_payment_type'] = $this->input->post('tipPlata');
			$values['amount'] = $this->input->post('valInt').'.'.$this->input->post('valFract');
			$values['currency'] = 'RON';
			$values['id_supplier_cat'] = $this->input->post('supplier_category');
			$values['id_supplier'] = $this->input->post('supplier');
			//$values['fee'] = $this->input->post('fee');
			//$values['total'] = $this->input->post('total');
			$values['fee'] = '0';
			$values['total'] = '0';
			$values['status'] = get_status('init');
			
			$custom_fields = array('s1', 's2', 's3', 's4', 's5', 's6');
			foreach($custom_fields as $field){
				
				if (!empty($this->input->post($field))){
					$values[$field] = $this->input->post($field);
				}
			}
			
			$this->ss_invoices_model->save_invoice($values);
						
			// TODO mesajul care se afiseaza utilizatorului este cel care se salveaza in db
			$this->vars['suppCat'] = $this->optsSupplCat();
			$this->vars['payOpts'] = get_payment_types();
			$this->fuel->pages->render('inv',$this->vars);
					
			send_tx_email(array('unid' => $unid,
				'receiver' => $this->user_email,
				'sender' => $this->fuel->sitevars->get()['from_email'],
				// TODO $this->lang->line incarca in acest moment din language/english
				'subject' => $this->lang->line('fact_eml011_sb'),
				'message' => $this->lang->line('fact_eml011_cont'),
			));
		}
	
	
	
	public function add(){ 
		
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
	 	
	 	$this->form_validation->set_rules('valInt', 'Valoare factura', 'required');
		$this->form_validation->set_rules('valFract', 'Valoare factura', 'required');
		$this->form_validation->set_rules('tipPlata', 'Tip plata', 'required');

		foreach ($this->cFieldsInfo as $cfield){
			$this->form_validation->set_rules($cfield['fieldId'], $cfield['fieldLabel'], 'required');
     	}

		
		if ($this->form_validation->run() == FALSE)
		{
			ob_start();
	 			$this->add_custom_fields($this->input->post('supplier'));
	 			$this->vars['customFields'] = ob_get_contents();
	 		ob_end_clean();	

			$this->fuel->pages->render('inv',$this->vars);
		}
		else
		{	
			$this->vars['displayConfirm'] = 'true';
			
			$this->vars['suppCat'] = $this->optsSupplCat();
			$this->vars['payOpts'] = get_payment_types();
			$this->fuel->pages->render('inv',$this->vars);
		}

	}
	
	private function optsSupplCat(){
		$suppcat=$this->ss_suppliers_cat_model->list_items();
		$opts='<option value="">Alege</option>';
		
		$selectedSuppCat=$this->input->post('supplier_category');
		
		foreach ($suppcat as $row)
				{
					//	$opts = $opts.'<option value="' . $row['id'] .'">'. $row['name'] .'</option>\n';
					$opts = $opts. '<option value="'. $row['id'].'"'. ($row['id'] != $selectedSuppCat ? '' : ' selected') .'>'.$row['name'].'</option>';
     			}
     	return $opts;
		
	}
	
	/**** afisez lista de furnizori in functie de categoria selectata; e apelata prin jquery
	*/
	public function suppliers_by_cat($id_cat){
		$str = '<option value="" label="Selecteaza...">Selecteaza...</option>';
		$options = $this->ss_suppliers_model->options_list(NULL, NULL, array('id_cat' => $id_cat));
		$selectedSupplier = $this->input->post('supplier');

		foreach($options as $key => $val)
			{
				$str = $str. '<option value="'. $key .'"'. ($key != $selectedSupplier ? '' : ' selected') .'>'.$val.'</option>';
			}
			
		echo $str;
	}
	
	public function add_custom_fields($query){
		
			$supplier = $this->get_supplier($query);
			
			if (!empty($supplier)){
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
			
			if (!empty($query->result())){
				$supplier = $query->result()[0];
				return $supplier;
			} else {
				return null;
			}
	}
	
	private function add_details_field($field_id, $label_vals, $type_val){				
			$inputField='';
			if (!empty($label_vals) && strlen($label_vals) > 0 && !empty($type_val) && strlen($type_val) > 0){
				
				$label = get_label($label_vals);
				$this->cFieldsInfo[]= array('fieldId'=>$field_id,
										  	'fieldLabel'=>$label);

				if ($type_val=='text' or $type_val=='date' or $type_val=='number') {	
										
					$fdata = array(
						'name'        => $field_id,
 						'id'          => $field_id,
						'value'       => $this->input->post($field_id),
						'maxlength'   => '100',
						'size'        => '50',
						'type'		  => 'text',
						'class'       => 'agent-input',
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
						'class'       => 'agent-input',
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
		

	
}


?>