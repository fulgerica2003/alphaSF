<h1><?php echo lang('reset_password_heading');?></h1>

<div id="infoMessage"><?php echo $message;?></div>

<?php echo form_open('auth/reset_password/' . $code);?>
<div class="input-box">
	<p>
		<div class="agent-lable"><label for="new_password"><?php echo sprintf(lang('reset_password_new_password_label', $min_password_length));?></label> <br /></div>
		<?php echo form_input($new_password);?>
	</p>
</div>
<div class="input-box">
	<p>
		<div class="agent-lable"><?php echo lang('reset_password_new_password_confirm_label', 'new_password_confirm');?> <br /></div>
		<?php echo form_input($new_password_confirm);?>
	</p>
</div>
	<?php echo form_input($user_id);?>
	<?php echo form_hidden($csrf); ?>

	<p><?php //echo form_submit('submit', lang('reset_password_submit_btn'));?></p>
	<div class="input-box">
			<p><?php $data = array(
				'name'        => 'submit',
				'id'          => 'submit',
				'value'       => lang('reset_password_submit_btn'),
				'class'       => 'agent-submit',
				); 
			echo form_submit($data);?></p>
	</div>

<?php echo form_close();?>