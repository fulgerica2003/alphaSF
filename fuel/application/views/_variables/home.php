<?php
	$CI =& get_instance();
	$CI->load->model('ss_payment_methods_model');
	$CI->load->library('session');
	
	// variabile pentru calculator plati
	$vars['calcTipPlata'] = 'card';
	$vars['calcAmount'] = null;
	$vars['calcCurrency'] = null;
	$vars['calcModIncasare'] = null;
	
	// variabile pentru calculator facturi
	$vars['calcInvTipPlata'] = 'card';
	$vars['calcInvAmount'] = null;
	
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
	
	// util pentru a pastra valorile daca utilizatorul nu e autentificat si inchide fereastra de autentificare
	$calc_inv_details = $CI->session->userdata('calcInvDetails');
	if ($calc_inv_details != null){
		$payment_type = $calc_inv_details['tipPlata'];
		$amount = $calc_inv_details['amount'];
		
		$vars['calcInvTipPlata'] = $payment_type;
		$vars['calcInvAmount'] = $amount;
	}
	if (isset($currency)){
		$vars['benOpts'] = get_ben_opts($currency);
	}else{
		$vars['benOpts'] = $CI->ss_payment_methods_model->options_list();
	}
	
?>