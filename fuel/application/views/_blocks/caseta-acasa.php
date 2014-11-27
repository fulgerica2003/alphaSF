<div class="col-lg-3 col-sm-6">
	<div class="caseta <?php echo (!empty($page) && $page == 'services' ? 'bkg-brown' : ''); ?> caseta-bkg minimize" id="caseta-acasa">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu"><?php echo lang('caseta_acasa_titlu')?></div>
		<div class="caseta-content">
			<?php echo lang('caseta_acasa_content')?>
		</div>
		<a href="<?=fuel_var('caseta_acasa_url')?>" class="detail-link"><?php echo lang('caseta_details')?></a>
	</div>
</div>