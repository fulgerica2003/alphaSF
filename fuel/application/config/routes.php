<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/


$route['default_controller'] = 'fuel/page_router';
$route['404_override'] = 'fuel/page_router';

$route['stire/(:any)'] = 'stire';
$route['en/stire/(:any)'] = 'stire';

$route['stiri/(:num)'] = 'stiri';
$route['en/stiri/(:num)'] = 'stiri';

$route['online_messages/(:num)'] = 'online_messages';
$route['en/online_messages'] = 'online_messages';
$route['en/online_messages/(:num)'] = 'online_messages';

$route['online_history_payments/(:num)'] = 'online_history_payments';
$route['en/online_history_payments'] = 'online_history_payments';
$route['en/online_history_payments/(:num)'] = 'online_history_payments';

$route['online_history_invoices/(:num)'] = 'online_history_invoices';
$route['en/online_history_invoices'] = 'online_history_invoices';
$route['en/online_history_invoices/(:num)'] = 'online_history_invoices';

$route['en/online_profile'] = 'online_profile';
$route['en/online_profile/(:any)'] = 'online_profile/$1';

$route['en/online_payments'] = 'online_payments';
$route['en/online_payments/(:any)'] = 'online_payments/$1';

$route['en/online_invoices'] = 'online_invoices';
$route['en/online_invoices/(:any)'] = 'online_invoices/$1';
$route['en/online_invoices/suppliers_by_cat/(:num)'] = 'online_invoices/suppliers_by_cat/$1';

$route['en/pay/(:any)'] = 'pay/$1';

$route['en/auth/activate/(:any)'] = 'auth/activate/$1';



/*	
| Uncomment this line if you want to use the automatically generated sitemap based on your navigation.
| To modify the sitemap.xml, go to the views/sitemap_xml.php file.
*/ 
//$route['sitemap.xml'] = 'sitemap_xml';

include(MODULES_PATH.'/fuel/config/fuel_routes.php');

/* End of file routes.php */
/* Location: ./application/config/routes.php */