<div class="input-box">
	<div class="explica-cont">In cazul in care localitatea cautata nu este disponibila, va rugam sa selectati o alta modalitate de plata</div>
	<div class="agent-lable">Localitati disponibile</div>
	<select id="modIncasare" name="modIncasare">
			<option value="">alege</option>
			<?php foreach($cities as $key => $value):?>
			<option value="<?php echo $key;?>"><?php echo $value;?></option>
			<?php endforeach?>
		</select>
</div>