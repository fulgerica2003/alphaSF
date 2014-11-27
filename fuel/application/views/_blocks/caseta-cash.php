<div class="<?php echo (!empty($page) && $page == 'services' ? 'col-lg-6' : 'col-lg-3'); ?> col-sm-6">
	<div class="caseta caseta-bkg <?php echo (empty($page) ? 'minimize' : ($page == 'services' ? 'bkb-mare cash' : 'bkg-brown')); ?> " id="caseta-cash">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu"><?php echo lang('caseta_cash_titlu')?></div>
		<div class="<?php echo (!empty($page) && $page == 'services' ? 'col-lg-6 col-sm-12' : '');?> caseta-content">
			<?php echo lang('caseta_cash_content')?>
		</div>
		<?php if (!empty($page) && $page == 'services'){?>
		<div class="col-lg-6 col-sm-12 caseta-content">
			<ul class="lista-services">
				<li>ROMANIA - ABROAD</li>
				<li>ROMANIA - ROMANIA</li>
				<li>ABROAD - ROMANIA</li>
				<li>ACASA (HD)</li>
			</ul>
		</div>
		<div class="clearfix"></div>
		<?php }else{ ?>
		<a href="<?=fuel_var("caseta_cash_url");?>" class="detail-link"><?php echo lang("caseta_details");?></a>
		<?php }?>
		</div>
</div>