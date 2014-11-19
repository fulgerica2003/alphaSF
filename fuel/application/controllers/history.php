<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class History extends CI_Controller
	{
		
		function __construct(){
			parent::__construct();
			$this->load->model('ss_messages_model');
		}
		
		function index($unid_encoded=null){
			// id utilizator autentificat
			$user_id = '8';
			
			$where['id_user'] = $user_id;
			
			if (!empty($unid_encoded)){
				$where['unid'] = urldecode($unid_encoded);
			}
			
			//afisez lista de facturi pentru utilizatorul autentificat
			$this->data['messages'] = $this->ss_messages_model->find_all($where, 'date_added desc');
				
			$this->_render_page('history/index', $this->data);
		}
		
		function _render_page($view, $data=null, $render=false){
			
			$this->viewdata = (empty($data)) ? $this->data: $data;
			
			$view_html = $this->load->view($view, $this->viewdata, $render);
			
			if (!$render) return $view_html;
		}
	}						