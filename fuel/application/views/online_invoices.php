<?php 
	$this->load->helper('form');
	$this->load->view('_blocks/_modal_confirmare_salvare_tranzactie', array('page' => 'online_invoices'));
	$attributes = array('id' => 'form-transfer-calc');
	echo form_open('online_invoices/validate', $attributes); 
?>
<input name="cmd" value="submit" type="hidden" />
<div class="col-lg-7 col-lg-offset-5 col-sm-12">
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('invoices_sidenote_trans');?></div>
		<div class="agent-lable"><?php echo lang('invoices_pay'); ?></div>
		<?php echo form_error('tipPlata'); ?>
		<div class="radio-container1" style="width:50%;" name="test">
			<div class="lable1" id="TABleft"><?php echo lang('invoices_card'); ?></div>
			<input class = "invoice-update-fee-total" type="radio" name="tipPlata" id="tipPlataCard"  value="<?php echo $vars['payOpts']['card']; ?>" <?php echo set_radio('tipPlata', 'Card', TRUE); ?>>
		</div>								
		<div class="radio-container1" style="width:50%;" name="test">
			<div class="lable1" id="TABright"><?php echo lang('invoices_account'); ?></div>
			<input class = "invoice-update-fee-total" type="radio" name="tipPlata" id="tipPlataCont"  value="<?php echo $vars['payOpts']['cont']; ?>" <?php echo set_radio('tipPlata', 'Cont'); ?>>
		</div>								
		<div id="tipPlataERR" class="eroare"><a name="AtipPlataERR"></a><span id="tipPlataERRTXT"></span><span class="close-eroare">x</span></div>                                
	</div>
	<div class="clearfix"></div>
	
	<div class="input-box">
		<div class="agent-lable"><?php echo lang('invoices_amount'); ?></div>
		
		<div name="test">
			
			<div id="ERR" class="eroare <?php echo (form_error('valInt')) ? 'afiseaza' : ''; ?>">
				<a name="ERR"></a>
				<span id="ERRTXT"><?php echo form_error('valInt','<div>', '</div>');?></span>
				<span class="close-eroare">x</span>
			</div>
			<input id = "valInt" name ="valInt" style="width:50%;" class="agent-input factura_prim invoice-update-fee-total" type="text" value="<?php echo set_value('valInt'); ?>">
			<input id = "valFract" name ="valFract" style="width:25%;" class="agent-input second_iban invoice-update-fee-total" type="text" value="<?php echo set_value('valFract'); ?>">
			<input id= "currency" name ="currency" style="width:24%;" class="agent-input factura_second" type="text" value="RON" readonly>
		</div>					
		<div class="clearfix"></div>
	</div>
	
	<div class="input-box ">
		<div class="explica-cont"></div>
		<div class="agent-lable"><?php echo lang('invoices_fee'); ?></div>
		<input class="agent-input" type="text" name="fee" id="fee" value="<?php echo set_value('fee'); ?>" readonly>	
	</div>	
	
	<div class="input-box ">
		<div class="explica-cont"></div>
		<div class="agent-lable"><?php echo lang('invoices_total'); ?></div>
		<input class="agent-input" type="text" name="total" id="total" value="<?php echo set_value('total'); ?>" readonly>	
	</div>
	
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('invoices_sidenote_supplier_cat'); ?></div>
		<div class="agent-lable"><?php echo lang('invoices_providercat'); ?></div>
		<?php echo form_error('catSupplier'); ?>
		<select id="catSupplier" name="supplier_category">
			<?php echo $vars['suppCat']; ?>
		</select>
	</div>
	<div class="input-box">
		<div class="explica-cont"><?php echo lang('invoices_sidenote_supplier_info'); ?></div>
		<div class="agent-lable"><?php echo lang('invoices_provider'); ?></div>
		<select id="supplier" name="supplier">
			<?php echo $vars['suppliers'];?>
		</select>
	</div>
	<div id='customFields'>
		<?php echo $vars['customFields']; ?>	
	</div>
	
</div>

<div class="col-lg-7 col-lg-offset-5 col-sm-12 last-form">
	<div class="input-box">
		<input id="Bsubmit" name="Bsubmit" class="agent-submit salveaza" type="submit" value="<?php echo lang('invoices_cmd'); ?>">	
	</div>
	<div  class="clearfix" ></div>
</div>

<div  class="clearfix" ></div>

<input id = "displayConfirm" hidden="true" value = "<?php echo $vars['displayConfirm']; ?>">

</form>				
