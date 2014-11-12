<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	
	require_once(FUEL_PATH.'models/base_module_model.php');
	
	class Ss_suppliers_cat_model extends Base_module_model {
		
		public $required = array('name');
		protected $friendly_name = 'Categories';
		
		function __construct()
		{
			parent::__construct('ss_suppliers_cat'); // table name
		}
		
	}
	
	class Ss_supplier_cat_model extends Base_module_record {
		
		// put your record model code here
	}	