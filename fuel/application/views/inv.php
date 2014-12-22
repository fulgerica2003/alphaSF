<?php 
	$this->load->helper('form');
	$attributes = array('id' => 'form-transfer-calc');
	echo form_open('inv/add', $attributes); 
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
									<div id="tipPlataERR" class="eroare"><a name="AtipPlataERR"></a><span id="tipPlataERRTXT"></span><span class="close-eroare">x</span></div>                                
							</div>
							<div class="clearfix"></div>
							
							<div class="input-box">
								<div class="agent-lable">Valoarea facturii</div>
								
								<?php echo form_error('valInt'); ?>
								<?php echo form_error('valFract'); ?>
								<div name="test">
											<input name ="valInt" 	style="width:50%;" class="agent-input factura_prim" type="text"  value="<?php echo set_value('valInt'); ?>">
											<input name ="valFract" style="width:25%;" class="agent-input second_iban" type="text"   value="<?php echo set_value('valFract'); ?>">
											<input name ="currency" style="width:24%;" class="agent-input factura_second" type="text" value="RON" readonly>
								</div>					
								<div class="clearfix"></div>
							</div>
							
							<div class="input-box">
								<div class="explica-cont">Alege una din optiunile noastre pentru plata Cash.</div>
								<div class="agent-lable">Categorie furnizor</div>
								<?php echo form_error('catSupplier'); ?>
								<select id="catSupplier" name="supplier_category">
									<?php echo $vars['suppCat']; ?>
								</select>
							</div>
							<div class="input-box">
								<div class="explica-cont">Alege una din optiunile noastre pentru plata Cash.</div>
								<div class="agent-lable">Furnizor</div>
								<select id="supplier" name="supplier">
								<!-- <option value="">Selecteaza mai intai categorie furnizor</option> -->
								<?php echo $vars['suppliers'];?>
								</select>
							</div>
							<div id='customFields'>
								<?php echo $vars['customFields']; ?>	
							</div>

						</div>

						<div class="col-lg-7 col-lg-offset-5 col-sm-12 last-form">
                            <div class="input-box">
                                <input id="Bsubmit" name="Bsubmit" class="agent-submit salveaza" type="submit" value="PLATESTE">	
                            </div>
							<div  class="clearfix" ></div>
						</div>
 
						<div  class="clearfix" ></div>
					</form>				
								
								


								
								
								