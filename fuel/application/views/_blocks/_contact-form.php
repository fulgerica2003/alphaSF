<?php $attributes = array('class' => 'col-lg-6', 'id' => 'myform');
	
echo form_open('', $attributes); ?>

<div class = "input-box">
	<?php $attributes = array(
		'class' => 'agent-lable',
		);
	echo form_label(lang('contact_name'), 'name', $attributes);?>
	<?php echo form_error('name'); ?>
	<input type="text" name="name" value="<?php echo set_value('name'); ?>" size="25" class = "agent-input"/>
</div>

<div class = "input-box">
	<?php $attributes = array(
		'class' => 'agent-lable',
		);
	echo form_label(lang('contact_email'), 'email', $attributes);?>
	<?php echo form_error('email'); ?>
	<input type="text" name="email" value="<?php echo set_value('email'); ?>" size="25" class = "agent-input"/>
</div>

<div class = "input-box">
	<?php $attributes = array(
		'class' => 'agent-lable',
		);
	echo form_label(lang('contact_msg_type'), 'subject', $attributes);?>
	<?php echo form_error('subject'); ?>
	<?php $options = array(
                  'Intrebari diverse'  							=> lang('contact_msg_type_o1'),
                  'Intrebari referitoare la transfer de bani'   => lang('contact_msg_type_o2'),
                  'unt deja aegnt'   							=> lang('contact_msg_type_o3'),
                  'Doresc sa devin agent'						=> lang('contact_msg_type_o4'),
                );
				echo form_dropdown('subject', $options, '', 'class = "agent-input"');?>
</div>

<div class = "input-box">
	<?php $attributes = array(
		'class' => 'agent-lable',
		);
	echo form_label(lang('contact_message'), 'message', $attributes);?>
	<?php echo form_error('message'); ?>
	<?php echo form_textarea('message', '', 'class = "agent-input"');?>
</div>

<div><button type="submit" name="submit_contact" value="send" class = "agent-submit"><?php echo lang('contact_send'); ?></button></div>

</form>