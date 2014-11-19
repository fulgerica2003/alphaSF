<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	// add your site specific functions here
	
	/**** metoda e apelata pentru expedierea de mesaje ce tin de tranzactii (facturi si plati)
	*/
	function send_tx_email($email_info = array()){
	
		$data = array(
				'unid'   	=> $email_info['unid'],
				'message' 	=> $email_info['message'],
		);
		
		$CI =& get_instance();
		
		$body = $CI->load->view('emails/message.tpl.php', $data, true);
		
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
	/* End of file my_helper.php */
	/* Location: ./application/helpers/my_helper.php */
