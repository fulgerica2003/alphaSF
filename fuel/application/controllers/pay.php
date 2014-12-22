<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Pay extends CI_Controller
	{
		
		private $lpy_config;
		
		private $status_init = 1;
		private $status_succ = 2;
		private $status_fail = 3;
		private $status_psig = 4;
		
		function __construct(){
			parent::__construct();
			$this->load->library('librapay');
			$this->load->config('librapay', TRUE);
			
			$this->load->library('ion_auth');
			
			$this->load->database();
			$this->load->model('ss_pay_orders_model');
			$this->load->model('ss_messages_model');
			
			$this->lpy_config = $this->load_config();
			
			$this->lang->load('ss');
			$this->load->helper('language');
			
		}
		
		function card(){
			
			// colectez datele de pe post
			$pay_details = array();
			$pay_details['amount'] 		= "100.00"; //$_POST['amount'];
			$pay_details['currency'] 	= 'RON'; //$_POST['currency'];
			$pay_details['unid']		= '#S546e6ef3bf544'; //$_POST['unid'];
			$pay_details['unid_type'] = substr($pay_details['unid'], 1, 1);
			$user_id	= 8; //$_POST['user_id'];
			
			// iau informatiile despre utilizator ca sa le trimite la Libra
			$user = $this->ion_auth->user($user_id)->row();
			echo $user->last_name . ' ' . $user->first_name;
			
			// salvez informatiile despre plata in db
			$order_id = $this->insert_order($pay_details);
			echo $order_id;
			
			// calculez data_custom
			$data_custom = array(
			"ProductsData" => array(
			0 => array(
			"ItemName" 	=> $pay_details['unid_type'] == 'S' ? 'Plata ' : 'Factura', 			// varchar(255)		- OBLIGATORIU - aceasta valoare apare in mail-ul de confirmare receptie/incasare/anulare
			"Quantity" 	=> "1", 				// int				- OBLIGATORIU
			"Price"	   	=> $pay_details['amount'], 				// money			- OBLIGATORIU
			"ProductId" => $pay_details['unid'] 			// varchar(19)
			),
			),
			"UserData" => array(
			
			// Date de Client
			
			"Email"     	=> $user->email, 		// varchar(50)		- OBLIGATORIU
			"Name"	    	=> $user->last_name . ' ' . $user->first_name, 				// varchar(255)		- OBLIGATORIU
			"Phone"			=> $user->phone, 				// varchar(50)		- OBLIGATORIU	
			
			// Date de Facturare
			
			"BillingName"		=> $user->last_name . ' ' . $user->first_name, 				// varchar(100) - ->Denumire companie pentru PJ, Nume pentru PF		- OBLIGATORIU
			"BillingEmail"		=> $user->email, 	// varchar(100)			- OBLIGATORIU
			"BillingPhone"		=> $user->phone, 				// varchar(50)			- OBLIGATORIU
			"BillingCity"		=> $user->country, 					// varchar(50)			- OBLIGATORIU
			"BillingCountry"	=> $user->country 					// varchar(50)			- OBLIGATORIU
			
			)
			);
			
			// populez obiectul librapay
			
			$librapay = new Librapay($this->lpy_config);
			
			$librapay->amount = $pay_details['amount'];					// suma totala a tranzactiei
			$librapay->order  = $order_id; 				// ID-ul comenzii 
			$librapay->desc   = $pay_details['unid'];// aceasta valoarea apare in dreptul comenzii din internetbanking -> LibraPay pentru identificare
			
			$librapay->dataProducts = base64_encode(serialize($data_custom));
			$librapay->generateForm();
			
			// actualizez psign in db
			echo $librapay->psign;
			$this->ss_pay_orders_model->update(array('p_sign' => $librapay->psign), array('id' => $order_id));
			
			echo $librapay->string; // de scos pe LIVE
			echo '<hr>';
			echo $librapay->form;
		}
		
		function card_response(){			
			$data = $_GET;
			
			$status = $this->process_response($data);
			
			echo $this->process_status($data, $status, false);
		}
		
		function card_ipn_response(){		
			$data = $_POST;
			
			$status = $this->process_response($data);
			
			echo $this->process_status($data, $status, true);
		}
		
		private function process_status($data, $status, $ipn){
			if($status === $this->status_succ){
				log_ref(
					$data['DESC'],
					sprintf($this->lang->line('calc_msg005'), $data['DESC']),
					array(
						'sb' => sprintf($this->lang->line('calc_eml003_sb'), $data['DESC']),
						'cont' => sprintf($this->lang->line('calc_eml003_cont'), $data['DESC']),
						)
				);
				return $ipn == true ? '1' : 'ok';
			}else{
				log_ref(
					$data['DESC'],
					sprintf($this->lang->line('calc_msg006'), $data['DESC']),
					null
				);
				return 'not ok';
			}
		}
		
		private function process_response($data){
			$librapay = new Librapay($this->lpy_config);
		
			$librapay->terminal 	= $data["TERMINAL"];
			$librapay->trtype 		= $data["TRTYPE"];
			$librapay->order 		= $data["ORDER"];
			$librapay->amount 		= $data["AMOUNT"];
			$librapay->currency 	= $data["CURRENCY"];
			$librapay->desc 		= $data["DESC"];
			$librapay->action 		= $data["ACTION"];
			$librapay->rc 			= $data["RC"];
			$librapay->message 		= $data["MESSAGE"];
			$librapay->rrn 			= $data["RRN"];
			$librapay->int_ref 		= $data["INT_REF"];
			$librapay->approval 	= $data["APPROVAL"];
			$librapay->timestamp 	= $data["TIMESTAMP"];
			$librapay->nonce 		= $data["NONCE"];
			
			
			$librapay->getString("preAuthResponse");
			$librapay->getHexKey();
			$librapay->getPsign();

			$pay_details['id'] 				= $data["ORDER"];
			$pay_details['resp_action'] 	= $data["ACTION"];
			$pay_details['resp_rc'] 		= $data["RC"];
			$pay_details['resp_message'] 	= $data["MESSAGE"];
			$pay_details['resp_ts'] 		= $data["TIMESTAMP"];
			
			// Validare psign
			if($data["P_SIGN"] != $librapay->psign) {
				// Mesajul nu este autorizat
				// die("Zona interzisa!");
				$pay_details['status'] 			= $this->status_psig;
				} else {
				// se actualizeaza statusul comenzii in functie de raspunsul LibraPay conform explicatiilor de mai jos
				if ($data["ACTION"] === "0" && $data["RC"] === "00"){
					$pay_details['status'] 			= $this->status_succ;
					}else{
					$pay_details['status'] 			= $this->status_fail;
				}
			}
			
			$this->update_order($pay_details);
			
			return $pay_details['status'];
			
			/*
				
				Campurile/flag-urile din mesajul de raspuns care stabilesc felul in care trebuie tratata tranzatia sunt:
				Campul "ACTION" String(1)
				•	0 - tranzactie aprobata
				•	1 - tranzactie duplicata
				•	2 - tranzatie respinsa
				•	3 - eroare de procesare
				Campul "RC" String(2) Valoare generata de banca emitenta conform standardului ISO8583. Puteti descarca o lista cu coduri posibile aici. (https://www.activare3dsecure.ro/teste3d/error.txt)
				•	00 - tranzactie aprobata
				•	orice alt cod - tranzactie respinsa
				Campul "MESSAGE" String(1-50) Descrierea codului de eroare din campul RC
				•	Approved - pentru RC=00
				•	Transaction declined/Authentication failed/etc pentru erorile aparute.
				
				Asadar comanda este considerata "platita" atunci cand campul "ACTION"="0" sau cand "RC"="00". Orice alte valori reprezinta erori. 
				Dupa preluarea raspunsului LibraPay, clientul trebuie informat cu privire la starea comenzii (finalizata cu succes sau nefinalizata).
			*/
		}
		
		private function insert_order($pay_details){
			
			$pay_details['pay_type'] = 'card';
			$pay_details['status'] = $this->status_init;
			
			$this->db->trans_start();
			$this->db->insert('ss_pay_orders', $pay_details);
			$insert_id = $this->db->insert_id();
			$this->db->trans_complete();
			return  $insert_id;
		}
		
		private function update_order($pay_details){
			$this->db->where('id', $pay_details['id']);
			$this->db->update('ss_pay_orders', $pay_details); 
		}
		
		private function load_config(){
			$member_vars = array('merch_name', 'merch_url', 'email', 'key', 'merchant', 'terminal','backref','postAction','trimite');
			$output = array();
			foreach ($member_vars as $key){
				$output[$key] = $this->config->item($key, 'librapay');
			}
			return $output;
		}
	}												