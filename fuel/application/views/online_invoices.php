<div class="modal fade" id="displayConfirmModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        	
        	<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up">Inchide</button>
				<p class="modal-title">Trasfer de bani online</p>
			</div>

			<div class="modal-body" id="displayConfirmModalBody">		
				<p class="eroare_factura">Confirmare tranzactie </p>
				<p class="eroare_factura_text"> 
						Atentie! Anularea ulterioara a tranzactiei de catre dumneavoastra presupune deducerea din suma transferata a comisionului de rambursare in 
						valoare de 
					<span style="color:#b5251d;">15 EURO</span> 
						la care se adauga comisioanele interbancare. Va rugam sa confirmati ca sunti de acord cu termenii si conditiile platformei de plati online Smith&Smith.
				</p>
					<form id = "confirmTransfer" method = "post" action = "online_invoices/save">
						<div class="input-box termeni">
							<input id = "the-terms" type="checkbox" name="confirmCheck" checked value="1"><span class="lable-radio">Sunt de acord cu <a style="color:#b5251d;" href="#">termenii si conditiile</a> 
							<br />platformei Smith&Smith online</span>
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
	$attributes = array('id' => 'form-transfer-calc');
	echo form_open('online_invoices/add', $attributes); 
?>
                    	<input name="cmd" value="submit" type="hidden" />
						<div class="col-lg-7 col-lg-offset-5 col-sm-12">
							
                            <div class="input-box">
                            	<div class="explica-cont">Un sidenote friendly si folositor.<br />Despre campul din dreapta lui.</div>
								<div class="agent-lable"><?php echo lang('payments_pay'); ?></div>
									<?php echo form_error('tipPlata'); ?>
                                	<div class="radio-container1" style="width:50%;" name="test">
											<div class="lable1" id="TABleft"><?php echo lang('invoices_card'); ?></div>
											<input type="radio" name="tipPlata" id="tipPlataCard"  value="<?php echo $vars['payOpts']['card']; ?>" <?php echo set_radio('tipPlata', 'Card', TRUE); ?>>
									</div>								
									<div class="radio-container1" style="width:50%;" name="test">
											<div class="lable1" id="TABright"><?php echo lang('invoices_account'); ?></div>
											<input type="radio" name="tipPlata" id="tipPlataCont"  value="<?php echo $vars['payOpts']['cont']; ?>" <?php echo set_radio('tipPlata', 'Cont'); ?>>
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
											<input name ="valInt" 	style="width:50%;" class="agent-input factura_prim" type="text"  value="<?php echo set_value('valInt'); ?>">
											<input name ="valFract" style="width:25%;" class="agent-input second_iban" type="text"   value="<?php echo set_value('valFract'); ?>">
											<input name ="currency" style="width:24%;" class="agent-input factura_second" type="text" value="RON" readonly>
								</div>					
								<div class="clearfix"></div>
							</div>
							
							<div class="input-box">
								<div class="explica-cont">Alege una din optiunile noastre pentru plata Cash.</div>
								<div class="agent-lable"><?php echo lang('invoices_providercat'); ?></div>
								<?php echo form_error('catSupplier'); ?>
								<select id="catSupplier" name="supplier_category">
									<?php echo $vars['suppCat']; ?>
								</select>
							</div>
							<div class="input-box">
								<div class="explica-cont">Alege una din optiunile noastre pentru plata Cash.</div>
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
								