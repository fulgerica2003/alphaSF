<div class="col-lg-3 col-sm-6">
		  	<div class="caseta minimize" id="caseta-calculator">
		  		<div class="minimize-caseta">+</div>
		  		<div class="caseta-titlu">Calculator<a href="#" id="calc-login" data-toggle="modal" data-target="#pop-up-login">LOGIN</a></div>
		  		
		  		<form id="form-calc" action="" method="post">
					<select id="select-from">
					  <option value="1">From</option>
					  <option value="2">Test</option>
					</select>
					<select id="select-to">
					  <option value="1">To</option>
					  <option value="2">Test</option>
					</select>
					<div class="radio-container">
						<div class="lable radioactiv" id="credit">Credit Card</div>
						<input type="radio" name="cont" checked value="1">
					</div>
					<div class="radio-container">
						<div class="lable" id="account">Account </div>
						<input type="radio" name="cont" value="2">
					</div>
					<div class="div-input">
						<div class="input-lable">Ammount (Euro)</div>
						<input type="text" name="ammount" value="0,0">
					</div>
				</form>	
				<div class="box-rezultate">
					Commission transfer <span class="rezulatate">+ 0,0</span>
				</div>	  
				<div class="box-rezultate">
					<input type="checkbox" name="home" value="home">Home delivery <span class="rezulatate">+ 0,0</span>
				</div>	
				<div class="total-calc">
					Total
					<span id="rezultat">0,0 &euro;</span>
				</div>		
		  	</div>
		</div>
