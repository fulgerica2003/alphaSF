<?php 
	$CI->load->library('ion_auth');
	if (!$CI->ion_auth->logged_in()){
		redirect('/?showLogin=oi');
	}
	$vars['layout']='online_invoices';
	$vars['page_title']='Online invoices';
	$vars['suppCat']='';
	$vars['suppliers']='';
	$vars['payOpts']='';
	$vars['customFields']='';
	$vars['s1']='';
	$vars['displayConfirm']='false';

?>