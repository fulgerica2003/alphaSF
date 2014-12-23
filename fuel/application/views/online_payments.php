<?php 
	$this->load->helper('form');
	$attributes = array('id' => 'form-transfer-calc', 'name' => 'form-transfer-calc');
	echo form_open('online_payments/save', $attributes); 
?>
<input name="cmd" value="submit" type="hidden" />
<div class="col-lg-7 col-lg-offset-5 col-sm-12">
	
	<div class="input-box">
		<div class="explica-cont">Un sidenote friendly si folositor.<br />Despre campul din dreapta lui.</div>
		<div class="agent-lable">plateste</div>
		<div class="radio-container1" style="width:50%;" name="test">
			<div class="lable1" id="TABleft">De pe card bancar</div>
			<input type="radio" name="tipPlata" id="tipPlataTIP_PLATA_BENEFICIAR"  value="<?php echo $vars['payOpts']['card']; ?>">
		</div>								
		<div class="radio-container1" style="width:50%;" name="test">
			<div class="lable1" id="TABright">Din cont bancar</div>
			<input type="radio" name="tipPlata" id="tipPlataTIP_PLATA_UTILITATI"  value="<?php echo $vars['payOpts']['cont']; ?>">
		</div>								
		<div id="tipPlataERR" class="eroare"><a name="AtipPlataERR"></a><span id="tipPlataERRTXT"></span><span class="close-eroare">x</span></div>                                
	</div>
	
	<div class="clearfix"></div>
	
	<div class="input-box">
		<div class="agent-lable">Suma transferata</div>
		<div name="test">
			<input name ="valInt" id = "amount" style="width:68%;" class="agent-input factura_prim" type="text"  maxlength="5" size="5" value=""> 
			<select id = "currency" name ="currency" style="width:31%;" class="agent-input factura_second">
				<option value="">alege</option>
				<option value="eur">EUR</option>
				<option value="ron">RON</option>
			</select> 
		</div>					
		<div class="clearfix"></div>
	</div>
	
	<div class="input-box">
		<div class="explica-cont">Alege una din optiunile noastre pentru plata Cash.</div>
		<div class="agent-lable">Modalitate de plata beneficiar</div>
		<select id="modIncasare" name="modIncasare">
			<option value="">alege</option>
			<?php foreach($vars['benOpts'] as $key => $value):?>
			<option value="<?php echo $key;?>"><?php echo $value;?></option>
			<?php endforeach?>
		</select>
		<div id="modIncasareERR" class="eroare"><a name="AmodIncasareERR"></a><span id="modIncasareERRTXT"></span><span class="close-eroare">x</span></div>
	</div>
	
	<div class="input-box ">
		<div class="explica-cont"></div>
		<div class="agent-lable">comision de plata</div>
		<input class="agent-input" type="text" name="fee" id="fee" value="" readonly>
		<div id="agentiiERR" class="eroare"><a name="AagentiiERR"></a><span id="agentiiERRTXT"></span><span class="close-eroare">x</span></div>		
	</div>	
	
	<div class="input-box ">
		<div class="explica-cont"></div>
		<div class="agent-lable">total de plata</div>
		<input class="agent-input" type="text" name="total" id="total" value="" readonly>
		<div id="agentiiERR" class="eroare"><a name="AagentiiERR"></a><span id="agentiiERRTXT"></span><span class="close-eroare">x</span></div>		
	</div>
	
	<div id='customFields'></div>
	
	<div class="input-box">
		<div class="explica-cont">Completeaza datele beneficiarului</div>
		<div class="agent-lable">Nume</div>
		<input name ="ben_last_name" class="agent-input" type="text"  value="">
		<div class="agent-lable">Prenume</div>
		<input name ="ben_first_name" class="agent-input" type="text"  value="">
		<div class="agent-lable">Telefon</div>
		<input name ="ben_phone" class="agent-input" type="text"  value="">
		<div class="agent-lable">Email</div>
		<input name ="ben_email" class="agent-input" type="text"  value="">
		<div class="agent-lable">Adresa</div>
		<input name ="ben_address" class="agent-input" type="textarea"  value="">
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






