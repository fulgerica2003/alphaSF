<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Backend extends CI_Controller
	{		
		/* Detaliere fluxuri, cf discutie telefonica Adrian Marinescu, 20150113 si 20150114
		Am folosit urmatoarea codificare pentru stari:
			1- in curs de procesare
			2- in curs de plata
			3- eroare plata
			4- corectie
			5- in curs de retur
			6- returnata
			7- platita
			8- anulata
			
			OBS: - codificarea de mai sus a fost pentru simplitatea discutiei; codurile utilizate de aplicatie sunt cele din my_helper.status().
				- mesajele si email-urile care se trimit utilizatorului sunt cele din documentul texte_fluxuri_frontend_smith.com.ro.pdf.
			
			Dupa confirmarea datelor din formular, tranzactia e salvata cu starea 1.
				Daca utilizatorul a selectat plata din cont, dau mesajele aferente
				Daca utilizatorul a selectat plata cu cardul si aceasta e ok, dau mesajele aferente
				Daca utilizatorul a selectat plata cu cardul si aceasta nu e ok, dau mesajele aferente si pun status 8, final.
			
			In acest moment, am tranzactii cu plata cont si plata card ok cu starea 1. Ele sunt cerute de SS cu gettran(new). In urma procesarii, primesc raspunsuri:
				pentru platile ok se apeleaza uptran(pin), setez pin, trimit mesaje si status 2
				pentru diferentele de suma se apeleaza uptran(tran), trimit mesajele aferente si status 2; aceste mesaje merg in continuare spre plata
				pentru date eronate se apeleaza uptran(benef), trimit mesajele aferente si se trece in status 4, vezi continuarea *.
				pentru eroare de plata se apeleaza uptran(recom), trimit mesajele aferente si status 3 final
			Pentru platile care s-au desfasurat fara probleme se apeleaza uptran(ok), se dau mesajele aferente si status 7 final.
			Pentru platile care stau mai mult de x zile in starea 2, se apeleaza uptran(cancel) si se trec in starea 8 final.
			
			* Din starea corectie, utilizatorul poate cere corectie sau retur.
			Daca a fost de acord cu corectia (online_payments/correction), status corectata in curs de procesare. Tranzactia e disponibila cu gettran(acc). Starea urmatoare posibila e 2.
			Daca a solicitat retur ((online_payments/refund)), se dau mesajele aferente, status 5 si tranzactia va fi disponibila cu gettran(ret). In urma procesarilor, actualizarea se face cu uptran(retur), se dau mesajele aferente si status 6 final.
			
			Analog si pentru facturi (se apeleaza getfact, respectiv upfact), doar ca schema e simplificata. Status-urile posibile sunt 1,2,3,7,8.
		*/
		
		function __construct(){
			parent::__construct();
			$this->load->model('ss_payments_model');
			$this->load->model('ss_corrections_model');
			$this->load->model('ss_invoices_model');
			$this->load->model('ss_messages_model');
			$this->load->model('ss_fees_model');
			$this->load->model('ss_suppliers_model');
			$this->load->model('ss_exchange_rate_model');
			
			$this->load->library('form_validation');
			$this->load->library('session');
			
			$this->lang->load('ss');
			$this->load->helper('language');
		}
		
		public function upcurs(){
			$msg = 'ok';
		
			if ($this->input->post('type')){
				$values['type'] = strtoupper($this->input->post('type'));
			}
			
			if ($this->input->post('date')){
				$values['apply_date'] =  date('Y-m-d', strtotime($this->input->post('date')));
			}
			
			if ($this->input->post('value')){
				$values['value'] = $this->input->post('value');
			}
			
			// header pt jurnalizarea operatiunii in csv
			$list = array (
			array('message_type', 'message_value')
			);
			
			if ( array_key_exists('type', $values)
			&& array_key_exists('apply_date', $values)
			&& array_key_exists('value', $values)
			){
				
				$where['type'] = $values['type'];
				$where['apply_date'] = $values['apply_date'];
				
				if ($this->ss_exchange_rate_model->record_count($where) != 0){
					$this->ss_exchange_rate_model->update($values, $where);
					if ($this->ss_exchange_rate_model->db->_error_message()){
						$msg = 'err';
						array_push($list, array($msg, $this->ss_exchange_rate_model->db->_error_message()));
						}else{
						$msg = 'ok';
						array_push($list, array($msg, 'update ok'));
					}
					}else{
					$this->ss_exchange_rate_model->insert($values);
					if ($this->ss_exchange_rate_model->db->_error_message()){
						$msg = 'err';
						array_push($list, array($msg, $this->ss_exchange_rate_model->db->_error_message()));
						}else{
						$msg = 'ok';
						array_push($list, array($msg, 'insert ok'));
					}
				}
				}else{
				$msg = 'err';
				array_push($list, array($msg, 'campuri obligatorii: type, date, value'));
			}
			
			$filename = get_time() . 'upcurs';
			
			$filename = save_csv($filename, $list);
			
			$output_result = array('filename' => $filename, 'msg' => $msg);
			
			echo json_encode($output_result);
			
		}
		
		public function gettran(){
			$type = strtolower($this->input->post('type'));
			$reference = $this->input->post('referinta');
			$list = array();
			$result_count = 0;
			
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
					$result_count = count($txs);
				}
				
				}else{
				$tx = $this->ss_payments_model->payment(array('unid' => $reference))->result();
				$result_count = count($tx);
				if ($tx == null || empty($tx) || count($tx) == 0){
					array_push($list, array('no payment found, ref: ' . $reference));
					}else{
					array_push($list, $header);
					$values = (array)$tx[0];
					$values['payment_method'] = get_label($values['payment_method'], 'ro');
					array_push($list, array_values($values));
					$result_count = 1;
				}
			}
			
			$filename = get_time() . 'gettran';
			
			if ($result_count > 0){
				$abs_filename = save_csv($filename, $list);
			
				$output_result = array('filename' => $abs_filename, 'count' => $result_count);
			
				echo json_encode($output_result);
			}else{
				$output_result = array('count' => $result_count);
			
				echo json_encode($output_result);
			}
			
		}
		
		public function getfact(){
			$type = strtolower($this->input->post('type'));
			$reference = $this->input->post('referinta');
			$list = array();
			$result_count = 0;
			
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
						get_status('pay') .
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
					$result_count = count($txs);
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
					$result_count = 1;
				}
				
			}
			
			$filename = get_time() . 'getfact';
			
			if ($result_count > 0){
				$abs_filename = save_csv($filename, $list);
			
				$output_result = array('filename' => $abs_filename, 'count' => $result_count);
			
				echo json_encode($output_result);
			}else{
				$output_result = array('count' => $result_count);
			
				echo json_encode($output_result);
			}
			
		}
		
		public function uptran(){
			$msg = 'ok';
		
			$type = strtolower($this->input->post('type'));
			
			// header pt jurnalizarea operatiunii in csv
			$list = array (
			array('message_type', 'message_value', 'reference')
			);
			$received = array();
			$received_correction = array();
			
			$reference = null;
			
			if ($this->input->post('referinta')){
				$reference = $this->input->post('referinta');
			}
			
			if (!empty($reference) && strlen($reference) > 0){
				switch ($type) {
					case 'pin':{
						// totul a fost ok, am alocat pin, statusul e in curs de plata, trimit msg009 si eml005
						if ($this->input->post('pin')) $received['pin'] = $this->input->post('pin');
						
						$received['status'] = get_status('pay');
						
						break;
					}
					case 'tran':{
						// am diferenta de suma, status in curs de plata si trimit msg010 si eml006
						
						if ($this->input->post('amount_in')) $received['amount_in'] = $this->input->post('amount_in');
						if ($this->input->post('amount_out')) $received['amount_out'] = $this->input->post('amount_out');
						if ($this->input->post('moneda_out')) $received['currency_out'] = $this->input->post('moneda_out');
						if ($this->input->post('rate')) $received['rate'] = $this->input->post('rate');
						
						$received['status'] = get_status('pay');
						
						break;
					}
					case 'benef':{
						// datele nu sunt ok, status astept retur/corectie de la utilizator si trimit msg011 si eml007
						
						if ($this->input->post('bnf_nume')) $received_correction['ben_name'] = $this->input->post('bnf_nume');
						if ($this->input->post('bnf_prenume')) $received_correction['ben_surname'] = $this->input->post('bnf_prenume');
						if ($this->input->post('bnf_telefon')) $received_correction['ben_phone'] = $this->input->post('bnf_telefon');
						if ($this->input->post('bnf_email')) $received_correction['ben_email'] = $this->input->post('bnf_email');
						if ($this->input->post('bnf_iban')) $received_correction['ben_iban'] = $this->input->post('bnf_iban');
						if ($this->input->post('bnf_adresa')) $received_correction['ben_address'] = $this->input->post('bnf_adresa');
						if ($this->input->post('bnf_oras_id')) $received_correction['id_ben_city'] = $this->input->post('bnf_oras_id');
						
						$received_correction['unid'] = $reference;
						
						$received['status'] = get_status('wait');
						
						break;
					}
					case 'recom':{
						// probleme la plata, status eroare de plata, trimit msg012 si eml008
						
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
						
						$received['status'] = get_status('err');
						
						break;
					}
					case 'retur':{
						// pun status returnata si dau msg014 si eml010
						$received['status'] = get_status('rfd');
						break;
					}
					case 'ok':{
						// pun status platita si dau msg013 si eml009
						$received['status'] = get_status('pyd');
						break;
					}
					case 'cancel':{
						// pun status anulata si dau msg015 si eml011
						$received['status'] = get_status('can');
						break;
					}
					default: {
					$msg = 'err';
					array_push($list, array($msg, 'operatiune necunoscuta, type: ' . $type));
					}
				}
				
				if (count($received_correction) > 0){
					$where['unid'] = $reference;
					// intai sterg corectia anterioara
					$this->ss_corrections_model->delete($where);
					
					// inserez noua corectie
					$this->ss_corrections_model->insert($received_correction);
					
					if ($this->ss_corrections_model->db->_error_message()){
						$msg = 'err';
						array_push($list, array($msg, $this->ss_corrections_model->db->_error_message(), $reference));
						}else{
						$msg = 'ok';
						array_push($list, array($msg, 'insert correction ok', $reference));
					}
				}
				
				if (count($received) > 0){
					$where['unid'] = $reference;
					$this->ss_payments_model->update($received, $where);
					// trimit mesajele
					trigger_event('pay_' . $type, $reference);
					if ($this->ss_payments_model->db->_error_message()){
						$msg = 'err';
						array_push($list, array($msg, $this->ss_payments_model->db->_error_message(), $reference));
						}else{
						$msg = 'ok';
						array_push($list, array($msg, 'update ok', $reference));
					}
				}
				
				}else{
				$msg = 'err';
				array_push($list, array($msg, 'referinta gresita: ' . $reference));
			}
			
			$filename = get_time() . 'uptran';
			
			$filename = save_csv($filename, $list);
			
			$output_result = array('filename' => $filename, 'msg' => $msg);
			
			echo json_encode($output_result);
		}
		
		public function upfact(){
			$msg = 'ok';
					
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
						// totul a fost ok, merg mai departe cu plata, statusul e in curs de plata, trimit msg009 si eml005
						
						$received['status'] = get_status('pay');
						
						break;
					}
					case 'ok':{
						// pun status platita si dau msg013 si eml009
						$received['status'] = get_status('pyd');
						break;
					}
					case 'cancel':{
						// pun status anulata si dau mesaj de anulare (tb definite codurile)
						$received['status'] = get_status('can');
						break;
					}
					case 'err':{
						// mentin status in curs de plata si dau msg020 si eml013
						$received['status'] = get_status('pay');
						break;
					}
					default: array_push($list, array('err', 'operatiune necunoscuta, type: ' . $type));
				}
				
				if (count($received) > 0){
					$where['unid'] = $reference;
					$this->ss_invoices_model->update($received, $where);
					trigger_event('inv_' . $type, $reference);
					if ($this->ss_invoices_model->db->_error_message()){
						$msg = 'err';
						array_push($list, array($msg, $this->ss_invoices_model->db->_error_message(), $reference));
						}else{
						$msg = 'ok';
						array_push($list, array($msg, 'update ok', $reference));
					}
				}
				
				}else{
				$msg = 'err';
				array_push($list, array($msg, 'referinta gresita: ' . $reference));
			}
			
			$filename = get_time() . 'upfact';
			
			$filename = save_csv($filename, $list);
			
			$output_result = array('filename' => $filename, 'msg' => $msg);
			
			echo json_encode($output_result);
		}
		
		public function upfields(){
			
			$msg = 'ok';
			
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
						$msg = 'err';
						array_push($list, array($msg, $this->ss_suppliers_model->db->_error_message(), $id));
						}else{
						$msg = 'ok';
						array_push($list, array($msg, 'update ok', $id));
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
							$msg = 'err';
							array_push($list, array($msg, $this->ss_suppliers_model->db->_error_message(), 'new'));
							}else{
							$msg = 'ok';
							array_push($list, array($msg, 'insert ok', 'new'));
						}
						}else{
						$msg = 'err';
						array_push($list, array($msg, 'campuri obligatorii: name, iban, bank, id_cat'));
					}
				}
				}else{
				array_push($list, array('err', 'operatiune necunoscuta, type: ' . $type));
			}
			
			$filename = get_time() . 'upfields';
			
			$filename = save_csv($filename, $list);
			
			$output_result = array('filename' => $filename, 'msg' => $msg);
			
			echo json_encode($output_result);
			
		}
		
		public function upcom(){
			
			$msg = 'ok';
			
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
						$msg = 'err';
						array_push($list, array($msg, $this->ss_fees_model->db->_error_message(), $id));
						}else{
						$msg = 'ok';
						array_push($list, array($msg, 'update ok', $id));
					}
					}else{
					// new
					$this->ss_fees_model->insert($values);
					if ($this->ss_fees_model->db->_error_message()){
						$msg = 'err';
						array_push($list, array($msg, $this->ss_fees_model->db->_error_message(), 'new'));
						}else{
						$msg = 'ok';
						array_push($list, array($msg, 'insert ok', 'new'));
					}
				}
				}else{
				$msg = 'err';
				array_push($list, array($msg, 'operatiune necunoscuta, type: ' . $type));
			}
			
			$filename = get_time() . 'upcom';
			
			$filename = save_csv($filename, $list);
			
			$output_result = array('filename' => $filename, 'msg' => $msg);
			
			echo json_encode($output_result);
		}
	}																							