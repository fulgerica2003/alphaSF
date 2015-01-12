<?php 
	$this->load->helper('form');
	$this->lang->load('ss', $lang);
?>

<div class="input-box">
	<div class="explica-cont"><?php echo lang('payments_sidenote_city');?></div>
	<div class="agent-lable"><?php echo lang('payments_city');?></div>
	<select id="cities" name="cities" class = "<?php echo (form_error('cities')) ? ' err' : ''; ?>">
			<option value=""><?php echo lang('payments_pick');?></option>
			<?php foreach($cities as $key => $value):?>
			<option value="<?php echo $key;?>" <?php echo set_select('cities', $key); ?> ><?php echo $value;?></option>
			<?php endforeach?>
	</select>
	<div id="citiesERR" class="eroare<?php echo (form_error('cities')) ? ' afiseaza' : ''; ?>"><a name="AcitiesERR"></a><span id="citiesERRTXT"><?php echo (form_error('cities')) ? 'Camp obligatoriu!' : ''; ?></span><span class="close-eroare">x</span></div>
</div>