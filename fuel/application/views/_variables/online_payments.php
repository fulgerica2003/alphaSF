<?php 
	$CI->load->library('ion_auth');
	if (!$CI->ion_auth->logged_in()){
		redirect('/?showLogin=op');
	}
	$vars['layout']='online-payments';
	$vars['page_title']='Online payments';
	$vars['payOpts']='';
	$vars['benOpts']='';
	$vars['cities']='';
	$vars['cv']='';
	$vars['customFields']='';
	$vars['displayConfirm']='false';
	$vars['calcTipPlata']=null;
	$vars['calcAmount']=null;
	$vars['calcCurrency']=null;
	$vars['calcModIncasare']=null;
?>