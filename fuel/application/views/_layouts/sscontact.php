<?php
	$this->load->view('_blocks/ssheader');
?>
<div class="container" >
	<?php $this->load->view('_blocks/ssmenuheader')?>
	
	<div id="banner-box">
		<div class="col-lg-12 col-sm-12">
			<?php echo (isset($banner_img) && $banner_img?'<div id = "banner-int"><img src="'.img_path($banner_img).'" alt="" /></div>':''); ?>
			<div class="titlu-pagina"><?php echo lang('contact_title', $lang); ?></div>
		</div>
	</div>
	
	<div class="col-lg-12 col-sm-12">
		<nav class="meniu-interior">
			<div id="box-meniu-interior">
				<div id="button-meniu-interior"></div>
				<?php echo fuel_nav(array('group_id' => 'contact', 'language' => $lang, 'depth' => 1, 'container_tag_class' => 'lista-nav-big', 'active_class' => 'activ', )); ?>
				<div class="clearfix"></div>
			</div>
		</nav>
	</div>
	
	<div id="wrapper" class="margin-top">
		<div class="col-lg-9 col-sm-12">
			<div class="caseta page-text">
				<?php echo fuel_var('body'); ?>
			</div>
		</div>
		
		<?php $this->load->view('_blocks/_caseta-reclama1')?>
		<?php $this->load->view('_blocks/_caseta-calc-online')?>
	</div>
	
	<?php $this->load->view('_blocks/ssfooter')?>
