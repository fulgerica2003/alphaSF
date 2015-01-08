<div class="modal fade" id="caseta_info_factura" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
		<div class="modal-dialog">
        <div class="modal-content">
        	
        	<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up">Inchide</button>
				<p class="modal-title">Factura</p>
			</div>

<div class="modal-body" id="login-pop">

<p class="eroare_factura2">Detalii factura</p>
<p class="eroare_factura_text">Aici vor fi detalii despre factura</p>
		
		<div class="clearfix"></div>
		
		<div class="submit_eroare2">
		<input class="agent-submit" type="submit" value="OK">
		</div>
		<div class="clearfix"></div>
		</div>
        	
        </div>
	</div>
</div>
<div id="wrapper">
	<div class="col-lg-9 col-sm-12">
		<div class="caseta page-text text2">
			<div class="titluri-cont2">Istoric facturi</div>
			
			<ul id="lista-istoric">
				<li class="cap-lista">
					<div class="suma">Data</div>
					<div class="beneficiar">Suma</div>
					<div class="detalii-istoric">Detalii</div>
				</li>
			</ul>
			
			<ul id="lista-istoric">
				<?php foreach ($vars['invoices'] as $invoice):?>
				<li class="cap-lista lista-mesaje">
					<div class="suma"><?php echo $invoice['date_added']; ?></div>
					<div class="beneficiar"><?php //echo $invoice['message']; ?></div>
					<div class="detalii-istoric detalii_mesaje"><span class="detalii-color">Detalii</span></div>
					<div class="print-istoric"><a class="link-print" href="">Printeaza</a></div>
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
			<div class="caseta-titlu">Cele mai recente facturi platite</div>
			<ul class="caseta-tranzactii caseta-tranzactii-mesaje">
				<?php foreach ($vars['recent_invoices'] as $recent_invoice):?>
				<li>
					<div ><?php echo $recent_invoice['date_added']; ?></div>
					<p class="para_mesaje"><?php //echo substr($recent_invoice['message'], 0, 50); ?></p>
					<p class="clearfix"></p>
				</li>
				<?php endforeach;?>
				
			</ul>	
			<div class="caseta-titlu" id="mesagerie-mesaje">Cele mai recente facturi platite</div>	
		</div>
	</div>
</div>	