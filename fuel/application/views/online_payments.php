<?php 
	$this->load->helper('form');
	$attributes = array('id' => 'form-transfer-calc', 'name' => 'form-transfer-calc');
	echo form_open('online_payments/add', $attributes); 
?>
<input name="cmd" value="submit" type="hidden" />
<div class="col-lg-7 col-lg-offset-5 col-sm-12">
	
	<div class="input-box">
		<div class="explica-cont">Un sidenote friendly si folositor.<br />Despre campul din dreapta lui.</div>
		<div class="agent-lable">plateste</div>
		<?php echo form_error('tipPlata'); ?>
		<div class="radio-container1" style="width:50%;" name="test">
			<div class="lable1" id="TABleft">De pe card bancar</div>
			<input type="radio" name="tipPlata" id="tipPlataCard"  value="<?php echo $vars['payOpts']['card']; ?>" <?php echo set_radio('tipPlata', 'Card', TRUE); ?>>
		</div>								
		<div class="radio-container1" style="width:50%;" name="test">
			<div class="lable1" id="TABright">Din cont bancar</div>
			<input type="radio" name="tipPlata" id="tipPlataCont"  value="<?php echo $vars['payOpts']['cont']; ?>" <?php echo set_radio('tipPlata', 'Cont'); ?>>
		</div>                                
	</div>
	<div class="clearfix"></div>
	
	<div class="input-box">
		<div class="agent-lable">Suma transferata</div>
		<div name="test">
			<input name ="amount" id = "amount" style="width:68%;" class="agent-input factura_prim <?php echo (form_error('amount')) ? 'err' : ''; ?>" type="text"  maxlength="5" size="5" value="<?php echo set_value('amount'); ?>">
			<select id = "currency" name ="currency" style="width:31%;" class="agent-input factura_second">
				<option value="eur" <?php echo set_select('currency', 'eur'); ?>>EUR</option>
				<option value="ron" <?php echo set_select('currency', 'ron'); ?>>RON</option>
			</select> 
		</div>					
		<div class="clearfix"></div>
		<div id="amountERR" class="eroare <?php echo (form_error('amount')) ? 'afiseaza' : ''; ?>"><a name="AamountERR"></a><span id="amountERRTXT"><?php echo form_error('amount'); ?></span><span class="close-eroare">x</span></div>
	</div>
	
	<div class="input-box">
		<div class="explica-cont">Alege una din optiunile noastre pentru plata Cash.</div>
		<div class="agent-lable">Modalitate de plata beneficiar</div>
		<select id="modIncasare" name="modIncasare" class = "agent-input<?php echo (form_error('modIncasare')) ? ' err' : ''; ?>">
			<option value="" <?php echo set_select('modIncasare', '', TRUE); ?>>alege</option>
			<?php foreach($vars['benOpts'] as $key => $value):?>
			<option value="<?php echo $key;?>" <?php echo set_select('modIncasare', $key); ?>><?php echo $value;?></option>
			<?php endforeach?>
		</select>
		<div id="modIncasareERR" class="eroare<?php echo (form_error('modIncasare')) ? ' afiseaza' : ''; ?>"><a name="AmodIncasareERR"></a><span id="modIncasareERRTXT"><?php echo (form_error('modIncasare')) ? 'Camp obligatoriu!' : ''; ?></span><span class="close-eroare">x</span></div>
	</div>
	
	<div class="input-box ">
		<div class="explica-cont"></div>
		<div class="agent-lable">comision de plata</div>
		<input class="agent-input" type="text" name="fee" id="fee" value="<?php echo set_value('fee'); ?>" readonly>	
	</div>	
	
	<div class="input-box ">
		<div class="explica-cont"></div>
		<div class="agent-lable">total de plata</div>
		<input class="agent-input" type="text" name="total" id="total" value="<?php echo set_value('total'); ?>" readonly>	
	</div>
	
	<div id='customFields'>
		<?php echo $vars['customFields']; ?>
	</div>
	
	<div class="input-box">
		<div class="explica-cont">Completeaza datele beneficiarului</div>
		
		<div id="ben_last_nameERR" class="eroare<?php echo (form_error('ben_last_name')) ? ' afiseaza' : ''; ?>"><a name="Aben_last_nameERR"></a><span id="ben_last_nameERRTXT"><?php echo form_error('ben_last_name'); ?></span><span class="close-eroare">x</span></div>
		<div class="agent-lable">Nume</div>
		<input id = "ben_last_name" name ="ben_last_name" class="agent-input<?php echo (form_error('ben_last_name')) ? ' err' : ''; ?>" type="text"  value="<?php echo set_value('ben_last_name'); ?>">
		
		<div id="ben_first_nameERR" class="eroare<?php echo (form_error('ben_first_name')) ? ' afiseaza' : ''; ?>"><a name="Aben_first_nameERR"></a><span id="ben_first_nameERRTXT"><?php echo form_error('ben_first_name'); ?></span><span class="close-eroare">x</span></div>
		<div class="agent-lable">Prenume</div>
		<input id = "ben_first_name" name ="ben_first_name" class="agent-input<?php echo (form_error('ben_first_name')) ? ' err' : ''; ?>" type="text"  value="<?php echo set_value('ben_first_name'); ?>">
		
		<div id="ben_phoneERR" class="eroare<?php echo (form_error('ben_phone')) ? ' afiseaza' : ''; ?>"><a name="Aben_phoneERR"></a><span id="ben_phoneERRTXT"><?php echo form_error('ben_phone'); ?></span><span class="close-eroare">x</span></div>
		<div class="agent-lable">Telefon</div>
		<input name ="ben_phone" class="agent-input<?php echo (form_error('ben_phone')) ? ' err' : ''; ?>" type="text"  value="<?php echo set_value('ben_phone'); ?>">
		
		<div id="ben_emailERR" class="eroare<?php echo (form_error('ben_email')) ? ' afiseaza' : ''; ?>"><a name="Aben_emailERR"></a><span id="ben_emailERRTXT"><?php echo form_error('ben_email'); ?></span><span class="close-eroare">x</span></div>
		<div class="agent-lable">Email</div>
		<input name ="ben_email" class="agent-input<?php echo (form_error('ben_email')) ? ' err' : ''; ?>" type="text"  value="<?php echo set_value('ben_email'); ?>">
		
		<div id="ben_addressERR" class="eroare<?php echo (form_error('ben_address')) ? ' afiseaza' : ''; ?>"><a name="Aben_addressERR"></a><span id="ben_addressERRTXT"><?php echo form_error('ben_address'); ?></span><span class="close-eroare">x</span></div>
		<div class="agent-lable">Adresa</div>
		<input name ="ben_address" class="agent-input<?php echo (form_error('ben_address')) ? ' err' : ''; ?>" type="textarea"  value="<?php echo set_value('ben_address'); ?>">		
	</div>
</div>
<div class="col-lg-7 col-lg-offset-5 col-sm-12 last-form">
	<div class="input-box">
		<input id="Bsubmit" name="Bsubmit" class="agent-submit salveaza" type="submit" value="TRANSFERA">	
	</div>
	<div  class="clearfix" ></div>
</div>

<div  class="clearfix" ></div>

</form>				






