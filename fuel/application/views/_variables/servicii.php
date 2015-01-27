<?php
	$CI =& get_instance();
	$CI->load->model('ss_payment_methods_model');
	$CI->load->library('session');
	
	// variabile pentru calculator plati
	$vars['calcTipPlata'] = 'card';
	$vars['calcAmount'] = null;
	$vars['calcCurrency'] = null;
	$vars['calcModIncasare'] = null;
	
	// util pentru a pastra valorile daca utilizatorul nu e autentificat si inchide fereastra de autentificare
	$calc_details = $CI->session->userdata('calcPayDetails');
	if ($calc_details != null){
		$payment_type = $calc_details['tipPlata'];
		$amount = $calc_details['amount'];
		$payment_method = $calc_details['modIncasare'];
		$currency = $calc_details['currency'];
		
		$vars['calcTipPlata'] = $payment_type;
		$vars['calcAmount'] = $amount;
		$vars['calcCurrency'] = $currency;
		$vars['calcModIncasare'] = $payment_method;
	}
	$vars['benOpts'] = $CI->ss_payment_methods_model->options_list();


	
?>