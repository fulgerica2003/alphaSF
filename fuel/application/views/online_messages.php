<div id="wrapper">
	<div class="col-lg-9 col-sm-12">
		<div class="caseta page-text text2">
			<div class="titluri-cont2">Mesaje</div>
			
			<ul id="lista-istoric">
				<li class="cap-lista">
					<div class="suma">Data</div>
					<div class="beneficiar">Mesaj</div>
					<div class="detalii-istoric">Detalii</div>
				</li>
			</ul>
			
			<ul id="lista-istoric">
				<?php foreach ($vars['messages'] as $message):?>
				<li class="cap-lista lista-mesaje">
					<div class="suma"><?php echo $message['date_added']; ?></div>
					<div class="beneficiar"><?php echo $message['message']; ?></div>
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
			<div class="caseta-titlu">Mesaje</div>
			<ul class="caseta-tranzactii caseta-tranzactii-mesaje">
				<?php foreach ($vars['recent_messages'] as $recent_message):?>
				<li>
					<div ><?php echo $recent_message['date_added']; ?></div>
					<p class="para_mesaje"><?php echo substr($recent_message['message'], 0, 50); ?></p>
					<p class="clearfix"></p>
				</li>
				<?php endforeach;?>
				
			</ul>	
			<div class="caseta-titlu" id="mesagerie-mesaje">Mesagerie</div>	
		</div>
	</div>
</div>	