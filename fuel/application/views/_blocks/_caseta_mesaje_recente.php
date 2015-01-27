<div class="col-lg-3 col-sm-12">
	<div class="caseta minimize" id="caseta-tranzactii">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu"><?php echo lang('om_title')?></div>
		<ul class="caseta-tranzactii caseta-tranzactii-mesaje">
			<?php if (isset($vars['recent_messages'])):?>
			<?php foreach ($vars['recent_messages'] as $recent_message):?>
			<li>
				<div ><?php echo $recent_message['date_added']; ?></div>
				<p class="para_mesaje"><?php echo substr($recent_message['message'], 0, 50); ?></p>
				<p class="clearfix"></p>
			</li>
			<?php endforeach;?>
			<?php endif;?>
			
		</ul>	
		<div class="caseta-titlu" id="mesagerie-mesaje"><?php echo lang('om_message_box')?></div>	
	</div>
</div>