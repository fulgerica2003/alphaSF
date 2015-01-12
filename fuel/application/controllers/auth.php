<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Auth extends CI_Controller {
		
		function __construct()
		{
			parent::__construct();
			$this->load->database();
			$this->load->library('ion_auth');
			$this->load->library('form_validation');
			$this->load->helper('url');
			
			$this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
			
			$this->lang->load('auth');
			$this->load->helper('language');
		}
		
		//redirect if needed, otherwise display the user list
		function index()
		{
			
			if (!$this->ion_auth->logged_in())
			{
				//redirect them to the login page
				redirect('auth/login', 'refresh');
			}
			elseif (!$this->ion_auth->is_admin()) //remove this elseif if you want to enable this for non-admins
			{
				//redirect them to the home page because they must be an administrator to view this
				return show_error('You must be an administrator to view this page.');
			}
			else
			{
				//set the flash data error message if there is one
				$this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
				
				//list the users
				$this->data['users'] = $this->ion_auth->users()->result();
				foreach ($this->data['users'] as $k => $user)
				{
					$this->data['users'][$k]->groups = $this->ion_auth->get_users_groups($user->id)->result();
				}
				
				$this->_render_page('auth/index', $this->data);
			}
		}
		
		//log the user in
		function login()
		{
			if (!is_ajax()){
				redirect('/?showLogin=');
			}
			
			$this->data['title'] = "Login";
			
			//validate form input
			$this->form_validation->set_rules('identity', 'Identity', 'required');
			$this->form_validation->set_rules('password', 'Password', 'required');
			$this->form_validation->set_rules('word', 'Captcha', 'trim|callback_check_captcha|required' );
			
			if ($this->form_validation->run() == true)
			{	
				//check to see if the user is logging in
				//check for "remember me"
				$remember = (bool) $this->input->post('remember');
				
				if ($this->ion_auth->login($this->input->post('identity'), $this->input->post('password'), $remember))
				{
					//if the login is successful
					//redirect them back to the home page
					$this->session->set_flashdata('message', $this->ion_auth->messages());

					redirect('/', 'refresh');
				}
				else
				{
					$blocked = FALSE;
					//if the login was un-successful
					// verific daca pentru utilizator s-a atins nr maxim de autentificari nereusite si utilizatorul sa fie activ;
					// daca a fost atins si e inca activ, dezactivez utilizatorul si trimit mail de reactivare
					// daca nr nu a fost atins sau utilizatorul nu e activ, nu am nimic de facut
					$identity = $this->input->post('identity');
					$user = $this->ion_auth->userId($identity);
					if ($user != NULL){
						if ($this->ion_auth->is_max_login_attempts($identity) && ($user->active == 1)){
							$this->ion_auth->deactivate($user->id);
							$this->ion_auth->send_activation_email($user->id);
							$blocked = TRUE;
						}
					}
					//redirect them back to the login page
					$this->session->set_flashdata('message', $this->ion_auth->errors());
					if ($blocked){
						$this->_render_page("auth/_login-blocked");
					}else{
						redirect('auth/login', 'refresh'); //use redirects instead of loading views for compatibility with MY_Controller libraries
					}
				}
			}
			else
			{
				//the user is not logging in so display the login page
				//set the flash data error message if there is one
				$this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
				
				$this->data['identity'] = array('name' => 'identity',
				'id' => 'identity',
				'type' => 'text',
				'value' => $this->form_validation->set_value('identity'),
				'class' => 'agent-input',
				);
				$this->data['password'] = array('name' => 'password',
				'id' => 'password',
				'type' => 'password',
				'class' => 'agent-input',
				);
				
				$this->data['word'] = array(
				'name'  => 'word',
				'id'    => 'word',
				'type'  => 'text',
				'value' => '',
				'class' => 'agent-input',
				);
				
				$this->data['image']= $this->_create_captcha();
				
				$this->_render_page('auth/login', $this->data);
			}
		}
		
		//log the user out
		function logout()
		{
			$this->data['title'] = "Logout";
			
			//log the user out
			$logout = $this->ion_auth->logout();
			
			//redirect them to the login page
			$this->session->set_flashdata('message', $this->ion_auth->messages());
			redirect('/', 'refresh');
		}
		
		//change password
		function change_password()
		{
			$this->form_validation->set_rules('old', $this->lang->line('change_password_validation_old_password_label'), 'required');
			$this->form_validation->set_rules('new', $this->lang->line('change_password_validation_new_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[new_confirm]');
			$this->form_validation->set_rules('new_confirm', $this->lang->line('change_password_validation_new_password_confirm_label'), 'required');
			
			if (!$this->ion_auth->logged_in())
			{
				redirect('auth/login', 'refresh');
			}
			
			$user = $this->ion_auth->user()->row();
			
			if ($this->form_validation->run() == false)
			{
				//display the form
				//set the flash data error message if there is one
				$this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
				
				$this->data['min_password_length'] = $this->config->item('min_password_length', 'ion_auth');
				$this->data['old_password'] = array(
				'name' => 'old',
				'id'   => 'old',
				'type' => 'password',
				);
				$this->data['new_password'] = array(
				'name' => 'new',
				'id'   => 'new',
				'type' => 'password',
				'pattern' => '^.{'.$this->data['min_passregister()
				_length'].'}.*$',
				);
				$this->data['new_password_confirm'] = array(
				'name' => 'new_confirm',
				'id'   => 'new_confirm',
				'type' => 'password',
				'pattern' => '^.{'.$this->data['min_password_length'].'}.*$',
				);
				$this->data['user_id'] = array(
				'name'  => 'user_id',
				'id'    => 'user_id',
				'type'  => 'hidden',
				'value' => $user->id,
				);
				
				//render
				$this->_render_page('auth/change_password', $this->data);
			}
			else
			{
				$identity = $this->session->userdata('identity');
				
				$change = $this->ion_auth->change_password($identity, $this->input->post('old'), $this->input->post('new'));
				
				if ($change)
				{
					//if the password was successfully changed
					$this->session->set_flashdata('message', $this->ion_auth->messages());
					$this->logout();
				}
				else
				{
					$this->session->set_flashdata('message', $this->ion_auth->errors());
					redirect('auth/change_password', 'refresh');
				}
			}
		}
		
		//forgot password
		function forgot_password()
		{  
			if (!is_ajax()){
				redirect('/?showLogin=');
			}
			
			//setting validation rules by checking wheather identity is username or email
			if($this->config->item('identity', 'ion_auth') == 'username' )
			{
				$this->form_validation->set_rules('email', $this->lang->line('forgot_password_username_identity_label'), 'required');	
			}
			else
			{
				$this->form_validation->set_rules('email', $this->lang->line('forgot_password_validation_email_label'), 'required|valid_email');	
			}
			
			
			if ($this->form_validation->run() == false)
			{
				//setup the input
				$this->data['email'] = array('name' => 'email',
				'id' => 'email',
				'class' => 'agent-input',
				);
				
				if ( $this->config->item('identity', 'ion_auth') == 'username' ){
					$this->data['identity_label'] = $this->lang->line('forgot_password_username_identity_label');
				}
				else
				{
					$this->data['identity_label'] = $this->lang->line('forgot_password_email_identity_label');
				}
				
				//set any errors and display the form
				$this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
				$this->_render_page('auth/forgot_password', $this->data);
			}
			else
			{
				// get identity from username or email
				if ( $this->config->item('identity', 'ion_auth') == 'username' ){
					$identity = $this->ion_auth->where('username', strtolower($this->input->post('email')))->users()->row();
				}
				else
				{
					$identity = $this->ion_auth->where('email', strtolower($this->input->post('email')))->users()->row();
				}
				if(empty($identity)) {
					
					if($this->config->item('identity', 'ion_auth') == 'username')
					{
						$this->ion_auth->set_message('forgot_password_username_not_found');
					}
					else
					{
						$this->ion_auth->set_message('forgot_password_email_not_found');
					}
					
					$this->session->set_flashdata('message', $this->ion_auth->messages());
					redirect("auth/forgot_password", 'refresh');
				}
				
				//run the forgotten password method to email an activation code to the user
				$forgotten = $this->ion_auth->forgotten_password($identity->{$this->config->item('identity', 'ion_auth')});
				
				if ($forgotten)
				{
					//if there were no errors
					$this->session->set_flashdata('message', $this->ion_auth->messages());
					redirect("auth/login", 'refresh'); //we should display a confirmation page here instead of the login page
				}
				else
				{
					$this->session->set_flashdata('message', $this->ion_auth->errors());
					redirect("auth/forgot_password", 'refresh');
				}
			}
		}
		
		//reset password - final step for forgotten password
		public function reset_password($code = NULL)
		{
			if (!$code)
			{
				show_404();
			}
			
			$user = $this->ion_auth->forgotten_password_check($code);
			
			if ($user)
			{
				//if the code is valid then display the password reset form
				$this->form_validation->set_rules('new', $this->lang->line('reset_password_validation_new_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[new_confirm]|regex_match['. check_password_regex($this->config->item('min_password_length', 'ion_auth')) .']');
				$this->form_validation->set_rules('new_confirm', $this->lang->line('reset_password_validation_new_password_confirm_label'), 'required');
				
				if ($this->form_validation->run() == false)
				{
					//display the form
					
					//set the flash data error message if there is one
					$this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
					
					$this->data['min_password_length'] = $this->config->item('min_password_length', 'ion_auth');
					$this->data['new_password'] = array(
					'name' => 'new',
					'id'   => 'new',
					'type' => 'password',
					//'pattern' => '^.{'.$this->data['min_password_length'].'}.*$', // mutat verificarea in regula regex
					'class' => 'agent-input',
					);
					$this->data['new_password_confirm'] = array(
					'name' => 'new_confirm',
					'id'   => 'new_confirm',
					'type' => 'password',
					//'pattern' => '^.{'.$this->data['min_password_length'].'}.*$', // mutat verificarea in regula regex
					'class' => 'agent-input',
					);
					$this->data['user_id'] = array(
					'name'  => 'user_id',
					'id'    => 'user_id',
					'type'  => 'hidden',
					'value' => $user->id,
					);
					// $this->data['csrf'] = $this->_get_csrf_nonce();
					$this->data['csrf'] = $this->_get_session_csrf_nonce();
					$this->data['code'] = $code;
					
					//render
					//$this->_render_page('auth/reset_password', $this->data);
					// am trecut randarea prin fuel ca sa am template
					$this->fuel->pages->render('auth/reset_password', $this->data);
				}
				else
				{
					// do we have a valid request?
					//if ($this->_valid_csrf_nonce() === FALSE || $user->id != $this->input->post('user_id'))
					// initial era ca mai sus, dar cand am mutat randarea pe fuel nu tinea minte flashdata, asa ca am setat pe sesiune
					if ($this->_valid_session_csrf_nonce() === FALSE || $user->id != $this->input->post('user_id'))
					{					
						//something fishy might be up
						$this->ion_auth->clear_forgotten_password_code($code);
						
						show_error($this->lang->line('error_csrf'));
						
					}
					else
					{
						// finally change the password
						$identity = $user->{$this->config->item('identity', 'ion_auth')};
						
						$change = $this->ion_auth->reset_password($identity, $this->input->post('new'));
						
						if ($change)
						{
							//if the password was successfully changed
							$this->session->set_flashdata('message', $this->ion_auth->messages());
							$this->logout();
						}
						else
						{
							$this->session->set_flashdata('message', $this->ion_auth->errors());
							redirect('auth/reset_password/' . $code, 'refresh');
						}
					}
				}
			}
			else
			{
				//if the code is invalid then send them back to the forgot password page
				$this->session->set_flashdata('message', $this->ion_auth->errors());
				redirect("auth/forgot_password", 'refresh');
			}
		}
		
		
		//activate the user
		function activate($id, $code=false)
		{
			if ($code !== false)
			{
				$activation = $this->ion_auth->activate($id, $code);
			}
			else if ($this->ion_auth->is_admin())
			{
				$activation = $this->ion_auth->activate($id);
			}
			
			if ($activation)
			{
				//redirect them to the auth page
				$this->session->set_flashdata('message', $this->ion_auth->messages());
				redirect("/", 'refresh');
			}
			else
			{
				//redirect them to the forgot password page
				$this->session->set_flashdata('message', $this->ion_auth->errors());
				redirect("auth/forgot_password", 'refresh');
			}
		}
		
		//deactivate the user
		function deactivate($id = NULL)
		{
			$id = (int) $id;
			
			$this->load->library('form_validation');
			$this->form_validation->set_rules('confirm', $this->lang->line('deactivate_validation_confirm_label'), 'required');
			$this->form_validation->set_rules('id', $this->lang->line('deactivate_validation_user_id_label'), 'required|alpha_numeric');
			
			if ($this->form_validation->run() == FALSE)
			{
				// insert csrf check
				$this->data['csrf'] = $this->_get_csrf_nonce();
				$this->data['user'] = $this->ion_auth->user($id)->row();
				
				$this->_render_page('auth/deactivate_user', $this->data);
			}
			else
			{
				// do we really want to deactivate?
				if ($this->input->post('confirm') == 'yes')
				{
					// do we have a valid request?
					if ($this->_valid_csrf_nonce() === FALSE || $id != $this->input->post('id'))
					{
						show_error($this->lang->line('error_csrf'));
					}
					
					// do we have the right userlevel?
					if ($this->ion_auth->logged_in() && $this->ion_auth->is_admin())
					{
						$this->ion_auth->deactivate($id);
					}
				}
				
				//redirect them back to the auth page
				redirect('auth', 'refresh');
			}
		}
		
		//create a new user
		function create_user()
		{
			$this->data['title'] = "Create User";
			
			if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin())
			{
				redirect('auth', 'refresh');
			}
			
			$tables = $this->config->item('tables','ion_auth');
			
			//validate form input
			$this->form_validation->set_rules('first_name', $this->lang->line('create_user_validation_fname_label'), 'required|xss_clean');
			$this->form_validation->set_rules('last_name', $this->lang->line('create_user_validation_lname_label'), 'required|xss_clean');
			$this->form_validation->set_rules('email', $this->lang->line('create_user_validation_email_label'), 'required|valid_email|is_unique['.$tables['users'].'.email]');
			$this->form_validation->set_rules('phone', $this->lang->line('create_user_validation_phone_label'), 'required|xss_clean');
			$this->form_validation->set_rules('company', $this->lang->line('create_user_validation_company_label'), 'required|xss_clean');
			$this->form_validation->set_rules('password', $this->lang->line('create_user_validation_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
			$this->form_validation->set_rules('password_confirm', $this->lang->line('create_user_validation_password_confirm_label'), 'required');
			
			if ($this->form_validation->run() == true)
			{
				$username = strtolower($this->input->post('first_name')) . ' ' . strtolower($this->input->post('last_name'));
				$email    = strtolower($this->input->post('email'));
				$password = $this->input->post('password');
				
				$additional_data = array(
				'first_name' => $this->input->post('first_name'),
				'last_name'  => $this->input->post('last_name'),
				'company'    => $this->input->post('company'),
				'phone'      => $this->input->post('phone'),
				);
			}
			if ($this->form_validation->run() == true && $this->ion_auth->register($username, $password, $email, $additional_data))
			{
				//check to see if we are creating the user
				//redirect them back to the admin page
				$this->session->set_flashdata('message', $this->ion_auth->messages());
				redirect("auth", 'refresh');
			}
			else
			{
				//display the create user form
				//set the flash data error message if there is one
				$this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
				
				$this->data['first_name'] = array(
				'name'  => 'first_name',
				'id'    => 'first_name',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('first_name'),
				);
				$this->data['last_name'] = array(
				'name'  => 'last_name',
				'id'    => 'last_name',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('last_name'),
				);
				$this->data['email'] = array(
				'name'  => 'email',
				'id'    => 'email',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('email'),
				);
				$this->data['company'] = array(
				'name'  => 'company',
				'id'    => 'company',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('company'),
				);
				$this->data['phone'] = array(
				'name'  => 'phone',
				'id'    => 'phone',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('phone'),
				);
				$this->data['password'] = array(
				'name'  => 'password',
				'id'    => 'password',
				'type'  => 'password',
				'value' => $this->form_validation->set_value('password'),
				);
				$this->data['password_confirm'] = array(
				'name'  => 'password_confirm',
				'id'    => 'password_confirm',
				'type'  => 'password',
				'value' => $this->form_validation->set_value('password_confirm'),
				);
				
				$this->_render_page('auth/create_user', $this->data);
			}
		}
		
		//register user
		function register()
		{
			
			if (!is_ajax()){
				redirect('/?showLogin=');
			}
			
			$this->data['title'] = "Register User";
			
			$tables = $this->config->item('tables','ion_auth');
			
			//validate form input
			$this->form_validation->set_rules('first_name', $this->lang->line('register_user_validation_fname_label'), 'required|xss_clean');
			$this->form_validation->set_rules('last_name', $this->lang->line('register_user_validation_lname_label'), 'required|xss_clean');
			$this->form_validation->set_rules('email', $this->lang->line('register_user_validation_email_label'), 'required|valid_email|is_unique['.$tables['users'].'.email]');
			$this->form_validation->set_rules('phone', $this->lang->line('register_user_validation_phone_label'), 'required|xss_clean');
			$this->form_validation->set_rules('password', $this->lang->line('register_user_validation_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]|regex_match['. check_password_regex($this->config->item('min_password_length', 'ion_auth')) .']');
			$this->form_validation->set_rules('password_confirm', $this->lang->line('register_user_validation_password_confirm_label'), 'required');
			$this->form_validation->set_rules('birth_date', $this->lang->line('register_user_validation_birth_date_label'), 'required|xss_clean');
			$this->form_validation->set_rules('country', $this->lang->line('register_user_validation_country_label'), 'required|xss_clean');
			$this->form_validation->set_rules('account', $this->lang->line('register_user_validation_account_label'), 'required|xss_clean');
			$this->form_validation->set_rules('swift', $this->lang->line('register_user_validation_swift_label'), 'required|xss_clean');
			$this->form_validation->set_rules('bank', $this->lang->line('register_user_validation_bank_label'), 'required|xss_clean');
			$this->form_validation->set_rules('word', 'Captcha', 'trim|callback_check_captcha|required' );
			
			if ($this->form_validation->run() == true)
			{
				$username = strtolower($this->input->post('first_name')) . ' ' . strtolower($this->input->post('last_name'));
				$email    = strtolower($this->input->post('email'));
				$password = $this->input->post('password');
				
				$additional_data = array(
				'first_name' => $this->input->post('first_name'),
				'last_name'  => $this->input->post('last_name'),
				'phone'      => $this->input->post('phone'),
				'birth_date'    => $this->input->post('birth_date'),
				'country'    => $this->input->post('country'),
				'account'    => $this->input->post('account'),
				'swift'    	 => $this->input->post('swift'),
				'bank'       => $this->input->post('bank'),
				);
			}
			if ($this->form_validation->run() == true && $this->ion_auth->register($username, $password, $email, $additional_data))
			{
				//check to see if we are creating the user
				//redirect them back to the admin page
				$this->session->set_flashdata('message', $this->ion_auth->messages());
				$this->_render_page("auth/_register-success");
			}
			else
			{
				//display the register user form
				//set the flash data error message if there is one
				$this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
				
				$this->data['first_name'] = array(
				'name'  => 'first_name',
				'id'    => 'first_name',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('first_name'),
				'class' => 'agent-input',
				);
				$this->data['last_name'] = array(
				'name'  => 'last_name',
				'id'    => 'last_name',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('last_name'),
				'class' => 'agent-input',
				);
				$this->data['email'] = array(
				'name'  => 'email',
				'id'    => 'email',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('email'),
				'class' => 'agent-input',
				);
				$this->data['phone'] = array(
				'name'  => 'phone',
				'id'    => 'phone',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('phone'),
				'class' => 'agent-input',
				);
				$this->data['password'] = array(
				'name'  => 'password',
				'id'    => 'password',
				'type'  => 'password',
				'value' => $this->form_validation->set_value('password'),
				'class' => 'agent-input',
				);
				$this->data['password_confirm'] = array(
				'name'  => 'password_confirm',
				'id'    => 'password_confirm',
				'type'  => 'password',
				'value' => $this->form_validation->set_value('password_confirm'),
				'class' => 'agent-input',
				);
				$this->data['birth_date'] = array(
				'name'  => 'birth_date',
				'id'    => 'birth_date',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('birth_date'),
				'class' => 'agent-input',
				);
				$this->data['country'] = array(
				'name'  => 'country',
				'id'    => 'country',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('country'),
				'class' => 'agent-input',
				);
				
				$this->data['account'] = array(
				'name'  => 'account',
				'id'    => 'account',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('account'),
				'class' => 'agent-input',
				);
				
				$this->data['swift'] = array(
				'name'  => 'swift',
				'id'    => 'swift',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('swift'),
				'class' => 'agent-input',
				);
				
				$this->data['bank'] = array(
				'name'  => 'bank',
				'id'    => 'bank',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('bank'),
				'class' => 'agent-input',
				);				
				
				$this->data['word'] = array(
				'name'  => 'word',
				'id'    => 'word',
				'type'  => 'text',
				'value' => '',
				'class' => 'agent-input',
				);
				
				$this->data['image']= $this->_create_captcha();
				
				$this->_render_page('auth/register', $this->data);
			}
		}
		
		//edit a user
		function edit_user($id)
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
		
		// create a new group
		function create_group()
		{
			$this->data['title'] = $this->lang->line('create_group_title');
			
			if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin())
			{
				redirect('auth', 'refresh');
			}
			
			//validate form input
			$this->form_validation->set_rules('group_name', $this->lang->line('create_group_validation_name_label'), 'required|alpha_dash|xss_clean');
			$this->form_validation->set_rules('description', $this->lang->line('create_group_validation_desc_label'), 'xss_clean');
			
			if ($this->form_validation->run() == TRUE)
			{
				$new_group_id = $this->ion_auth->create_group($this->input->post('group_name'), $this->input->post('description'));
				if($new_group_id)
				{
					// check to see if we are creating the group
					// redirect them back to the admin page
					$this->session->set_flashdata('message', $this->ion_auth->messages());
					redirect("auth", 'refresh');
				}
			}
			else
			{
				//display the create group form
				//set the flash data error message if there is one
				$this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
				
				$this->data['group_name'] = array(
				'name'  => 'group_name',
				'id'    => 'group_name',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('group_name'),
				);
				$this->data['description'] = array(
				'name'  => 'description',
				'id'    => 'description',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('description'),
				);
				
				$this->_render_page('auth/create_group', $this->data);
			}
		}
		
		//edit a group
		function edit_group($id)
		{
			// bail if no group id given
			if(!$id || empty($id))
			{
				redirect('auth', 'refresh');
			}
			
			$this->data['title'] = $this->lang->line('edit_group_title');
			
			if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin())
			{
				redirect('auth', 'refresh');
			}
			
			$group = $this->ion_auth->group($id)->row();
			
			//validate form input
			$this->form_validation->set_rules('group_name', $this->lang->line('edit_group_validation_name_label'), 'required|alpha_dash|xss_clean');
			$this->form_validation->set_rules('group_description', $this->lang->line('edit_group_validation_desc_label'), 'xss_clean');
			
			if (isset($_POST) && !empty($_POST))
			{
				if ($this->form_validation->run() === TRUE)
				{
					$group_update = $this->ion_auth->update_group($id, $_POST['group_name'], $_POST['group_description']);
					
					if($group_update)
					{
						$this->session->set_flashdata('message', $this->lang->line('edit_group_saved'));
					}
					else
					{
						$this->session->set_flashdata('message', $this->ion_auth->errors());
					}
					redirect("auth", 'refresh');
				}
			}
			
			//set the flash data error message if there is one
			$this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
			
			//pass the user to the view
			$this->data['group'] = $group;
			
			$this->data['group_name'] = array(
			'name'  => 'group_name',
			'id'    => 'group_name',
			'type'  => 'text',
			'value' => $this->form_validation->set_value('group_name', $group->name),
			);
			$this->data['group_description'] = array(
			'name'  => 'group_description',
			'id'    => 'group_description',
			'type'  => 'text',
			'value' => $this->form_validation->set_value('group_description', $group->description),
			);
			
			$this->_render_page('auth/edit_group', $this->data);
		}
		
		
		function _get_csrf_nonce()
		{
			$this->load->helper('string');
			$key   = random_string('alnum', 8);
			$value = random_string('alnum', 20);
			$this->session->set_flashdata('csrfkey', $key);
			$this->session->set_flashdata('csrfvalue', $value);
			
			return array($key => $value);
		}
		
		function _valid_csrf_nonce()
		{
			
			if ($this->input->post($this->session->flashdata('csrfkey')) !== FALSE &&
			$this->input->post($this->session->flashdata('csrfkey')) == $this->session->flashdata('csrfvalue'))
			{
				return TRUE;
			}
			else
			{
				return FALSE;
			}
		}
		
		function _valid_session_csrf_nonce()
		{
			
			if ($this->input->post($this->session->userdata('csrfkey')) !== FALSE &&
			$this->input->post($this->session->userdata('csrfkey')) == $this->session->userdata('csrfvalue'))
			{
				return TRUE;
			}
			else
			{
				return FALSE;
			}
			
			$this->session->unset_data('csrfkey');
			$this->session->unset_data('csrfvalue');
			
		}
		
		function _get_session_csrf_nonce()
		{
			$this->load->helper('string');
			$key   = random_string('alnum', 8);
			$value = random_string('alnum', 20);
			$this->session->set_userdata('csrfkey', $key);
			$this->session->set_userdata('csrfvalue', $value);
			
			return array($key => $value);
		}
		
		function _render_page($view, $data=null, $render=false)
		{
			
			$this->viewdata = (empty($data)) ? $this->data: $data;
			
			$view_html = $this->load->view($view, $this->viewdata, $render);
			
			if (!$render) return $view_html;
		}
		
		private function _create_captcha()
		{
			// we will first load the helper. We will not be using autoload because we only need it here
			$this->load->helper('captcha');
			// we will set all the variables needed to create the captcha image
			$options = array('img_path'=>'./assets/captcha/','img_url'=>site_url('assets/captcha/'),'img_width'=>'150','img_height'=>'40','expiration'=>7200,
			'word_length' => 4, 'pool' => '123456789ABCDEFGHIJKLMNPQRSTUVWXYZ', 'colors' => array( 'background' => array(255,255,255), 'border' => array(153,102,102), 'text' => array(204,153,153), 'grid' => array(255,182,182)));
			//now we will create the c	aptcha by using the helper function create_captcha()
			$cap = create_captcha($options);
			// we will store the image html code in a variable
			$image = $cap['image'];
			// ...and store the captcha word in a session
			$this->session->set_userdata('captchaword', $cap['word']);
			// we will return the image html code
			return $image;
		}
		
		public function check_captcha($string)
		{
			if($string==$this->session->userdata('captchaword'))
			{
				return TRUE;
			}
			else
			{
				$this->form_validation->set_message('check_captcha', 'Wrong captcha code');
				return FALSE;
			}
		}
		
	}
