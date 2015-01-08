<div id="wrapper">
	<div class="col-lg-9 col-sm-12">
		<div class="caseta page-text text2">
			<div class="titluri-cont2">Istoric transferuri</div>
			
			<ul id="lista-istoric">
				<li class="cap-lista">
					<div class="suma">Data</div>
					<div class="beneficiar">Suma</div>
					<div class="detalii-istoric">Detalii</div>
				</li>
			</ul>
			
			<ul id="lista-istoric">
				<?php foreach ($vars['payments'] as $payment):?>
				<li class="cap-lista lista-mesaje">
					<div class="suma"><?php echo $payment['date_added']; ?></div>
					<div class="beneficiar"><?php //echo $payment['message']; ?></div>
					<div class="detalii-istoric detalii_mesaje"><span class="detalii-color">Detalii</span></div>
					<div class="print-istoric"><a class="link-print" href="#" onclick="window.print();return false;">Printeaza</a></div>
				</li>
				<?php endforeach;?>
			</ul>
			<?php echo $vars['pagination']; ?>
			
			
			<div class="clearfix" ></div>
			<br /><br /><br /><br /><br /><br />
		</div>
		
	</div>
	
	<div class="col-lg-3 col-sm-12">
		<div class="caseta minimize" id="caseta-tranzactii">
			<div class="minimize-caseta">+</div>
			<div class="caseta-titlu">Cele mai recente transferuri</div>
			<ul class="caseta-tranzactii caseta-tranzactii-mesaje">
				<?php foreach ($vars['recent_payments'] as $recent_payment):?>
				<li>
					<div ><?php echo $recent_payment['date_added']; ?></div>
					<p class="para_mesaje"><?php //echo substr($recent_payment['message'], 0, 50); ?></p>
					<p class="clearfix"></p>
				</li>
				<?php endforeach;?>
				
			</ul>	
			<div class="caseta-titlu" id="mesagerie-mesaje">Cele mai recente transferuri</div>	
		</div>
	</div>
</div>	