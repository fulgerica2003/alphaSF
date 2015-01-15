<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	
	require_once(FUEL_PATH.'models/base_module_model.php');
	
	class Ss_invoices_model extends Base_module_model {
		
		// read more about models in the user guide to get a list of all properties. Below is a subset of the most common:
		
		public $record_class = 'Ss_invoice'; // the name of the record class (if it can't be determined)
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
			parent::__construct('ss_invoices'); // table name
			$this->load->model('ss_messages_model');
		}
		
		function list_items($limit = NULL, $offset = NULL, $col = 'date_added', $order = 'desc', $just_count = FALSE)
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
			// $this->db->order_by('precedence asc');
		}
		
		function save_invoice($values = array()){
			
			$invoice = $this->create();
			
			$invoice->unid = $values['unid'];
			$invoice->id_user = $values['id_user'];
			$invoice->id_payment_type = $values['id_payment_type'];
			$invoice->amount_in = $values['amount'];
			$invoice->amount_out = $values['amount'];
			$invoice->currency_in = $values['currency'];
			$invoice->currency_out = $values['currency'];
			$invoice->id_supplier_cat = $values['id_supplier_cat'];
			$invoice->id_supplier = $values['id_supplier'];
			$invoice->fee = $values['fee'];
			$invoice->total = $values['total'];
			$invoice->status = $values['status'];
			
			// custom fields
			array_key_exists('s1', $values) ? $invoice->s1 = $values['s1'] : $invoice->s1 = null;
			array_key_exists('s2', $values) ? $invoice->s2 = $values['s2'] : $invoice->s2 = null;
			array_key_exists('s3', $values) ? $invoice->s3 = $values['s3'] : $invoice->s3 = null;
			array_key_exists('s4', $values) ? $invoice->s4 = $values['s4'] : $invoice->s4 = null;
			array_key_exists('s5', $values) ? $invoice->s5 = $values['s5'] : $invoice->s5 = null;
			array_key_exists('s6', $values) ? $invoice->s6 = $values['s6'] : $invoice->s6 = null;
			
			$invoice->save();
			
			$message = $this->ss_messages_model->create();
			$message->unid = $values['unid'];
			$message->id_user = $values['id_user'];
			$message->id_tx = $invoice->id;
			$message->tx_type = 'invo';
			$message->message = 'invoice '.$values['unid']. ' successfully added';
			$message->save();		
		}
		
		function invoices($id_user){
			$where['select'] = 'ss_invoices.id, unid, amount_in, id_supplier, date_added, status, ss_suppliers.name, currency_in';
			$where['join'] = array('ss_suppliers', 'ss_suppliers.id = ss_invoices.id_supplier');
			$where['where'] = array('id_user' => $id_user);
			$where['order_by'] = 'date_added desc';
			
			$query = $this->query($where);

			return $query;
		}
		
		function invoice($id, $user_id){
			$where['select'] = 'unid, amount_in, id_supplier, date_added, status, currency_in, fee, total, id_payment_type,
			ss_invoices.s1, ss_invoices.s2, ss_invoices.s3, ss_invoices.s4, ss_invoices.s5, ss_invoices.s6,
			ss_suppliers.name';
			$where['join'] = array('ss_suppliers', 'ss_suppliers.id = ss_invoices.id_supplier');
			$where['where'] = array('ss_invoices.id' => $id, 'ss_invoices.id_user' => $user_id);
			$where['order_by'] = 'date_added desc';
			$where['limit'] = 1;
			 
			$query = $this->query($where);

			return $query;
		}
		
		function invoice_by_unid($unid){
			$where['select'] = 'ss_invoices.id inv_id, ss_invoices.id_user inv_id_user, users.email u_email, users.default_language u_lang';
			$where['join'] = array('users', 'ss_invoices.id_user = users.id');
			$where['where'] = array('ss_invoices.unid' => $unid);
			$where['order_by'] = 'date_added desc';
			$where['limit'] = 1;
			 
			$query = $this->query($where);

			return $query;
		}
		
		function get_invoices($where = array(), $one, $order_by = null, $limit = null, $offset = null){
			
			// ordinea campurilor este cea din controllers/backend/getfact, ca sa nu mai fie nevoie sa fac mapari acolo
			$this->db->select('unid, date_added, id_payment_type, status,
				ss_suppliers.name as frnz_name, ss_suppliers.iban as frnz_iban, ss_suppliers.bank as frnz_bank,
				amount_in, currency_in, amount_out, currency_out, fee, total, rate,
				users.first_name as cl_prenume, users.last_name as cl_nume, users.phone as cl_telefon, users.email as cl_email,
				users.country as cl_tara, users.account as cl_account, users.swift as cl_swift, users.bank as cl_bank,
				ss_suppliers.s1 as spl_field_num_1, ss_invoices.s1 as spl_field_val_1,
				ss_suppliers.s2 as spl_field_num_2, ss_invoices.s2 as spl_field_val_2,
				ss_suppliers.s3 as spl_field_num_3, ss_invoices.s3 as spl_field_val_3,
				ss_suppliers.s4 as spl_field_num_4, ss_invoices.s4 as spl_field_val_4,
				ss_suppliers.s5 as spl_field_num_5, ss_invoices.s5 as spl_field_val_5,
				ss_suppliers.s6 as spl_field_num_6, ss_invoices.s6 as spl_field_val_6
				'); 
			$this->db->from('ss_invoices');
			$this->db->join('ss_suppliers', 'ss_suppliers.id = ss_invoices.id_supplier');
			$this->db->join('users', 'users.id = ss_invoices.id_user');
			$this->db->where($where);
			/*if (is_array($where)){
				foreach ($where as $key => $value){
					$this->db->where('ss_invoices.' . $key , $value);
				}	
			}else{
				
			}*/
			
			if ($order_by != null) $this->db->order_by($order_by);
			if ($one) $this->db->limit(1);
			if (isset($limit) && isset($offset)) $this->db->limit($limit, $offset);
			
			$query = $this->db->get();
			
			return $query;
		}
		
	}
	
	class Ss_invoice_model extends Base_module_record {
		
		// put your record model code here
	}	