<div class="input-box ">
	<div class="explica-cont">Informatii schimb valutar.</div>
	<div class="agent-lable">Beneficiarul primeste <?php echo ($cv * $amount)?> RON</div>
	<div class="agent-lable">Curs de schimb valutar: <?php echo $cv?></div>
	<?php if ($accept === TRUE): ?><div class="agent-lable">De acord cu schimbul valutar
	<input id = "acceptcv" type="checkbox" name="acceptcv" value="acceptcv" <?php echo set_checkbox('acceptcv', 'acceptcv'); ?>></div>
	<?php else: ?>
	<input id = "acceptcv" type="hidden" name="acceptcv" value="acceptcv" >
	<?php endif?>
</div>