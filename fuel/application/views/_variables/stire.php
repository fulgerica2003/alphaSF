<?php
	
	$CI->load->model('ss_payment_methods_model');
	$CI->load->library('session');
	
	// variabile pentru calculator plati
	$vars['calcTipPlata'] = 'card';
	$vars['calcAmount'] = null;
	$vars['calcCurrency'] = null;
	$vars['calcModIncasare'] = null;
	
	// util pentru a pastra valorile daca utilizatorul nu e autentificat si inchide fereastra de autentificare
	$calc_details = $CI->session->userdata('calcPayDetails');
	if ($calc_details != null){
		$payment_type = $calc_details['tipPlata'];
		$amount = $calc_details['amount'];
		$payment_method = $calc_details['modIncasare'];
		$currency = $calc_details['currency'];
		
		$vars['calcTipPlata'] = $payment_type;
		$vars['calcAmount'] = $amount;
		$vars['calcCurrency'] = $currency;
		$vars['calcModIncasare'] = $payment_method;
	}

	if (isset($currency)){
		$vars['benOpts'] = get_ben_opts($currency);
	}else{
		$vars['benOpts'] = $CI->ss_payment_methods_model->options_list();
	}
	
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
