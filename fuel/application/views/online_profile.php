<?php 
	$this->load->helper('form');
	$attributes = array('id' => '');
	$front_lang = $this->fuel->language->selected();
	echo form_open(($front_lang == 'ro' ? '' : $front_lang . '/') . 'online_profile/edit', $attributes); 
?>
<div class="col-lg-7 col-lg-offset-5 col-sm-12">
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_name_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_last_name')?></div>
		<input class="agent-input corectie_form<?php echo (form_error('last_name')) ? ' err' : ''; ?>" type="text" name="last_name" id="last_name" value="<?php echo $vars['user']->last_name; ?>">
		<div class="agent-lable"><?php echo lang('profile_first_name')?></div>
		<input class="agent-input corectie_form<?php echo (form_error('first_name')) ? ' err' : ''; ?>" type="text" name="first_name" id="first_name" value="<?php echo $vars['user']->first_name; ?>">
		<div id="last_nameERR" class="eroare<?php echo (form_error('last_name')) ? ' afiseaza' : ''; ?>"><a name="AlastNameERR"></a><span id="lastNameERRTXT"><?php echo form_error('last_name'); ?></span><span class="close-eroare">x</span></div>
		<div id="first_nameERR" class="eroare<?php echo (form_error('first_name')) ? ' afiseaza' : ''; ?>"><a name="AfirstNameERR"></a><span id="firstNameERRTXT"><?php echo form_error('first_name'); ?></span><span class="close-eroare">x</span></div>
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_email_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_email')?></div>
		<input class="agent-input corectie_form" type="text" name="email" id="email" value="<?php echo $vars['user']->email; ?>" readonly = "true" disabled = "true">
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_password_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_password')?></div>
		<input class="agent-input corectie_form<?php echo (form_error('password')) ? ' err' : ''; ?>" type="password" name="password" id="password" value="">
		<div class="agent-lable"><?php echo lang('profile_password_confirm')?></div>
		<input class="agent-input corectie_form<?php echo (form_error('password_confirm')) ? ' err' : ''; ?>" type="password" name="password_confirm" id="password_confirm" value="">
		<div id="passwordERR" class="eroare<?php echo (form_error('password')) ? ' afiseaza' : ''; ?>"><a name="ApasswordERR"></a><span id="passwordERRTXT"><?php echo form_error('password'); ?></span><span class="close-eroare">x</span></div>
		<div id="password_confirmERR" class="eroare<?php echo (form_error('password_confirm')) ? ' afiseaza' : ''; ?>"><a name="Apassword_confirmERR"></a><span id="password_confirmERRTXT"><?php echo form_error('password_confirm'); ?></span><span class="close-eroare">x</span></div>
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_personal_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_phone')?></div>
		<input class="agent-input corectie_form<?php echo (form_error('phone')) ? ' err' : ''; ?>" type="text" name="phone" id="phone" value="<?php echo $vars['user']->phone; ?>">
		<div class="agent-lable"><?php echo lang('profile_birth_date')?></div>
		<input class="agent-input corectie_form date<?php echo (form_error('birth_date')) ? ' err' : ''; ?>" type="text" name="birth_date" id="birth_date" value="<?php echo $vars['user']->birth_date; ?>" date_format = "dd.mm.yyyy">
		<div class="agent-lable"><?php echo lang('profile_country')?></div>
		<input class="agent-input corectie_form<?php echo (form_error('country')) ? ' err' : ''; ?>" type="text" name="country" id="country" value="<?php echo $vars['user']->country; ?>">
		<div id="phoneERR" class="eroare<?php echo (form_error('phone')) ? ' afiseaza' : ''; ?>"><a name="AphoneERR"></a><span id="phoneERRTXT"><?php echo form_error('phone'); ?></span><span class="close-eroare">x</span></div>
		<div id="birth_dateERR" class="eroare<?php echo (form_error('birth_date')) ? ' afiseaza' : ''; ?>"><a name="Abirth_dateERR"></a><span id="birth_dateERRTXT"><?php echo form_error('birth_date'); ?></span><span class="close-eroare">x</span></div>
		<div id="countryERR" class="eroare<?php echo (form_error('country')) ? ' afiseaza' : ''; ?>"><a name="AcountryERR"></a><span id="countryERRTXT"><?php echo form_error('country'); ?></span><span class="close-eroare">x</span></div>
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_bank_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_account')?></div>
		<input class="agent-input corectie_form<?php echo (form_error('account')) ? ' err' : ''; ?>" type="text" name="account" id="account" value="<?php echo $vars['user']->account; ?>">
		<div class="agent-lable"><?php echo lang('profile_swift')?></div>
		<input class="agent-input corectie_form<?php echo (form_error('swift')) ? ' err' : ''; ?>" type="text" name="swift" id="swift" value="<?php echo $vars['user']->swift; ?>">
		<div class="agent-lable"><?php echo lang('profile_bank')?></div>
		<input class="agent-input corectie_form<?php echo (form_error('bank')) ? ' err' : ''; ?>" type="text" name="bank" id="bank" value="<?php echo $vars['user']->bank; ?>">
		<div id="accountERR" class="eroare<?php echo (form_error('account')) ? ' afiseaza' : ''; ?>"><a name="AaccountERR"></a><span id="accountERRTXT"><?php echo form_error('account'); ?></span><span class="close-eroare">x</span></div>
		<div id="swiftERR" class="eroare<?php echo (form_error('swift')) ? ' afiseaza' : ''; ?>"><a name="AswiftERR"></a><span id="swiftERRTXT"><?php echo form_error('swift'); ?></span><span class="close-eroare">x</span></div>
		<div id="bankERR" class="eroare<?php echo (form_error('bank')) ? ' afiseaza' : ''; ?>"><a name="AbankERR"></a><span id="bankERRTXT"><?php echo form_error('bank'); ?></span><span class="close-eroare">x</span></div>
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('profile_default_language_box')?></div>
		<div class="agent-lable"><?php echo lang('profile_default_language')?></div>
		<select class="agent-input corectie_form<?php echo (form_error('default_language')) ? ' err' : ''; ?>" name="default_language" id="default_language">
		<?php foreach(get_language_options() as $key => $value):?>
		<option value = "<?php echo $key?>" <?php echo $vars['user']->default_language === $key ? 'selected' : ''?>><?php echo $value?></option>
		<?php endforeach;?>
		<div id="default_languageERR" class="eroare<?php echo (form_error('default_language')) ? ' afiseaza' : ''; ?>"><a name="Adefault_languageERR"></a><span id="default_languageERRTXT"><?php echo form_error('default_language'); ?></span><span class="close-eroare">x</span></div>
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
