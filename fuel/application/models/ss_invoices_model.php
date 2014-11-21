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
			$invoice->amount = $values['amount'];
			$invoice->currency = $values['currency'];
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
			$where['select'] = 'ss_invoices.id, unid, amount, id_supplier, date_added, status, ss_suppliers.name, currency';
			$where['join'] = array('ss_suppliers', 'ss_suppliers.id = ss_invoices.id_supplier');
			$where['where'] = array('id_user' => $id_user);
			$where['order_by'] = 'date_added desc';
			
			$query = $this->query($where);

			return $query;
		}
		
		function invoice($id, $user_id){
			$where['select'] = 'unid, amount, id_supplier, date_added, status, currency, fee, total, id_payment_type,
			ss_invoices.s1, ss_invoices.s2, ss_invoices.s3, ss_invoices.s4, ss_invoices.s5, ss_invoices.s6,
			ss_suppliers.name';
			$where['join'] = array('ss_suppliers', 'ss_suppliers.id = ss_invoices.id_supplier');
			$where['where'] = array('ss_invoices.id' => $id, 'ss_invoices.id_user' => $user_id);
			$where['order_by'] = 'date_added desc';
			$where['limit'] = 1;
			 
			$query = $this->query($where);

			return $query;
		}
		
	}
	
	class Ss_invoice_model extends Base_module_record {
		
		// put your record model code here
	}	