<?php
	$CI->load->library('ion_auth');
	if (!$CI->ion_auth->logged_in()){
		$this->load->view('_blocks/_sslogin');
	}else{
		$this->load->view('_blocks/_sslogout');
	}
?>

