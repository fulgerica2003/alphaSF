<?php
$CI->load->helper(array('form', 'url'));
if($CI->input->post('submit_contact') == 'send') {
  
  $CI->load->library('form_validation');
  
  $CI->form_validation->set_rules('name', lang('contact_name'), 'trim|required|max_length[255]|xss_clean');
  $CI->form_validation->set_rules('email', lang('contact_email'), 'trim|required|max_length[255]|valid_email|xss_clean');
  $CI->form_validation->set_rules('subject', lang('contact_subject'), 'required');
  $CI->form_validation->set_rules('message', lang('contact_message'), 'required|trim|min_length[8]|max_length[1024]|xss_clean');
  
  if ($CI->form_validation->run() == FALSE){
    echo $CI->fuel->blocks->render('_contact-form');
  } else{
    $email_info = array ('sender' => $CI->input->post('email'),
      'receiver' => $CI->fuel->sitevars->get()['from_email'],
      'subject' => $CI->input->post('subject'),
      'body' => $CI->input->post('message'));
    send_email($email_info);
    echo $CI->fuel->blocks->render('_contact-success');
  }
} else {
  echo $CI->fuel->blocks->render('_contact-form');
}