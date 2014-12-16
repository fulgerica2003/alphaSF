<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	
	require_once(FUEL_PATH.'models/base_module_model.php');
	
	class Ss_suppliers_cat_model extends Base_module_model {
		
		public $required = array('name');
		protected $friendly_name = 'Categories';
		
		function __construct()
		{
			parent::__construct('ss_suppliers_cat'); // table name
		}
	
	
		function list_items($limit = NULL, $offset = NULL, $col = NULL, $order = 'desc', $just_count = FALSE)
		{
			$data = parent::list_items($limit, $offset, $col, $order, $just_count = FALSE);
			return $data;
		}
	
		
	}
	
	class Ss_supplier_cat_model extends Base_module_record {
		
		// put your record model code here
	}	