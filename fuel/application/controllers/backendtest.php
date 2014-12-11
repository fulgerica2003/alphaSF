<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class BackendTest extends CI_Controller
	{
		/*	* 
			* functii de test
			*
		*/
		public function testupdcurs(){
			$params = array(
			"type" => "EUR",
			"date" => "2014-12-16",
			
			);
			
			echo httpPost("http://localhost/smith/backend/upcurs",$params);
		}
		
		
		public function testgettran(){
			$params = array(
			"type" => "ret",
			"referinta" => "0"
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
		
		public function testuptran(){
			$params = array(
			"type" => "recom",
			"referinta" => "#S5489a9fadeda1",
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
		
		
		
		
		
		
		
	}		