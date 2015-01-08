<?php
	$CI->load->library('ion_auth');
	if ($CI->ion_auth->logged_in()){
		$user = $CI->ion_auth->user()->row();
		$first_name = $user->first_name;
	}else{
		redirect('/', 'refresh');
	}
?>

<div id="message-login"><?php echo !empty($user) ? sprintf(lang('login_hi', 'online_profile', $first_name)) : ''?></div>
<div id="loginSmall" name="loginSmall" style="float:left;"></div>
<div style="float:left;padding-top:15px; padding-right:11px;"></a></div>
<a href ="auth/logout" class="login-header">
	<span id="login-button"><?php echo lang('login_logout')?></span>
</a>