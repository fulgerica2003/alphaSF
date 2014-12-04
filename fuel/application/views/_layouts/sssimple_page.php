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
	
	<div id="wrapper" class="margin-top">
		<div class="col-lg-9 col-sm-12">
			<div class="caseta page-text">
				<?php echo fuel_var('body'); ?>
			</div>
		</div>
		
		<?php $this->load->view('_blocks/caseta-online')?>
		<?php $this->load->view('_blocks/caseta-calculator')?>
	</div>
	
	<?php $this->load->view('_blocks/ssfooter')?>
