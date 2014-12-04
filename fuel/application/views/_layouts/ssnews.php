<?php
	$this->load->view('_blocks/ssheader');
	
	$CI->load->model('news_model');
	
	$vars['pagination'] = '';
	$s1 = uri_segment(1);
	$s2 = uri_segment(2);
	
	$CI->load->library('pagination');
	
	$page = intval($s2) ? intval($s2) : 1;
	$config['base_url'] = base_url() . ($lang != 'ro' ? $lang . '/' : '') . 'stiri';
	$config['total_rows'] = $CI->news_model->record_count(array('language' => $lang, 'published' => 'yes'));
	$config['per_page'] = $news_per_page;
	$config['uri_segment'] = ($lang == 'ro' ? 2 : 3);
	
	$config['use_page_numbers'] = true;
	$config['page_query_string'] = false;
	$config['display_pages'] = false;

	$config['next_link'] = lang('news_older');
	$config['next_tag_open'] = '<div id="older-news">';
	$config['next_tag_close'] = '</div>';
	
	$config['prev_link'] = lang('news_newer');
	$config['prev_tag_open'] = '<div id="newer-news">';
	$config['prev_tag_close'] = '</div>';
	
	$CI->pagination->initialize($config);
	
	$ssNews = $CI->news_model->find_all_array(array('language' => $lang, 'published' => 'yes'), 'publish_date desc', $config['per_page'], ($page - 1) * $config['per_page']);
	$pagination = $CI->pagination->create_links();
	
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
						<div class="col-lg-9 col-sm-9"><span class="news-exp"><?php echo $news['title']; ?></span><a href = "<?php echo site_url('stire/' . $news['slug'])?>" class="news-citeste"><?php echo lang('news_read', $lang); ?></a></div>
					</li>
					<?php endforeach; ?>
				</ul>
				<?php echo $pagination; ?>
				
			</div>
		</div>
		
		<?php $this->load->view('_blocks/caseta-online')?>
		<?php $this->load->view('_blocks/caseta-calculator')?>
	</div>
	
	<?php $this->load->view('_blocks/ssfooter')?>
