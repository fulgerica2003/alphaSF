<?php
	$CI->load->model('news_model');
	$ssNews = $CI->news_model->find_all_array(array('language' => $lang, 'published' => 'yes'), 'publish_date desc', '3');
?>
<div class="col-lg-3 col-sm-6">
	<div class="caseta minimize slider-news">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu"><?php echo lang('caseta_slider_news_titlu');?></div>
		<ul id="slider-news">
			<?php $ni = 0; foreach($ssNews as $news) : $ni++; ?>
			<li>
				<p class="news-slide-titlu"><?php echo $news['title']; ?></p>
				<p class="news-slide-data">- <?php echo strftime('%#d %B %Y', strtotime($news['publish_date'])); ?></p>
				<p ><a href = "<?php echo site_url('stiri');?>" class="news-slide-link"><?php echo strtoupper(lang('caseta_read_more'));?></a></p>
			</li>
			<?php endforeach; ?>
		</ul>
	</div>
</div>