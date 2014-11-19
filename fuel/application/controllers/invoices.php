<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Invoices extends CI_Controller
	{
		// TODO de introdus etichetele de limba
		// TODO serializare custom_fields sau salvare in tabela separata (tip, eticheta, valoare, unid, id), de vazut de ce nu incarca date_picker, implementare buton back intre details_form si main_form
		// TODO id user autentificat + email, tx type in message
		// TODO de calculat corect comision
		// TODO posibil de nevoie schimbare uri_segment(3)
		
		public $main_form;
		public $details_form;
		
		// TODO aici tb sa fie adresa utilizatorului autentificat
		private $user_email = 'a@b.c';
		
		function __construct(){
			parent::__construct();
			$this->load->model('ss_invoices_model');
			$this->load->model('ss_messages_model');
			$this->load->library('form_validation');
			$this->load->library('session');
		}
		
		/**** afisez toate facturile
		*/
		function index(){
			// id utilizator autentificat
			$user_id = '8';
			//afisez lista de facturi pentru utilizatorul autentificat
			$this->data['invoices'] = $this->ss_invoices_model->invoices($user_id)->result();
				
			$this->_render_page('invoices/index', $this->data);
		}
		
		/**** afisez o singura factura
		*/
		function view($id){
			//afisez lista de facturi pentru utilizatorul autentificat
			$results =  $this->ss_invoices_model->invoice($id)->result();
			if ((count($results)) >= 1 ){
				$this->data['invoice'] = $results[0];
			}
				
			$this->_render_page('invoices/view', $this->data);
		}
		
		/**** reprezinta pasul 1 din adaugarea unei facturi
		*** afisez form-ul de introducere a datelor unei facturi
		*/
		public function newInvoice(){
			/*jquery */
			echo jquery('1.11.1');
			
			/*parametri form */
			$this->load->library('form_builder', array(
            'id'=>'addInvoice',
            'form_attrs' => array(
			'method' => 'post',
			'action' => 'newInvoice',
            ),
            'submit_value' => 'next',
            'textarea_rows' => '5',
            'textarea_cols' => '28',
			'cancel_value' => 'Anuleaza',
			'cancel_action' => 'this.form.reset()',
			));
			
			/*campuri */
			
			// tipul platii
			$options = array('card' => 'Card', 'cont' => 'Cont');
			$this->main_form['fields']['payment_type'] = array('type' => 'select', 'options' => $options, 'label' => 'Modalitatea de plata', 'value'=> '' );
			
			// suma; adaug js ca sa pot actualiza comisionul si totalul
			$this->main_form['fields']['amount'] = array('label' => 'RON', 'type' => 'number', 'min' => '0', 'max' => '99999.99', 'step' => '0.01', 'js' => '<script>
			$(function(){
			$("#amount").change(function(e){
			$.get("'.site_url('invoices/compute').'/"+$(this).val(), function(data){
			$("#cfee").remove().append(data.fee);
			$("#fee").empty().replaceWith(data.fee);
			$("#ctotal").remove().append(data.total);
			$("#total").empty().replaceWith(data.total);
			}, "json" );
			
			})
			})
			</script>',);
			
			// categoria furnizorului; adaug js ca sa pot selecta si furnizorul
			// in hidden supplier_category_name adaug numele ca sa-l pot trimite in form-ul urmator
			$this->main_form['fields']['supplier_category'] = array('label' => 'Categorie furnizor', 'type' => 'select',  'model' => 'ss_suppliers_cat', 'js' => '<script>
			$(function(){
			$("#supplier_category").change(function(e){
			$("#supplier_id").val("");
			$.get("'.site_url('invoices/suppliers_by_cat').'/"+$(this).val(), function(data){
			$("#supplier").empty().append(data);
			});
			var input = $("<input>").attr("type", "hidden").attr("name", "supplier_category_name").attr("id", "supplier_category_name").val($("#supplier_category :selected").text());
			$("#addInvoice").remove("#supplier_category_name");
			$("#addInvoice").append($(input));
			})
			})
			</script>', 'first_option' => 'Selecteaza...');
			
			// furnizorul; in hidden supplier_name salvez numele furnizorului ca sa-l trimit mai departe
			$this->main_form['fields']['supplier'] = array('label' => 'Furnizor', 'type' => 'select', 'js' => '<script>
			$(function(){
			if ($("#supplier_id").val() != null){
			$.get("'.site_url('invoices/suppliers_by_cat').'/"+$("#supplier_category").val() + "/" + $("#supplier_id").val(),function(data){
			$("#supplier").empty().append(data);
			});
			}
			$("#supplier").change(function(e){
			var input = $("<input>").attr("type", "hidden").attr("name", "supplier_name").attr("id", "supplier_name").val($("#supplier :selected").text());
			$("#addInvoice").remove("#supplier_name");
			$("#addInvoice").append($(input));
			
			var input = $("<input>").attr("type", "hidden").attr("name", "supplier_id").attr("id", "supplier_id").val($(this).val());
			$("#addInvoice").remove("#supplier_id");
			$("#addInvoice").append($(input));
			})
			})
			</script>', 'first_option' => 'Selecteaza...',);
			
			// comisionul
			$this->main_form['fields']['fee'] = array('label' => 'Comision de plata', 'displayonly' => TRUE, 'value' => '');
			
			// total
			$this->main_form['fields']['total'] = array('label' => 'Total de plata', 'displayonly' => TRUE,);
			
			// supplier_id ca sa-l pot daca pica validarea
			$this->main_form['fields']['supplier_id'] = array('type' => 'hidden', );
			
			$this->form_builder->set_fields($this->main_form['fields']);
			
			$this->form_validation->set_rules('payment_type', 'Modalitate de plata', 'required|xss_clean');
			$this->form_validation->set_rules('amount', 'Suma', 'required|xss_clean');
			$this->form_validation->set_rules('supplier_category', 'Categorie furnizor', 'required|xss_clean');
			$this->form_validation->set_rules('supplier', 'Furnizor', 'required|xss_clean');
			
			if($this->form_validation->run() == FALSE) {
				// am picat validarea si adaug erorile
				if($this->input->post('next')){
					foreach($this->main_form['fields'] as $key => $value){
						$this->main_form['fields'][$key]['value'] = $this->input->post($key);
						$this->main_form['fields'][$key]['after_html'] = form_error($key);
					}
				}
				echo $this->form_builder->render($this->main_form['fields']);
				}else{
				// totul e ok, merg mai departe
				//$this->details();
				$this->session->set_flashdata($_POST);
				redirect('/invoices/details');
			}
		}
		
		/**** reprezinta pasul 2 din adaugarea unei facturi
		*** detaliile privind factura: campurile introduse la pasul 1 (doar afisate), campurile custom in functie de furnizor si checkbox confirmare
		*/
		public function details(){
			echo jquery('1.11.1');
			
			$values = $this->get_main_form_values();
			
			$this->load->library('form_builder', array(
            'id'=>'addInvoiceDetails',
            'form_attrs' => array(
			'method' => 'post',
			'action' => 'details',
            ),
            'submit_value' => 'salveaza',
            'textarea_rows' => '5',
            'textarea_cols' => '28'
			));
			
			$this->details_form['fields']['payment_type'] = array('label' => 'Plateste', 'displayonly' => true, 'value' => $values['id_payment_type'], );
			
			$this->details_form['fields']['amount'] = array('label' => 'RON', 'displayonly' => true, 'value' => $values['amount'], ); 
			
			//$this->details_form['fields']['supplier_category'] = array('label' => 'Categorie furnizor', 'displayonly' => true, 'type' => 'select', 'value' => //$values['id_supplier_cat'], );
			
			$this->details_form['fields']['supplier_category'] = array('type' => 'hidden', 'value' => $values['id_supplier_cat'], );
			
			$this->details_form['fields']['supplier_name'] = array('label' => 'Furnizor', 'displayonly' => true, 'value' => $values['supplier_name'],);
			
			$this->details_form['fields']['supplier'] = array('type' => 'hidden', 'value' => $values['id_supplier'], );
			
			$this->details_form['fields']['fee'] = array('label' => 'Comision de plata', 'displayonly' => TRUE, 'value' => $values['fee'],);
			
			$this->details_form['fields']['total'] = array('label' => 'Total de plata', 'displayonly' => TRUE, 'value' => $values['total'],);
			
			// incarc campurile aferente fiecarui furnizor
			$supplier_id = empty($values['id_supplier']) ? $this->input->post('supplier') : $values['id_supplier'];
			$this->supplier_id_fields($supplier_id);
			
			$this->details_form['fields']['confirm'] = array ('label' => 'De acord', 'type' => 'checkbox', 'checked' => FALSE, 'required' => TRUE);
			
			$this->form_builder->set_fields($this->details_form['fields']);
			
			$this->form_validation->set_rules('confirm', 'De acord', 'required|xss_clean');
			
			if($this->form_validation->run() == FALSE) {
				// am picat validarea
				if($this->input->post('salveaza')){
					foreach($this->details_form['fields'] as $key => $value){
						echo form_error($key);
						$this->details_form['fields'][$key]['value'] = $this->input->post($key);
						$this->details_form['fields'][$key]['after_html'] = form_error($key);
					}
				}
				echo $this->form_builder->render($this->details_form['fields']);
				}else{
					$this->save();
			}
			
		}	
		
		/**** generez unid-ul, afisez mesajul si trimit email
		*** salvarea mesajului in istoric se face odata cu salvarea facturii in model
		*/
		private function save(){
			
			$unid = uniqid('#F');
			
			$values['unid'] = $unid;
			$values['id_user'] = '8';
			$values['id_payment_type'] = $this->input->post('payment_type');
			$values['amount'] = $this->input->post('amount');
			$values['currency'] = 'RON';
			$values['id_supplier_cat'] = $this->input->post('supplier_category');
			$values['id_supplier'] = $this->input->post('supplier');
			$values['fee'] = $this->input->post('fee');
			$values['total'] = $this->input->post('total');
			$values['status'] = '1';
			
			$this->ss_invoices_model->save_invoice($values);
						
			// TODO mesajul care se afiseaza utilizatorului este cel care se salveaza in db
			echo 'invoice '.$unid. ' successfully added';
			
			send_tx_email(array('unid' => $unid,
				'receiver' => $this->user_email,
				'sender' => $this->fuel->config('from_email'),
				// TODO $this->lang->line incarca in acest moment din language/english
				'subject' => $this->lang->line('fact_eml011_sb'),
				'message' => $this->lang->line('fact_eml011_cont'),
			));
		}
		
		/**** pun pe sesiune datele din form-ul de pasul 1 ca sa le pot accesa si la pasul 2
		*/
		private function get_main_form_values(){
			
			$unid = uniqid('#F');
			
			$values['unid'] = $unid;
			$values['id_user'] = '8';
			$values['id_payment_type'] = $this->session->flashdata('payment_type');
			$values['amount'] = $this->session->flashdata('amount');
			$values['currency'] = 'RON';
			$values['id_supplier_cat'] = $this->session->flashdata('supplier_category');
			$values['id_supplier'] = $this->session->flashdata('supplier');
			$values['fee'] = $this->session->flashdata('fee');
			$values['total'] = $this->session->flashdata('total');
			$values['supplier_category_name'] = $this->session->flashdata('supplier_category_name');
			$values['supplier_name'] = $this->session->flashdata('supplier_name');
			
			return $values;
			
		}
		
		/**** afisez lista de furnizori in functie de categoria selectata; e apelata prin jquery
		*/
		public function suppliers_by_cat(){
			$cat = intval(uri_segment(3));
			$supp = intval(uri_segment(4));
			$this->load->model('ss_suppliers_model');
			$options = $this->ss_suppliers_model->options_list(NULL, NULL, array('id_cat' => $cat));
			$str = '<option value="" label="Selecteaza...">Selecteaza...</option>';
			foreach($options as $key => $val)
			{
				$str .= '<option value="'.$key.'" label="'.$val.'" '. ($supp != $key ? '' : ' selected').'>'.$val.'</option>\n';
			}
			echo $str;
		}
		
		/**** afisez campurile custom ale unui furnizor
		*/
		private function supplier_id_fields($id_supplier){
			$this->load->model('ss_suppliers_model');
			
			$where['select'] = 's1, t1, s2, t2, s3, t3, s4, t4, s5, t5, s6, t6, name';
			$where['where'] = array('id' => $id_supplier);
			$where['limit'] = 1;
			
			$query = $this->ss_suppliers_model->query($where);
			if (!empty($query->result())){
				$supplier = $query->result()[0];
				
				// parcurg lista de campuri ca sa vad pe care trebuie sa le randez
				// tin cont de campurile care au setat si, unde i = 1...6
				$this->add_field($supplier->s1, $supplier->t1);
				$this->add_field($supplier->s2, $supplier->t2);
				$this->add_field($supplier->s3, $supplier->t3);
				$this->add_field($supplier->s4, $supplier->t4);
				$this->add_field($supplier->s5, $supplier->t5);
				$this->add_field($supplier->s6, $supplier->t6);
				
			}
		}
		
		/**** adaug un camp la form
		*/
		private function add_field($label_val, $type_val){
			
			$field_name = str_replace(" ", "_", strtolower ($label_val));
			if (!empty($label_val) && strlen($label_val) > 0 && !empty($type_val) && strlen($type_val) > 0){
				
				$this->details_form['fields'][$field_name] = array('type' => $type_val, 'label' => $label_val, 'value' => $this->input->post($field_name), 'name' => $field_name, );
			}
		}
		
		/**** calcul comision si total; se apeleaza prin jquery
		*/
		public function compute(){
			$amount = floatval(uri_segment(3));
			$fee = 0.01 * $amount;
			$total = $amount + $fee;
			$html_fee = '<div id="cfee">' . $fee . '</div>'.'<input type="hidden" name="fee" id="fee" value="'.$fee.'"/>';
			$html_total = '<div id="ctotal">' . $total . '</div>'.'<input type="hidden" name="total" id="total" value = "'.$total.'"/>';
			echo json_encode( array( "fee"=>$html_fee,"total"=>$html_total ) );
		}
		
		/**** randez $view
		*/
		private function _render_page($view, $data=null, $render=false){
			
			$this->viewdata = (empty($data)) ? $this->data: $data;
			
			$view_html = $this->load->view($view, $this->viewdata, $render);
			
			if (!$render) return $view_html;
		}
	}						