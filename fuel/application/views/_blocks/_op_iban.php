<?php 
	$this->load->helper('form');
	$this->lang->load('ss', $lang);
?>

<div class="input-box ">
	<div class="explica-cont"><?php echo lang('payments_sidenote_iban');?></div>
	<div class="agent-lable"><?php echo lang('payments_iban');?></div>
	<div name="test">
		<input style="width:15%;" class="agent-input first_iban<?php echo (form_error('iban1')) ? ' err' : ''; ?>" type="text" name="iban1" id="iban1" value="<?php echo set_value('iban1'); ?>">
		<input style="width:15%;" class="agent-input second_iban<?php echo (form_error('iban2')) ? ' err' : ''; ?>" type="text" name="iban2" id="iban2" value="<?php echo set_value('iban2'); ?>">
		<input style="width:40%;" class="agent-input third_iban<?php echo (form_error('iban3')) ? ' err' : ''; ?>" type="text" name="iban3" id="iban3" value="<?php echo set_value('iban3'); ?>">
	</div>
	<div class="clearfix"></div>
	<div id="ibanERR" class="eroare <?php echo (form_error('iban1') || form_error('iban2') || form_error('iban3')) ? 'afiseaza' : ''; ?>"><a name="AibanERR"></a><span id="amountERRTXT"><?php echo form_error('iban1') ? form_error('iban1') : (form_error('iban2') ? form_error('iban2') : (form_error('iban3') ? form_error('iban3') : '')); ?></span><span class="close-eroare">x</span></div>		
</div>