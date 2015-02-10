<div id="auth-pop">
	<div id = "id-modal-header" class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up"><?php echo lang('general_close'); ?></button>
		<p class="modal-title"><?php echo lang('register_user_heading');?>
		<!-- <p><?php //echo lang('register_user_subheading');?></p> --></p>
	</div>
	
	<div class="modal-body" id="auth-pop">
		<div id="infoMessage"><?php //echo $message;?></div>
		
		<?php $attributes = array('id' => 'form-login-pop'); echo form_open("auth/register", $attributes);?>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_lname_label', 'last_name');?> <br /></div>
				<?php echo form_input($last_name);?>
			</p>
			<div id="last_nameERR" class="eroare <?php echo (form_error('last_name')) ? 'afiseaza' : ''; ?>"><a name="Alast_nameERR"></a><span id="last_nameERRTXT"><?php echo form_error('last_name'); ?></span><span class="close-eroare"></span></div>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_fname_label', 'first_name');?> <br /></div>
				<?php echo form_input($first_name);?>
				<div id="first_nameERR" class="eroare <?php echo (form_error('first_name')) ? 'afiseaza' : ''; ?>"><a name="Afirst_nameERR"></a><span id="first_nameERRTXT"><?php echo form_error('first_name'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_email_label', 'email');?> <br /></div>
				<?php echo form_input($email);?>
				<div id="emailERR" class="eroare <?php echo (form_error('email')) ? 'afiseaza' : ''; ?>"><a name="AemailERR"></a><span id="emailERRTXT"><?php echo form_error('email'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_password_label', 'password');?> <?php echo lang('register_user_password_pattern_label');?><br /></div>
				<?php echo form_input($password);?>
				<div id="passwordERR" class="eroare <?php echo (form_error('password')) ? 'afiseaza' : ''; ?>"><a name="ApasswordERR"></a><span id="passwordERRTXT"><?php echo form_error('password'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_password_confirm_label', 'password_confirm');?> <br /></div>
				<?php echo form_input($password_confirm);?>
				<div id="password_confirmERR" class="eroare <?php echo (form_error('password_confirm')) ? 'afiseaza' : ''; ?>"><a name="Apassword_confirmERR"></a><span id="password_confirmERRTXT"><?php echo form_error('password_confirm'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_phone_label', 'phone');?> <br /></div>
				<?php echo form_input($phone);?>
				<div id="phoneERR" class="eroare <?php echo (form_error('phone')) ? 'afiseaza' : ''; ?>"><a name="AphoneERR"></a><span id="phoneERRTXT"><?php echo form_error('phone'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_birth_date', 'birth_date');?> <br /></div>
				<?php //echo form_input($birth_date);?>
				<input id = "birth_date" name = "birth_date" class="agent-input datefield <?php echo (form_error('birth_date')) ? 'err' : ''; ?>" type="text" value="<?php echo set_value('birth_date'); ?>">
				<div id="birth_dateERR" class="eroare <?php echo (form_error('birth_date')) ? 'afiseaza' : ''; ?>"><a name="Abirth_dateERR"></a><span id="birth_dateERRTXT"><?php echo form_error('birth_date'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_country', 'country');?> <br /></div>
				<?php echo form_input($country);?>
				<div id="countryERR" class="eroare <?php echo (form_error('country')) ? 'afiseaza' : ''; ?>"><a name="AcountryERR"></a><span id="countryERRTXT"><?php echo form_error('country'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_account', 'account');?> <br /></div>
				<?php echo form_input($account);?>
				<div id="accountERR" class="eroare <?php echo (form_error('account')) ? 'afiseaza' : ''; ?>"><a name="AaccountERR"></a><span id="accountERRTXT"><?php echo form_error('account'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_swift', 'swift');?> <br /></div>
				<?php echo form_input($swift);?>
				<div id="swiftERR" class="eroare <?php echo (form_error('swift')) ? 'afiseaza' : ''; ?>"><a name="AswiftERR"></a><span id="swiftERRTXT"><?php echo form_error('swift'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_bank', 'bank');?> <br /></div>
				<?php echo form_input($bank);?>
				<div id="bankERR" class="eroare <?php echo (form_error('bank')) ? 'afiseaza' : ''; ?>"><a name="AbankERR"></a><span id="bankERRTXT"><?php echo form_error('bank'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_default_lang', 'default_language');?> <br /></div>
				<?php echo form_dropdown($default_language['name'], $default_language['options'], $default_language['value'], $default_language['class']);?>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo 'Captcha:';?> <br /></div>
				<?php echo $image; // this will show the captcha image?><br />
				<?php echo form_input($word);?>
				<div id="wordERR" class="eroare <?php echo (form_error('word')) ? 'afiseaza' : ''; ?>"><a name="AwordERR"></a><span id="wordERRTXT"><?php echo form_error('word'); ?></span><span class="close-eroare"></span></div>
			</p>
		</div>
		<br/>
		<div class="input-box">
			<p><?php $data = array(
				'name'        => 'submit',
				'id'          => 'submit',
				'value'       => lang('register_user_submit_btn'),
				'class'       => 'agent-submit',
				); 
			echo form_submit($data);?></p>
		</div>
		
		<?php echo form_close();?>
		
		<div class="col-lg-6 col-sm-6">
			<div id="sign-up">
				<div class="caseta-titlu"><?php echo lang('login_heading');?></div>
				<p><?php echo lang('login_subheading');?></p>
			</div>
		</div>
		
		<div class="col-lg-6 col-sm-6">
			<div id="login-button-pop"><?php echo lang('login_heading');?></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>