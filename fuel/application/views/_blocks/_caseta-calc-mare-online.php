<div class="col-lg-6 col-md-12 col-sm-12">
	<div class="caseta minimize calc-mare service-text" id="caseta-calculator">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu"><?php echo lang('payments_pay')?></div>
		<form id="form-calc" action="calculator/pay_transfer" method="post">
			<div class="radio-container1" style="width:50%;  ">
				<div class="lable1<?php echo ($vars['calcTipPlata'] != null && $vars['calcTipPlata'] == 'card' ? ' radioactiv' : '')?>" id="TABleft"><?php echo lang('payments_card')?></div>
				<input class = "cop-update-fee-total" type="radio" name="tipPlata" id="tipPlataCard" value="card"<?php echo ($vars['calcTipPlata'] != null && $vars['calcTipPlata'] == 'card' ? ' checked' : '')?>>
			</div>								
			<div class="radio-container1" style="width:50%; border-left:1px solid #d4cfd2; ">
				<div class="lable1<?php echo ($vars['calcTipPlata'] != null && $vars['calcTipPlata'] == 'cont' ? ' radioactiv' : '')?>" id="TABright"><?php echo lang('payments_account')?></div>
				<input class = "cop-update-fee-total" type="radio" name="tipPlata" id="tipPlataCont" value="cont"<?php echo ($vars['calcTipPlata'] != null && $vars['calcTipPlata'] == 'cont' ? ' checked' : '')?>>
			</div>								
			
			<input id = "cop_amount" style="width:70%; border-right: 4px solid #ffcccc;" class="cop-update-fee-total agent-input first-iban transfer-input" type="text"  name="suma" placeholder="<?php echo lang('payments_amount')?>" value = "<?php echo ($vars['calcAmount'] != null ? $vars['calcAmount'] : ''); ?>">
			<select id="cop_currency" class="ron_transfer2" name="monedaPlata" style="width:30%; height:39px; border-bottom-left-radius:0px;border-top-left-radius:0px;">
				<option value="eur"<?php echo ($vars['calcCurrency'] != null && $vars['calcCurrency'] == 'eur' ? ' selected = "selected"' : '')?>>EUR</option>
				<option value="ron"<?php echo ($vars['calcCurrency'] != null && $vars['calcCurrency'] == 'ron' ? ' selected = "selected"' : '')?>>RON</option>
			</select> 
			
			<div class="input-box" style="margin:0px; padding:0px;">
				
			</div>
			<select id="cop_modIncasare" name="modIncasare" style="width:100%" class = "cop-update-fee-total">
				<option value=""><?php echo lang('payments_pick'); ?></option>
				<?php foreach($vars['benOpts'] as $key => $value):?>
				<option value="<?php echo $key;?>"<?php echo ($vars['calcModIncasare'] != null && $vars['calcModIncasare'] == $key ? 'selected = "selected"' : '')?>><?php echo $value;?></option>
				<?php endforeach?>
			</select> 
			
			<div>
				<ul class="caseta-tranzactii casetuta-tranfer-hp">
					<li>
						<div><?php echo lang('payments_fee'); ?></div>
						<div id = "cop_fee"><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">EUR</span></div>
						<p class="clearfix"></p>
					</li>
					<li>
						<div><?php echo lang('payments_total'); ?></div>
						<div id = "cop_total"><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">EUR</span></div>
						<p class="clearfix"></p>
					</li>
					<li>
						<input type = "hidden" id = "cop_hidden_fee" name = "cop_hidden_fee" value = "">
						<input type = "hidden" id = "cop_hidden_total" name = "cop_hidden_total" value = "">
						<div><input type = "submit" value = "<?php echo lang('payments_cmd'); ?>" class = "calcPayLink"></div>
						<p class="clearfix"></p>
					</li>
				</ul>
			</div>
		</form>
		<div id="login-box">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div id="text-login"><?php echo lang('login_text'); ?></div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<form id="form-login" action="?showLogin=op" method="post">
					<input type="submit" id="login-submit" value="<?php echo lang('login_label'); ?>">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>