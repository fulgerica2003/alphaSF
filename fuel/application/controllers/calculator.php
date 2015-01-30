<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Calculator extends CI_Controller {
		
		private $user_email;
		private $user_id;
		
		private $exchange_rate_eur;
		
		function Calculator() {
			parent::__construct();
			
			$this->load->library('ion_auth');
			$this->load->library('session');
			
			$this->load->model('ss_payment_methods_model');
			
		}
		
		public function pay_transfer(){
			$calc_details = array ('tipPlata' => $this->input->post('tipPlata'),
			'amount' => $this->input->post('suma'),
			'fee' => $this->input->post('cop_hidden_fee'),
			'total' => $this->input->post('cop_hidden_total'),
			'currency' => $this->input->post('monedaPlata'),
			'modIncasare' => $this->input->post('modIncasare'),);
			
			// datele introduse in simulator le pun pe sesiune
			// fac apoi redirect catre login, iar in custom.js, in fc de valoarea lui showLogin redirectez catre online_payments
			// in online_payments citesc datele de pe sesiune si le pun in form
			$this->session->set_userdata('calcPayDetails', $calc_details);
			
			if (!$this->ion_auth->logged_in()){
				redirect('/?showLogin=op');
			}else{
				redirect('online_payments');
			}
		}
		
		public function pay_invoice(){
			// datele introduse in simulator le pun pe sesiune
			// fac apoi redirect catre login, iar in custom.js, in fc de valoarea lui showLogin redirectez catre online_invoices
			// in online_payments citesc datele de pe sesiune si le pun in form
			$calc_details = array ('tipPlata' => $this->input->post('tipPlata'),
			'amount' => $this->input->post('suma'),
			'fee' => $this->input->post('cof_hidden_fee'),
			'total' => $this->input->post('cof_hidden_total'),
			);
			$this->session->set_userdata('calcInvDetails', $calc_details);
			
			if (!$this->ion_auth->logged_in()){
				redirect('/?showLogin=oi');
			}else{
				redirect('online_invoices');
			}
		}
		
		public function update_total(){
			
			echo compute_fee($_GET);
		}
		
		public function update_ben_opts($currency){
			
			$vars['benOpts'] = get_ben_opts($currency);
			
			$str = '<option value="">alege</option>\n';
			
			foreach($vars['benOpts'] as $key => $val){
				$str .= '<option value="'.$key.'" label="'.$val.'" '.'>'.$val.'</option>\n';
			}
			
			echo $str;
		}
		
	}
	
	
?>