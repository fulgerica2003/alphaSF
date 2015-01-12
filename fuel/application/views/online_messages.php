<div id="wrapper">
	<div class="col-lg-9 col-sm-12">
		<div class="caseta page-text text2">
			<div class="titluri-cont2"><?php echo lang('om_title')?></div>
			
			<ul id="lista-istoric">
				<li class="cap-lista">
					<div class="suma data-mesaje"><?php echo lang('om_date')?></div>
					<div class="beneficiar"><?php echo lang('om_message')?></div>
					<div class="detalii-istoric"><?php echo lang('om_details')?></div>
				</li>
			</ul>
			
			<ul id="lista-istoric">
				<?php foreach ($vars['messages'] as $message):?>
				<li class="cap-lista lista-mesaje">
					<div class="suma data-mesaje"><?php echo $message['date_added']; ?></div>
					<div class="beneficiar"><?php echo $message['message']; ?></div>
					<div class="detalii-istoric detalii_mesaje"><span class="detalii-color"><?php echo lang('om_details')?></span></div>
					<div class="links-istoric">
						<div class="boxLinkMes">
							<a class="link-print" href="#" onclick="window.print();return false;"><?php echo lang('om_print')?></a>
						</div>
					</div>
				</li>
				<?php endforeach;?>
			</ul>
			<?php echo $vars['pagination']; ?>
			<div <?php echo $vars['display_back']?> id="more-news"><a href = <?php echo last_url();?>><?php echo lang('news_details_back');?></a></div>
			
			
			<div class="clearfix" ></div>
			<br /><br /><br /><br /><br /><br />
		</div>
		
	</div>
	
	<div class="col-lg-3 col-sm-12">
		<div class="caseta minimize" id="caseta-tranzactii">
			<div class="minimize-caseta">+</div>
			<div class="caseta-titlu"><?php echo lang('om_title')?></div>
			<ul class="caseta-tranzactii caseta-tranzactii-mesaje">
				<?php foreach ($vars['recent_messages'] as $recent_message):?>
				<li>
					<div ><?php echo $recent_message['date_added']; ?></div>
					<p class="para_mesaje"><?php echo substr($recent_message['message'], 0, 50); ?></p>
					<p class="clearfix"></p>
				</li>
				<?php endforeach;?>
				
			</ul>	
			<div class="caseta-titlu" id="mesagerie-mesaje"><?php echo lang('om_message_box')?></div>	
		</div>
	</div>
</div>

<!--cele doua div-uri de mai jos le tin ascunse pt ca am nevoie in custom.js de etichete-->
<div id = "close_details_label" style = "display:none"><?php echo lang('om_close_details')?></div>
<div id = "details_label" style = "display:none"><?php echo lang('om_details')?></div>