<?php 
/*
	|--------------------------------------------------------------------------
| MY Custom Layouts
|--------------------------------------------------------------------------
|
| specify the name of the layouts and their fields associated with them
*/

$common_meta = array(
  'Meta' => array('type' => 'fieldset', 'label' => 'Meta', 'class' => 'tab'),
  'page_title' => array('label' => lang('layout_field_page_title')),
  'meta_description' => array('label' => lang('layout_field_meta_description')),
  'meta_keywords' => array('label' => lang('layout_field_meta_keywords')),
);

$config['default_layout'] = 'main';

$config['layouts_folder'] = '_layouts';

$config['hidden'] = array();

$config['layouts']['main'] = array(
	//'file' 		=> $config['layouts_path'].'main',
	// 'class'		=> 'Main_layout',
	// 'filepath' => 'libraries',
	// 'filename' => 'Main_layout.php',
	
	
	'fields'	=> array(
		'Header' => array('type' => 'fieldset', 'label' => 'Header', 'class' => 'tab'),
		'page_title' => array('label' => lang('layout_field_page_title')),
		'meta_description' => array('label' => lang('layout_field_meta_description')),
		'meta_keywords' => array('label' => lang('layout_field_meta_keywords')),
		'Body' => array('type' => 'fieldset', 'label' => 'Body', 'class' => 'tab'),
		'heading' => array('label' => lang('layout_field_heading')),
		'body' => array('label' => lang('layout_field_body'), 'type' => 'textarea', 'description' => lang('layout_field_body_description')),
		'body_class' => array('label' => lang('layout_field_body_class')),
	)
);

$config['layouts']['main_secured'] = array(
	//'file' 		=> $config['layouts_path'].'main',
	// 'class'		=> 'Main_layout',
	// 'filepath' => 'libraries',
	// 'filename' => 'Main_layout.php',
	
	
	'fields'	=> array(
		'Header' => array('type' => 'fieldset', 'label' => 'Header', 'class' => 'tab'),
		'page_title' => array('label' => lang('layout_field_page_title')),
		'meta_description' => array('label' => lang('layout_field_meta_description')),
		'meta_keywords' => array('label' => lang('layout_field_meta_keywords')),
		'Body' => array('type' => 'fieldset', 'label' => 'Body', 'class' => 'tab'),
		'heading' => array('label' => lang('layout_field_heading')),
		'body' => array('label' => lang('layout_field_body'), 'type' => 'textarea', 'description' => lang('layout_field_body_description')),
		'body_class' => array('label' => lang('layout_field_body_class')),
		'auth' => array('type' => 'enum', 'options' => array('0' => 'No', '1' => 'Yes')),
	)
);

/*
|--------------------------------------------------------------------------
| Homepage Layout
|--------------------------------------------------------------------------
|
| layout for the first page of SS
*/

$sshomepage = new Fuel_layout('sshomepage');
$sshomepage->set_label('Homepage template');
$sshomepage->add_fields($common_meta);

$sshomepage->add_field('Slider', array('type' => 'fieldset', 'label' => 'Slider', 'class' => 'tab'));
$sshomepage->add_field('sections', array('display_label' => TRUE, 'add_extra' => FALSE, 'dblclick' => 'toggle', 'repeatable' => TRUE, 'type' => 'template', 'label' => 'Slides', 'title_field' => 'title',
                                'fields' => array(
                                  'section' => array('type' => 'section', 'label' => 'Slide'),
                                  'slide_title' => array('label' => 'Slider title',),
								  'banner_img' => array('label' => 'Slider image', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'slides', 'hide_options' => true, 'overwrite' => false),
								  'button_title' => array('label' => 'Button title'),
								  'button_url' => array('label' => 'Button URL'),
                                )));
								
$config['layouts']['sshomepage'] = $sshomepage;

/*
|--------------------------------------------------------------------------
| Services page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$ssservice_main = new Fuel_layout('ssservice_main');
$ssservice_main->set_label('Services page template');
$ssservice_main->add_fields($common_meta);

$ssservice_main->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false));

$config['layouts']['ssservice_main'] = $ssservice_main;

/*
|--------------------------------------------------------------------------
| Service page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$ssservice = new Fuel_layout('ssservice');
$ssservice->set_label('Service page template');
	$ssservice->add_fields($common_meta);

$ssservice->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false));

$ssservice->add_field('Body', array('type' => 'fieldset', 'label' => 'Body', 'class' => 'tab'));
$ssservice->add_field('heading', array('label' => lang('layout_field_heading')));
$ssservice->add_field('body', array('label' => lang('layout_field_body'), 'type' => 'textarea', 'description' => lang('layout_field_body_description')));
$ssservice->add_field('body_class', array('label' => lang('layout_field_body_class')));

$config['layouts']['ssservice'] = $ssservice;

/*
|--------------------------------------------------------------------------
| News page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$ssnews = new Fuel_layout('ssnews');
$ssnews->set_label('News page template');
$ssnews->add_fields($common_meta);

$ssnews->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false));

$ssnews->add_field('news_per_page', array('label' => 'News per page', 'type' => 'number', 'default' => 1));

$config['layouts']['ssnews'] = $ssnews;

/*
|--------------------------------------------------------------------------
| About us  page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$ssabout = new Fuel_layout('ssabout');
$ssabout->set_label('Aboutus page template');
$ssabout->add_fields($common_meta);
$ssabout->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false));
$ssabout->add_field('Body', array('type' => 'fieldset', 'label' => 'Body', 'class' => 'tab'));
$ssabout->add_field('body', array('label' => lang('layout_field_body'), 'type' => 'textarea', 'description' => lang('layout_field_body_description')));
$ssabout->add_field('body_class', array('label' => lang('layout_field_body_class')));

$config['layouts']['ssabout'] = $ssabout;

/*
|--------------------------------------------------------------------------
| About us agent page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$ssabouta = new Fuel_layout('ssabout_agent');
$ssabouta->set_label('Aboutus agent page template');
$ssabouta->add_fields($common_meta);
$ssabouta->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false));
$ssabouta->add_field('Body', array('type' => 'fieldset', 'label' => 'Body', 'class' => 'tab'));
$ssabouta->add_field('body', array('label' => lang('layout_field_body'), 'type' => 'textarea', 'description' => lang('layout_field_body_description')));
$ssabouta->add_field('body_class', array('label' => lang('layout_field_body_class')));

$config['layouts']['ssabout_agent'] = $ssabouta;


/*
|--------------------------------------------------------------------------
| Network page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$ssnetwork = new Fuel_layout('ssnetwork_offices');
$ssnetwork->set_label('Office list page template');
$ssnetwork->add_fields($common_meta);

$ssnetwork->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false, ));

$config['layouts']['ssnetwork'] = $ssnetwork;

/*
|--------------------------------------------------------------------------
| Network static content page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$ssnetworks = new Fuel_layout('ssnetworks');
$ssnetworks->set_label('Network static content');
$ssnetworks->add_fields($common_meta);

$ssnetworks->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false, ));
$ssnetworks->add_field('Body', array('type' => 'fieldset', 'label' => 'Body', 'class' => 'tab'));
$ssnetworks->add_field('body', array('label' => lang('layout_field_body'), 'type' => 'textarea', 'description' => lang('layout_field_body_description')));
$ssnetworks->add_field('body_class', array('label' => lang('layout_field_body_class')));


$config['layouts']['ssnetworks'] = $ssnetworks;


/*
|--------------------------------------------------------------------------
| Contact page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$sscontact = new Fuel_layout('sscontact');
$sscontact->set_label('Contact page template');
$sscontact->add_fields($common_meta);

$sscontact->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false));

$sscontact->add_field('Body', array('type' => 'fieldset', 'label' => 'Body', 'class' => 'tab'));
$sscontact->add_field('heading', array('label' => lang('layout_field_heading')));
$sscontact->add_field('body', array('label' => lang('layout_field_body'), 'type' => 'textarea', 'description' => lang('layout_field_body_description')));
$sscontact->add_field('body_class', array('label' => lang('layout_field_body_class')));

$config['layouts']['sscontact'] = $sscontact;

/*
|--------------------------------------------------------------------------
| Contact form page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$sscontactform = new Fuel_layout('sscontactform');
$sscontactform->set_label('Contact form page template');
$sscontactform->add_fields($common_meta);

$sscontactform->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false));

$sscontactform->add_field('Body', array('type' => 'fieldset', 'label' => 'Body', 'class' => 'tab'));
$sscontactform->add_field('heading', array('label' => lang('layout_field_heading')));
$sscontactform->add_field('body', array('label' => lang('layout_field_body'), 'type' => 'textarea', 'description' => lang('layout_field_body_description')));
$sscontactform->add_field('body_class', array('label' => lang('layout_field_body_class')));

$config['layouts']['sscontactform'] = $sscontactform;

/*
|--------------------------------------------------------------------------
| FAQ page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$ssfaq = new Fuel_layout('ssfaq');
$ssfaq->set_label('FAQ page template');
$ssfaq->add_fields($common_meta);

$ssfaq->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false, 'default' => 'banners/b_contact._.1134x184_._.o_.jpg'));

$config['layouts']['ssfaq'] = $ssfaq;

/*
|--------------------------------------------------------------------------
| Simple page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$sssimple = new Fuel_layout('sssimple_page');
$sssimple->set_label('Simple page template');
$sssimple->add_fields($common_meta);

$sssimple->add_field('Body', array('type' => 'fieldset', 'label' => 'Body', 'class' => 'tab'));
$sssimple->add_field('heading', array('label' => lang('layout_field_heading')));
$sssimple->add_field('body', array('label' => lang('layout_field_body'), 'type' => 'textarea', 'description' => lang('layout_field_body_description')));
$sssimple->add_field('body_class', array('label' => lang('layout_field_body_class')));

$config['layouts']['sssimple_page'] = $sssimple;

/* End of file MY_fuel_layouts.php */
/* Location: ./application/config/MY_fuel_layouts.php */

