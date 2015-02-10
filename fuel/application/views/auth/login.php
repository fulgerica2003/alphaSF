<div id="auth-pop">
	<div id = "id-modal-header" class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up"><?php echo lang('general_close'); ?></button>
		<p class="modal-title"><?php echo lang('login_heading');?>
		<!-- <p><?php //echo lang('login_subheading');?></p> --></p>
	</div>
	<div class="modal-body">
		<div id="infoMessage"><?php //echo $message;?></div>
		
		<?php $attributes = array('id' => 'form-login-pop'); echo form_open("auth/login", $attributes);?>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('login_identity_label', 'identity');?></div>
				<?php echo form_input($identity);?>
			</p>
			<div id="identityERR" class="eroare <?php echo (form_error('identity')) ? 'afiseaza' : ''; ?>"><a name="AidentityERR"></a><span id="identityERRTXT"><?php echo form_error('identity'); ?></span><span class="close-eroare"></span></div>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('login_password_label', 'password');?></div>
				<?php echo form_input($password);?>
			</p>
			<div id="passwordERR" class="eroare <?php echo (form_error('password')) ? 'afiseaza' : ''; ?>"><a name="ApasswordERR"></a><span id="passwordERRTXT"><?php echo form_error('password'); ?></span><span class="close-eroare"></span></div>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo 'Captcha:';?> <br /></div>
				<?php echo $image; // this will show the captcha image?><br />
				<?php echo form_input($word);?>
			</p>
			<div id="wordERR" class="eroare <?php echo (form_error('word')) ? 'afiseaza' : ''; ?>"><a name="AwordERR"></a><span id="wordERRTXT"><?php echo form_error('word'); ?></span><span class="close-eroare"></span></div>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('login_remember_label', 'remember');?></div>
				<?php echo form_checkbox('remember', '1', FALSE, 'id="remember"');?>
			</p>
		</div>
		
		<div class="input-box">
			<p><a href="auth/forgot_password" id="recovery"><?php echo lang('login_forgot_password');?></a></p>
			<p><?php $data = array(
				'name'        => 'submit',
				'id'          => 'submit',
				'value'       => lang('login_submit_btn'),
				'class'       => 'agent-submit',
				); 
			echo form_submit($data);?></p>
		</div>
		
		<?php echo form_close();?>
		
		<div class="col-lg-6 col-sm-6">
			<div id="sign-up">
				<div class="caseta-titlu"><?php echo lang('register_user_heading');?></div>
				<p><?php echo lang('register_user_subheading');?></p>
			</div>
		</div>
		
		<div class="col-lg-6 col-sm-6">
			<div id="sign-up-button"><?php echo lang('register_user_heading');?></div>
		</div>
		<div class="clearfix"></div>
		
		<!-- <p><a href="register"><?php //echo lang('login_register');?></a></p> -->
	</div>
</div>
