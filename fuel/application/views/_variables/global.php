<?php 

// declared here so we don't have to in each controller's variable file
$CI =& get_instance();
$CI->load->language('ss');

// generic global page variables used for all pages
$vars = array();
$vars['layout'] = 'main';
$vars['page_title'] = fuel_nav(array('render_type' => 'page_title', 'delimiter' => ' : ', 'order' => 'desc', 'home_link' => 'Home'));
$vars['meta_keywords'] = '';
$vars['meta_description'] = '';
$vars['js'] = array();
$vars['css'] = array();
//$vars['body_class'] = uri_segment(1).' '.uri_segment(2);
$vars['lang'] = $lang = $CI->fuel->language->selected();
$locale = ($lang == 'en' ? 'en_US' : 'ro_RO');
setlocale(LC_TIME, $locale);

$vars['subfolder'] = 'smith';

// page specific variables
$pages = array();
?>