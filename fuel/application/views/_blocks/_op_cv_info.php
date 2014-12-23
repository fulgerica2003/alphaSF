<div class="input-box ">
	<div class="explica-cont">Informatii schimb valutar</div>
	<div class="agent-lable">Beneficiarul primeste <?php echo ($cv * $amount)?> RON</div>
	<div class="agent-lable">Curs de schimb valutar: <?php echo $cv?></div>
	<?php if ($accept === TRUE): ?><div class="agent-lable">De acord cu schimbul valutar
	<input type="checkbox" name="accept" value="accept"><?php endif?></div>
</div>