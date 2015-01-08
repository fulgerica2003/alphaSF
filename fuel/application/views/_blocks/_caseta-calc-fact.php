<div class="col-lg-3 col-sm-6">
	<div class="caseta minimize" >
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu"><?php echo lang('invoices_pay'); ?></div>
		<form id="form-calc2" action="calculator/pay_invoice" method="post">
			<div class="radio-container1 depeCard" style="width:50%;  ">
				<div class="lable1 depeCard1<?php echo ($vars['calcInvTipPlata'] != null && $vars['calcInvTipPlata'] == 'card' ? ' radioactiv' : '')?>"" id="TABleft"><?php echo lang('invoices_card'); ?></div>
				<input type="radio" name="tipPlata" id="tipPlataCard" value="card">
			</div>								
			<div class="radio-container1 radioactiv" style="width:50%;">
				<div class="lable1 dinCont1<?php echo ($vars['calcInvTipPlata'] != null && $vars['calcInvTipPlata'] == 'cont' ? ' radioactiv' : '')?>"  id="TABright"><?php echo lang('invoices_account'); ?></div>
				<input type="radio" name="tipPlata" id="tipPlataCont" value="cont">
			</div>								
			<input class="agent-input corectie_form val-factura" type="text" name="suma" id="cof_amount" placeholder="<?php echo lang('invoices_amount'); ?>" value = "<?php echo ($vars['calcInvAmount'] != null ? $vars['calcInvAmount'] : ''); ?>">
			
			
			<div class="input-box" style="margin:0px; padding:0px;">
				
			</div>
		<div class="factura-online-plata-hp">
			<ul class="caseta-tranzactii casetuta-tranfer-hp" id="plata-factura-online-hp">
				<li>
					<div><?php echo lang('invoices_fee'); ?></div>
					<div id = "cof_fee"><span class="suma-factura-online">0,0</span> RON</div>
					<p class="clearfix"></p>
				</li>
				<li>
					<div><?php echo lang('invoices_total'); ?></div>
					<div id = "cof_total"><span class="suma-factura-online">0,0</span> RON</div>
					<p class="clearfix"></p>
				</li>
			</ul>
		</div>	
		
		
		
		<div class="total-calc plateste-factura-online" style="margin-top:-3px;" ;="">
			
			<input type = "submit" value = "<?php echo lang('invoices_cmd'); ?>" class = "calcInvLink">
		</div>		
		</form>
	</div>
</div>