<div id="infoMessage"><?php echo $message;?></div>
<?php 
	$this->load->helper('form');
	$attributes = array('id' => '');
	echo form_open('online_profile/edit', $attributes); 
?>
<div class="col-lg-7 col-lg-offset-5 col-sm-12">
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_name_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_last_name')?></div>
		<input class="agent-input corectie_form" type="text" name="last_name" id="last_name" value="<?php echo $vars['user']->last_name; ?>">
		<div class="agent-lable"><?php echo lang('profile_first_name')?></div>
		<input class="agent-input corectie_form" type="text" name="first_name" id="first_name" value="<?php echo $vars['user']->first_name; ?>">
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_email_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_email')?></div>
		<input class="agent-input corectie_form" type="text" name="email" id="email" value="<?php echo $vars['user']->email; ?>" readonly = "true" disabled = "true">
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_password_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_password')?></div>
		<input class="agent-input corectie_form" type="password" name="password" id="password" value="">
		<div class="agent-lable"><?php echo lang('profile_password_confirm')?></div>
		<input class="agent-input corectie_form" type="password" name="password_confirm" id="password_confirm" value="">
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_personal_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_phone')?></div>
		<input class="agent-input corectie_form" type="text" name="phone" id="phone" value="<?php echo $vars['user']->phone; ?>">
		<div class="agent-lable"><?php echo lang('profile_birth_date')?></div>
		<input class="agent-input corectie_form date" type="text" name="birth_date" id="birth_date" value="<?php echo $vars['user']->birth_date; ?>" date_format = "dd.mm.yyyy">
		<div class="agent-lable"><?php echo lang('profile_country')?></div>
		<input class="agent-input corectie_form" type="text" name="country" id="country" value="<?php echo $vars['user']->country; ?>">
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_bank_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_account')?></div>
		<input class="agent-input corectie_form" type="text" name="account" id="account" value="<?php echo $vars['user']->account; ?>">
		<div class="agent-lable"><?php echo lang('profile_swift')?></div>
		<input class="agent-input corectie_form" type="text" name="swift" id="swift" value="<?php echo $vars['user']->swift; ?>">
		<div class="agent-lable"><?php echo lang('profile_bank')?></div>
		<input class="agent-input corectie_form" type="text" name="bank" id="bank" value="<?php echo $vars['user']->bank; ?>">
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_default_language_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_default_language')?></div>
		<select class="agent-input corectie_form" name="default_language" id="default_language">
		<?php foreach(get_language_options() as $key => $value):?>
		<option value = "<?php echo $key?>" <?php echo $vars['user']->default_language === $key ? 'selected' : ''?>><?php echo $value?></option>
		<?php endforeach;?>
	</div>
	
</div>

<div class="col-lg-7 col-lg-offset-5 col-sm-12 last-form">
	<div class="input-box">
		<input id="Bsubmit" name="Bsubmit" class="agent-submit salveaza" type="submit" value="<?php echo lang('profile_save')?>">	
	</div>
	<div  class="clearfix" ></div>
</div>

<div  class="clearfix" ></div>

</form>
