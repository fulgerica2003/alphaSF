<?php 
	$this->load->helper('form');
	$attributes = array('id' => 'form-transfer-calc');
	echo form_open('inv/save', $attributes); 
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
								<div class="agent-lable">Valoarea facturii</div>
								<div name="test">
											<input name ="valInt" 	style="width:50%;" class="agent-input factura_prim" type="text"  name="suma" value="">
											<input name ="valFract" style="width:25%;" class="agent-input second_iban" type="text" name="suma" value="">
											<input name ="currency" style="width:24%;" class="agent-input factura_second" type="text" name="suma" value="RON" readonly>
								</div>					
								<div class="clearfix"></div>
							</div>
							
							<div class="input-box">
								<div class="explica-cont">Alege una din optiunile noastre pentru plata Cash.</div>
								<div class="agent-lable">Categorie furnizor</div>
								<select id="catSupplier" name="supplier_category">
										<?php echo $vars['suppCat']; ?>
								</select>
							</div>
							<div class="input-box">
								<div class="explica-cont">Alege una din optiunile noastre pentru plata Cash.</div>
								<div class="agent-lable">Furnizor</div>
								<select id="supplier" name="supplier_category">
								<option value="">Selecteaza mai intai categorie furnizor</option>
								</select>
							</div>
							<div id='customFields'></div>

						</div>

						<div class="col-lg-7 col-lg-offset-5 col-sm-12 last-form">
                            <div class="input-box">
                                <input id="Bsubmit" name="Bsubmit" class="agent-submit salveaza" type="submit" value="PLATESTE">	
                            </div>
							<div  class="clearfix" ></div>
						</div>
 
						<div  class="clearfix" ></div>
					</form>				
								
								


								
								
								