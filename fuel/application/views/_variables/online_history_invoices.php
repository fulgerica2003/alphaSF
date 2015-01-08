<?php 
	$CI->load->library('ion_auth');
	if (!$CI->ion_auth->logged_in()){
		redirect('/', 'refresh');
	}
	$vars['layout']='ssmessages';
	$vars['page_title']='Istoric facturi';
	
	$vars['invoices'] = null;
	$vars['pagination'] = null;
	$vars['recent_invoices'] = null;
?>