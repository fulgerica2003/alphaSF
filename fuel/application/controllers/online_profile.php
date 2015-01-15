<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Online_profile extends CI_Controller {
		
		function __construct()
		{
			parent::__construct();
			$this->load->database();
			$this->load->library('ion_auth');
			$this->load->library('form_validation');
			$this->load->helper('url');
			
			$this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
			
			$this->lang->load('ss');
			$this->load->helper('language');
		}
		
		public function index(){
			if (!$this->ion_auth->logged_in()){
				redirect('/', 'refresh');
				}else{
				
				$user = $this->ion_auth->user()->row();
				
				$vars['user'] = $user;
				
				$this->fuel->pages->render('online_profile', $vars);
			}
		}
		
		public function edit(){
			if (!$this->ion_auth->logged_in()){
				redirect('/', 'refresh');
			}
			else{
				
				$user = $this->ion_auth->user()->row();
				$vars['user'] = $user;
				
				//validate form input
				$this->form_validation->set_rules('first_name', $this->lang->line('profile_first_name'), 'required|xss_clean');
				$this->form_validation->set_rules('last_name', $this->lang->line('profile_last_name'), 'required|xss_clean');
				$this->form_validation->set_rules('phone', $this->lang->line('profile_phone'), 'required|numeric|min_length[10]|max_length[20]|xss_clean');
				$this->form_validation->set_rules('birth_date', $this->lang->line('profile_birth_date'), 'required|xss_clean');
				$this->form_validation->set_rules('country', $this->lang->line('profile_country'), 'required|xss_clean');
				$this->form_validation->set_rules('account', $this->lang->line('profile_account'), 'required|xss_clean');
				$this->form_validation->set_rules('swift', $this->lang->line('profile_swift'), 'required|xss_clean');
				$this->form_validation->set_rules('bank', $this->lang->line('profile_bank'), 'required|xss_clean');
				$this->form_validation->set_rules('default_language', $this->lang->line('profile_default_language'), 'required|xss_clean');
				
				if (isset($_POST) && !empty($_POST)){
					if ($this->input->post('password')){
						$this->form_validation->set_rules('password', $this->lang->line('profile_password'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]|regex_match['. check_password_regex($this->config->item('min_password_length', 'ion_auth')) .']');
						$this->form_validation->set_rules('password_confirm', $this->lang->line('profile_password_confirm'), 'required');
					}
				}
				
				if ($this->form_validation->run() === TRUE){
					// am trecut validarea, deci tb sa salvez informatiile
					$data = array(
					'first_name' 		=> $this->input->post('first_name'),
					'last_name' 		=> $this->input->post('last_name'),
					'phone'    			=> $this->input->post('phone'),
					'birth_date'    	=> $this->input->post('birth_date'),
					'country'      		=> $this->input->post('country'),
					'account'      		=> $this->input->post('account'),
					'swift'      		=> $this->input->post('swift'),
					'bank'      		=> $this->input->post('bank'),
					'default_language'  => $this->input->post('default_language'),
					);
					
					//update the password if it was posted
					if ($this->input->post('password'))
					{
						$data['password'] = $this->input->post('password');
					}
					
					$this->ion_auth->update($user->id, $data);
					$user = $this->ion_auth->user()->row();
					
					$vars['user'] = $user;
				}
				
				$vars['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
				
				$this->fuel->pages->render('online_profile', $vars);
			}
		}
		
	}
