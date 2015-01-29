<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');

require_once(FUEL_PATH.'models/base_module_model.php');

class Ss_fees_model extends Base_module_model {
	
	/* Detaliere fluxuri, cf discutie mail 20141208 trimis catre Gabi Dumitru si raspuns de catre Adrian Marinescu
	in 20141209 discutie telefonica
	
	Modalitatea de calcul a comisioanelor este varianta 1 din mail: intai se calculeaza comisionul la suma, apoi comisionul la comision, apoi comisioanele rezultate din promotii (pe suma si comision), apoi comisioanele rezultate din spot (pe suma si comision). Toate aceste valori se insumeaza si rezulta comisionul total, dupa formula de la pg 8
	
	In documentul comision_smith.com.ro.pdf s-au strecurat niste erori, vezi pct 2 din mail. Rectificarea e cea de mai jos, pg 8.
	comision: and not com_promo and not com_spot
	promo: and com_promo and not com_spot
	spot: and not com_promo and com_spot
	
	Pt facturi tb sa existe comision fix.
	*/
	
	private $err = array(
		'com_amount' 	=> 'FA1',
		'com_com' 		=> 'FA2',
		'promo_amount' 	=> 'FP1',
		'promo_com' 	=> 'FP2',
		'spot_amount' 	=> 'FS1',
		'spo_com' 		=> 'FS2',
	);

	// read more about models in the user guide to get a list of all properties. Below is a subset of the most common:

	public $record_class = 'Ss_fee'; // the name of the record class (if it can't be determined)
	public $filters = array(); // filters to apply to when searching for items
	public $required = array(); // an array of required fields. If a key => val is provided, the key is name of the field and the value is the error message to display
	public $foreign_keys = array(); // map foreign keys to table models
	public $linked_fields = array(); // fields that are linked meaning one value helps to determine another. Key is the field, value is a function name to transform it. (e.g. array('slug' => 'title'), or array('slug' => arry('name' => 'strtolower')));
	public $boolean_fields = array('apply_to_amount', 'promo', 'spot' ); // fields that are tinyint and should be treated as boolean
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
		$this->db->select('id, com_val as value, com_type as type, com_promo as promo, com_spot as spot, apply_to_amount, active', FALSE);
		$data = parent::list_items($limit, $offset, $col, $order, $just_count = FALSE);
		return $data;
	}

	function form_fields($values = array(), $related = array())
	{	
		$this->load->model('ss_types_model');
		$this->load->model('ss_profiles_model');
		$this->load->model('ss_payment_methods_model');
		$options = array(1 => 'yes', 0 => 'no');
		
		$fields = parent::form_fields($values, $related);
		
		$fields['com_val']['label'] 		= 'Fee value'; // 2
		$fields['com_type']['label'] 		= 'Fee type'; // 3
		
		$fields['com_int_apply']['label'] 	= 'Apply to amount range'; // 4
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
		$fields['com_trn_apply']['type'] 	= 'enum';
		$fields['com_trn_apply']['mode'] 	= 'radios';
		$fields['com_trn_apply']['options'] = $options;
		
		$fields['com_trn_min']['label'] 	= 'Min nr'; // 10
		$fields['com_trn_max']['label'] 	= 'Max nr'; // 11
		
		$fields['com_time_start']['label'] 	= 'Start date';// 12
		$fields['com_time_start'] 			+= array('first_day' => 1, 'date_format' => 'Y-m-d', 'value' => date('Y-m-d H:i:s'), 'ampm' => false);
		
		$fields['com_time_apply']['label'] 	= 'Fee date'; // 13
		$fields['com_time_apply']['type'] 	= 'enum';
		$fields['com_time_apply']['mode'] 	= 'radios';
		$fields['com_time_apply']['options']= $options;
		
		$fields['com_time_stop']['label'] 	= 'Stop date'; // 14
		$fields['com_time_stop'] 			+= array('first_day' => 1, 'date_format' => 'Y-m-d', 'value' => date('Y-m-d H:i:s', strtotime ("+1 hour")) , 'ampm' => false);
		
		$fields['fk_currency']['label'] 	= 'Currency'; // 15
		$fields['fk_currency']['type']		= 'select';
		$fields['fk_currency']['options']	= get_currencies();
		
		$fields['fk_network']['label']		= 'Network'; // 16
		$fields['fk_network']['type'] 		= 'select';
		$fields['fk_network']['options'] 	= $this->ss_payment_methods_model->options_list();		
		
		$fields['fk_partner']['label'] 		= 'Partner'; // 17
		$fields['fk_partner']['type']		= 'select';
		$fields['fk_partner']['options']	= get_payment_partners();		
		
		
		$fields['fk_cl_type']['label'] 		= 'Client type'; // 18
		$fields['fk_cl_type']['type'] 		= 'select';
		//$fields['fk_cl_type']['options'] 	= $this->ss_types_model->options_list('id', 'name', 'type = \'client\'', null);
		$fields['fk_cl_type']['options'] 	= $this->ss_profiles_model->get_client_id_list();
		$fields['fk_cl_type']['first_option']= 'Select one...';
		
		$fields['fk_ben_type']['label'] 	= 'Beneficiary type'; // 19
		$fields['fk_ben_type']['type'] 		= 'select';
		//$fields['fk_ben_type']['options'] 	= $this->ss_types_model->options_list('id', 'name', 'type = \'beneficiar\'', null);
		$fields['fk_ben_type']['options'] 	= $this->ss_profiles_model->get_ben_id_list();
		$fields['fk_ben_type']['first_option'] 	= 'Select one...';
		
		
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
		$fields['active']['type'] 			= 'enum';
		$fields['active']['mode'] 			= 'radios';
		$fields['active']['options'] 		= $options;
		
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
	
	function compute_total_fee($values = array()){
	
		$fees = array(
			'com_amount' => 0,
			'com_com' => 0,
			'promo_amount' => 0,
			'promo_com' => 0,
			'spot_amount' => 0,
			'spot_com' => 0,
		);

		// *****************************************************************
		// comision la suma
		$fee_select = $this->get_com_amount($values);

		$fees['com_amount'] = $this->get_result($fee_select);
		
		$fees['com_amount'] = ($fees['com_amount'] === 'err') ? 'err ' . $this->err['com_amount'] : $fees['com_amount'];
		
		// adaug valoarea comisionului ca sa o pot folosi in select-urile care se refera la comision
		$values['fee'] = $fees['com_amount'];
		
		// *****************************************************************
		// comision la comision	
		$fee_select = $this->get_com_com($values);
		
		$fees['com_com'] = $this->get_result($fee_select);
		
		$fees['com_com'] = ($fees['com_com'] === 'err') ? 'err ' . $this->err['com_com'] : $fees['com_com'];
		
		// *****************************************************************
		// promotii pe suma
		$fee_select = $this->get_promo_amount($values);
		
		$fees['promo_amount'] = $this->get_result($fee_select);
		
		$fees['promo_amount'] = ($fees['promo_amount'] === 'err') ? 'err ' . $this->err['promo_amount'] : $fees['promo_amount'];
		
		// *****************************************************************
		// promotii pe comision
		$fee_select = $this->get_promo_com($values);
		
		$fees['promo_com'] = $this->get_result($fee_select);
		
		$fees['promo_com'] = ($fees['promo_com'] === 'err') ? 'err ' . $this->err['promo_com'] : $fees['promo_com'];
		
		// *****************************************************************
		// spot pe suma
		$fee_select = $this->get_spot_amount($values);
		
		$fees['spot_amount'] = $this->get_result($fee_select);
		
		$fees['spot_amount'] = ($fees['spot_amount'] === 'err') ? 'err ' . $this->err['spot_amount'] : $fees['spot_amount'];
		
		// *****************************************************************
		// spot pe comision
		$fee_select = $this->get_spot_com($values);
		
		$fees['spot_com'] = $this->get_result($fee_select);
		
		$fees['spot_com'] = ($fees['spot_com'] === 'err') ? 'err ' . $this->err['spot_com'] : $fees['spot_com'];
		
		// *****************************************************************
		// final
		$all_numeric = true;
		foreach ($fees as $element){
			if (!is_numeric($element)){
				$all_numeric = false;
				$output = $element;
				trigger_error("Cannot compute fee: " . $element, E_USER_WARNING);
			}
		}
		if ($all_numeric){
			$com = $fees['com_amount'] + $fees['com_com'];
			$promo = $fees['promo_amount'] + $fees['promo_com'];
			$spot = $fees['spot_amount'] + $fees['spot_com'];
			
			$output = $com + (($spot != 0) ? $spot : $promo);
		}
		return $output;
		
	}
	
	private function get_result($select){
		
		$this->db->select($select, FALSE);
		$query = $this->db->get();

		$results = $query->result();
		
		if (empty($results)){
			return 0;
		}
		if (count($results) == 1){ // && is_object($results[0]) && property_exists($results[0], 'comision')){
			return $results[0]->comision;
		}else{
			return 'err';
		}
		
	}
	
	private function get_fee_values_select($values, $apply_value){
		return '
			sum(if(com_type=\'flat\', com_val, com_val * '. $apply_value .'/100)) comision from ss_fees
			where '.
					'if (com_int_apply = \'1\', if ('. $apply_value .' >= com_int_min and '. $values['value'] .' <= com_int_max, true, false), true) '.
				(isset($values['trn']) ? 'and if (com_trn_apply = \'1\', if ('. $values['trn'] .' >= com_trn_min and '. $values['trn'] .' <= com_trn_max, true, false), true) ' : '').
				'and if (com_time_apply = \'1\', if (timestamp(\''. $values['datatrn'] .'\') > com_time_start and timestamp(\''. $values['datatrn'] .'\') < com_time_stop, true, false), if (timestamp(\''. $values['datatrn'] .'\') > com_time_start, true, false)) '.
				'and if (fk_currency > 0, if ('. $values['currency_key'] .' = fk_currency , true, false), true) '.
				'and if (fk_network > 0, if ('. $values['network_key'] .' = fk_network , true, false), true) '.
				'and if (fk_partner > 0, if ('. $values['partner_key'] .' = fk_partner , true, false), true) '.
				(isset($values['cl_type_key']) ? 'and if (fk_cl_type > 0, if (fk_cl_type in '. array_to_list($values['cl_type_key'], false) .' , true, false), true) ' : '').
				(isset($values['bnf_type_key']) ? 'and if (fk_ben_type > 0, if (fk_ben_type in '. array_to_list($values['bnf_type_key'], false) .' , true, false), true)' : '')
		;
	
	}
	
	private function get_com_amount($values){
		// la inceput string-ului e un spatiu
		return $this->get_fee_values_select($values, $values['value']).
		' 
				and com_promo = \'0\'
				and com_spot = \'0\'
				and apply_to_amount = \'1\'
				and active = \'1\'
				group by active
		'
		;	
	}
	
	private function get_com_com($values){
		// la inceput string-ului e un spatiu
		return $this->get_fee_values_select($values, $values['fee']) .
		' 
				and com_promo = \'0\'
				and com_spot = \'0\'
				and apply_to_amount = \'0\'
				and active = \'1\'
				group by active
		';	
	}
	
	private function get_promo_amount($values){
		// la inceput string-ului e un spatiu		
		return $this->get_fee_values_select($values, $values['value']) .
		' 
				and com_promo = \'1\'
				and com_spot = \'0\'
				and apply_to_amount = \'1\'
				and active = \'1\'
				group by active
		';	
	}
	
	private function get_promo_com($values){
		// la inceput string-ului e un spatiu		
		return $this->get_fee_values_select($values, $values['fee']) .
		' 
				and com_promo = \'1\'
				and com_spot = \'0\'
				and apply_to_amount = \'0\'
				and active = \'1\'
				group by active
		';	
	}
	
	private function get_spot_amount($values){
		// la inceput string-ului e un spatiu		
		return $this->get_fee_values_select($values, $values['value']) .
		' 
				and com_promo = \'0\'
				and com_spot = \'1\'
				and apply_to_amount = \'1\'
				and active = \'1\'
				group by active
		';	
	}
	
	private function get_spot_com($values){
		// la inceput string-ului e un spatiu		
		return $this->get_fee_values_select($values, $values['fee']) .
		' 
				and com_promo = \'0\'
				and com_spot = \'1\'
				and apply_to_amount = \'0\'
				and active = \'1\'
				group by active
		';
	}

}

class Ss_fee_model extends Base_module_record {
	
	// put your record model code here
}