<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	
	require_once(FUEL_PATH.'models/base_module_model.php');
	
	class Ss_network_model extends Base_module_model {
		
		// read more about models in the user guide to get a list of all properties. Below is a subset of the most common:
		
		public $record_class = 'Ss_network_item'; // the name of the record class (if it can't be determined)
		public $filters = array(); // filters to apply to when searching for items
		public $required = array(); // an array of required fields. If a key => val is provided, the key is name of the field and the value is the error message to display
		public $foreign_keys = array(); // map foreign keys to table models
		public $linked_fields = array('type' => 'myfunc'); // fields that are linked meaning one value helps to determine another. Key is the field, value is a function name to transform it. (e.g. array('slug' => 'title'), or array('slug' => arry('name' => 'strtolower')));
		public $boolean_fields = array(); // fields that are tinyint and should be treated as boolean
		public $unique_fields = array(); // fields that are not IDs but are unique. Can also be an array of arrays for compound keys
		public $parsed_fields = array(); // fields to automatically parse
		public $serialized_fields = array(); // fields that contain serialized data. This will automatically serialize before saving and unserialize data upon retrieving
		public $has_many = array(); // keys are model, which can be a key value pair with the key being the module and the value being the model, module (if not specified in model parameter), relationships_model, foreign_key, candidate_key
		public $belongs_to = array(); // keys are model, which can be a key value pair with the key being the module and the value being the model, module (if not specified in model parameter), relationships_model, foreign_key, candidate_key
		public $formatters = array(); // an array of helper formatter functions related to a specific field type (e.g. string, datetime, number), or name (e.g. title, content) that can augment field results
		public $display_unpublished_if_logged_in = FALSE;
		
		protected $friendly_name = ''; // a friendlier name of the group of objects
		protected $singular_name = ''; // a friendly singular name of the object
		
		
		function __construct()
		{
			parent::__construct('ss_network'); // table name
		}
		
		function list_items($limit = NULL, $offset = NULL, $col = 'precedence', $order = 'desc', $just_count = FALSE)
		{
			$this->db->select('ss_network.id, 
			
			CASE ss_network.type WHEN 1 THEN \'Smith & Smith\' WHEN 2 THEN \'BCR\' WHEN 3 THEN \'RIB\' WHEN 4 THEN \'Victoria Bank\' ELSE NULL END as type, ss_network.phone, ss_network.email, ss_cities.name as city_name', FALSE);
			$this->db->join('ss_cities', 'ss_cities.id = ss_network.id_city');
			
			$data = parent::list_items($limit, $offset, $col, $order, $just_count = FALSE);
			return $data;
		}
		
		function form_fields($values = array(), $related = array())
		{	
			$options = array(1 => 'Smith & Smith', 2 => 'BCR', 3 => 'RIB', 4 => 'Victoria Bank',);
			$fields = parent::form_fields($values, $related);
			
			$fields['id_city']['label'] 		= 'City';
			
			$fields['county']['label'] 		= 'County';
			
			$fields['bh_week_start']['label'] 		= 'Business hours week start';
			$fields['bh_week_start']['ampm'] 		= false;
			
			$fields['bh_week_end']['label'] 		= 'Business hours week end';
			$fields['bh_week_end']['ampm'] 			= false;
			
			$fields['bh_sat_start']['label'] 		= 'Business hours Saturday start';
			$fields['bh_sat_start']['ampm'] 		= false;
			
			$fields['bh_sat_end']['label'] 			= 'Business hours Saturday end';
			$fields['bh_sat_end']['ampm'] 			= false;
			
			$fields['bh_sun_start']['label'] 		= 'Business hours Sunday start';
			$fields['bh_sun_start']['ampm'] 		= false;
			
			$fields['bh_sun_end']['label'] 			= 'Business hours Sunday end';
			$fields['bh_sun_end']['ampm'] 			= false;
			
			$fields['bh_break_start']['label'] 		= 'Business hours break start';
			$fields['bh_break_start']['ampm'] 		= false;
			
			$fields['bh_break_end']['label'] 		= 'Business hours break end';
			$fields['bh_break_end']['ampm'] 		= false;
			
			$fields['details']['type'] 				= 'text';
			
			$fields['type']['label'] 		= 'Office type';
			$fields['type']['type'] 		= 'select';
			$fields['type']['options'] 		= $options;
			
			
			return $fields;
		}
		
		function on_before_save($values)
		{
			parent::on_before_save($values);
			return $values;
		}
		
		function on_after_save($values)
		{
			parent::on_after_save($values);
			return $values;
		}
		
		function _common_query()
		{
			parent::_common_query();
			
			// remove if no precedence column is provided
			// $this->db->order_by('precedence asc');
		}
		
		function list_items_with_city($type){
			$where['select'] = 'ss_network.*, ss_cities.name city_name';
			$where['join'] = array('ss_cities', 'ss_cities.id = ss_network.id_city');
			$where['where'] = array('ss_network.type' => $type);
			$where['order_by'] = 'ss_cities.name asc';
			
			$query = $this->query($where);
			$results = $query->result();
			
			$output = array();
			
			foreach ($results as $result){
				$first_letter = substr($result->city_name, 0, 1);
				
				if (!array_key_exists($first_letter, $output)){
					$output[$first_letter] = array();
				}
				array_push($output[$first_letter], $result);
			}
			
			return $output;
		}
		
	}
	
	class Ss_network_item_model extends Base_module_record {
		
		// put your record model code here
	}	