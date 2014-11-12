<?php 
/*
|--------------------------------------------------------------------------
| MY Custom Modules
|--------------------------------------------------------------------------
|
| Specifies the module controller (key) and the name (value) for fuel
*/


/*********************** EXAMPLE ***********************************

$config['modules']['quotes'] = array(
	'preview_path' => 'about/what-they-say',
);

$config['modules']['projects'] = array(
	'preview_path' => 'showcase/project/{slug}',
	'sanitize_images' => FALSE // to prevent false positives with xss_clean image sanitation
);

*********************** /EXAMPLE ***********************************/
$config['modules']['news'] = array(
  'module_name' => 'News',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_cities'] = array(
  'module_name' => 'Cities',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_suppliers_cat'] = array(
  'module_name' => 'Suppliers categories',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_suppliers'] = array(
  'module_name' => 'Suppliers',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);



/*********************** OVERWRITES ************************************/

$config['module_overwrites']['categories']['hidden'] = TRUE; // change to FALSE if you want to use the generic categories module
$config['module_overwrites']['tags']['hidden'] = TRUE; // change to FALSE if you want to use the generic tags module

/*********************** /OVERWRITES ************************************/
