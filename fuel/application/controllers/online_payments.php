<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Online_payments extends CI_Controller {
		
		/*
			dupa validare salvez valorile pe sesiune si dupa asta pot face catre aceeasi pagina, dar cu un parametru (tot pe sesiune) si daca am parametrul ala sa apara modalul;
			
			butonul din modal face redirect catre controller si iau valorile de pe sesiune si le salvez
			
			
			session user data
		*/
		
		// TODO aici tb sa fie adresa utilizatorului autentificat, id_user
		private $user_email = 'a@b.c';
		private $user_id = '8';
		
		private $exchange_rate_eur;
		
		function Online_payments() {
			parent::__construct();
			
			$this->load->model('ss_payment_methods_model');
			$this->load->model('ss_cities_model');			
			$this->load->model('ss_exchange_rate_model');
			$this->load->model('ss_payments_model');
			$this->load->model('ss_messages_model');
			
			$this->load->library('form_validation');
			$this->form_validation->set_error_delimiters('', '');
			
			$this->load->library('session');
			
			$eur = $this->ss_exchange_rate_model->find_one(array('type' => 'EUR', 'apply_date <= ' => date('Y-m-d', time())));
			$this->exchange_rate_eur = $eur->value;
			
			$this->lang->load('ss');
			
		}
		
		function index(){
			$this->validate();
		}
		
		public function validate(){
			$vars['payOpts'] = get_payment_types();
			
			$amount = $this->input->post('amount');
			$payment_method = $this->input->post('modIncasare');
			$currency = $this->input->post('currency');
			
			$vars['benOpts'] = $this->get_ben_opts($currency);
			
			$this->form_validation->set_rules('amount', 'Suma transferata', 'required|numeric');
			$this->form_validation->set_rules('currency', 'Moneda', 'required');
			$this->form_validation->set_rules('modIncasare', 'Modalitate de plata beneficiar', 'required');
			$this->form_validation->set_rules('tipPlata', 'Tip plata', 'required');
			$this->form_validation->set_rules('fee', 'Comision de plata', 'required');
			$this->form_validation->set_rules('total', 'Total de plata', 'required');
			
			if (isset($payment_method) && strlen($payment_method > 0)){
				switch($payment_method){
					case '1':
					case '2':
					case '3':{
						$this->form_validation->set_rules('acceptcv', 'Accept', '');
					}
					case '4':{
						$phone_validation_rules = 'numeric';
						$email_validation_rules = 'valid_email';
						$address_validation_rules = '';
						break;
					}
					case '5':{
						$phone_validation_rules = 'required|numeric';
						$email_validation_rules = 'required|valid_email';
						$address_validation_rules = 'required';
						$this->form_validation->set_rules('cities', 'Localitati disponibile', 'required');
						$this->form_validation->set_rules('acceptcv', 'Accept', '');
						break;
					}
					case '6':
					case '7':
					case '8':{
						$this->form_validation->set_rules('iban1', 'IBAN1', 'required|alpha_numeric|exact_length[4]');
						$this->form_validation->set_rules('iban2', 'IBAN2', 'required|alpha|exact_length[4]');
						$this->form_validation->set_rules('iban3', 'IBAN3', 'required|alpha_numeric|exact_length[16]');
						$phone_validation_rules = 'required|numeric';
						$email_validation_rules = 'required|valid_email';
						$address_validation_rules = 'required';
						break;
					}
					default:
				}
				
				$this->form_validation->set_rules('ben_phone', 'Telefon', $phone_validation_rules);
				$this->form_validation->set_rules('ben_email', 'Email', $email_validation_rules);
				$this->form_validation->set_rules('ben_address', 'Adresa', $address_validation_rules);
			}
			
			
			$this->form_validation->set_rules('ben_last_name', 'Nume beneficiar', 'required|alpha');
			$this->form_validation->set_rules('ben_first_name', 'Prenume beneficiar', 'required|alpha');
			
			
			
			if ($this->form_validation->run() == FALSE){
				
				// apelul se face cand pic validarea ca sa pot folosi form_error si set_value in blocuri
				$vars['customFields'] = $this->get_custom_fields($payment_method, $currency, $amount);
				
				$this->fuel->pages->render('online_payments', $vars);
				}else{
				
				// apelul se face cand pic validarea ca sa pot folosi form_error si set_value in blocuri
				$vars['customFields'] = $this->get_custom_fields($payment_method, $currency, $amount);
				$vars['displayConfirm'] = 'true';
				
				$this->session->unset_userdata('paymentDetails');
				$this->session->set_userdata('paymentDetails', $this->get_payment_details());
				
				$this->fuel->pages->render('online_payments', $vars);
				
				/*$unid = $this->save();
					
					if (strtolower($this->input->post('tipPlata')) === 'card'){
					$payment_details['amount'] = $amount;
					$payment_details['currency'] = $currency;
					$payment_details['unid'] = $unid;
					$payment_details['user_id'] = $this->user_id;
					$payment_form = get_payment_form($payment_details);
					echo $payment_form;
					
					}
				*/
			}
		}
		
		public function add(){
			
			if ($this->input->post('confirmCheck') === '1'){
				// daca a bifat ca e de acord, salvez
				$payment_details = $this->session->userdata('paymentDetails');
				if ($payment_details == null){
					$this->fuel->pages->render('online_payments');
				}
				$unid = $this->save($payment_details);
				$this->session->unset_userdata('paymentDetails');
				
				if (strtolower($payment_details['id_payment_type']) === 'card'){
					$payment_card_details['amount'] = $payment_details['amount_in'];
					$payment_card_details['currency'] = $payment_details['currency_in'];
					$payment_card_details['unid'] = $payment_details['unid'];
					$payment_card_details['user_id'] = $this->user_id;
					$payment_form = get_payment_form($payment_card_details);
					echo $payment_form;
				}
			}else{
				redirect('online_payments');
			}
		}
		
		/**** generez unid-ul, afisez mesajul si trimit email
			*** salvarea mesajului in istoric se face odata cu salvarea platii in model
		*/
		/*private function save(){
			
			$unid = uniqid('#S');
			
			echo $unid;
			
			$values['unid'] = $unid;
			$values['id_user'] = $this->user_id;
			$values['id_payment_type'] = strtolower($this->input->post('tipPlata'));
			$values['amount_in'] = $this->input->post('amount');
			$values['currency_in'] = $this->input->post('currency');
			
			if ($this->input->post('acceptcv') && $this->input->post('acceptcv') === 'acceptcv'){
			$values['rate'] = $this->exchange_rate_eur;
			$values['currency_out'] = 'ron';
			$values['amount_out'] = $values['amount_in'] * $values['rate'];
			}else{
			$values['rate'] = null;
			$values['currency_out'] = $values['currency_in'];
			$values['amount_out'] = $values['amount_in'];
			}
			
			$values['id_payment_method'] = $this->input->post('modIncasare');
			$values['ben_city'] = ($this->input->post('cities') ? $this->input->post('cities') : null);
			$values['ben_address'] = $this->input->post('ben_address');
			$values['ben_name'] = $this->input->post('ben_last_name');
			$values['ben_surname'] = $this->input->post('ben_first_name');
			$values['ben_phone'] = $this->input->post('ben_phone');
			$values['ben_email'] = $this->input->post('ben_email');
			$values['ben_iban'] = ( $this->input->post('iban1') && $this->input->post('iban2') && $this->input->post('iban3') ? $this->input->post('iban1') . $this->input->post('iban2') . $this->input->post('iban3') : null);
			$values['fee'] = $this->input->post('fee');
			$values['total'] = $this->input->post('total');
			$values['status'] = get_status('init');
			
			$this->ss_payments_model->save_payment($values);
			
			// TODO mesajul care se afiseaza utilizatorului este cel care se salveaza in db
			echo 'payment '.$unid. ' successfully added';
			
			$sitevars = $this->fuel->sitevars->get();
			
			send_tx_email(array('unid' => $unid,
			'receiver' => $this->user_email,
			'sender' => $sitevars['from_email'],
			// TODO $this->lang->line incarca in acest moment din language/english
			'subject' => $this->lang->line('fact_eml011_sb'),
			'message' => $this->lang->line('fact_eml011_cont'),
			));
			
			return $unid;
		}*/
		
		private function save($payment_details){
			$this->ss_payments_model->save_payment($payment_details);
			
			// TODO mesajul care se afiseaza utilizatorului este cel care se salveaza in db
			echo 'payment '.$payment_details['unid']. ' successfully added';
			
			$sitevars = $this->fuel->sitevars->get();
			
			send_tx_email(array('unid' => $payment_details['unid'],
			'receiver' => $this->user_email,
			'sender' => $sitevars['from_email'],
			// TODO $this->lang->line incarca in acest moment din language/english
			'subject' => $this->lang->line('fact_eml011_sb'),
			'message' => $this->lang->line('fact_eml011_cont'),
			));
			
			return $payment_details['unid'];
		}
		
		private function get_payment_details(){
			$unid = uniqid('#S');
			
			echo $unid;
			
			$values['unid'] = $unid;
			$values['id_user'] = $this->user_id;
			$values['id_payment_type'] = strtolower($this->input->post('tipPlata'));
			$values['amount_in'] = $this->input->post('amount');
			$values['currency_in'] = $this->input->post('currency');
			
			if ($this->input->post('acceptcv') && $this->input->post('acceptcv') === 'acceptcv'){
				$values['rate'] = $this->exchange_rate_eur;
				$values['currency_out'] = 'ron';
				$values['amount_out'] = $values['amount_in'] * $values['rate'];
				}else{
				$values['rate'] = null;
				$values['currency_out'] = $values['currency_in'];
				$values['amount_out'] = $values['amount_in'];
			}
			
			$values['id_payment_method'] = $this->input->post('modIncasare');
			$values['ben_city'] = ($this->input->post('cities') ? $this->input->post('cities') : null);
			$values['ben_address'] = $this->input->post('ben_address');
			$values['ben_name'] = $this->input->post('ben_last_name');
			$values['ben_surname'] = $this->input->post('ben_first_name');
			$values['ben_phone'] = $this->input->post('ben_phone');
			$values['ben_email'] = $this->input->post('ben_email');
			$values['ben_iban'] = ( $this->input->post('iban1') && $this->input->post('iban2') && $this->input->post('iban3') ? $this->input->post('iban1') . $this->input->post('iban2') . $this->input->post('iban3') : null);
			$values['fee'] = $this->input->post('fee');
			$values['total'] = $this->input->post('total');
			$values['status'] = get_status('init');
			
			return $values;
		}
		
		private function get_ben_opts($currency){
			if (isset($currency)){
				$output = $this->ss_payment_methods_model->options_list();
				switch(strtolower($currency)){
					case 'eur':
					break;
					case 'ron':
					unset($output[4]);
					break;
					default:
					break;
				}
				}else{
				$output = array();
			}
			
			return $output;
		}
		
		public function update_ben_opts($currency){
			
			$vars['benOpts'] = $this->get_ben_opts($currency);
			
			$str = '<option value="">alege</option>\n';
			
			foreach($vars['benOpts'] as $key => $val){
				$str .= '<option value="'.$key.'" label="'.$val.'" '.'>'.$val.'</option>\n';
			}
			
			echo $str;
		}
		
		private function get_custom_fields($payment_method, $currency, $amount){
			$output = '';
			
			switch(strtolower($payment_method)){
				case '1':
				case '2':
				case '3':
				if (strtolower($currency) == 'eur'){
					$rate = $this->ss_exchange_rate_model->find_one(array('type' => strtoupper($currency), 'apply_date <= ' => date('Y-m-d', time())));
					$vars['cv'] = $rate->value;
					$output = $this->load->view('_blocks/_op_cv_info', array('cv' => $vars['cv'], 'amount' => $amount, 'accept' => TRUE), TRUE);
				}
				break;
				case '4':
				break;	
				case '5':
				if (strtolower($currency) == 'eur'){
					$rate = $this->ss_exchange_rate_model->find_one(array('type' => strtoupper($currency), 'apply_date <= ' => date('Y-m-d', time())));
					$vars['cv'] = $rate->value;
					$output = $this->load->view('_blocks/_op_cv_info', array('cv' => $vars['cv'], 'amount' => $amount, 'accept' => TRUE), TRUE);
				}
				$vars['cities'] = $this->ss_cities_model->options_list();
				$output .= $this->load->view('_blocks/_op_cities', array('cities' => $vars['cities']), TRUE);
				break;
				case '6':
				if (strtolower($currency) == 'eur'){
					$rate = $this->ss_exchange_rate_model->find_one(array('type' => strtoupper($currency), 'apply_date <= ' => date('Y-m-d', time())));
					$vars['cv'] = $rate->value;
					$output = $this->load->view('_blocks/_op_cv_info', array('cv' => $vars['cv'], 'amount' => $amount, 'accept' => FALSE), TRUE);
				}
				$output .= $this->load->view('_blocks/_op_iban', null, TRUE);
				break;
				case '7':
				$output = $this->load->view('_blocks/_op_iban', null, TRUE);
				break;
				case '8':
				$output = $this->load->view('_blocks/_op_iban', null, TRUE);
				break;
				default:
			}
			
			return $output;
		}
		
		public function update_custom_fields(){
			
			$payment_method = $_GET['payment_method'];
			$currency = $_GET['currency'];
			$amount = $_GET['amount'];
			
			echo $this->get_custom_fields($payment_method, $currency, $amount);
		}
		
		public function update_total(){
			
			$payment_method = $_GET['payment_method'];
			$currency = $_GET['currency'];
			$amount = $_GET['amount'];
			
			$fee = null;
			$total = null;
			
			if (
			isset($payment_method) && (strlen($payment_method) > 0)
			&& isset($currency) && (strlen($currency) > 0)
			&& isset($amount) && (strlen($amount) > 0)
			){
				$fee = 0.1 * $amount;
				$total = $fee + $amount;
			}
			
			echo json_encode( array( "fee" => $fee, "total" => $total ) );;
		}
		
	}
	
	
?>