<div class="col-lg-3 col-sm-6">
	<div class="caseta minimize" id="caseta-calculator">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu"><?php echo lang('payments_pay')?></div>
		<form id="form-calc" action="setings-user-transfer-bani--75.htm" method="post">
			<div class="radio-container1" style="width:50%;  ">
				<div class="lable1 radioactiv" id="TABleft"><?php echo lang('payments_card')?></div>
				<input type="radio" name="tipPlata" id="tipPlataTIP_PLATA_BENEFICIAR" value="TIP_PLATA_BENEFICIAR">
			</div>								
			<div class="radio-container1" style="width:50%; border-left:1px solid #d4cfd2; ">
				<div class="lable1" id="TABright"><?php echo lang('payments_account')?></div>
				<input type="radio" name="tipPlata" id="tipPlataTIP_PLATA_UTILITATI" value="TIP_PLATA_UTILITATI">
			</div>								
			
			<input id = "cop_amount" style="width:70%; border-right: 4px solid #ffcccc;" class="agent-input first-iban transfer-input" type="text"  name="suma" placeholder="<?php echo lang('payments_amount')?>">
			<select id="cop_currency" class="ron_transfer2" name="monedaPlata" style="width:31%; height:39px; border-bottom-left-radius:0px;border-top-left-radius:0px;">
				<option value="eur">EUR</option>
				<option value="ron">RON</option>
			</select> 
			
			<div class="input-box" style="margin:0px; padding:0px;">
				
			</div>
			<select id="cop_modIncasare" name="modIncasare" style="width:100%">
				<option value=""><?php echo lang('payments_pick'); ?></option>
				<?php foreach($vars['benOpts'] as $key => $value):?>
				<option value="<?php echo $key;?>"><?php echo $value;?></option>
				<?php endforeach?>
			</select>
		</form>
		<div>
			<ul class="caseta-tranzactii casetuta-tranfer-hp">
				<li>
					<div><?php echo lang('payments_fee'); ?></div>
					<div id = "cop_fee"><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">RON</span></div>
					<p class="clearfix"></p>
				</li>
				<li>
					<div><?php echo lang('payments_total'); ?></div>
					<div id = "cop_total"><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">RON</span></div>
					<p class="clearfix"></p>
				</li>
			</ul>
		</div>	
		<div class="total-calc" style="margin-top:20px;" ;="">
			<a href="javascript:formCalcSubmit();" style="color:#FFF; text-decoration:none;"><?php echo lang('payments_cmd'); ?></a>
		</div>		
		<br><br>
	</div>
</div>