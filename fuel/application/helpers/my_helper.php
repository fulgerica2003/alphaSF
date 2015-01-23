<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	// add your site specific functions here
	
	function status(){
		$status = array(
		'init' => 1,   // in curs de procesare
		'pay'  => 50,  // in curs de plata
		'err'  => 55,  // eroare plata
		'wait' => 57,  // retur/corectie
		'corr' => 60,  // corectata in curs de procesare
		'ref'  => 80,  // in curs de retur
		'rfd'  => 90,  // returnata
		'pyd'  => 100, // platita
		'can'  => 110, // anulata
		);
		return $status;
	}
	
	function status_backend_test(){
		$status = array(
		1 	=> 'in curs de procesare', 
		50  => 'in curs de plata',
		55  => 'eroare plata',
		57  => 'astept retur/corectie',
		60 	=> 'corectata in curs de procesare',
		80  => 'in curs de retur',
		90  => 'returnata',
		100 => 'platita',
		110 => 'anulata',
		);
		return $status;
	}
	
	function get_status($key){
		$status = status();
		return $status[$key];
	}
	
	function get_status_label($status){
		switch ($status){
			case 1: return 'init';
			break;
			case 50: return 'pay';
			break;
			case 55: return 'err';
			break;
			case 57: return 'wait';
			break;
			case 60: return 'corr';
			break;
			case 80: return 'ref';
			break;
			case 90: return 'rfd';
			break;
			case 100: return 'pyd';
			break;
			case 110: return 'can';
			break;
			default: return 'N/A';
		}
	}
	
	function get_message_codes($operation){
		$msg_codes = array(
			'pay_pin' => array('calc_msg009', 'calc_eml005'),
			'pay_tran' => array('calc_msg010', 'calc_eml006'),
			'pay_benef' => array('calc_msg011', 'calc_eml007'),
			'pay_recom' => array('calc_msg012', 'calc_eml008'),
			'pay_retur' => array('calc_msg014', 'calc_eml010'),
			'pay_ok' => array('calc_msg013', 'calc_eml009'),
			'pay_cancel' => array('calc_msgcancel', 'calc_emlcancel'),
			'pay_cont' => array('calc_msg004', 'calc_eml002'),
			'pay_card_ok' => array('calc_msg005', 'calc_eml003'),
			'pay_card_fail' => array('calc_msg006', ''),
			'pay_refund' => array('calc_msgpayrefund', ''),
			'pay_corr' => array('calc_txt040', ''),
			
			'inv_err' => array('fact_err_msg020', 'fact_eml013'),
			'inv_ok' => array('fact_msg013', 'fact_eml009'),
			'inv_cancel' => array('fact_msgcancel', 'fact_emlcancel'),
			'inv_cont' => array('fact_msg016', 'fact_eml011'),
			'inv_card_ok' => array('fact_msg017', 'fact_eml012'),
			'inv_card_fail' => array('fact_msg018', ''),
			

		);
		
		return $msg_codes[$operation];
	}
	
	function get_payment_types(){
		$output = array('card' => 'Card', 'cont' => 'Cont'); //cont e 1, card e 2; vezi get_payment_partners
		
		return $output;
	}
	
	function get_payment_partners(){
		// folosita in cms, la modulul Fees
		$output = array (1 => 'Smith & Smith (plata din cont)', 2 => 'Libra Bank (plata cu cardul)',);
		
		return $output;
	}
	
	function get_payment_partner_id($partner){
		switch ($partner){
			case 'cont': return 1;
			break;
			case 'card': return 2;
			break;
		}
	}
	
	function get_currencies(){
		$output = array (1 => 'RON', 2 => 'EUR', 3 => 'USD');
		
		return $output;
	}
	
	function get_currency_id($currency){
		$currencies = get_currencies();

		return array_search(strtoupper($currency), $currencies);
	}
	
	function get_tx_types(){
		$output = array('pay' => 'pay', 'inv' => 'inv');
		
		return $output;
	}
	
	function get_tx_type($tx_type){
		$output = get_tx_types();
		
		return $output[$tx_type];
	}
	
	function trigger_event($event, $unid, $user = null, $additional_data = null){
		$msg_codes = get_message_codes($event);
		
		$CI =& get_instance();
		
		$CI->load->model('ss_payments_model');
		$CI->load->model('ss_invoices_model');
		$CI->load->model('ss_messages_model');
		
		$site_vars = $CI->fuel->sitevars->get();
		
		$message['unid'] = $unid;
		
		if (substr($unid, 1, 1) === 'S'){
			// payment
			$message['tx_type'] = get_tx_type('pay');
			$results = $CI->ss_payments_model->payment_by_unid($unid);
			}else{
			// invoice
			$message['tx_type'] = get_tx_type('inv');
			$results = $CI->ss_invoices_model->invoice_by_unid($unid);
		}
		
		$tx = $results->result();
		
		$message['id_user'] = $tx[0]->inv_id_user;
		$message['id_tx'] = $tx[0]->inv_id;
		
		$CI->lang->load('ss', $tx[0]->u_lang);

		if ($event == 'pay_pin'){
			$pin = $tx[0]->pin;
			$ben_name = $tx[0]->ben_name;
			$ben_surname = $tx[0]->ben_surname;
			$id_ben_payment_method = $tx[0]->id_ben_payment_method;
			if ($id_ben_payment_method <= 5){
				$msg = sprintf($CI->lang->line($msg_codes[0]), $unid, $pin, $ben_name . ' ' . $ben_surname);
				$email = array(
						'sb' => sprintf($CI->lang->line($msg_codes[1] .'pin_sb'), $unid),
						'cont' => sprintf($CI->lang->line($msg_codes[1] .'pin_cont'), $unid, $pin, $ben_name . ' ' . $ben_surname),
						);
			}else{
				$msg = sprintf($CI->lang->line($msg_codes[0]), $unid, $pin, $ben_name . ' ' . $ben_surname);
				$email = array(
						'sb' => sprintf($CI->lang->line($msg_codes[1] .'_sb'), $unid),
						'cont' => sprintf($CI->lang->line($msg_codes[1] .'_cont'), $unid, $ben_name . ' ' . $ben_surname),
						);
			}
		}else{
			$msg = sprintf($CI->lang->line($msg_codes[0]), $unid);
			if (strlen($msg_codes[1]) > 0){
					$email = array(
						'sb' => sprintf($CI->lang->line($msg_codes[1] .'_sb'), $unid),
						'cont' => sprintf($CI->lang->line($msg_codes[1] .'_cont'), $unid),
						);
			
				}else{
					$email = null;
				}
		}
		
		$message['message'] = $msg;
		if ($msg != null){
			$CI->ss_messages_model->insert($message);
		}
		
		if ($email != null){
			send_tx_email(array('unid' => $message['unid'],
			'receiver' => $tx[0]->u_email,
			'sender' => $site_vars['from_email'],
			'subject' => $email['sb'],
			'message' => $email['cont'],
			));
		}
		
		return $msg_codes;
	}
	
	
	/**** metoda e apelata pentru expedierea de mesaje ce tin de tranzactii (facturi si plati)
	*/
	function send_tx_email($email_info = array()){
		
		$data = array(
		'unid'   	=> $email_info['unid'],
		'message' 	=> $email_info['message'],
		);
		
		$template = 'emails/message_tx.tpl.php';
		
		if (in_array('fullname', $email_info)){
			$data['fullname'] = $email_info['fullname'];
			$template = 'emails/message_ben.tpl.php';
		}
		
		$CI =& get_instance();
		
		$body = $CI->load->view($template, $data, true);
		
		$CI->load->library(array('email'));
		
		$CI->email->clear();
		$CI->email->from($email_info['sender']);
		$CI->email->to($email_info['receiver']);
		$CI->email->subject(sprintf($email_info['subject'], $email_info['unid']));
		$CI->email->message($body);
		
		if ($CI->email->send()){
			return TRUE;
		}
		else{
			log_error('eroare la expediere email');
			return FALSE;
		}
	}
	
	/**** metoda e apelata pentru expedierea de mesaje
	*/
	function send_email($email_info = array()){
		
		$CI =& get_instance();
		
		
		$CI->load->library(array('email'));
		
		$CI->email->clear();
		$CI->email->from($email_info['sender']);
		$CI->email->to($email_info['receiver']);
		$CI->email->subject($email_info['subject']);
		$CI->email->message($email_info['body']);
		
		if ($CI->email->send()){
			return TRUE;
		}
		else{
			log_error('eroare la expediere email');
			return FALSE;
		}
	}
	
	/**** functie utilitara ca sa imi afisez un array
	*/
	function printArray($array, $pad=' '){
		foreach ($array as $key => $value){
			echo $pad . "$key => $value";
			if(is_array($value)){
				printArray($value, $pad.' ');
			}  
		} 
	}
	
	/**** functie utilitara cu care extrag etichetele custom fields de pe factura
	*/
	function get_label($label_vals, $lg = 'ro'){
		$lang_labels = explode('|', $label_vals);
		
		foreach($lang_labels as $label){
			$temp = explode(':', $label);
			$labels[trim($temp[0])] = trim($temp[1]);
		}
		if (array_key_exists ($lg, $labels)){
			return $labels[$lg];
		}
	}
	
	function httpPost($url,$params){
		$postData = '';
		//create name value pairs seperated by &
		foreach($params as $k => $v)
		{
			$postData .= $k . '='.$v.'&';
		}
		rtrim($postData, '&');
		
		$ch = curl_init(); 
		
		curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
		curl_setopt($ch,CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_POST, count($postData));
		curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
		
		$output=curl_exec($ch);
		
		curl_close($ch);
		return $output;
	}
	
	function save_csv($name, $content){
		$outputname = 'output/'.$name . '.csv';
		
		$fp = fopen($outputname, 'w');
		
		foreach ($content as $fields) {
			fputcsv($fp, $fields, '|');
		}
		
		fclose($fp);
		
		return $outputname;
	}
	
	function get_time(){
		return date("YmdHis");
	}
	
	function get_payment_form($payment_details){
		
		return
		'<form id="PaymentForm" name="PaymentForm" method="post" action="'. site_url('pay/card') . '">
		<input type="hidden" name="amount" value="'. $payment_details['amount'] .'" />
		<input type="hidden" name="currency" value="'. $payment_details['currency'] .'" />
		<input type="hidden" name="user_id" value="'. $payment_details['user_id'] .'" />
		<input type="hidden" name="unid" value="'. $payment_details['unid'] .'" />
		</form>
		<script type="text/javascript">
		window.onload=function(){
		var auto = setTimeout(function(){ autoRefresh(); }, 10);
		
		function submitform(){
		document.forms["PaymentForm"].submit();
		}
		
		function autoRefresh(){
		clearTimeout(auto);
		auto = setTimeout(function(){ submitform(); autoRefresh(); }, 1000);
		}
		}
		</script>
		';
	}
	
	function compute_fee($params = array()){
		
		return compute_mock_fee($params);
	}
	
	function compute_mock_fee($params = array()){
		
		$payment_method = $params['payment_method'];
		$currency = get_currency_id($params['currency']);
		$amount = $params['amount'];
		$payment_type = get_payment_partner_id($params['payment_type']);
		
		$fee = null;
		$total = null;
		
		if (
		isset($payment_method) && (strlen($payment_method) > 0)
		&& isset($payment_type) && (strlen($payment_type) > 0)
		&& isset($currency) && (strlen($currency) > 0)
		&& isset($amount) && (strlen($amount) > 0)
		){
			$fee = 0.1 * $amount;
			$total = $fee + $amount;
		}
		
		return json_encode( array( "fee" => $fee, "total" => $total ) );
	}
	
	function compute_real_fee($params = array()){
	
		/*
		cand calculez comisionul tb sa tin cont de urmatoarele:
		suma - value
		numarul de tranzactii ale utilizatorului - trn - doar pt clientii autentificati
		data tranzactiei - datatrn
		moneda - currency_key 
		modalitatea de plata la beneficiar - network_key
		modalitatea de plata de catre client - partner_key (din cont, card)
		profilul clientului - cl_type_key - doar pt clientii autentificati
		profilul beneficiarului - bnf_type_key - doar pt clientii autentificati
		*/
		$CI =& get_instance();
		$fee_params = array();
		
		$CI->load->model('ss_payments_model');
		$CI->load->model('ss_invoices_model');
		$CI->load->model('ss_fees_model');
		$CI->load->library('ion_auth');

		if ($CI->ion_auth->logged_in()){
			$user = $CI->ion_auth->user()->row();
			// iau numarul total de tranzactii
			$total_invoices = $CI->ss_invoices_model->record_count(array('id_user' => $user->id, 'status' => get_status('pyd')));
			$total_payments = $CI->ss_payments_model->record_count(array('id_user' => $user->id, 'status' => get_status('pyd')));
			$trn = $total_invoices + $total_payments;
			$fee_params['trn'] = $trn;
			
			// verificari profil client; cl_type_key va fi o lista
			$values = array(
				'profile_type' => 'client',
				'prenume' => $user->first_name,
				'data_nasterii' => substr($user->birth_date, 0, strrpos($user->birth_date, '.')),
				'numar_tranzactii' => $trn, // aici ar fi trebuit sa fie numarul de tranzactii, dar dau id-ul; nr de trnazactii se calculeaza doar daca exista profile de tip nr de tranzactii 
				'resedinta' => $user->country,
				);
			$fee_params['cl_type_key'] = get_profile_matches_list($values);
			
			// verificari profil beneficiar; bnf_type_key va fi o lista
			$values = array(
				'profile_type' => 'beneficiar',
				'prenume' => $params['ben_surname'],
				//'data_nasterii' => , // nu am data nasterii beneficiarului
				//'numar_tranzactii' => , // aici ar fi trebuit sa fie numarul de tranzactii
				'resedinta' => $params['ben_city'],
				);
			$fee_params['bnf_type_key'] = get_profile_matches_list($values);
		}
		
		$payment_method = $params['payment_method'];
		$currency = get_currency_id($params['currency']);
		$amount = $params['amount'];
		$payment_type = get_payment_partner_id($params['payment_type']);
		
		$fee = null;
		$total = null;
		
		if (
		isset($payment_method) && (strlen($payment_method) > 0)
		&& isset($payment_type) && (strlen($payment_type) > 0)
		&& isset($currency) && (strlen($currency) > 0)
		&& isset($amount) && (strlen($amount) > 0)
		){
			/*$fee = 0.1 * $amount;
			$total = $fee + $amount;*/
			$fee_params['value'] = $amount;
			$fee_params['datatrn'] = datetime_now();
			$fee_params['currency_key'] = $currency;
			$fee_params['network_key'] = $payment_method;
			$fee_params['partner_key'] = $payment_type;
			
			$fee = $CI->ss_fees_model->compute_total_fee($fee_params);
			$total = $fee + $amount;
		}
		
		return json_encode( array( "fee" => $fee, "total" => $total ) );
	}
	
	function get_ben_opts($currency){
		$CI =& get_instance();
		$CI->load->model('ss_payment_methods_model');
		if (isset($currency)){
			$output = $CI->ss_payment_methods_model->options_list();
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
	
	function check_password_regex($min_length){
		// cel putin o litera mare, una mica si o cifra
		// return "/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{" . $min_length . "}.*$/";
		// pentru teste folosesc varianta simplificata
		return "/^.{" . $min_length . "}.*$/";
	}
	
	function get_language_options(){
		$CI =& get_instance();
		$languages = $CI->fuel->language->options();
		foreach ($languages as $key => $value){
			$languages[$key] = substr(strtoupper($value),0,2);
		}
		return $languages;
	}
	
	function get_language_name($lang){
		switch($lang){
			case 'ro':
				return 'romana';
				break;
			case 'en':
				return 'engleza';
				break;
			case 'it':
				return 'italiana';
				break;
			case 'sp':
				return 'spaniola';
				break;
		}
	}
	
	function get_profile_matches_list($values){

		$CI =& get_instance();
		
		$output = array();
		$list = array();
		$matches = array();
		
		$CI->load->model('ss_profiles_model');
		
		// exista 4 categorii de tipuri de profile: prenume, data nasterii, numar tranzactii, resedinta
		// pt fiecare din acestea se definesc profile de tip client sau beneficiar
		// NOTA: pt beneficiar nu am data nasterii, nr de tranzactii
		// NOTA: pt client, in loc de nr_tranzactii primesc id_user si calculez nr de tranzactii platite doar daca am profil definit pe nr de tranzactii
		
		// pt $values['prenume'] caut in profilele de tip $values['profile_type'] si prenume
		$list = $CI->ss_profiles_model->get_profiles_list($values['profile_type'], 'prenume', 'value');
		if ((count($list) > 0) && (array_key_exists('prenume', $values))){
			$my_value = $values['prenume'];
			$matches = array_filter($list, function ($element) use ($my_value) { $pos = stripos($element, $my_value); return ($pos !== false); } );
			$output = array_merge($output, array_keys($matches));
			$list = array();
			$matches = null;
		}
		
		// pt $values['data_nasterii'] caut in profilele $values['profile_type'] si data nasterii
		$list = $CI->ss_profiles_model->get_profiles_list($values['profile_type'], 'data nasterii', 'value');
		if ((count($list) > 0) && array_key_exists('data_nasterii', $values)){
			$my_value = $values['data_nasterii'];
			$matches = array_filter($list, function ($element) use ($my_value) { return ($element == $my_value); } );
			$output = array_merge($output, array_keys($matches));
			$list = array();
			$matches = null;
		}
		
		// pt $values['numar_tranzactii'] caut in profilele $values['profile_type'] si numar tranzactii
		$list = $CI->ss_profiles_model->get_profiles_list($values['profile_type'], 'numar tranzactii', 'value');
		if ((count($list) > 0) && array_key_exists('numar_tranzactii', $values)){
			$my_value = $values['numar_tranzactii'];
			$matches = array_filter($list, function ($element) use ($my_value) { return (intval($element) <= $my_value); } );
			$output = array_merge($output, array_keys($matches));
			$list = array();
			$matches = null;
		}
		
		
		// pt $values['resedinta'] caut in profilele $values['profile_type'] si resedinta
		$list = $CI->ss_profiles_model->get_profiles_list($values['profile_type'], 'resedinta', 'value');
		if ((count($list) > 0) && array_key_exists('resedinta', $values)){
			$my_value = $values['resedinta'];
			$matches = array_filter($list, function ($element) use ($my_value) { return (strtolower($element) == strtolower($my_value)); } );
			$output = array_merge($output, array_keys($matches));
			$list = array();
			$matches = null;
		}
		
		return count($output) > 0 ? $output : null;
	}
	
	function array_to_list($params, $use_keys = true){
		$output = '';
		
		if (!isset($params) || count($params) == 0){
			return null;
		}
		
		$values = $use_keys ? array_keys($params) : array_values($params);
		
		foreach ($values as $key){
			$output .= $key . ',';
		}
		$output = '(' . substr($output, 0, -1) . ')';
		
		return $output;
	}
	
	
	/* End of file my_helper.php */
	/* Location: ./application/helpers/my_helper.php */
