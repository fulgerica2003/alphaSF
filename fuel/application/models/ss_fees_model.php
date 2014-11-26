<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');

require_once(FUEL_PATH.'models/base_module_model.php');

class Ss_fees_model extends Base_module_model {

	// read more about models in the user guide to get a list of all properties. Below is a subset of the most common:

	public $record_class = 'Ss_fee'; // the name of the record class (if it can't be determined)
	public $filters = array(); // filters to apply to when searching for items
	public $required = array(); // an array of required fields. If a key => val is provided, the key is name of the field and the value is the error message to display
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
		parent::__construct('ss_fees'); // table name
	}

	function list_items($limit = NULL, $offset = NULL, $col = 'precedence', $order = 'desc', $just_count = FALSE)
	{
		$data = parent::list_items($limit, $offset, $col, $order, $just_count = FALSE);
		return $data;
	}

	function form_fields($values = array(), $related = array())
	{	
		$this->load->model('ss_types_model');
		$this->load->model('ss_payment_methods_model');
		$options = array(1 => 'yes', 0 => 'no');
		
		$fields = parent::form_fields($values, $related);
		
		$fields['com_val']['label'] 		= 'Fee value'; // 2
		$fields['com_type']['label'] 		= 'Fee type'; // 3
		
		$fields['com_int_apply']['label'] 	= 'Apply to range amount'; // 4
		$fields['com_int_apply']['type'] 	= 'enum';
		$fields['com_int_apply']['mode'] 	= 'radios';
		$fields['com_int_apply']['options'] = $options;
		
		$fields['com_int_min']['label'] 	= 'Min amount'; // 5
		$fields['com_int_max']['label'] 	= 'Max amount'; // 6
		
		$fields['com_promo']['label'] 		= 'Promotional fee'; // 7
		$fields['com_promo']['type'] 		= 'enum';
		$fields['com_promo']['mode'] 		= 'radios';
		$fields['com_promo']['options'] 	= $options;
		
		$fields['com_spot']['label'] 		= 'Spot fee'; // 8
		$fields['com_spot']['type'] 		= 'enum';
		$fields['com_spot']['mode'] 		= 'radios';
		$fields['com_spot']['options'] 		= $options;
		
		$fields['com_trn_apply']['label'] 	= 'Apply to trn range'; // 9
		$fields['com_trn_apply']['type'] 		= 'enum';
		$fields['com_trn_apply']['mode'] 		= 'radios';
		$fields['com_trn_apply']['options'] 		= $options;
		
		$fields['com_trn_min']['label'] 	= 'Min nr'; // 10
		$fields['com_trn_max']['label'] 	= 'Max nr'; // 11
		
		$fields['com_time_start']['label'] 	= 'Start date';// 12
		
		$fields['com_time_apply']['label'] 	= 'Fee date'; // 13
		$fields['com_time_apply']['type'] 		= 'enum';
		$fields['com_time_apply']['mode'] 		= 'radios';
		$fields['com_time_apply']['options'] 		= $options;
		
		$fields['com_time_stop']['label'] 	= 'Stop date'; // 14
		
		$fields['fk_currency']['label'] 	= 'Currency'; // 15
		$fields['fk_currency']['type']		= 'select';
		$fields['fk_currency']['options']	= array (1 => 'RON', 2 => 'EUR', 3 => 'USD');
		
		$fields['fk_network']['label']		= 'Network'; // 16
		$fields['fk_network']['type'] 		= 'select';
		$fields['fk_network']['options'] 	= $this->ss_payment_methods_model->options_list();		
		
		$fields['fk_partner']['label'] 		= 'Partner'; // 17
		$fields['fk_partner']['type']		= 'select';
		$fields['fk_partner']['options']	= array (1 => 'Smith & Smith (plata din cont)', 2 => 'Libra Bank (plata cu cardul)',);		
		
		
		$fields['fk_cl_type']['label'] 		= 'Client type'; // 18
		$fields['fk_cl_type']['type'] 		= 'select';
		$fields['fk_cl_type']['options'] 	= $this->ss_types_model->options_list('id', 'name', 'type = \'client\'', null);
		
		$fields['fk_ben_type']['label'] 	= 'Beneficiary type'; // 19
		$fields['fk_ben_type']['type'] 		= 'select';
		$fields['fk_ben_type']['options'] 	= $this->ss_types_model->options_list('id', 'name', 'type = \'beneficiar\'', null);
		
		
		$fields['com_promo_apply']['label'] = 'Check promo code'; // 20 nefolosit, dezvoltare ulterioara
		$fields['com_promo_apply']['disabled'] = TRUE;
		$fields['com_promo_apply']['type'] 	= 'enum';
		$fields['com_promo_apply']['mode'] 	= 'radios';
		$fields['com_promo_apply']['options'] = $options;
		
		$fields['fk_promo_code']['label'] 	= 'Promo code'; // 21 nefolosit, dezvoltare ulterioara
		$fields['fk_promo_code']['disabled'] = TRUE;		
		
		$fields['fk_promo_type']['label'] 	= 'Fee label'; // 22
		$fields['fk_promo_type']['type'] 	= 'select';
		$fields['fk_promo_type']['options'] = $this->ss_types_model->options_list('id', 'name', 'type = \'fee\'', null);

		
		$fields['apply_to_amount']['label'] = 'Apply to amount'; // 23
		$fields['apply_to_amount']['type'] 	= 'enum';
		$fields['apply_to_amount']['mode'] 	= 'radios';
		$fields['apply_to_amount']['options'] = $options;
		
		$fields['active']['label'] 			= 'Active'; // 24
		
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
		//$this->db->order_by('precedence asc');
	}
	
	function compute_fee($value, $trn, $datatrn, $network_key, $partner_key, $currency_key){
		
		$this->db->select('sum(if(com_type=\'flat\', com_val, com_val * '. $value .'/100)) comision from ss_fees
			where
					if (com_int_apply, if ('. $value .' >= com_int_min and '. $value .' <= com_int_max, true, false), true)
				and if (com_trn_apply, if ('. $trn .' >= com_trn_min and '. $trn .' <= com_trn_max, true, false), true)
				and if (com_time_apply, if ('. $datatrn .' > com_time_start and '. $datatrn .' < com_time_stop, true, false), if ('. $datatrn .' > com_time_start, true, false))
				and if (fk_currency > 0, if ('. $currency_key .' = fk_currency , true, false), true)
				and if (fk_network > 0, if ('. $network_key .' = fk_network , true, false), true)
				and if (fk_partner > 0, if ('. $partner_key .' = fk_partner , true, false), true)
		', FALSE);
		$query = $this->db->get();
		return $query->result();
	}

}

class Ss_fee_model extends Base_module_record {
	
	// put your record model code here
}