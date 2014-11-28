<?php $this->load->view('_blocks/ssheader');?>
<div id="slide-container">
	<div id="slider"  class="carousel slide">
		<div class="carousel-inner">
			<?php if(isset($sections)) : $seci = 0; ?>
			<?php foreach($sections as $section) : $seci++; ?>
			<div class="item<?php echo ($seci == 1 ? ' active" id="home-carousel-inner' : ''); ?>">
				<div class="item-image" style="background-image:url('<?php echo img_path($section['banner_img']);?>')"></div>
				<p class="text-slid"><?php echo $section['slide_title'];?></p>
				<a class="slider-button" href="<?php echo $section['button_url']?>"><?php echo $section['button_title'];?></a>
			</div>
			<?php endforeach; ?>
			<?php endif; ?>
		</div>
	    <a class="left carousel-control" href="#slider" data-slide="prev"></a>
	    <a class="right carousel-control" href="#slider" data-slide="next"></a>
	</div>	
</div>
<div class="container">
	<div id="text-slider">
		<p></p>
		<a href="#"></a>
	</div>
</div>

<div class="container main-container" >
	
	<?php $this->load->view('_blocks/ssmenuheader');?>
	
	
	<div id="content-wrapper">
		<?php $this->load->view('_blocks/caseta-online');?>
		<?php $this->load->view('_blocks/caseta-acasa');?>
		<?php $this->load->view('_blocks/caseta-calculator');?>
		<?php $this->load->view('_blocks/caseta-cash');?>
		<?php $this->load->view('_blocks/caseta-retea');?>
		<?php $this->load->view('_blocks/caseta-retea');?>
		<?php $this->load->view('_blocks/caseta-retea');?>
		<?php $this->load->view('_blocks/caseta-slider-news');?>
		<?php $this->load->view('_blocks/caseta-moneygram');?>
	
		
	<?php $this->load->view('_blocks/ssfooter');?>			