<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	// add your site specific functions here
	
	function status(){
		$status = array(
		'init' => 1,   // in curs de procesare
		'pay'  => 50,  // in curs de plata
		'err'  => 55,  // eroare plata
		'corr' => 60,  // corectie
		'ref'  => 80,  // in curs de retur
		'rfd'  => 90,  // returnata
		'pyd'  => 100, // platita
		);
		return $status;
	}
	
	function status_backend_test(){
		$status = array(
		1 	=> 'in curs de procesare', 
		50  => 'in curs de plata',
		55  => 'eroare plata',
		60 	=> 'corectie',
		80  => 'in curs de retur',
		90  => 'returnata',
		100 => 'platita',
		);
		return $status;
	}
	
	function get_status($key){
		$status = status();
		return $status[$key];
	}
	
	function get_status_label($status){
		switch ($status){
			case 1: return 'in curs de procesare';
			break;
			case 50: return 'in curs de plata';
			break;
			case 55: return 'eroare plata';
			break;
			case 60: return 'corectie';
			break;
			case 80: return 'in curs de retur';
			break;
			case 90: return 'returnata';
			break;
			case 100: return 'platita';
			break;
			default: return 'N/A';
		}
	}
	
	function get_payment_types(){
		$output = array('card' => 'Card', 'cont' => 'Cont');
		
		return $output;
	}
	
	function get_tx_types(){
		$output = array('pay' => 'pay', 'inv' => 'inv');
		
		return $output;
	}
	
	function get_tx_type($tx_type){
		$output = get_tx_types();
		
		return $output[$tx_type];
	}
	
	function log_ref($unid, $msg, $email){
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
			$results = $CI->ss_invoices_model->payment_by_unid($unid);
		}
		
		$tx = $results->result();
		
		$message['id_user'] = $tx[0]->inv_id_user;
		$message['id_tx'] = $tx[0]->inv_id;
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
		$fp = fopen($name . '.csv', 'w');
		
		foreach ($content as $fields) {
			fputcsv($fp, $fields, '|');
		}
		
		fclose($fp);
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
		$payment_method = $params['payment_method'];
		$currency = $params['currency'];
		$amount = $params['amount'];
		
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
	
	
	/* End of file my_helper.php */
	/* Location: ./application/helpers/my_helper.php */
