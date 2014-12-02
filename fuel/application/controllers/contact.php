<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	
	class Contact extends CI_Controller {
		
		function mesaj()
		{
			$this->load->helper(array('form', 'url'));
			
			$this->load->library('form_validation');
			
			$this->form_validation->set_rules('name', lang('contact_name'), 'trim|required|max_length[255]|xss_clean');
			$this->form_validation->set_rules('email', lang('contact_email'), 'trim|required|max_length[255]|valid_email|xss_clean');
			$this->form_validation->set_rules('subject', lang('contact_subject'), 'required');
			$this->form_validation->set_rules('message', lang('contact_message'), 'required|trim|min_length[8]|max_length[1024]|xss_clean');
			
			if ($this->form_validation->run() == FALSE){
				$this->fuel->pages->render('contact');
			}
			else{
				$this->fuel->pages->render('contact_success');
				$email_info = array ('sender' => $this->input->post('email'),
					'receiver' => $this->fuel->sitevars->get()['from_email'],
					'subject' => $this->input->post('subject'),
					'body' => $this->input->post('message'),);
				send_email($email_info);
			}
		}
	}
