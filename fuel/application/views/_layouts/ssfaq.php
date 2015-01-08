<?php
	$this->load->view('_blocks/ssheader');
	$CI->load->model('ss_faq_model');
	$ssFaq = $CI->ss_faq_model->find_all_array(array('language' => $lang, 'published' => 'yes'));
?>
<div class="container" >
	<?php $this->load->view('_blocks/ssmenuheader')?>
	
	<div id="banner-box">
		<div class="col-lg-12 col-sm-12">
			<?php echo (isset($banner_img) && $banner_img?'<div id = "banner-int"><img src="'.img_path($banner_img).'" alt="" /></div>':''); ?>
			<div class="titlu-pagina"><?php echo lang('faq_title', $lang); ?></div>
		</div>
	</div>
	
	
	<div id="wrapper">
		<div class="col-lg-9 col-sm-12">
			<div class="caseta page-text">
				<ul class="news-list">
					<?php $ni = 0; foreach($ssFaq as $faq) : $ni++; ?>
					<li>
						<div class="network-letter col-lg-1 col-sm-1">?</div>
						<div class="network-adresa col-lg-9 col-sm-12"><?php echo lang('faq_q', $lang); ?>/ <?php echo $faq['question']; ?></div>
						<div class="network-adresa col-lg-9 col-sm-12"><?php echo lang('faq_a', $lang); ?>/ <?php echo $faq['answer']; ?></div>
					</li>
					<?php endforeach; ?>
				</ul>
			</div>
		</div>
		
		<?php $this->load->view('_blocks/_caseta-reclama1')?>
		<?php $this->load->view('_blocks/_caseta-calc-online')?>
	</div>
	
	<?php $this->load->view('_blocks/ssfooter')?>
