<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	
	require_once(FUEL_PATH.'models/base_module_model.php');
	
	class Ss_suppliers_model extends Base_module_model {
		
		public $required = array('name', 'IBAN', 'bank');
		public $foreign_keys = array('id_cat' => 'ss_suppliers_cat_model');
		
		function __construct()
		{
			parent::__construct('ss_suppliers'); // table name
		}
		
		function list_items($limit = NULL, $offset = NULL, $col = 'name', $order = 'asc', $just_count = FALSE)
		{
			$this->db->select('id, name, IBAN, bank', FALSE);
			$data = parent::list_items($limit, $offset, $col, $order, $just_count); 
			return $data;
		}
		
		function form_fields($values = array(), $related = array())
		{
			$fields = parent::form_fields($values, $related);
			
			// ******************* ADD CUSTOM FORM STUFF HERE *******************
			$fields['id_cat']['label'] = 'Category';
			
			return $fields;
		}
		
		function ajax_options($params = array())
		{
			$data = $this->find_all(array('id_cat' => $params['supplier_category']));
			$str = '';
			foreach($data as $key => $option)
			{
				$str .= "<option value=\"".$option->id."\" label=\"".$option->name."\">".$option->name."</option>\n";
			}
			
			echo $str;
			return $str;
		}
		
	}
	
	class Ss_supplier_model extends Base_module_record {
		
		// put your record model code here
	}		