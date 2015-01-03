<?php
$CI =& get_instance();
$CI->load->model('ss_payment_methods_model');

$vars['benOpts'] = $CI->ss_payment_methods_model->options_list();

?>