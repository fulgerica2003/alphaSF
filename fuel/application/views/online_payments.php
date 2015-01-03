<div class="modal fade" id="displayConfirmModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        	
        	<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up">Inchide</button>
				<p class="modal-title">Trasfer de bani online</p>
			</div>
			
			<div class="modal-body" id="displayConfirmModalBody">
				
				<p class="eroare_factura">Confirmare tranzactie </p>
				<p class="eroare_factura_text">Atentie! Anularea ulterioara a tranzactiei de catre dumneavoastra presupune deducerea din suma transferata a comisionului de rambursare in 
					valoare de <span style="color:#b5251d;">15 EURO</span> la care se adauga comisioanele interbancare. Va rugam sa confirmati ca sunti de acord cu termenii si conditiile platformei de plati online Smith&Smith.</p>
					<form id = "confirmTransfer" method = "post" action = "online_payments/add">
						<div class="input-box termeni">
						<input id = "the-terms" type="checkbox" name="confirmCheck" checked value="1"><span class="lable-radio">Sunt de acord cu <a style="color:#b5251d;" href="#">termenii si conditiile</a> <br />platformei
						Smith&Smith online</span>
					</div>
					<div class="clearfix"></div>
					
					<div class="submit_eroare">
						<input id = "acceptBtn" class="agent-submit" type="submit" value="ACCEPT">
					</div>
					<div class="clearfix"></div>
					</form>
				</div>	
			</div>
		</div>
	</div>
	
	<?php 
		$this->load->helper('form');
		$attributes = array('id' => 'form-transfer-calc', 'name' => 'form-transfer-calc');
		echo form_open('online_payments/validate', $attributes); 
	?>
	<input name="cmd" value="submit" type="hidden" />
	<div class="col-lg-7 col-lg-offset-5 col-sm-12">
		
		<div class="input-box">
			<div class="explica-cont"><?php echo lang('payments_sidenote_trans')?></div>
			<div class="agent-lable"><?php echo lang('payments_pay')?></div>
			<?php echo form_error('tipPlata'); ?>
			<div class="radio-container1" style="width:50%;" name="test">
				<div class="lable1" id="TABleft"><?php echo lang('payments_card')?></div>
				<input type="radio" name="tipPlata" id="tipPlataCard"  value="<?php echo $vars['payOpts']['card']; ?>" <?php echo set_radio('tipPlata', 'Card', TRUE); ?>>
			</div>								
			<div class="radio-container1" style="width:50%;" name="test">
				<div class="lable1" id="TABright"><?php echo lang('payments_account')?></div>
				<input type="radio" name="tipPlata" id="tipPlataCont"  value="<?php echo $vars['payOpts']['cont']; ?>" <?php echo set_radio('tipPlata', 'Cont'); ?>>
			</div>                                
		</div>
		<div class="clearfix"></div>
		
		<div class="input-box">
			<div class="agent-lable"><?php echo lang('payments_amount')?></div>
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
			<div class="explica-cont"><?php echo lang('payments_sidenote_cash'); ?></div>
			<div class="agent-lable"><?php echo lang('payments_payment_type'); ?></div>
			<select id="modIncasare" name="modIncasare" class = "agent-input<?php echo (form_error('modIncasare')) ? ' err' : ''; ?>">
				<option value="" <?php echo set_select('modIncasare', '', TRUE); ?>><?php echo lang('payments_pick'); ?></option>
				<?php foreach($vars['benOpts'] as $key => $value):?>
				<option value="<?php echo $key;?>" <?php echo set_select('modIncasare', $key); ?>><?php echo $value;?></option>
				<?php endforeach?>
			</select>
			<div id="modIncasareERR" class="eroare<?php echo (form_error('modIncasare')) ? ' afiseaza' : ''; ?>"><a name="AmodIncasareERR"></a><span id="modIncasareERRTXT"><?php echo (form_error('modIncasare')) ? 'Camp obligatoriu!' : ''; ?></span><span class="close-eroare">x</span></div>
		</div>
		
		<div class="input-box ">
			<div class="explica-cont"></div>
			<div class="agent-lable"><?php echo lang('payments_fee'); ?></div>
			<input class="agent-input" type="text" name="fee" id="fee" value="<?php echo set_value('fee'); ?>" readonly>	
		</div>	
		
		<div class="input-box ">
			<div class="explica-cont"></div>
			<div class="agent-lable"><?php echo lang('payments_total'); ?></div>
			<input class="agent-input" type="text" name="total" id="total" value="<?php echo set_value('total'); ?>" readonly>	
		</div>
		
		<div id='customFields'>
			<?php echo $vars['customFields']; ?>
		</div>
		
		<div class="input-box">
			<div class="explica-cont"><?php echo lang('payments_sidenote_ben'); ?></div>
			
			<div id="ben_last_nameERR" class="eroare<?php echo (form_error('ben_last_name')) ? ' afiseaza' : ''; ?>"><a name="Aben_last_nameERR"></a><span id="ben_last_nameERRTXT"><?php echo form_error('ben_last_name'); ?></span><span class="close-eroare">x</span></div>
			<div class="agent-lable"><?php echo lang('payments_last_name'); ?></div>
			<input id = "ben_last_name" name ="ben_last_name" class="agent-input<?php echo (form_error('ben_last_name')) ? ' err' : ''; ?>" type="text"  value="<?php echo set_value('ben_last_name'); ?>">
			
			<div id="ben_first_nameERR" class="eroare<?php echo (form_error('ben_first_name')) ? ' afiseaza' : ''; ?>"><a name="Aben_first_nameERR"></a><span id="ben_first_nameERRTXT"><?php echo form_error('ben_first_name'); ?></span><span class="close-eroare">x</span></div>
			<div class="agent-lable"><?php echo lang('payments_first_name'); ?></div>
			<input id = "ben_first_name" name ="ben_first_name" class="agent-input<?php echo (form_error('ben_first_name')) ? ' err' : ''; ?>" type="text"  value="<?php echo set_value('ben_first_name'); ?>">
			
			<div id="ben_phoneERR" class="eroare<?php echo (form_error('ben_phone')) ? ' afiseaza' : ''; ?>"><a name="Aben_phoneERR"></a><span id="ben_phoneERRTXT"><?php echo form_error('ben_phone'); ?></span><span class="close-eroare">x</span></div>
			<div class="agent-lable"><?php echo lang('payments_phone'); ?></div>
			<input name ="ben_phone" class="agent-input<?php echo (form_error('ben_phone')) ? ' err' : ''; ?>" type="text"  value="<?php echo set_value('ben_phone'); ?>">
			
			<div id="ben_emailERR" class="eroare<?php echo (form_error('ben_email')) ? ' afiseaza' : ''; ?>"><a name="Aben_emailERR"></a><span id="ben_emailERRTXT"><?php echo form_error('ben_email'); ?></span><span class="close-eroare">x</span></div>
			<div class="agent-lable"><?php echo lang('payments_email'); ?></div>
			<input name ="ben_email" class="agent-input<?php echo (form_error('ben_email')) ? ' err' : ''; ?>" type="text"  value="<?php echo set_value('ben_email'); ?>">
			
			<div id="ben_addressERR" class="eroare<?php echo (form_error('ben_address')) ? ' afiseaza' : ''; ?>"><a name="Aben_addressERR"></a><span id="ben_addressERRTXT"><?php echo form_error('ben_address'); ?></span><span class="close-eroare">x</span></div>
			<div class="agent-lable"><?php echo lang('payments_address'); ?></div>
			<input name ="ben_address" class="agent-input<?php echo (form_error('ben_address')) ? ' err' : ''; ?>" type="textarea"  value="<?php echo set_value('ben_address'); ?>">		
		</div>
	</div>
	<div class="col-lg-7 col-lg-offset-5 col-sm-12 last-form">
		<div class="input-box">
			<input id="Bsubmit" name="Bsubmit" class="agent-submit salveaza" type="submit" value="<?php echo lang('payments_cmd'); ?>">	
		</div>
		<div  class="clearfix" ></div>
	</div>
	
	<div  class="clearfix" ></div>
	
	<input id = "displayConfirm" type = "hidden" value = "<?php echo $vars['displayConfirm']; ?>">
	
</form>				






