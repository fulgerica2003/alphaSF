<?php
	$this->load->view('_blocks/ssheader');
	$CI->load->model('ss_network_model');
	$ss_offices = $CI->ss_network_model->list_items_with_city(1);
?>
<div class="container" >
	<?php $this->load->view('_blocks/ssmenuheader')?>
	
	<div id="banner-box">
		<div class="col-lg-12 col-sm-12">
			<?php echo (isset($banner_img) && $banner_img?'<div id = "banner-int"><img src="'.img_path($banner_img).'" alt="" /></div>':''); ?>
			<div class="titlu-pagina"><?php echo lang('network_title', $lang); ?></div>
		</div>
	</div>
	
	<div class="col-lg-12 col-sm-12">
		<nav class="meniu-interior">
			<div id="box-meniu-interior">
				<div id="button-meniu-interior"></div>
				<?php echo fuel_nav(
					array(	'group_id' => 'retea',
					'language' => $lang, 'depth' => 1, 
					'container_tag_class' => 'lista-nav-big', 
				'active_class' => 'activ', )); ?>
				<div class="clearfix"></div>
			</div>
		</nav>			
	</div>
	
	
	<div id="wrapper">
		<div class="col-lg-6 col-sm-12">
			<div class="caseta page-text page-text ">
							
							<?php
								echo fuel_var('body', '');
							?> 		
			</div>
		</div>
	
	
	
	<div id="wrapper">
		<?php $this->load->view('_blocks/caseta-online', array('page' => ''));?>
		<?php $this->load->view('_blocks/caseta-acasa', array('page' => '')); ?>
		<?php $this->load->view('_blocks/caseta-retea', array('page' => '')); ?>
		<?php $this->load->view('_blocks/caseta-slider-news', array('page' => '')); ?>
		<?php $this->load->view('_blocks/caseta-moneygram', array('page' => '')); ?>
		<?php $this->load->view('_blocks/caseta-comisioane', array('page' => '')); ?>
	</div>
	<?php $this->load->view('_blocks/ssfooter')?>
