<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Payments extends CI_Controller
	{
		public $main_form;
		public $details_form;
		
		// TODO de introdus etichetele de limba, atentie la etichete metoda de plata beneficiar care apeleze o metoda custom cu parametru ro, en etc
		// TODO de vazut de ce nu incarca date_picker, implementare buton back intre details_form si main_form
		// TODO id user autentificat + email, tx type in message
		// TODO de calculat corect comision
		// TODO posibil de nevoie schimbare uri_segment(3)
		// TODO de facut afisarea campurilor in functie de metoda de plata selectata - cand aflu info finale. pana atunci le afisez pe toate
		// TODO adaugat restrictii pe refund si correction pentru ca doar tx cu statusul corect sa poata fi modificate; pot fi corectate/returnate doar cele in starea corr
		
		// TODO aici tb sa fie adresa utilizatorului autentificat, id_user
		private $user_email = 'a@b.c';
		private $user_id = '8';
		
		function __construct(){
			parent::__construct();
			$this->load->model('ss_payments_model');
			$this->load->model('ss_messages_model');
			$this->load->library('form_validation');
			$this->load->library('session');
		}
		
		/**** afisez toate platile
		*/
		public function index(){
			//afisez lista de plati pentru utilizatorul autentificat
			$this->data['payments'] = $this->ss_payments_model->payments($this->user_id)->result();
				
			$this->_render_page('payments/index', $this->data);
		}
		
		/**** afisez o singura plata
		*/
		public function view($id){
			//iau plata
			$results =  $this->ss_payments_model->payment(array('id' => $id, 'id_user' => $this->user_id))->result();
			if ((count($results)) >= 1 ){
				$this->data['payment'] = $results[0];			
			}
				
			$this->_render_page('payments/view', $this->data);
		}
		
		/**** reprezinta pasul 1 din adaugarea unui transfer
		*** afisez form-ul de introducere a datelor ununui transfer
		*/
		public function add(){
			/*jquery */
			echo jquery('1.11.1');
			
			/*parametri form */
			$this->load->library('form_builder', array(
            'id'=>'addPayment',
            'form_attrs' => array(
			'method' => 'post',
			'action' => 'add',
            ),
            'textarea_rows' => '5',
            'textarea_cols' => '28',
			'cancel_value' => 'Anuleaza',
			'cancel_action' => 'this.form.reset()',
			));
			
			/*campuri */
			
			// tipul platii
			// $options = array('card' => 'Card', 'cont' => 'Cont');
			$options = get_payment_types();
			$this->main_form['fields']['payment_type'] = array('type' => 'select', 'options' => $options, 'label' => 'Transfera', 'value'=> '' );
			
			// suma; adaug js ca sa pot actualiza comisionul si totalul
			$this->main_form['fields']['amount'] = array('label' => 'Suma transferata', 'type' => 'number', 'min' => '0', 'max' => '99999.99', 'step' => '0.01','js' => '<script>
			$(function(){
			$("#amount").change(function(e){
			$.get("'.site_url('payments/compute').'/"+$(this).val(), function(data){
			$("#cfee").remove().append(data.fee);
			$("#fee").empty().replaceWith(data.fee);
			$("#ctotal").remove().append(data.total);
			$("#total").empty().replaceWith(data.total);
			}, "json" );
			
			})
			})
			</script>',);
			
			$options = array('ron' => 'RON', 'eur' => 'EUR',);
			$this->main_form['fields']['currency'] = array('label' => 'Moneda transfer', 'type' => 'select', 'value' => '', 'options' => $options, 'js' => '<script>
			$(function(){
			$("#fee_currency").before("<div id=\"cfee_currency\">" + $("#currency :selected").text() + "<\/div>");
			$("#total_currency").before("<div id=\"ctotal_currency\">" + $("#currency :selected").text() + "<\/div>");
			$("#currency").change(function(e){
			$("#cfee_currency").remove();
			$("#ctotal_currency").remove();
			$("#fee_currency").before("<div id=\"cfee_currency\">" + $("#currency :selected").text() + "<\/div>");
			$("#fee_currency").val($("#currency :selected").text());
			$("#total_currency").before("<div id=\"ctotal_currency\">" + $("#currency :selected").text() + "<\/div>");
			$("#total_currency").val($("#currency :selected").text());
			})
			})
			</script>',);
			
			$this->main_form['fields']['payment_method'] = array('label' => 'Modalitatea de plata la beneficiar', 'type' => 'select', 'value' => '', 'model' => 'ss_payment_methods','js' => '<script>
			$(function(){
			$("#payment_method").change(function(e){
			var input = $("<input>").attr("type", "hidden").attr("name", "payment_method_name").attr("id", "payment_method_name").val($("#payment_method :selected").text());
			$("#addPayment").remove("#payment_method_name");
			$("#addPayment").append($(input));
			})
			})
			</script>', 'first_option' => 'Selecteaza...');
			
			// comisionul
			$this->main_form['fields']['fee'] = array('label' => 'Comision de transfer', 'displayonly' => TRUE, 'value' => '');
			$this->main_form['fields']['fee_currency'] = array('label' => 'Moneda comision', 'displayonly' => TRUE, 'value' => '',);
			
			// total
			$this->main_form['fields']['total'] = array('label' => 'Total de transferat', 'displayonly' => TRUE,);
			$this->main_form['fields']['total_currency'] = array('label' => 'Moneda total', 'displayonly' => TRUE,);
			
			$this->form_builder->set_fields($this->main_form['fields']);
			
			$this->form_validation->set_rules('payment_type', 'Modalitate de plata', 'required|xss_clean');
			$this->form_validation->set_rules('amount', 'Suma', 'required|xss_clean');
			$this->form_validation->set_rules('currency', 'Moneda transfer', 'required|xss_clean');
			$this->form_validation->set_rules('payment_method', 'Modalitatea de plata la beneficiar', 'required|xss_clean');
			
			$this->form_builder->submit_value = '<button name="next" type="submit" value="next">Mai departe >></button>';
			
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
				$this->session->set_flashdata($_POST);
				redirect('/payments/details');
			}
		}
		
		/**** reprezinta pasul 2 din adaugarea unui transfer
		*** detaliile privind transferul: campurile introduse la pasul 1 (doar afisate), campurile custom in functie de modalitatea de plata
		*/
		public function details(){
			echo jquery('1.11.1');
			
			$values = $this->get_main_form_values();
			
			$this->load->library('form_builder', array(
            'id'=>'addInvoiceDetails',
            'form_attrs' => array(
			'method' => 'post',
			'action' => '',
            ),
            'textarea_rows' => '5',
            'textarea_cols' => '28'
			));
			
			$this->details_form['fields']['payment_type'] = array('label' => 'Plateste', 'displayonly' => true, 'value' => $values['id_payment_type'], );
			
			$this->details_form['fields']['amount'] = array('label' => 'Suma transferata', 'displayonly' => true, 'value' => $values['amount'], );
			
			$this->details_form['fields']['currency'] = array('label' => 'Moneda transfer', 'displayonly' => true, 'value' => $values['currency'],);
			
			$this->details_form['fields']['payment_method'] = array('label' => 'Modalitatea de plata la beneficiar', 'type' => 'hidden', 'value' => $values['payment_method'],);
			$this->details_form['fields']['payment_method_name'] = array('label' => 'Modalitatea de plata la beneficiar', 'displayonly' => true, 'value' => $values['payment_method_name'],);
			
			$this->details_form['fields']['fee'] = array('label' => 'Comision de plata', 'displayonly' => TRUE, 'value' => $values['fee'],);
			
			$this->details_form['fields']['total'] = array('label' => 'Total de plata', 'displayonly' => TRUE, 'value' => $values['total'],);
			
			$this->details_form['fields']['copy'] = array('type' => 'copy', 'tag' => 'p', 'value' => 'Beneficiar');
			
			$this->details_form['fields']['ben_name'] = array('label' => 'Nume beneficiar', 'type' => 'text',);
			
			$this->details_form['fields']['ben_surname'] = array('label' => 'Prenume beneficiar', 'type' => 'text',);
			
			$this->details_form['fields']['ben_phone'] = array('label' => 'Telefon beneficiar', 'type' => 'text',);
			
			$this->details_form['fields']['ben_email'] = array('label' => 'Email beneficiar', 'type' => 'email',);
			
			$this->details_form['fields']['ben_address'] = array('label' => 'Adresa beneficiar', 'type' => 'text',);
			
			// afisez localitatile daca Modalitatea de plata selectata e Numerar Livrarea Acasa (5)
			//if ($values['payment_method'] == '5'){
				$this->details_form['fields']['ben_city'] = array('label' => 'Localitati disponibile', 'type' => 'select', 'value' => '', 'model' => 'ss_cities',);
			//}
			
			$options = array(1,2,3,4,5,);
			//if (in_array($values['payment_method'], $options) && strtoupper ($values['currency']) == strtoupper ('eur')){
				
				$this->details_form['fields']['lbl_cv'] = array('type' => 'copy', 'tag' => 'p', 'value' => 'Puteti efectua schimb valutar la cursul 1 EUR = ' . $this->fuel->sitevars->get()['exchange_rate'] . ' RON');
				
				$this->details_form['fields']['lbl_ben'] = array('type' => 'copy', 'tag' => 'p',
				'value' => 'Beneficiarul primeste ' . $this->fuel->sitevars->get()['exchange_rate'] * $values['amount'] . ' RON',
				);
				
				$this->details_form['fields']['confirm'] = array ('label' => 'De acord cu schimbul valutar', 'type' => 'checkbox', 'checked' => FALSE, 'required' => TRUE);
			//}
			
			$options = array(4,7,8);
			//if (in_array($values['payment_method'], $options) && strtoupper ($values['currency']) == strtoupper ('ron')){
				
				$this->details_form['fields']['lbl_ben'] = array('type' => 'copy', 'tag' => 'p',
				'value' => 'Beneficiarul primeste ' . $values['amount'] / $this->fuel->sitevars->get()['exchange_rate'] . ' EUR la curs ' . $this->fuel->sitevars->get()['exchange_rate'] .' RON/EUR',
				);
			//}
			
			$options = array(6,7,8);
			//if (in_array($values['payment_method'], $options)){
				$this->details_form['fields']['ben_iban'] = array('label' => 'IBAN', 'type' => 'text', 'value' => '', );
			//}
			
			$this->details_form['fields']['confirm'] = array ('label' => 'De acord', 'type' => 'checkbox', 'checked' => FALSE, 'required' => TRUE);
			
			$this->form_builder->set_fields($this->details_form['fields']);
			
			$this->form_validation->set_rules('confirm', 'De acord', 'required|xss_clean');
			
			$this->form_builder->submit_value = '<button name="salveaza" type="submit" value="salveaza">PLATESTE</button>';
			
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
		
		/**** confirmarea corectiilor efectuate Frm005
		*/		
		public function correction($id){
			// iau plata
			$results =  $this->ss_payments_model->payment(array('id' => $id, 'id_user' => $this->user_id, 'status' => get_status('corr')))->result();
			
			// permit corectia doar platilor cu status corr
			if (empty($results) || empty($results[0]) || $results[0]->status != get_status('corr')){
				redirect('payments/');
			}			
			
			if ((count($results)) >= 1 ){
				$this->correction['payment'] = $results[0];
			}
			
			// adaug form cu campul de confirmare corectie
			$this->load->library('form_builder', array(
            'id'=>'confirm_correction',
            'form_attrs' => array(
			'method' => 'post',
			'action' => '',
            ),
            'textarea_rows' => '5',
            'textarea_cols' => '28'
			));
			
			$this->correction['fields']['confirm'] = array ('label' => 'De acord cu corectia', 'type' => 'checkbox', 'checked' => FALSE, 'required' => TRUE);
			
			$this->form_validation->set_rules('confirm', 'De acord', 'required|xss_clean');
			
			$this->form_builder->submit_value = '<button name="accept" type="submit" value="accept">ACCEPT</button>';
			
			if($this->form_validation->run() == FALSE) {
				// am picat validarea
				if($this->input->post('accept')){
					foreach($this->correction['fields'] as $key => $value){
						$this->correction['fields'][$key]['value'] = $this->input->post($key);
						$this->correction['fields'][$key]['after_html'] = form_error($key);
					}
				}
				$this->correction['correction_form'] = $this->form_builder->render($this->correction['fields']);
				
				$this->_render_page('payments/correction', $this->correction);
			}else{
					$this->ss_payments_model->update_payment_status($id, $this->user_id, get_status('init'));
			}
			
		}
		
		/**** confirmare retur Frm006
		*/		
		public function refund($id){
			// iau plata
			$results =  $this->ss_payments_model->payment(array('id' => $id, 'id_user' => $this->user_id, 'status' => get_status('corr')))->result();
			
			// permit returul doar platilor cu status corr
			if (empty($results) || empty($results[0]) || $results[0]->status != get_status('corr')){
				redirect('payments/');
			}
			
			if ((count($results)) >= 1 ){
				$this->refund['payment'] = $results[0];
			}
			
			// adaug form cu campul de confirmare corectie
			$this->load->library('form_builder', array(
            'id'=>'confirm_refund',
            'form_attrs' => array(
			'method' => 'post',
			'action' => '',
            ),
            'textarea_rows' => '5',
            'textarea_cols' => '28'
			));
			
			$this->refund['fields']['confirm'] = array ('label' => 'De acord cu returul', 'type' => 'checkbox', 'checked' => FALSE, 'required' => TRUE);
			
			$this->form_validation->set_rules('confirm', 'De acord', 'required|xss_clean');
			
			$this->form_builder->submit_value = '<button name="accept" type="submit" value="accept">ACCEPT</button>';
			
			if($this->form_validation->run() == FALSE) {
				// am picat validarea
				if($this->input->post('accept')){
					foreach($this->refund['fields'] as $key => $value){
						$this->refund['fields'][$key]['value'] = $this->input->post($key);
						$this->refund['fields'][$key]['after_html'] = form_error($key);
					}
				}
				$this->refund['refund_form'] = $this->form_builder->render($this->refund['fields']);
				
				$this->_render_page('payments/refund', $this->refund);
			}else{
				// modific status plata
				$this->ss_payments_model->update_payment_status($id, $this->user_id, get_status('ref'));
					
				// salvez mesaj
				$message['unid'] = $results[0]->unid;
				$message['id_user'] = $this->user_id;
				$message['id_tx'] = $id;
				$message['tx_type'] = get_tx_type('pay');
				$message['message'] = 'payment '.$message['unid']. ' successfully refunded';
				$this->ss_messages_model->insert($message);
				
				// trimit email
				send_tx_email(array('unid' => $message['unid'],
					'receiver' => $this->user_email,
					'sender' => $this->fuel->sitevars->get()['from_email'],
					// TODO $this->lang->line incarca in acest moment din language/english
					'subject' => $this->lang->line('fact_eml011_sb'),
					'message' => $this->lang->line('fact_eml011_cont'),
				));
				
				echo $message['message'];
			}
			
		}		
		
		/**** generez unid-ul, afisez mesajul si trimit email
		*** salvarea mesajului in istoric se face odata cu salvarea facturii in model
		*/
		private function save(){
			
			$unid = uniqid('#S');
			
			$values['unid'] = $unid;
			$values['id_user'] = $this->user_id;
			$values['id_payment_type'] = $this->input->post('payment_type');
			$values['amount'] = $this->input->post('amount');
			$values['currency'] = $this->input->post('currency');
			$values['id_payment_method'] = $this->input->post('payment_method');
			$values['ben_city'] = $this->input->post('ben_city');
			$values['ben_address'] = $this->input->post('ben_address');
			$values['ben_name'] = $this->input->post('ben_name');
			$values['ben_surname'] = $this->input->post('ben_surname');
			$values['ben_phone'] = $this->input->post('ben_phone');
			$values['ben_email'] = $this->input->post('ben_email');
			$values['ben_iban'] = $this->input->post('ben_iban');
			$values['fee'] = $this->input->post('fee');
			$values['total'] = $this->input->post('total');
			$values['status'] = get_status('init');
			
			$this->ss_payments_model->save_payment($values);
						
			// TODO mesajul care se afiseaza utilizatorului este cel care se salveaza in db
			echo 'payment '.$unid. ' successfully added';
			
			send_tx_email(array('unid' => $unid,
				'receiver' => $this->user_email,
				'sender' => $this->fuel->sitevars->get()['from_email'],
				// TODO $this->lang->line incarca in acest moment din language/english
				'subject' => $this->lang->line('fact_eml011_sb'),
				'message' => $this->lang->line('fact_eml011_cont'),
			));
		}
		
		/**** pun pe sesiune datele din form-ul de pasul 1 ca sa le pot accesa si la pasul 2
		*/
		private function get_main_form_values(){
			
			$unid = uniqid('#S');
			
			$values['unid'] = $unid;
			$values['id_user'] = $this->user_id;
			$values['id_payment_type'] = $this->session->flashdata('payment_type');
			$values['amount'] = $this->session->flashdata('amount');
			$values['currency'] = $this->session->flashdata('currency');
			$values['payment_method'] = $this->session->flashdata('payment_method');
			$values['payment_method_name'] = $this->session->flashdata('payment_method_name');
			$values['fee'] = $this->session->flashdata('fee');
			$values['total'] = $this->session->flashdata('total');
			
			return $values;
			
		}
		
		
		/**** calcul comision si total; se apeleaza prin jquery
		*/
		public function compute(){
			$amount = floatval(uri_segment(3));
			if ($amount > 0){
				$fee = 0.01 * $amount;
				$total = $amount + $fee;
			}else{
				$fee = '';
				$total = '';
			}
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