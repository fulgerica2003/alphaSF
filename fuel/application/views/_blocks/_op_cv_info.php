<?php 
	$this->lang->load('ss', $lang);
?>
<div class="input-box ">
	<div class="explica-cont"><?php echo lang('payments_sidenote_exch');?></div>
	<div class="agent-lable"><?php echo lang('payments_exch_recipient');?>  <?php echo ($cv * $amount)?> RON</div>
	<div class="agent-lable"><?php echo lang('payments_f_exch');?> <?php echo $cv?></div>
	<?php if ($accept === TRUE): ?><div class="agent-lable"><?php echo lang('payments_agree_exch');?>
	<input id = "acceptcv" type="checkbox" name="acceptcv" value="acceptcv" <?php echo set_checkbox('acceptcv', 'acceptcv'); ?>></div>
	<?php else: ?>
	<input id = "acceptcv" type="hidden" name="acceptcv" value="acceptcv" >
	<?php endif?>
</div>