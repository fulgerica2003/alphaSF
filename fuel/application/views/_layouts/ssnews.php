<?php
	$this->load->view('_blocks/ssheader');
	$CI->load->model('news_model');
	$ssNews = $CI->news_model->find_all_array(array('language' => $lang, 'published' => 'yes'), 'publish_date desc');
?>
<div class="container" >
	<?php $this->load->view('_blocks/ssmenuheader')?>
	
	<div id="banner-box">
		<div class="col-lg-12 col-sm-12">
			<?php echo (isset($banner_img) && $banner_img?'<div id = "banner-int"><img src="'.img_path($banner_img).'" alt="" /></div>':''); ?>
			<div class="titlu-pagina"><?php echo lang('news_title', $lang); ?></div>
		</div>
	</div>
	
	
	<div id="wrapper">
		<div class="col-lg-9 col-sm-12">
			<div class="caseta page-text">
				<ul class="news-list">
					<?php $ni = 0; foreach($ssNews as $news) : $ni++; ?>
					<li>
						<div class="news-date col-lg-3 col-sm-3"><?php setlocale(LC_TIME, $lang . '_' . strtoupper ($lang)); echo strftime('%#d %B %Y', strtotime($news['publish_date'])); ?></div>
						<div class="col-lg-9 col-sm-9"><span class="news-exp"><?php echo $news['title']; ?></span><a class="news-citeste"><?php echo lang('news_read', $lang); ?></a></div>
					</li>
					<?php endforeach; ?>
				</ul>
				<div id="more-news"><?php echo lang('news_older', $lang); ?></div>
				
			</div>
		</div>
		
		<?php $this->load->view('_blocks/caseta-online')?>
		<?php $this->load->view('_blocks/caseta-calculator')?>
	</div>
	
	<?php $this->load->view('_blocks/ssfooter')?>
