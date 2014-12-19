<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Profile extends CI_Controller {
		
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
				
				$this->fuel->pages->render('profile', $vars);
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
				
				if (isset($_POST) && !empty($_POST)){
					if ($this->input->post('password')){
						$this->form_validation->set_rules('password', $this->lang->line('profile_password'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
						$this->form_validation->set_rules('password_confirm', $this->lang->line('profile_password_confirm'), 'required');
					}
				}
				
				if ($this->form_validation->run() === TRUE){
					// am trecut validarea, deci tb sa salvez informatiile
					$data = array(
					'first_name' 	=> $this->input->post('first_name'),
					'last_name' 	=> $this->input->post('last_name'),
					'phone'    		=> $this->input->post('phone'),
					'birth_date'    => $this->input->post('birth_date'),
					'country'      	=> $this->input->post('country'),
					'account'      	=> $this->input->post('account'),
					'swift'      	=> $this->input->post('swift'),
					'bank'      	=> $this->input->post('bank'),
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
				
				$this->fuel->pages->render('profile', $vars);
			}
		}
		
		//edit a user
		/*function edit($id)
			{
			$this->data['title'] = "Edit User";
			
			if (!$this->ion_auth->logged_in() || (!$this->ion_auth->is_admin() && !($this->ion_auth->user()->row()->id == $id)))
			{
			redirect('auth', 'refresh');
			}
			
			$user = $this->ion_auth->user($id)->row();
			$groups=$this->ion_auth->groups()->result_array();
			$currentGroups = $this->ion_auth->get_users_groups($id)->result();
			
			//validate form input
			$this->form_validation->set_rules('first_name', $this->lang->line('edit_user_validation_fname_label'), 'required|xss_clean');
			$this->form_validation->set_rules('last_name', $this->lang->line('edit_user_validation_lname_label'), 'required|xss_clean');
			$this->form_validation->set_rules('phone', $this->lang->line('edit_user_validation_phone_label'), 'required|xss_clean');
			$this->form_validation->set_rules('company', $this->lang->line('edit_user_validation_company_label'), 'required|xss_clean');
			$this->form_validation->set_rules('groups', $this->lang->line('edit_user_validation_groups_label'), 'xss_clean');
			
			if (isset($_POST) && !empty($_POST))
			{
			// do we have a valid request?
			if ($this->_valid_csrf_nonce() === FALSE || $id != $this->input->post('id'))
			{
			show_error($this->lang->line('error_csrf'));
			}
			
			//update the password if it was posted
			if ($this->input->post('password'))
			{
			$this->form_validation->set_rules('password', $this->lang->line('edit_user_validation_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
			$this->form_validation->set_rules('password_confirm', $this->lang->line('edit_user_validation_password_confirm_label'), 'required');
			}
			
			if ($this->form_validation->run() === TRUE)
			{
			$data = array(
			'first_name' => $this->input->post('first_name'),
			'last_name'  => $this->input->post('last_name'),
			'company'    => $this->input->post('company'),
			'phone'      => $this->input->post('phone'),
			);
			
			//update the password if it was posted
			if ($this->input->post('password'))
			{
			$data['password'] = $this->input->post('password');
			}
			
			
			
			// Only allow updating groups if user is admin
			if ($this->ion_auth->is_admin())
			{
			//Update the groups user belongs to
			$groupData = $this->input->post('groups');
			
			if (isset($groupData) && !empty($groupData)) {
			
			$this->ion_auth->remove_from_group('', $id);
			
			foreach ($groupData as $grp) {
			$this->ion_auth->add_to_group($grp, $id);
			}
			
			}
			}
			
			//check to see if we are updating the user
			if($this->ion_auth->update($user->id, $data))
			{
			//redirect them back to the admin page if admin, or to the base url if non admin
			$this->session->set_flashdata('message', $this->ion_auth->messages() );
			if ($this->ion_auth->is_admin())
			{
			redirect('auth', 'refresh');
			}
			else
			{
			redirect('/', 'refresh');
			}
			
			}
			else
			{
			//redirect them back to the admin page if admin, or to the base url if non admin
			$this->session->set_flashdata('message', $this->ion_auth->errors() );
			if ($this->ion_auth->is_admin())
			{
			redirect('auth', 'refresh');
			}
			else
			{
			redirect('/', 'refresh');
			}
			
			}		
			
			}
			}
			
			//display the edit user form
			$this->data['csrf'] = $this->_get_csrf_nonce();
			
			//set the flash data error message if there is one
			$this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
			
			//pass the user to the view
			$this->data['user'] = $user;
			$this->data['groups'] = $groups;
			$this->data['currentGroups'] = $currentGroups;
			
			$this->data['first_name'] = array(
			'name'  => 'first_name',
			'id'    => 'first_name',
			'type'  => 'text',
			'value' => $this->form_validation->set_value('first_name', $user->first_name),
			);
			$this->data['last_name'] = array(
			'name'  => 'last_name',
			'id'    => 'last_name',
			'type'  => 'text',
			'value' => $this->form_validation->set_value('last_name', $user->last_name),
			);
			$this->data['company'] = array(
			'name'  => 'company',
			'id'    => 'company',
			'type'  => 'text',
			'value' => $this->form_validation->set_value('company', $user->company),
			);
			$this->data['phone'] = array(
			'name'  => 'phone',
			'id'    => 'phone',
			'type'  => 'text',
			'value' => $this->form_validation->set_value('phone', $user->phone),
			);
			$this->data['password'] = array(
			'name' => 'password',
			'id'   => 'password',
			'type' => 'password'
			);
			$this->data['password_confirm'] = array(
			'name' => 'password_confirm',
			'id'   => 'password_confirm',
			'type' => 'password'
			);
			
			$this->_render_page('auth/edit_user', $this->data);
			}
		*/
		
	}
