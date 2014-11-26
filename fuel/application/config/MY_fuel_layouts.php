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
| News page Layout
|--------------------------------------------------------------------------
|
| layout for other pages
*/

$ssnews = new Fuel_layout('ssnews');
$ssnews->set_label('News page template');
$ssnews->add_fields($common_meta);

$ssnews->add_field('banner_img', array('label' => 'Banner', 'type' => 'asset', 'folder' => 'images', 'subfolder' => 'banners', 'hide_options' => true, 'overwrite' => false));

$config['layouts']['ssnews'] = $ssnews;

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

/* End of file MY_fuel_layouts.php */
/* Location: ./application/config/MY_fuel_layouts.php */

