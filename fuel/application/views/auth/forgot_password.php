<div id="auth-pop">
	<div id = "id-modal-header" class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up"><?php echo lang('general_close'); ?></button>
		<p class="modal-title"><?php echo lang('forgot_password_heading');?></p>
		<!-- <p><?php echo sprintf(lang('forgot_password_subheading', $identity_label)); ?></p> -->
	</div>
	<div class="modal-body">
		<div id="infoMessage"><?php echo $message;?></div>
		
		<?php $attributes = array('id' => 'form-login-pop'); echo form_open("auth/forgot_password", $attributes);?>
		
		<div class="input-box">
			<p>
				<div class="agent-lable"><label for="email"><?php echo sprintf(lang('forgot_password_email_label', $identity_label));?></label> <br /></div>
				<?php echo form_input($email);?>
			</p>
		</div>
		<br/>
		<div class="input-box">
			<p><a href="auth/login" id="back-to-login"><?php echo lang('login_heading');?></a></p>
			<p><?php $data = array(
				'name'        => 'submit',
				'id'          => 'submit',
				'value'       => lang('forgot_password_submit_btn'),
				'class'       => 'agent-submit',
				); 
			echo form_submit($data);?></p>
		</div>
		
		<?php echo form_close();?>
	</div>
</div>