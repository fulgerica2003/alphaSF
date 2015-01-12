<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Online_messages extends CI_Controller {
		
		private $user_id;
		
		/*
		TODO de rezolvat cu afisare multilanguage
		*/
		
		function __construct()
		{
			parent::__construct();
			
			$this->load->model('ss_messages_model');
			
			$this->load->library('ion_auth');
			$this->load->library('pagination');
			
			if (!$this->ion_auth->logged_in()){
				redirect('/', 'refresh');
				}else{
				$user = $this->ion_auth->user()->row();
				$this->user_id = $user->id;
			}
		}
		
		public function index(){
		
			/*echo $this->fuel->language->selected();
			die;*/
			$s1 = uri_segment(1);
			$s2 = uri_segment(2);
			
			$page = intval($s2) ? intval($s2) : 1;
			
			//$config['base_url'] = base_url() . ($lang != 'ro' ? $lang . '/' : '') . 'online_messages';
			$config['base_url'] = base_url() . 'online_messages';
			$config['total_rows'] = $this->ss_messages_model->record_count(array('id_user' => $this->user_id));
			$config['per_page'] = 10;
			//$config['uri_segment'] = ($lang == 'ro' ? 2 : 3);
			$config['uri_segment'] = 2;
			
			$config['use_page_numbers'] = true;
			$config['page_query_string'] = false;
			$config['display_pages'] = true;
			
			$this->pagination->initialize($config);
			
			$vars['messages'] = $this->ss_messages_model->find_all_array(array('id_user' => $this->user_id), 'date_added desc', $config['per_page'], ($page - 1) * $config['per_page']);
			
			$vars['recent_messages'] = $this->ss_messages_model->find_all_array(array('id_user' => $this->user_id), 'date_added desc', 5);
			
			$vars['pagination'] = $this->pagination->create_links();
			
			$this->fuel->pages->render('online_messages', $vars);
		}
		
		public function display($param1){
			$vars['messages'] = $this->ss_messages_model->find_all_array(array('id_user' => $this->user_id, 'unid' => urldecode($param1)), 'date_added desc');
			
			$vars['recent_messages'] = $this->ss_messages_model->find_all_array(array('id_user' => $this->user_id), 'date_added desc', 5);
			
			$vars['display_back'] = '';
			
			$this->fuel->pages->render('online_messages', $vars);
		}
		
	}
