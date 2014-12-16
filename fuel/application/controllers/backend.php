<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Backend extends CI_Controller
	{
		public $main_form;
		
		//private $user_email = 'a@b.c';
		//private $user_id = '8';
		
		function __construct(){
			parent::__construct();
			$this->load->model('ss_payments_model');
			$this->load->model('ss_invoices_model');
			$this->load->model('ss_messages_model');
			$this->load->model('ss_fees_model');
			$this->load->model('ss_suppliers_model');
			$this->load->model('ss_exchange_rate_model');
			
			$this->load->library('form_validation');
			$this->load->library('session');
		}
		
		/*public function invoice(){
			//parametri form 
			$this->load->library('form_builder', array(
            'id'=>'addPayment',
            'form_attrs' => array(
			'method' => 'post',
			'action' => '',
            ),
            'textarea_rows' => '5',
            'textarea_cols' => '28',
			));
			
			$this->main_form['fields']['unid'] = array('type' => 'text', 'label' => 'unid', 'value'=> '' );
			$this->main_form['fields']['status'] = array('type' => 'select', 'label' => 'status', 'options' => status_backend_test(), 'value'=> '' );
			
			$this->form_builder->set_fields($this->main_form['fields']);
			
			$this->form_builder->submit_value = '<button name="update" type="submit" value="update">update</button>';
			
			echo $this->form_builder->render($this->main_form['fields']);
			
			$status = $this->input->post('status');
			$unid = $this->input->post('unid');
			
			$values = array('status' => $status);
			
			$where['unid'] = $unid;
			
			$this->ss_invoices_model->update($values, $where);
			
			if ($status == get_status('err')){
				
				$results = $this->ss_invoices_model->invoice_by_unid($unid)->result();
				if ((count($results)) >= 1 ){
					$invoice = $results[0];
					$user_id = $invoice->inv_id_user;
					$id = $invoice->inv_id;
					$email = $invoice->u_email;
				}
				
				// salvez mesaj eroare
				$message['unid'] = $unid;
				$message['id_user'] = $user_id;
				$message['id_tx'] = $id;
				$message['tx_type'] = get_tx_type('inv');
				$message['message'] = 'invoice '.$message['unid']. ' err';
				$this->ss_messages_model->insert($message);
				
				// trimit email
				send_tx_email(array('unid' => $message['unid'],
				// TODO $this->lang->line incarca in acest moment din language/english					
				'receiver' => $email,
				'sender' => $this->fuel->sitevars->get()['from_email'],
				// TODO $this->lang->line incarca in acest moment din language/english
				'subject' => $this->lang->line('fact_eml011_sb'),
				'message' => $this->lang->line('fact_eml011_cont'),
				));
			}
			
		}*/
		
		public function upcurs(){
			if ($this->input->post('type')){
				$values['type'] = strtoupper($this->input->post('type'));
			}
			
			if ($this->input->post('date')){
				$values['date'] =  date('Y-m-d', strtotime($this->input->post('date')));
			}
			
			if ($this->input->post('value')){
				$values['value'] = $this->input->post('value');
			}
			
			// header pt jurnalizarea operatiunii in csv
			$list = array (
			array('message_type', 'message_value')
			);
			
			if ( array_key_exists('type', $values)
			&& array_key_exists('date', $values)
			&& array_key_exists('value', $values)
			){
				
				$where['type'] = $values['type'];
				$where['apply_date'] = $values['date'];
				
				if ($this->ss_exchange_rate_model->record_count($where) != 0){
					$this->ss_exchange_rate_model->update($values, $where);
					if ($this->ss_exchange_rate_model->db->_error_message()){
						array_push($list, array('err', $this->ss_exchange_rate_model->db->_error_message()));
						}else{
						array_push($list, array('ok', 'update ok'));
					}
					}else{
					$this->ss_exchange_rate_model->insert($values);
					if ($this->ss_exchange_rate_model->db->_error_message()){
						array_push($list, array('err', $this->ss_exchange_rate_model->db->_error_message()));
						}else{
						array_push($list, array('ok', 'insert ok'));
					}
				}
				}else{
				array_push($list, array('err', 'campuri obligatorii: type, date, value'));
			}
			save_csv(get_time() . 'upcurs', $list);
			
		}
		
		public function gettran(){
			$type = strtolower($this->input->post('type'));
			$reference = $this->input->post('referinta');
			$list = array();
			
			$header = array(
			'referinta',
			'data_tran',
			'mod_transfer',
			'status',
			'payout',
			'amount_in',
			'moneda_in',
			'amount_out',
			'moneda_out',
			'comision',
			'total',
			'rate',
			'cl_nume',
			'cl_prenume',
			'cl_telefon',
			'cl_email',
			'cl_tara',
			'cl_account',
			'cl_swift',
			'cl_bank',
			'bnf_nume',
			'bnf_prenume',
			'bnf_telefon',
			'bnf_email',
			'bnf_iban',
			'bnf_adresa',
			'bnf_oras_id'
			);
			
			if (empty($reference) || strlen($reference) == 0 || $reference === '0'){
				switch ($type) {
					case 'all':{
						$status = '( ' . 
						get_status('init') . ', ' .
						get_status('pay') . ', ' .
						get_status('corr') . ', ' .
						get_status('ref') .
						')'
						;
						break;
					}
					case 'new':{
						$status = get_status('init');
						break;
					}
					case 'pay':{
						$status = get_status('pay');
						break;
					}
					case 'acc':{
						$status = get_status('corr');
						break;
					}
					case 'ret':{
						$status = get_status('ref');
						break;
					}
				}
				
				$txs = $this->ss_payments_model->get_payments($type == 'all' ? 'ss_payments.status in ' . $status : array('ss_payments.status' => $status), FALSE)->result();
				if ($txs == null || empty($txs) || count($txs) == 0){
					array_push($list, array('no payments found, type: ' . $type . ', status: ' . $status));
					}else{
					array_push($list, $header);
					foreach($txs as $tx){
						$values = (array)$tx;
						$values['payment_method'] = get_label($values['payment_method'], 'ro');
						array_push($list, array_values($values));
					}
				}
				
				}else{
				$tx = $this->ss_payments_model->payment(array('unid' => $reference))->result();
				if ($tx == null || empty($tx) || count($tx) == 0){
					array_push($list, array('no payment found, ref: ' . $reference));
					}else{
					array_push($list, $header);
					$values = (array)$tx[0];
					$values['payment_method'] = get_label($values['payment_method'], 'ro');
					array_push($list, array_values($values));
				}
			}
			
			save_csv(get_time() . 'gettran', $list);
			
		}
		
		public function getfact(){
			$type = strtolower($this->input->post('type'));
			$reference = $this->input->post('referinta');
			$list = array();
			
			$custom = array(
			'spl_field_num_1',
			'spl_field_num_2',
			'spl_field_num_3',
			'spl_field_num_4',
			'spl_field_num_5',
			'spl_field_num_6',
			);
			
			$header = array(
			'referinta',
			'data_tran',
			'mod_transfer',
			'status',
			'frnz_name',
			'frnz_iban',
			'frnz_bank',
			'amount_in',
			'moneda_in',
			'amount_out',
			'moneda_out',
			'comision',
			'total',
			'rate',
			'cl_nume',
			'cl_prenume',
			'cl_telefon',
			'cl_email',
			'cl_tara',
			'cl_account',
			'cl_swift',
			'cl_bank',
			'spl_field_num_1',
			'spl_field_val_1',
			'spl_field_num_2',
			'spl_field_val_2',
			'spl_field_num_3',
			'spl_field_val_3',
			'spl_field_num_4',
			'spl_field_val_4',
			'spl_field_num_5',
			'spl_field_val_5',
			'spl_field_num_6',
			'spl_field_val_6'
			);
			
			if (empty($reference) || strlen($reference) == 0 || $reference === '0'){
				switch ($type) {
					case 'all':{
						$status = '( ' . 
						get_status('init') . ', ' .
						get_status('pay') . ', ' .
						get_status('corr') . ', ' .
						get_status('ref') .
						')'
						;
						break;
					}
					case 'new':{
						$status = get_status('init');
						break;
					}
					case 'pay':{
						$status = get_status('pay');
						break;
					}
				}
				
				$txs = $this->ss_invoices_model->get_invoices($type == 'all' ? 'ss_invoices.status in ' . $status : array('ss_invoices.status' => $status), false)->result();
				if ($txs == null || empty($txs) || count($txs) == 0){
					array_push($list, array('no invoices found, type: ' . $type . ', status: ' . $status));
					}else{
					array_push($list, $header);
					foreach($txs as $tx){
						$values = (array)$tx;
						foreach ($custom as $field_name){
							$values[$field_name] = get_label($values[$field_name], 'ro');
						}
						array_push($list, array_values($values));
					}
				}
				}else{
				$tx = $this->ss_invoices_model->get_invoices(array('ss_invoices.unid' => $reference), true)->result();
				
				if ($tx == null || empty($tx) || count($tx) == 0){
					array_push($list, array('no invoice found, ref: ' . $reference));
					}else{
					array_push($list, $header);
					$values = (array)$tx[0];
					foreach ($custom as $field_name){
						$values[$field_name] = get_label($values[$field_name], 'ro');
					}
					array_push($list, array_values($values));
				}
				
			}
			
			save_csv(get_time() . 'getfact', $list);
			
		}
		
		public function uptran(){
			$type = strtolower($this->input->post('type'));
			
			// header pt jurnalizarea operatiunii in csv
			$list = array (
			array('message_type', 'message_value', 'reference')
			);
			$received = array();
			
			$reference = null;
			
			if ($this->input->post('referinta')){
				$reference = $this->input->post('referinta');
			}
			
			if (!empty($reference) && strlen($reference) > 0){
				switch ($type) {
					case 'pin':{
						if ($this->input->post('pin')) $received['pin'] = $this->input->post('pin');
						break;
					}
					case 'tran':{
						if ($this->input->post('amount_in')) $received['amount_in'] = $this->input->post('amount_in');
						if ($this->input->post('amount_out')) $received['amount_out'] = $this->input->post('amount_out');
						if ($this->input->post('moneda_out')) $received['currency_out'] = $this->input->post('moneda_out');
						if ($this->input->post('rate')) $received['rate'] = $this->input->post('rate');
						break;
					}
					case 'benef':{
						if ($this->input->post('bnf_nume')) $received['ben_name'] = $this->input->post('bnf_nume');
						if ($this->input->post('bnf_prenume')) $received['ben_surname'] = $this->input->post('bnf_prenume');
						if ($this->input->post('bnf_telefon')) $received['ben_phone'] = $this->input->post('bnf_telefon');
						if ($this->input->post('bnf_email')) $received['ben_email'] = $this->input->post('bnf_email');
						if ($this->input->post('bnf_iban')) $received['ben_iban'] = $this->input->post('bnf_iban');
						if ($this->input->post('bnf_adresa')) $received['ben_address'] = $this->input->post('bnf_adresa');
						if ($this->input->post('bnf_oras_id')) $received['id_ben_city'] = $this->input->post('bnf_oras_id');
						break;
					}
					case 'recom':{
						if ($this->input->post('payout')) $received['id_ben_payment_method'] = $this->input->post('payout');
						if ($this->input->post('comision')) $received['fee'] = $this->input->post('comision');
						if ($this->input->post('amount_out')) $received['amount_out'] = $this->input->post('amount_out');
						if ($this->input->post('moneda_out')) $received['currency_out'] = $this->input->post('moneda_out');
						if ($this->input->post('rate')) $received['rate'] = $this->input->post('rate');
						
						if ($this->input->post('bnf_nume')) $received['ben_name'] = $this->input->post('bnf_nume');
						if ($this->input->post('bnf_prenume')) $received['ben_surname'] = $this->input->post('bnf_prenume');
						if ($this->input->post('bnf_telefon')) $received['ben_phone'] = $this->input->post('bnf_telefon');
						if ($this->input->post('bnf_email')) $received['ben_email'] = $this->input->post('bnf_email');
						if ($this->input->post('bnf_iban')) $received['ben_iban'] = $this->input->post('bnf_iban');
						if ($this->input->post('bnf_adresa')) $received['ben_address'] = $this->input->post('bnf_adresa');
						if ($this->input->post('bnf_oras_id')) $received['id_ben_city'] = $this->input->post('bnf_oras_id');
						break;
					}
					case 'retur':{
						$received['status'] = get_status('ref');
						break;
					}
					default: array_push($list, array('err', 'operatiune necunoscuta, type: ' . $type));
				}
				
				if (count($received) > 0){
					$where['unid'] = $reference;
					$this->ss_payments_model->update($received, $where);
					if ($this->ss_payments_model->db->_error_message()){
						array_push($list, array('err', $this->ss_payments_model->db->_error_message(), $reference));
						}else{
						array_push($list, array('ok', 'update ok', $reference));
					}
				}
				
				}else{
				array_push($list, array('err', 'referinta gresita: ' . $reference));
			}
			
			save_csv(get_time() . 'uptran', $list);
		}
		
		public function upfields(){
			
			$type = strtolower($this->input->post('type'));
			
			// header pt jurnalizarea operatiunii in csv
			$list = array (
			array('message_type', 'message_value', 'id')
			);
			$values = array();
			
			if (!empty($type) && $type == 'furnizor'){
				
				$id = $this->input->post('id');
				
				if ($this->input->post('name')){
					$values['name'] = $this->input->post('name');
				}
				
				if ($this->input->post('iban')){
					$values['iban'] = $this->input->post('iban');
				}
				
				if ($this->input->post('bank')){
					$values['bank'] = $this->input->post('bank');
				}
				
				if ($this->input->post('id_cat')){
					$values['id_cat'] = $this->input->post('id_cat');
				}
				
				if ($this->input->post('s1')){
					$values['s1'] = $this->input->post('s1');
				}
				
				if ($this->input->post('t1')){
					$values['t1'] = $this->input->post('t1');
				}
				
				if ($this->input->post('s2')){
					$values['s2'] = $this->input->post('s2');
				}
				
				if ($this->input->post('t2')){
					$values['t2'] = $this->input->post('t2');
				}
				if ($this->input->post('s3')){
					$values['s3'] = $this->input->post('s3');
				}
				
				if ($this->input->post('t3')){
					$values['t3'] = $this->input->post('t3');
				}
				
				if ($this->input->post('s4')){
					$values['s4'] = $this->input->post('s4');
				}
				
				if ($this->input->post('t4')){
					$values['t4'] = $this->input->post('t4');
				}
				
				if ($this->input->post('s5')){
					$values['s5'] = $this->input->post('s5');
				}
				
				if ($this->input->post('t5')){
					$values['t5'] = $this->input->post('t5');
				}
				
				if ($this->input->post('s6')){
					$values['s6'] = $this->input->post('s6');
				}
				
				if ($this->input->post('t6')){
					$values['t6'] = $this->input->post('t6');
				}
				
				if (!empty($id) && strlen($id) > 0 && $id != '0'){
					// update
					$where['id'] = $id;
					$this->ss_suppliers_model->update($values, $where);
					if ($this->ss_suppliers_model->db->_error_message()){
						array_push($list, array('err', $this->ss_suppliers_model->db->_error_message(), $id));
						}else{
						array_push($list, array('ok', 'update ok', $id));
					}
					}else{
					// new
					if (array_key_exists('name', $values)
					&& array_key_exists('iban', $values)
					&& array_key_exists('bank', $values)
					&& array_key_exists('id_cat', $values)
					){
						$this->ss_suppliers_model->insert($values);
						if ($this->ss_suppliers_model->db->_error_message()){
							array_push($list, array('err', $this->ss_suppliers_model->db->_error_message(), 'new'));
							}else{
							array_push($list, array('ok', 'insert ok', 'new'));
						}
						}else{
						array_push($list, array('err', 'campuri obligatorii: name, iban, bank, id_cat'));
					}
				}
				}else{
				array_push($list, array('err', 'operatiune necunoscuta, type: ' . $type));
			}
			save_csv(get_time() . 'upfields', $list);
			
		}
		
		public function upcom(){
			
			$type = strtolower($this->input->post('type'));
			
			// header pt jurnalizarea operatiunii in csv
			$list = array (
			array('message_type', 'message_value', 'message_com_key')
			);
			$values = array();
			
			if (!empty($type) && $type == 'comision'){
				
				$id = $this->input->post('com_key');
				
				if ($this->input->post('com_val')){
					$values['com_val'] = $this->input->post('com_val');
				}
				
				if ($this->input->post('com_type')){
					$values['com_type'] = $this->input->post('com_type');
				}
				
				if ($this->input->post('com_int_apply')){
					$values['com_int_apply'] = $this->input->post('com_int_apply');
				}
				
				if ($this->input->post('com_int_min')){
					$values['com_int_min'] = $this->input->post('com_int_min');
				}
				
				if ($this->input->post('com_int_max')){
					$values['com_int_max'] = $this->input->post('com_int_max');
				}
				
				if ($this->input->post('com_promo')){
					$values['com_promo'] = $this->input->post('com_promo');
				}
				
				if ($this->input->post('com_spot')){
					$values['com_spot'] = $this->input->post('com_spot');
				}
				
				if ($this->input->post('com_trn_apply')){
					$values['com_trn_apply'] = $this->input->post('com_trn_apply');
				}
				
				if ($this->input->post('com_trn_min')){
					$values['com_trn_min'] = $this->input->post('com_trn_min');
				}
				
				if ($this->input->post('com_trn_max')){
					$values['com_trn_max'] = $this->input->post('com_trn_max');
				}
				
				if ($this->input->post('com_time_start')){
					$values['com_time_start'] = $this->input->post('com_time_start');
				}
				
				if ($this->input->post('com_time_apply')){
					$values['com_time_apply'] = $this->input->post('com_time_apply');
				}
				
				if ($this->input->post('com_time_stop')){
					$values['com_time_stop'] = $this->input->post('com_time_stop');
				}
				
				if ($this->input->post('fk_currency')){
					$values['fk_currency'] = $this->input->post('fk_currency');
				}
				
				if ($this->input->post('fk_network')){
					$values['fk_network'] = $this->input->post('fk_network');
				}
				
				if ($this->input->post('fk_partner')){
					$values['fk_partner'] = $this->input->post('fk_partner');
				}
				
				if ($this->input->post('fk_cl_type')){
					$values['fk_cl_type'] = $this->input->post('fk_cl_type');
				}
				
				if ($this->input->post('fk_bnf_type')){
					$values['fk_bnf_type'] = $this->input->post('fk_bnf_type');
				}
				
				if ($this->input->post('com_promo_apply')){
					$values['com_promo_apply'] = $this->input->post('com_promo_apply');
				}
				
				if ($this->input->post('fk_promo_code')){
					$values['fk_promo_code'] = $this->input->post('fk_promo_code');
				}
				
				if ($this->input->post('fk_promo_type')){
					$values['fk_promo_type'] = $this->input->post('fk_promo_type');
				}
				
				if ($this->input->post('apply_to_amount')){
					$values['apply_to_amount'] = $this->input->post('apply_to_amount');
				}
				
				if ($this->input->post('active')){
					$values['active'] = $this->input->post('active');
				}
				
				if (!empty($id) && strlen($id) > 0 && $id != '0'){
					// update
					$where['id'] = $id;
					$this->ss_fees_model->update($values, $where);
					if ($this->ss_fees_model->db->_error_message()){
						array_push($list, array('err', $this->ss_fees_model->db->_error_message(), $id));
						}else{
						array_push($list, array('ok', 'update ok', $id));
					}
					}else{
					// new
					$this->ss_fees_model->insert($values);
					if ($this->ss_fees_model->db->_error_message()){
						array_push($list, array('err', $this->ss_fees_model->db->_error_message(), 'new'));
						}else{
						array_push($list, array('ok', 'insert ok', 'new'));
					}
				}
				}else{
				array_push($list, array('err', 'operatiune necunoscuta, type: ' . $type));
			}
			save_csv(get_time() . 'upcom', $list);
			
		}
	}																							