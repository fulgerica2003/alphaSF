<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Controller extends CI_Controller{
		function funcion()
		{
			$data["my_data"] = array('0' => array('value' => $this->input->post('name1'), 'name' => 'name1'), '1' => array('value' => $this->input->post('name2'), 'name' => 'name2'));
			$this->load->view('json/json_example_view',$data);
		}
	}	