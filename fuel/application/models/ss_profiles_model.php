<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');

require_once(FUEL_PATH.'models/base_module_model.php');

class Ss_profiles_model extends Base_module_model {

	// read more about models in the user guide to get a list of all properties. Below is a subset of the most common:

	public $record_class = 'Ss_profile'; // the name of the record class (if it can't be determined)
	public $filters = array(); // filters to apply to when searching for items
	public $required = array('name', 'value', 'id_profile_type'); // an array of required fields. If a key => val is provided, the key is name of the field and the value is the error message to display
	public $foreign_keys = array(); // map foreign keys to table models
	public $linked_fields = array(); // fields that are linked meaning one value helps to determine another. Key is the field, value is a function name to transform it. (e.g. array('slug' => 'title'), or array('slug' => arry('name' => 'strtolower')));
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
		parent::__construct('ss_profiles'); // table name
	}

	function list_items($limit = NULL, $offset = NULL, $col = 'precedence', $order = 'desc', $just_count = FALSE)
	{
		$this->db->select('ss_profiles.name, ss_profiles.value, ss_profiles.id, ss_types.name as profile_type', FALSE);
		$this->db->join('ss_types', 'ss_types.id = ss_profiles.id_profile_type');
		
		$data = parent::list_items($limit, $offset, $col, $order, $just_count = FALSE);
		return $data;
	}

	function form_fields($values = array(), $related = array())
	{	
		$fields = parent::form_fields($values, $related);
		
		$this->load->model('ss_types_model');
		$where['type'] = 'client';
		
		$fields['id_profile_type']['label'] = 'Profile type';
		$fields['id_profile_type']['type'] = 'select';
		$fields['id_profile_type']['options'] = $this->ss_types_model->options_list('id', 'name', 'type in( \'client\', \'beneficiar\')', null);
		
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
	
	function get_client_id_list(){
		
		return $this->get_profiles_options_list('client');
	}
	
	function get_ben_id_list(){
		
		return $this->get_profiles_options_list('beneficiar');
	}
	
	function get_profiles_list($type, $name, $col){
		return $this->get_profiles_options_list($type, $name, $col);
	}
	
	private function get_profiles_options_list($type, $name = null, $col = null){
	
		$this->load->model('ss_types_model');
		
		if (isset($name)){
			$where = 'type = \''. $type .'\' and name like \''. $name .'%\'';
		}else{
			$where = 'type = \''. $type .'\'';
		}
		
		$profile_ids = $this->ss_types_model->options_list('id', 'name', $where, null);
		
		$list = array_to_list($profile_ids);
		
		$output = $this->options_list('id', isset($col) ? $col : 'name', 'id_profile_type in ' . $list, null);
		
		return $output;
	}

}

class Ss_profile_model extends Base_module_record {
	
	// put your record model code here
}