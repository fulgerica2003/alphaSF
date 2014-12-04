<?php
	
	$s1 = uri_segment(1);
	$slug = uri_segment(2);
	if ($s1 != 'stire' || ($s1 == 'stire' && (empty($slug)))){
		redirect(site_url('/stiri'));
	}
	$CI->load->model('news_model');
	$vars['layout'] = 'ssnews_details';
	$vars['banner_img'] = 'banners/banner-news.jpg';
	$stire = $CI->news_model->find_one(array('slug' => $slug, 'published' => 'yes'));
	if($stire) {
		$vars['stire'] = $stire;
		$vars['page_title'] = $stire->title;
		$vars['pagetitle'] = $stire->title;
		//$vars['headtopleft'] = strftime('%e %h', strtotime($stire->publish_date));
		//$vars['headtopright'] = '<a href="stiri">'.lang('toate_stirile').'</a>';
	} else { redirect_404(); }
