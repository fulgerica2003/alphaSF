<?php 
	$CI->load->library('ion_auth');
	if (!$CI->ion_auth->logged_in()){
		redirect('/', 'refresh');
	}
	$vars['layout']='ssuser_profile';
	$vars['page_title']='User profile';
	$vars['user']=null;
	$vars['message']=null;
	
	$vars['recent_messages'] = null;
?>