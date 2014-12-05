<?php
$CI->load->helper(array('form', 'url'));
if($CI->input->post('submit_agentrequest') == 'send') {
  
  $CI->load->library('form_validation');
  
  	$CI->form_validation->set_rules('name', lang('agent_nume'), 'trim|required|max_length[50]|xss_clean');
  	$CI->form_validation->set_rules('firstname', lang('agent_prenume'), 'trim|required|max_length[50]|xss_clean');
  	$CI->form_validation->set_rules('city', lang('agent_oras'), 'trim|required|max_length[50]|xss_clean');
  	$CI->form_validation->set_rules('phone', lang('agent_telefon'), 'trim|required|max_length[15]|xss_clean');
  	$CI->form_validation->set_rules('age', lang('agent_varsta'), 'trim|required|max_length[3]|is_natural|xss_clean');
  	$CI->form_validation->set_rules('org', lang('agent_firma'), 'trim|required|max_length[100]|xss_clean');
  	$CI->form_validation->set_rules('email', lang('agent_email'), 'trim|required|max_length[255]|valid_email|xss_clean');
    
    
  $msg_body =	' Nume: '		. $CI->input->post('name') . ' '.
			  	' Prenume: '	. $CI->input->post('firstname'). ' '.
			  	' Oras: '		. $CI->input->post('city'). ' '.
			  	' Telefon: '	. $CI->input->post('phone'). ' '.
			  	' Varsta: '		. $CI->input->post('age'). ' '.
			  	' Firma: ' 		. $CI->input->post('org'). ' '.
			  	' Email: '		. $CI->input->post('email');
			  			  	
    
  if ($CI->form_validation->run() == FALSE){
    echo $CI->fuel->blocks->render('_agent-form');
  } else{
    $email_info = array ('sender' => $CI->input->post('email'),
      					 'receiver' => $CI->fuel->sitevars->get()['from_email'],
	  					 'subject' => 'Become agent request',
	  					 'body' => $msg_body);
	  					 send_email($email_info);
	  					 echo $CI->fuel->blocks->render('_agent-success');
  }
} else {
  echo $CI->fuel->blocks->render('_agent-form');
}
?>