<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Backend extends CI_Controller
	{
		public $main_form;
		
		private $user_email = 'a@b.c';
		private $user_id = '8';
		
		function __construct(){
			parent::__construct();
			$this->load->model('ss_payments_model');
			$this->load->model('ss_invoices_model');
			$this->load->model('ss_messages_model');
			$this->load->model('ss_fees_model');
			$this->load->library('form_validation');
			$this->load->library('session');
		}
		
		public function invoice(){
			/*parametri form */
			$this->load->library('form_builder', array(
            'id'=>'addPayment',
            'form_attrs' => array(
			'method' => 'post',
			'action' => '',
            ),
            'textarea_rows' => '5',
            'textarea_cols' => '28',
			));
			
			$this->main_form['fields']['unid'] = array('type' => 'text', 'label' => 'unid', 'value'=> '' );
			$this->main_form['fields']['status'] = array('type' => 'select', 'label' => 'status', 'options' => status_backend_test(), 'value'=> '' );
			
			$this->form_builder->set_fields($this->main_form['fields']);
			
			$this->form_builder->submit_value = '<button name="update" type="submit" value="update">update</button>';
			
			echo $this->form_builder->render($this->main_form['fields']);
			
			$status = $this->input->post('status');
			$unid = $this->input->post('unid');
			
			$values = array('status' => $status);
			
			$where['unid'] = $unid;
			
			$this->ss_invoices_model->update($values, $where);
			
			if ($status == get_status('err')){
				
				$results = $this->ss_invoices_model->invoice_by_unid($unid)->result();
				if ((count($results)) >= 1 ){
					$invoice = $results[0];
					$user_id = $invoice->inv_id_user;
					$id = $invoice->inv_id;
					$email = $invoice->u_email;
				}
				
				// salvez mesaj eroare
				$message['unid'] = $unid;
				$message['id_user'] = $user_id;
				$message['id_tx'] = $id;
				$message['tx_type'] = get_tx_type('inv');
				$message['message'] = 'invoice '.$message['unid']. ' err';
				$this->ss_messages_model->insert($message);
				
				// trimit email
				send_tx_email(array('unid' => $message['unid'],
					// TODO $this->lang->line incarca in acest moment din language/english					
					'receiver' => $email,
					'sender' => $this->fuel->sitevars->get()['from_email'],
					// TODO $this->lang->line incarca in acest moment din language/english
					'subject' => $this->lang->line('fact_eml011_sb'),
					'message' => $this->lang->line('fact_eml011_cont'),
				));
			}
			
		}
		
		public function fee(){
			$results = $this->ss_fees_model->compute_fee(425, 0, 0, 1, 1, 1);
			echo $results[0]->comision;
		}
		
		
	}	