<?php 
	$CI->load->library('ion_auth');
	if (!$CI->ion_auth->logged_in()){
		redirect('/?showLogin=op');
	}
	$vars['layout']='online-payments';
	$vars['page_title']='Thank you';
	$vars['message']='Thank you';
?>