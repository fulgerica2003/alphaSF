<?php 
	$this->load->helper('form');
?>

<div class="input-box">
	<div class="explica-cont">In cazul in care localitatea cautata nu este disponibila, va rugam sa selectati o alta modalitate de plata</div>
	<div class="agent-lable">Localitati disponibile</div>
	<select id="cities" name="cities" class = "<?php echo (form_error('cities')) ? ' err' : ''; ?>">
			<option value="">alege</option>
			<?php foreach($cities as $key => $value):?>
			<option value="<?php echo $key;?>" <?php echo set_select('cities', $key); ?> ><?php echo $value;?></option>
			<?php endforeach?>
	</select>
	<div id="citiesERR" class="eroare<?php echo (form_error('cities')) ? ' afiseaza' : ''; ?>"><a name="AcitiesERR"></a><span id="citiesERRTXT"><?php echo (form_error('cities')) ? 'Camp obligatoriu!' : ''; ?></span><span class="close-eroare">x</span></div>
</div>