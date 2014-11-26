<?php //echo validation_errors(); ?>

<?php $attributes = array('class' => 'col-lg-6', 'id' => 'myform');
	
echo form_open('contact/mesaj', $attributes); ?>

<div class = "input-box">
	<?php $attributes = array(
		'class' => 'agent-lable',
		);
	echo form_label('Nume', 'name', $attributes);?>
	<?php echo form_error('name'); ?>
	<input type="text" name="name" value="<?php echo set_value('name'); ?>" size="25" class = "agent-input"/>
</div>

<div class = "input-box">
	<?php $attributes = array(
		'class' => 'agent-lable',
		);
	echo form_label('Adresa de email', 'email', $attributes);?>
	<?php echo form_error('email'); ?>
	<input type="text" name="email" value="<?php echo set_value('email'); ?>" size="25" class = "agent-input"/>
</div>

<div class = "input-box">
	<?php $attributes = array(
		'class' => 'agent-lable',
		);
	echo form_label('Subiect', 'subject', $attributes);?>
	<?php echo form_error('subject'); ?>
	<?php $options = array(
                  'Intrebari diverse'  => 'Intrebari diverse',
                  'Intrebari referitoare la transfer de bani'    => 'Intrebari referitoare la transfer de bani',
                  'unt deja aegnt'   => 'Sunt deja agent',
                  'Doresc sa devin agent' => 'Doresc sa devin agent',
                );
				echo form_dropdown('subject', $options, '', 'class = "agent-input"');?>
</div>

<div class = "input-box">
	<?php $attributes = array(
		'class' => 'agent-lable',
		);
	echo form_label('Mesaj', 'message', $attributes);?>
	<?php echo form_error('message'); ?>
	<?php echo form_textarea('message', '', 'class = "agent-input"');?>
</div>

<div><button type="submit" value="send" class = "agent-submit">Trimite</button></div>

</form>