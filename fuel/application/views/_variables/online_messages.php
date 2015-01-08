<?php 
	$CI->load->library('ion_auth');
	if (!$CI->ion_auth->logged_in()){
		redirect('/', 'refresh');
	}
	$vars['layout']='ssmessages';
	$vars['page_title']='Mesaje';
	$vars['messages'] = null;
	$vars['pagination'] = null;
	$vars['recent_messages'] = null;
?>