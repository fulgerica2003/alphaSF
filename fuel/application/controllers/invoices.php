<?php
	class Invoices extends CI_Controller
	{
		function __construct()
		{
			parent::__construct();
		}
		
		public function add()
		{	
			echo jquery('1.11.1');
			$this->load->library('form_builder', array(
            'id'=>'addInvoice',
            'form_attrs' => array(
			'method' => 'post',
			'action' => 'pay'
            ),
            'submit_value' => 'Plateste',
            'textarea_rows' => '5',
            'textarea_cols' => '28'
			));
			
			$options = array('card' => 'Card', 'cont' => 'Cont');
			$fields['payment_type'] = array('type' => 'select', 'options' => $options, 'label' => 'Plateste');
			
			$fields['currency'] = array('type' => 'currency', 'decimal' => '.', 'currency' => '', 'max' => 99999.99, 'label' => 'RON',);
			
			$fields['supplier_category'] = array('label' => 'Categorie furnizor', 'type' => 'select',  'model' => 'ss_suppliers_cat', 'js' => '<script>
			$(function(){
				$("#supplier_category").change(function(e){
					$.get("'.site_url('invoices/suppliers_by_cat').'/"+$(this).val(), function(data){
						$("#supplier").empty().append(data);
					})
				})
			})
			</script>', 'first_option' => 'Selecteaza...');
			$fields['supplier'] = array('label' => 'Furnizor', 'type' => 'select',);
			$fields['fee'] = array('label' => 'Comision de plata', 'value' => 100, 'displayonly' => TRUE,);
			
			$fields['total'] = array('label' => 'Total de plata', 'value' => 500, 'displayonly' => TRUE,);
			
			$this->form_builder->set_fields($fields);
			
			echo $this->form_builder->render();
			
		}
		
		public function pay(){
			
			$unid = uniqid('#F');
			
			$this->load->model('ss_invoices_model');
			
			$invoice = $this->ss_invoices_model->create();
			$invoice->id_tx = $unid;
			$invoice->id_user = '8';
			$invoice->id_payment_type = $this->input->post('payment_type');
			$invoice->amount = $this->input->post('currency');
			$invoice->currency = 'RON';
			$invoice->id_supplier_cat = $this->input->post('supplier_category');
			$invoice->id_supplier = $this->input->post('supplier');
			$invoice->fee = $this->input->post('fee');
			$invoice->total = $this->input->post('total');
			
			$invoice->save();
			
			echo 'invoice '.$unid. ' successfully added';
		}
		
		public function suppliers_by_cat()
		{
			$cat = intval(uri_segment(3));
			$this->load->model('ss_suppliers_model');
			$options = $this->ss_suppliers_model->options_list(NULL, NULL, array('id_cat' => $cat));
			$str = '';
			foreach($options as $key => $val)
			{
				$str .= '<option value="'.$key.'" label="'.$val.'">'.$val.'</option>\n';
			}
			echo $str;
		}
		
	}					