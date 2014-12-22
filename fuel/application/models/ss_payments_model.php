<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	
	require_once(FUEL_PATH.'models/base_module_model.php');
	
	class Ss_payments_model extends Base_module_model {
		
		// read more about models in the user guide to get a list of all properties. Below is a subset of the most common:
		
		public $record_class = 'Ss_payment'; // the name of the record class (if it can't be determined)
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
			parent::__construct('ss_payments'); // table name
		}
		
		function list_items($limit = NULL, $offset = NULL, $col = 'precedence', $order = 'desc', $just_count = FALSE)
		{
			$data = parent::list_items($limit, $offset, $col, $order, $just_count = FALSE);
			return $data;
		}
		
		function form_fields($values = array(), $related = array())
		{	
			$fields = parent::form_fields($values, $related);
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
		
		function save_payment($values = array()){
			
			$payment = $this->create();
			
			$payment->unid = $values['unid'];
			$payment->id_user = $values['id_user'];
			$payment->id_payment_type = $values['id_payment_type'];
			$payment->amount_in = $values['amount_in'];
			$payment->currency_in = $values['currency_in'];
			$payment->amount_out = $values['amount_out'];
			$payment->currency_out = $values['currency_out'];
			$payment->rate = $values['rate'];
			$payment->id_ben_payment_method = $values['id_payment_method'];
			$payment->id_ben_city = $values['ben_city'];
			$payment->ben_address = $values['ben_address'];
			$payment->ben_name = $values['ben_name'];
			$payment->ben_surname = $values['ben_surname'];
			$payment->ben_phone = $values['ben_phone'];
			$payment->ben_email = $values['ben_email'];
			$payment->ben_iban = $values['ben_iban'];
			$payment->fee = $values['fee'];
			$payment->total = $values['total'];
			$payment->status = $values['status'];
			
			$payment->save();
			
			$message = $this->ss_messages_model->create();
			$message->unid = $values['unid'];
			$message->id_user = $values['id_user'];
			$message->id_tx = $payment->id;
			$message->tx_type = 'pay';
			$message->message = 'payment '.$values['unid']. ' successfully added';
			$message->save();		
		}
		
		function payments($id_user){
			$where['select'] = 'ss_payments.id, unid, amount_in, ben_name, ben_surname, date_added, status, ss_payment_methods.name, currency_in';
			$where['join'] = array('ss_payment_methods', 'ss_payment_methods.id = ss_payments.id_ben_payment_method');
			$where['where'] = array('id_user' => $id_user);
			$where['order_by'] = 'date_added desc';
			
			$query = $this->query($where);

			return $query;
		}
		
		function payment($where = array()){
			return $this->get_payments($where, TRUE);
		}
		
		function payment_by_unid($unid){
			$where['select'] = 'ss_payments.id inv_id, ss_payments.id_user inv_id_user, users.email u_email';
			$where['join'] = array('users', 'ss_payments.id_user = users.id');
			$where['where'] = array('ss_payments.unid' => $unid);
			$where['order_by'] = 'date_added desc';
			$where['limit'] = 1;
			 
			$query = $this->query($where);

			return $query;
		}
		
		function get_payments($where = array(), $one){
			
			// ordinea campurilor este cea din controllers/backend/gettran, ca sa nu mai fie nevoie sa fac mapari acolo
			$this->db->select('unid, date_added, id_payment_type, status, ss_payment_methods.name as payment_method,
				amount_in, currency_in, amount_out, currency_out, fee, total, rate,
				users.first_name as cl_prenume, users.last_name as cl_nume, users.phone as cl_telefon, users.email as cl_email,
				users.country as cl_tara, users.account as cl_account, users.swift as cl_swift, users.bank as cl_bank,
				ben_name, ben_surname, ben_phone, ben_email, ben_iban, ben_address, ss_cities.name as ben_city'); 
			$this->db->from('ss_payments');
			$this->db->join('ss_payment_methods', 'ss_payment_methods.id = ss_payments.id_ben_payment_method');
			$this->db->join('ss_cities', 'ss_cities.id = ss_payments.id_ben_city');
			$this->db->join('users', 'users.id = ss_payments.id_user');
			$this->db->where($where);
			/*if (is_array($where)){
				foreach ($where as $key => $value){
					$this->db->where('ss_payments.' . $key , $value);
				}	
			}else{
				
			}*/
			if ($one) $this->db->limit(1);
			
			$query = $this->db->get();
			
			return $query;
		}
		
		/* old payment
		function payment($where = array()){
		
			$this->db->select('unid, amount_in, ben_name, ben_surname, ben_address, ben_phone, ben_email, 
			date_added, status, ss_payment_methods.name as payment_method, currency_in, fee, total, status, ben_iban, id_payment_type, ss_cities.name as ben_city');
			$this->db->from('ss_payments');
			$this->db->join('ss_payment_methods', 'ss_payment_methods.id = ss_payments.id_ben_payment_method');
			$this->db->join('ss_cities', 'ss_cities.id = ss_payments.id_ben_city');
			foreach ($where as $key => $value){
				$this->db->where('ss_payments.' . $key , $value);
			}
			$this->db->limit(1);
			
			$query = $this->db->get();
			
			return $query;
		}
		*/
		
		function update_payment_status($id, $user_id, $new_status){
			$where['id'] = $id;
			$where['id_user'] = $user_id;
			$this->update(array('status' => $new_status), $where);
		}
		
	}
	
	class Ss_payment_model extends Base_module_record {
		
		// put your record model code here
	}	