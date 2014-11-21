<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	// add your site specific functions here
	
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
	
	function get_status($key){
		$status = array(
			'init' => 1,   // in curs de procesare
			'pay'  => 50,  // in curs de plata
			'err'  => 55,  // eroare plata
			'corr' => 60,  // corectie
			'ref'  => 80,  // in curs de retur
			'rfd'  => 90,  // returnata
			'pyd'  => 100, // platita
			);
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
		}
	}
	/* End of file my_helper.php */
	/* Location: ./application/helpers/my_helper.php */
