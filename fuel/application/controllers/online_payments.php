<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Online_payments extends CI_Controller {
		
		function Online_payments() {
			parent::__construct();
			
			$this->load->model('ss_payment_methods_model');
			
			$this->load->model('ss_cities_model');
			
			$this->load->model('ss_exchange_rate_model');
			
		}
		
		function index(){
			$this->add();
		}
		
		public function add(){
			$vars['payOpts'] = get_payment_types();
			
			$this->fuel->pages->render('online_payments', $vars);
		}
		
		public function update_ben_opts($currency){
			$vars['benOpts'] = $this->ss_payment_methods_model->options_list();
			
			$str = '<option value="">alege</option>\n';
			
			if (isset($currency)){
				switch(strtolower($currency)){
					case 'eur':
					break;
					case 'ron':
					unset($vars['benOpts'][4]);
					break;
					default:
					break;
				}

				foreach($vars['benOpts'] as $key => $val){
					$str .= '<option value="'.$key.'" label="'.$val.'" '.'>'.$val.'</option>\n';
				}
			}	
			echo $str;
		}
		
		public function update_custom_fields(){
			
			$payment_method = $_GET['payment_method'];
			$currency = $_GET['currency'];
			$amount = $_GET['amount'];
			
			$output = '';
			
			switch(strtolower($payment_method)){
				case '1':
				case '2':
				case '3':
				if (strtolower($currency) == 'eur'){
					$rate = $this->ss_exchange_rate_model->find_one(array('type' => strtoupper($currency), 'apply_date <= ' => date('Y-m-d', time())));
					$vars['cv'] = $rate->value;
					$output = $this->load->view('_blocks/_op_cv_info', array('cv' => $vars['cv'], 'amount' => $amount, 'accept' => TRUE));
				}
				break;
				case '4':
				break;	
				case '5':
				if (strtolower($currency) == 'eur'){
					$rate = $this->ss_exchange_rate_model->find_one(array('type' => strtoupper($currency), 'apply_date <= ' => date('Y-m-d', time())));
					$vars['cv'] = $rate->value;
					$output = $this->load->view('_blocks/_op_cv_info', array('cv' => $vars['cv'], 'amount' => $amount, 'accept' => TRUE));
				}
				$vars['cities'] = $this->ss_cities_model->options_list();
				$output .= $this->load->view('_blocks/_op_cities', array('cities' => $vars['cities']));
				break;
				case '6':
				if (strtolower($currency) == 'eur'){
					$rate = $this->ss_exchange_rate_model->find_one(array('type' => strtoupper($currency), 'apply_date <= ' => date('Y-m-d', time())));
					$vars['cv'] = $rate->value;
					$output = $this->load->view('_blocks/_op_cv_info', array('cv' => $vars['cv'], 'amount' => $amount, 'accept' => FALSE));
				}
				$output .= $this->load->view('_blocks/_op_iban');
				break;
				case '7':
				$output = $this->load->view('_blocks/_op_iban');
				break;
				case '8':
				$output = $this->load->view('_blocks/_op_iban');
				break;
				default:
			}
			
			echo $output;
		}
		
		public function update_total(){
			
			$payment_method = $_GET['payment_method'];
			$currency = $_GET['currency'];
			$amount = $_GET['amount'];
			
			$fee = null;
			$total = null;
			
			if (
			isset($payment_method) && (strlen($payment_method) > 0)
			&& isset($currency) && (strlen($currency) > 0)
			&& isset($amount) && (strlen($amount) > 0)
			){
				$fee = 0.1 * $amount;
				$total = $fee + $amount;
			}
			
			echo json_encode( array( "fee" => $fee, "total" => $total ) );;
		}
		
	}
	
	
?>