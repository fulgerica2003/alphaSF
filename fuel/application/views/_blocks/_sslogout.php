<?php
	$CI->load->library('ion_auth');
	if ($CI->ion_auth->logged_in()){
		$user = $CI->ion_auth->user()->row();
		$first_name = $user->first_name;
	}else{
		redirect('/', 'refresh');
	}
?>

<a href ="auth/logout" class="login-header">
	<span><?php echo !empty($user) ? sprintf(lang('login_hi', $first_name)) : ''?></span>
	<span id="login-button"><?php echo lang('login_logout')?></span>
</a>