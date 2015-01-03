<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Newsletter extends CI_Controller{
		
		function __construct(){
			parent::__construct();
			$this->load->model('ss_newsletter_list_model');
			
			$this->load->library('form_validation');
			$this->load->library('session');
			
			$this->form_validation->set_error_delimiters('', '');
			
			$this->lang->load('ss');
			$this->load->helper('language');
			
		}
		
		public function subscribe(){
			
			$this->form_validation->set_rules('email', 'E-mail', 'required|valid_email');
			
			$error = false;
			$result = '';
			
			if ($this->form_validation->run() == FALSE){
				$result = validation_errors();
				$error = true;
			}
			else{
				$email_address = $this->input->post('email');
				$values = array('email' => $email_address);
				if ($this->ss_newsletter_list_model->record_exists($values)){
					//$result = $this->lang->line('subscribe_exists');
					$result = 'record exists';
					$error = true;
				}else{
					$this->ss_newsletter_list_model->insert($values);
					//$result = $this->lang->line('subscribe_success');
					$result = 'thank you';
					$error = false;
				}
			}
			
			echo json_encode(array("error" => $error, "result" => $result));
		}
	}														