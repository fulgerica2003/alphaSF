<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class BackendTest extends CI_Controller
	{
		/*	* 
			* functii de test
			*
		*/
		public function testupcurs(){
			$params = array(
			"type" => "EUR",
			"date" => "2014-12-16",
			"value" => "4.51",
			);
			
			echo httpPost("http://localhost/smith/backend/upcurs",$params);
		}
		
		
		public function testgettran(){
			$params = array(
			"type" => "new",
			//"referinta" => "#S5489a9fadeda1"
			);
			
			echo httpPost("http://localhost/smith/backend/gettran",$params);
		}
		
		public function testgettran_ret(){
			$params = array(
			"type" => "ret",
			//"referinta" => "#S5489a9fadeda1"
			);
			
			echo httpPost("http://localhost/smith/backend/gettran",$params);
		}
		
		public function testgetfact(){
			$params = array(
			"type" => "all",
			"referinta" => "0"
			);
			
			echo httpPost("http://localhost/smith/backend/getfact",$params);
		}
		
		public function testupfields(){
			$params = array(
			"type" => "furnizor",
			"id" => "15",
			'name' => 'UPC Tel',
			's1' => 'ro: Cod client | en: Client code',
			't1' => 'text',
			);
			
			echo httpPost("http://localhost/smith/backend/upfields",$params);
		}
		
		public function testupcom(){
			$params = array(
			"type" => "comision",
			"com_key" => "2",
			"com_int_min" => "231",
			"com_int_max" => "20",
			);
			
			echo httpPost("http://localhost/smith/backend/upcom",$params);
		}
		
		public function testuptran_pin(){
			$params = array(
			"type" => "pin",
			"referinta" => "#S54b7ac98b8348",
			"pin" => "1234",
			);
			
			echo httpPost("http://localhost/smith/backend/uptran",$params);
		}
		
		public function testuptran_tran(){
			$params = array(
			"type" => "tran",
			"referinta" => "#S54b7ac98b8348",
			'amount_in' => '999',
			'amount_out' => '999',
			'moneda_out' => '999',
			'rate' => '9.9999',
			);
			
			echo httpPost("http://localhost/smith/backend/uptran",$params);
		}
		
		public function testuptran_benef(){
			$params = array(
			"type" => "benef",
			"referinta" => "#S54b7ac98b8348",
			
			'bnf_nume' => 'Olteanu',
			'bnf_prenume' => 'George',
			'bnf_telefon' => '1234567890',
			'bnf_email' => 'og@m.ro',
			'bnf_iban' => 'WBAN',
			'bnf_adresa' => 'adressssssssssssa',
			'bnf_oras_id' => '5',
			);
			
			echo httpPost("http://localhost/smith/backend/uptran",$params);
		}
		
		public function testuptran_recom(){
			$params = array(
			"type" => "recom",
			"referinta" => "#S54b7ac98b8348",
			'payout' => '5',
			'comision' => '999',
			'amount_out' => '999',
			'moneda_out' => '999',
			'rate' => '9.9999',
			
			'bnf_nume' => 'XXXA',
			'bnf_prenume' => 'XXXB',
			'bnf_telefon' => 'XXXC',
			'bnf_email' => 'XXXD',
			'bnf_iban' => 'XXXE',
			'bnf_adresa' => 'XXXF',
			'bnf_oras_id' => '10',
			);
			
			echo httpPost("http://localhost/smith/backend/uptran",$params);
		}
		
		public function testuptran_retur(){
			$params = array(
			"type" => "retur",
			"referinta" => "#S54b7ac98b8348",
			);
			
			echo httpPost("http://localhost/smith/backend/uptran",$params);
		}
		
		public function testuptran_ok(){
			$params = array(
			"type" => "ok",
			"referinta" => "#S54b7ac98b8348",
			);
			
			echo httpPost("http://localhost/smith/backend/uptran",$params);
		}
		
		public function testuptran_cancel(){
			$params = array(
			"type" => "cancel",
			"referinta" => "#S54b7ac98b8348",
			);
			
			echo httpPost("http://localhost/smith/backend/uptran",$params);
		}
		
		public function testupfact_ok(){
			$params = array(
			"type" => "ok",
			"referinta" => "#F54c259340a0bf",
			);
			
			echo httpPost("http://localhost/smith/backend/upfact",$params);
		}
		
		public function testupfact_err(){
			$params = array(
			"type" => "err",
			"referinta" => "#F54c259340a0bf",
			);
			
			echo httpPost("http://localhost/smith/backend/upfact",$params);
		}
		
		public function testupfact_cancel(){
			$params = array(
			"type" => "cancel",
			"referinta" => "#F54c259340a0bf",
			);
			
			echo httpPost("http://localhost/smith/backend/upfact",$params);
		}		
		
		public function total_fee(){
			$this->load->model('ss_fees_model');
			$values = array ('value' => 1425,
							'trn' => 15,
							'datatrn' => date('Y-m-d H:i:s'),
							'currency_key' => 1,
							'network_key' => 1,
							'partner_key' => 1,
							'cl_type_key' => 1,
							'bnf_type_key' => 4,);
			$fee = $this->ss_fees_model->compute_total_fee($values);
			echo $fee;
		}
		
		public function mytest(){
		
		/*$this->load->model('ss_payments_model');
		$this->load->model('ss_invoices_model');
			$profile_type = 'client';
			$user_surname = 'geo';
			$user_birth_date = '10.10.2015';
			$user_id = 8;
			$user_country = 'ro';
			
			$total_invoices = $this->ss_invoices_model->record_count(array('id_user' => 8, 'status' => get_status('pyd')));
			$total_payments = $this->ss_payments_model->record_count(array('id_user' => 8, 'status' => get_status('pyd')));
			$user_trn = $total_invoices + $total_payments;
			
			$values = array(
				'profile_type' => $profile_type,
				'prenume' => $user_surname,
				'data_nasterii' => substr($user_birth_date, 0, strrpos($user_birth_date, '.')),
				'numar_tranzactii' => $user_trn,
				'resedinta' => $user_country,
				);
			$client_profile_list = get_profile_matches_list($values);
			
			print_r(array_to_list($client_profile_list, false));
			*/
			
		$params['payment_method'] = '1';
		$params['currency']	= 'eur';
		$params['amount'] = '1500';
		$params['payment_type'] = 'cont';
		
		$params['ben_surname'] = 'Oana';
		$params['ben_city'] = 'Iasi';
		
		echo compute_real_fee($params);
		}
	}		