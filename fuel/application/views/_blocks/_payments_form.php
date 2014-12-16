
<?php 
	$this->load->helper('form');
	/$CI->load->model('ss_suppliers_cat_model');
?>
<?php $attributes = array('id' => 'form-transfer-calc');
	$options = get_payment_types();
	var_dump($options);
	
	 echo form_open('sspayments/save', $attributes); 
	//$suppcar=$CI->ss_suppliers_cat_model->list_items();
?>
                    	<input name="cmd" value="submit" type="hidden" />
						<div class="col-lg-7 col-lg-offset-5 col-sm-12">
							
                            <div class="input-box">
                            	<div class="explica-cont">Un sidenote friendly si folositor.<br />Despre campul din dreapta lui.</div>
								<div class="agent-lable">plateste</div>
                                	<div class="radio-container1" style="width:50%;" name="test">
											<div class="lable1" id="TABleft">De pe card bancar</div>
											<input type="radio" name="tipPlata" id="tipPlataTIP_PLATA_BENEFICIAR"  value="card">
									</div>								
									<div class="radio-container1" style="width:50%;" name="test">
											<div class="lable1" id="TABright">Din cont bancar</div>
											<input type="radio" name="tipPlata" id="tipPlataTIP_PLATA_UTILITATI"  value="cont">
									</div>								
									<div id="tipPlataERR" class="eroare"><a name="AtipPlataERR"></a><span id="tipPlataERRTXT"></span><span class="close-eroare">x</span></div>                                
							</div>
							<div class="clearfix"></div>
							
							<div class="input-box">
								<div class="agent-lable">Valoarea facturii</div>
								<div name="test">
											<input name ="valInt" style="width:50%;" class="agent-input factura_prim" type="text"  name="suma" value="">
											<input name ="valFract" style="width:25%;" class="agent-input second_iban" type="text" name="suma" value="">
											<input name ="currency" style="width:24%;" class="agent-input factura_second" type="text" name="suma" value="RON" readonly>
										</div>					
										<div class="clearfix"></div>
							</div>
							
							<div class="input-box">
								<div class="explica-cont">Alege una din optiunile noastre pentru plata Cash.</div>
								<div class="agent-lable">Categorie furnizor</div>
								<select id="modIncasare" name="supplier_category">
									<option value="">alege</option>
									
									<?php renterCatOptions();?>
							<!--
	<?php			
									foreach ($suppcar as $row) {
											echo '<option value="' . $row['id'] .'">'. $row['name'] .'</option>';
     									}
								?>
-->
								</select>
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

								
								
								