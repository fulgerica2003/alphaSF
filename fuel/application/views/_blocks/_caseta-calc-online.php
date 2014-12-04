<div class="col-lg-3 col-sm-6">
	<div class="caseta minimize" id="caseta-calculator">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu">Transfer bani online</div>
		<form id="form-calc" action="setings-user-transfer-bani--75.htm" method="post">
			<div class="radio-container1" style="width:50%;  ">
				<div class="lable1 radioactiv" id="TABleft">de pe Card</div>
				<input type="radio" name="tipPlata" id="tipPlataTIP_PLATA_BENEFICIAR" value="TIP_PLATA_BENEFICIAR">
			</div>								
			<div class="radio-container1" style="width:50%; border-left:1px solid #d4cfd2; ">
				<div class="lable1" id="TABright">din Cont</div>
				<input type="radio" name="tipPlata" id="tipPlataTIP_PLATA_UTILITATI" value="TIP_PLATA_UTILITATI">
			</div>								
			
			<input style="width:70%; border-right: 4px solid #ffcccc;" class="agent-input first-iban transfer-input" type="text"  name="suma" placeholder="Suma transferata">
			<select id="monedaPlata" class="ron_transfer2" name="monedaPlata" style="width:31%; height:39px; border-bottom-left-radius:0px;border-top-left-radius:0px;">
				<option value="">ron</option>
				<option value="RON">RON</option><option value="EUR">EUR</option><option value="USD">USD</option>					
			</select>
			
			<div class="input-box" style="margin:0px; padding:0px;">
				
			</div>
			<select id="modIncasare" name="modIncasare" style="width:100%">
				<option value="">Modalitate Plata</option>
				<option value="MOD_INCASARE_CASH">cash</option>
				<option value="MOD_INCASARE_HD">acasa - plata la domiciliu</option>
				<option value="MOD_INCASARE_CONT_BENEFICIAR">contul beneficiarului deschis la orice banca din Romania</option>
				<option value="MOD_INCASARE_CONT_SMITH">contul beneficiarului deschis la Smith&amp;Smith</option>
			</select>							
		</form>
		<div>
			<ul class="caseta-tranzactii casetuta-tranfer-hp">
				<li>
					<div>Comision transfer</div>
					<div><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">RON</span></div>
					<p class="clearfix"></p>
				</li>
				<li>
					<div>Total de transferat</div>
					<div><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">RON</span></div>
					<p class="clearfix"></p>
				</li>
			</ul>
		</div>	
		
		
		
		<div class="total-calc" style="margin-top:20px;" ;="">
			<a href="javascript:formCalcSubmit();" style="color:#FFF; text-decoration:none;">TRANSFERA</a>
		</div>		
		<br><br>
	</div>
</div>