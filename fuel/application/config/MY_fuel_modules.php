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

$config['modules']['ss_payment_methods'] = array(
  'module_name' => 'Payment methods',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_types'] = array(
  'module_name' => 'Types',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_profiles'] = array(
  'module_name' => 'Profiles',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_fees'] = array(
  'module_name' => 'Fees',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_faq'] = array(
  'module_name' => 'FAQ',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_display_fees'] = array(
  'module_name' => 'Display fees',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_network'] = array(
  'module_name' => 'offices',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_exchange_rate'] = array(
  'module_name' => 'exchange rate',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_newsletter_list'] = array(
  'module_name' => 'newsletter list',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
);

$config['modules']['ss_payments'] = array(
  'module_name' => 'payments',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
  'table_actions' => array(),
  'preview_path' => 'fuel/ss_payments/edit/{id}',
  'rows_selectable' => FALSE,
  'displayonly' => TRUE,
  'item_actions' => array(),
);

$config['modules']['ss_invoices'] = array(
  'module_name' => 'invoices',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
  'table_actions' => array(),
  'preview_path' => 'fuel/ss_invoices/edit/{id}',
  'rows_selectable' => FALSE,
  'displayonly' => TRUE,
  'item_actions' => array(),
);

$config['modules']['ss_messages'] = array(
  'module_name' => 'Payments/invoices messages',
  'instructions' => '',
  'archivable' => TRUE,
  'hidden' => TRUE,
  'table_actions' => array(),
  'preview_path' => 'fuel/ss_messages/edit/{id}',
  'rows_selectable' => FALSE,
  'displayonly' => TRUE,
  'item_actions' => array(),
);



/*********************** OVERWRITES ************************************/

$config['module_overwrites']['categories']['hidden'] = TRUE; // change to FALSE if you want to use the generic categories module
$config['module_overwrites']['tags']['hidden'] = TRUE; // change to FALSE if you want to use the generic tags module

/*********************** /OVERWRITES ************************************/
