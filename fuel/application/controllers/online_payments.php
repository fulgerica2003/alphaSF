<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Online_payments extends CI_Controller {
		
		private $user_email;
		private $user_id;
		private $user_lang = 'en';
		
		private $exchange_rate_eur;
		
		function Online_payments() {
			parent::__construct();
			
			$this->load->model('ss_payment_methods_model');
			$this->load->model('ss_cities_model');			
			$this->load->model('ss_exchange_rate_model');
			$this->load->model('ss_payments_model');
			$this->load->model('ss_corrections_model');
			$this->load->model('ss_messages_model');
			
			$this->load->library('form_validation');
			$this->form_validation->set_error_delimiters('', '');
			
			$this->load->library('session');
			$this->load->library('ion_auth');
			
			$eur = $this->ss_exchange_rate_model->find_one(array('type' => 'EUR', 'apply_date <= ' => date('Y-m-d', time())));
			$this->exchange_rate_eur = $eur->value;
			
			if (!$this->ion_auth->logged_in()){
				// redirect-ul se face in _variables/online_payments.php, teoretic aici nici nu ar trebui sa ajunga
				}else{
				$user = $this->ion_auth->user()->row();
				$this->user_id = $user->id;
				$this->user_email = $user->email;
				$this->user_lang = $user->default_language;
			}
			$this->fuel->language->detect(true);
			$this->lang->load('ss', $this->fuel->language->selected());
		}
		
		function index(){
			$this->validate();
		}
		
		public function validate(){

			$vars['payOpts'] = get_payment_types();

			$calc_details = $this->session->userdata('calcPayDetails');
			if ($calc_details != null){
				// datele venite din simulatorul de pe prima pagina
				$amount = $calc_details['amount'];
				$payment_method = $calc_details['modIncasare'];
				$currency = $calc_details['currency'];
				$vars['calcTipPlata'] = $calc_details['tipPlata'];;
				$vars['calcAmount'] = $amount;
				$vars['calcCurrency'] = $currency;
				$vars['calcModIncasare'] = $payment_method;
				$this->session->unset_userdata('calcPayDetails');
				}else{
				$amount = $this->get_amount($this->input->post('amount'), $this->input->post('valFract'));
				$payment_method = $this->input->post('modIncasare');
				$currency = $this->input->post('currency');
			}
			
			$vars['benOpts'] = get_ben_opts($currency);
			
			$this->form_validation->set_rules('amount', $this->lang->line('payments_amount'), 'required|numeric');
			$this->form_validation->set_rules('currency', $this->lang->line('payments_currency'), 'required');
			$this->form_validation->set_rules('modIncasare', $this->lang->line('payments_payment_type'), 'required');
			$this->form_validation->set_rules('tipPlata', $this->lang->line('payments_pay'), 'required');
			$this->form_validation->set_rules('fee', $this->lang->line('payments_fee'), 'required');
			$this->form_validation->set_rules('total', $this->lang->line('payments_total'), 'required');
			
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
						$this->form_validation->set_rules('cities', $this->lang->line('payments_city'), 'required');
						$this->form_validation->set_rules('acceptcv', 'Accept', '');
						break;
					}
					case '6':
					case '7':
					case '8':{
						$this->form_validation->set_rules('iban1', $this->lang->line('payments_iban'), 'required|alpha_numeric|exact_length[4]');
						$this->form_validation->set_rules('iban2', $this->lang->line('payments_iban'), 'required|alpha|exact_length[4]');
						$this->form_validation->set_rules('iban3', $this->lang->line('payments_iban'), 'required|alpha_numeric|exact_length[16]');
						$phone_validation_rules = 'required|numeric';
						$email_validation_rules = 'required|valid_email';
						$address_validation_rules = 'required';
						break;
					}
					default:
				}
				
				$this->form_validation->set_rules('ben_phone', $this->lang->line('payments_phone'), $phone_validation_rules);
				$this->form_validation->set_rules('ben_email', $this->lang->line('payments_email'), $email_validation_rules);
				$this->form_validation->set_rules('ben_address', $this->lang->line('payments_address'), $address_validation_rules);
			}
			
			
			$this->form_validation->set_rules('ben_last_name', $this->lang->line('payments_last_name'), 'required|alpha');
			$this->form_validation->set_rules('ben_first_name', $this->lang->line('payments_first_name'), 'required|alpha');
			
			
			
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
			}
		}
		
		public function add(){
			
			if ($this->input->post('confirmCheck') === '1'){
				// daca a bifat ca e de acord, salvez
				$payment_details = $this->session->userdata('paymentDetails');
				if (!$payment_details){
					redirect('online_payments');
				}
				$unid = $this->save($payment_details);
				$this->session->unset_userdata('paymentDetails');
				
				if (strtolower($payment_details['id_payment_type']) === 'card'){
					$payment_card_details['amount'] = $payment_details['amount_in'];
					$payment_card_details['currency'] = $payment_details['currency_in'];
					$payment_card_details['unid'] = $payment_details['unid'];
					$payment_card_details['user_id'] = $this->user_id;
					$payment_form = get_payment_form($payment_card_details);
					echo $payment_form; // redirectarea catre pagina de succes se face din pay/card_response
					}else if (strtolower($payment_details['id_payment_type']) === 'cont'){
					
					$event = 'pay_cont';
					
					$msg_codes = trigger_event($event, $unid);
					
					$vars['message'] = sprintf($this->lang->line($msg_codes[0]), $unid);
					$vars['link'] = 'online_payments';
					$vars['text'] = 'payments_thanks_cmd';
					$vars['title'] = 'payments_thanks';
					$this->fuel->pages->render('online_thanks', $vars);
				}
				}else{
				redirect('online_payments');
			}
		}
		
		private function save($payment_details){
			$this->ss_payments_model->save_payment($payment_details);
			
			return $payment_details['unid'];
		}
		
		private function get_payment_details(){
			$unid = uniqid('#S');
			
			$values['unid'] = $unid;
			$values['id_user'] = $this->user_id;
			$values['id_payment_type'] = strtolower($this->input->post('tipPlata'));
			$values['amount_in'] = $this->get_amount($this->input->post('amount'), $this->input->post('valFract'));
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
		
		public function update_ben_opts($currency){
			
			$vars['benOpts'] = get_ben_opts($currency);
			
			$str = '<option value="">alege</option>\n';
			
			foreach($vars['benOpts'] as $key => $val){
				$str .= '<option value="'.$key.'" label="'.$val.'" '.'>'.$val.'</option>\n';
			}
			
			echo $str;
		}
		
		private function get_custom_fields($payment_method, $currency, $amount, $lang = 'ro'){
			$output = '';
			
			switch(strtolower($payment_method)){
				case '1':
				case '2':
				case '3':
				if (strtolower($currency) == 'eur'){
					$rate = $this->ss_exchange_rate_model->find_one(array('type' => strtoupper($currency), 'apply_date <= ' => date('Y-m-d', time())));
					$vars['cv'] = $rate->value;
					$output = $this->load->view('_blocks/_op_cv_info', array('cv' => $vars['cv'], 'amount' => $amount, 'accept' => TRUE, 'lang' => $lang), TRUE);
				}
				break;
				case '4':
				break;	
				case '5':
				if (strtolower($currency) == 'eur'){
					$rate = $this->ss_exchange_rate_model->find_one(array('type' => strtoupper($currency), 'apply_date <= ' => date('Y-m-d', time())));
					$vars['cv'] = $rate->value;
					$output = $this->load->view('_blocks/_op_cv_info', array('cv' => $vars['cv'], 'amount' => $amount, 'accept' => TRUE, 'lang' => $lang), TRUE);
				}
				$vars['cities'] = $this->ss_cities_model->options_list();
				$output .= $this->load->view('_blocks/_op_cities', array('cities' => $vars['cities'], 'lang' => $lang), TRUE);
				break;
				case '6':
				if (strtolower($currency) == 'eur'){
					$rate = $this->ss_exchange_rate_model->find_one(array('type' => strtoupper($currency), 'apply_date <= ' => date('Y-m-d', time())));
					$vars['cv'] = $rate->value;
					$output = $this->load->view('_blocks/_op_cv_info', array('cv' => $vars['cv'], 'amount' => $amount, 'accept' => FALSE, 'lang' => $lang), TRUE);
				}
				$output .= $this->load->view('_blocks/_op_iban', array('lang' => $lang), TRUE);
				break;
				case '7':
				$output = $this->load->view('_blocks/_op_iban', array('lang' => $lang), TRUE);
				break;
				case '8':
				$output = $this->load->view('_blocks/_op_iban', array('lang' => $lang), TRUE);
				break;
				default:
			}
			
			return $output;
		}
		
		public function update_custom_fields(){
			
			$payment_method = $_GET['payment_method'];
			$currency = $_GET['currency'];
			$amount = $_GET['amount'];
			$lang = $_GET['lang'];
			
			echo $this->get_custom_fields($payment_method, $currency, $amount, $lang);
		}
		
		public function update_total(){
			
			echo compute_fee($_GET);
		}
		
		/*
			pentru detalii privind fluxul de plata, vezi backend.php
		*/
		
		public function refund(){
			$accept = $this->input->post('accept');
			
			$unid = $this->input->post('hidden_modal_unid');
			
			if ($accept && $unid){
				
				$where['unid'] = $unid;
				$values['status'] = get_status('ref');
				
				$this->ss_payments_model->update($values, $where);
				
				$msg_codes = trigger_event('pay_refund', $unid);
				
				$vars['message'] = sprintf($this->lang->line($msg_codes[0]), $unid);
				$vars['link'] = 'online_history_payments';
				$vars['text'] = 'news_details_back';
				$vars['title'] = 'payments_thanks';
				$this->fuel->pages->render('online_thanks', $vars);
				}else{
				redirect('online_history_payments');
			}
		}
		
		public function correction(){
			// utilizatorul a fost de acord cu corectia
			// status devine 2, in curs de plata
			
			$where['unid'] = $this->input->post('hidden_modal_unid');
			$accept1 = $this->input->post('accept1');
			$accept2 = $this->input->post('accept2');
			
			if ($where['unid'] && $accept1 && $accept2){
			
				$values['status'] = get_status('corr');
				if ($this->input->post('hidden_ben_name')) $values['ben_name'] = $this->input->post('hidden_ben_name');
				if ($this->input->post('hidden_ben_surname')) $values['ben_surname'] = $this->input->post('hidden_ben_surname');
				if ($this->input->post('hidden_ben_phone')) $values['ben_phone'] = $this->input->post('hidden_ben_phone');
				if ($this->input->post('hidden_ben_email')) $values['ben_email'] = $this->input->post('hidden_ben_email');
				if ($this->input->post('hidden_ben_iban')) $values['ben_iban'] = $this->input->post('hidden_ben_iban');
				if ($this->input->post('hidden_ben_address')) $values['ben_address'] = $this->input->post('hidden_ben_address');
				if ($this->input->post('hidden_ben_id_ben_city')) $values['id_ben_city'] = $this->input->post('hidden_ben_id_ben_city');
				
				$this->ss_payments_model->update($values, $where);
				
				$msg_codes = trigger_event('pay_corr', $where['unid']);
				
				$vars['message'] = sprintf($this->lang->line($msg_codes[0]), $where['unid']);
				$vars['link'] = 'online_history_payments';
				$vars['text'] = 'news_details_back';
				$vars['title'] = 'payments_thanks';
				$this->fuel->pages->render('online_thanks', $vars);
				
			}else{
				redirect('online_history_payments');
			}
		}
		
		public function get_correction(){
			$unid = $this->input->post('myunid');
		
			$correction = $this->ss_corrections_model->find_one_array(array('unid' => $unid));
			
			echo json_encode($correction);
		}
		
		private function get_amount($intVal, $fractVal){
			$decimal_part = (isset($fractVal)) ? $fractVal : 0;
			return $intVal + $decimal_part/100;
		}
		
	}
	
	
?>