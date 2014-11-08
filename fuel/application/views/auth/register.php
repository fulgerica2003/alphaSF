<h1><?php echo lang('register_user_heading');?></h1>
<p><?php echo lang('register_user_subheading');?></p>

<div id="infoMessage"><?php echo $message;?></div>

<?php echo form_open("auth/register");?>

<p>
	<?php echo lang('register_user_lname_label', 'last_name');?> <br />
	<?php echo form_input($last_name);?>
</p>

<p>
	<?php echo lang('register_user_fname_label', 'first_name');?> <br />
	<?php echo form_input($first_name);?>
</p>

<p>
	<?php echo lang('register_user_email_label', 'email');?> <br />
	<?php echo form_input($email);?>
</p>

<p>
	<?php echo lang('register_user_password_label', 'password');?> <br />
	<?php echo form_input($password);?>
</p>

<p>
	<?php echo lang('register_user_password_confirm_label', 'password_confirm');?> <br />
	<?php echo form_input($password_confirm);?>
</p>

<p>
	<?php echo lang('register_user_phone_label', 'phone');?> <br />
	<?php echo form_input($phone);?>
</p>

<p>
	<?php echo lang('register_user_birth_date', 'birth_date');?> <br />
	<?php echo form_input($birth_date);?>
</p>

<p>
	<?php echo lang('register_user_country', 'country');?> <br />
	<?php echo form_input($country);?>
</p>

<p>
	<?php echo 'Captcha:';?> <br />
	<?php echo $image; // this will show the captcha image?><br />
	<?php echo form_input($word);?>
</p>

<p><?php echo form_submit('submit', lang('register_user_submit_btn'));?></p>

<?php echo form_close();?>
