<?php
	$this->load->view('_blocks/ssheader');
?>
<div class="container" >
	<?php $this->load->view('_blocks/ssmenuheader')?>
	
	<div id="banner-box">
		<div class="col-lg-12 col-sm-12">
			<?php echo (isset($banner_img) && $banner_img?'<div id = "banner-int"><img src="'.img_path($banner_img).'" alt="" /></div>':''); ?>
			<div class="titlu-pagina"><?php echo $pagetitle ?></div>
		</div>
	</div>
	
	
	<div id="wrapper">
		<div class="col-lg-9 col-sm-12">
			<div class="caseta page-text">
				<?php $this->load->view('stire')?>
				<div id="more-news"><a href = <?php echo last_url();?>><?php echo lang('news_details_back');?></a></div>
			</div>
		</div>
		
		<?php $this->load->view('_blocks/_caseta-reclama1')?>
		<?php $this->load->view('_blocks/_caseta-calc-online')?>
	</div>
	
	<?php $this->load->view('_blocks/ssfooter')?>
