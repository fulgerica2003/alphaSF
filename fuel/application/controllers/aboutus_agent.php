<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	
	class Aboutus_agent extends CI_Controller {
		
		function mesaj()
		{
			$this->load->helper(array('form', 'url'));
			
			//$this->load->library('form_validation');
$this->load->view('becomeagent');
//			$this->fuel->pages->render('ssabout_agent');
			
			
			/*
$this->form_validation->set_rules('name', 'Nume', 'trim|required|max_length[255]|xss_clean');
			$this->form_validation->set_rules('email', 'Adres de email', 'trim|required|max_length[255]|valid_email|xss_clean');
			$this->form_validation->set_rules('subject', 'Subiect', 'required');
			$this->form_validation->set_rules('message', 'Mesaj', 'required|trim|min_length[8]|max_length[1024]|xss_clean');
			
*/
			/*
if ($this->form_validation->run() == FALSE)
			{
				$this->fuel->pages->render('aboutus/becomeagent');
			}
			else
			{
				$this->fuel->pages->render('aboutus/becomeagent');
				$email_info = array ('sender' => $this->input->post('email'),
					'receiver' => $this->fuel->sitevars->get()['from_email'],
					'subject' => $this->input->post('subject'),
					'body' => $this->input->post('message'),);
				send_email($email_info);
			}
*/
		}
	}
?>