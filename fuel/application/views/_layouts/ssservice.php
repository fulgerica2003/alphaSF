<?php
	$this->load->view('_blocks/ssheader');
?>
<div class="container" >
	<?php $this->load->view('_blocks/ssmenuheader')?>
	
	<div id="banner-box">
		<div class="col-lg-12 col-sm-12">
			<?php echo (isset($banner_img) && $banner_img?'<div id = "banner-int"><img src="'.img_path($banner_img).'" alt="" /></div>':''); ?>
			<div class="titlu-pagina"><?php echo lang('services_title', $lang); ?></div>
		</div>
	</div>
	
	<div class="col-lg-12 col-sm-12">
		<nav class="meniu-interior">
			<div id="box-meniu-interior">
				<div id="button-meniu-interior"></div>
				<?php echo fuel_nav(array('group_id' => 'servicii', 'language' => $lang, 'depth' => 0, 'container_tag_class' => 'lista-nav-big', 'active_class' => 'activ', )); ?>
				<div class="clearfix"></div>
				<div id="box-meniu-interior1">
					<?php echo fuel_nav(array('group_id' => 'servicii', 'language' => $lang, 'depth' => 0, 'container_tag_class' => 'lista-nav-big', 'active_class' => 'activ', 'parent' => 'servicii/'.uri_segment(2), )); ?>
					<div class="clearfix"></div>
				</div>
			</div>
		</nav>
	</div>
	<div id="wrapper" class="margin-top">
		<div class="col-lg-6 col-sm-12">
			<div class="caseta page-text service-text">
				<?php echo fuel_var('body', ''); ?>
			</div>
		</div>
	</div>
	<?php $this->load->view('_blocks/_caseta-calc-mare-online'); ?>
	<?php $this->load->view('_blocks/caseta-comisioane', array('page' => 'services')); ?>
	<?php $this->load->view('_blocks/caseta-online', array('page' => 'services_small')); ?>
	<?php $this->load->view('_blocks/caseta-acasa', array('page' => 'services')); ?>
	<?php $this->load->view('_blocks/caseta-retea', array('page' => 'services')); ?>
	<?php $this->load->view('_blocks/caseta-slider-news', array('page' => 'services')); ?>
	<?php $this->load->view('_blocks/caseta-moneygram', array('page' => 'services')); ?>
	
	
	
	
	<?php $this->load->view('_blocks/ssfooter')?>
