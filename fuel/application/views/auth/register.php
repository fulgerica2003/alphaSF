<div id="auth-pop">
	<div id = "id-modal-header" class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up">Close</button>
		<p class="modal-title"><?php echo lang('register_user_heading');?>
		<!-- <p><?php //echo lang('register_user_subheading');?></p> --></p>
	</div>
	
	<div class="modal-body" id="auth-pop">
		<div id="infoMessage"><?php echo $message;?></div>
		
		<?php $attributes = array('id' => 'form-login-pop'); echo form_open("auth/register", $attributes);?>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_lname_label', 'last_name');?> <br /></div>
				<?php echo form_input($last_name);?>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_fname_label', 'first_name');?> <br /></div>
				<?php echo form_input($first_name);?>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_email_label', 'email');?> <br /></div>
				<?php echo form_input($email);?>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_password_label', 'password');?> <br /></div>
				<?php echo form_input($password);?>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_password_confirm_label', 'password_confirm');?> <br /></div>
				<?php echo form_input($password_confirm);?>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_phone_label', 'phone');?> <br /></div>
				<?php echo form_input($phone);?>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_birth_date', 'birth_date');?> <br /></div>
				<?php echo form_input($birth_date);?>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo lang('register_user_country', 'country');?> <br /></div>
				<?php echo form_input($country);?>
			</p>
		</div>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><?php echo 'Captcha:';?> <br /></div>
				<?php echo $image; // this will show the captcha image?><br />
				<?php echo form_input($word);?>
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