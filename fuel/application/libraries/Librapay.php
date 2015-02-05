<?php
	/**
		* LIBRAPAY
		*
		* @Libra Bank SA - 2013
		* librapay@librabank.ro
		*
		* handler procesare plati online 3DSecure
		*
	**/
	
	class Librapay {	
		var $amount 	= "0.00"; 	// Suma totala a comenzii in RON 
		// FORMAT OBLIGATORIU: exact doua zecimale separate prin punct (.), fara separator de mii
		// EXEMPLE: "23.50", "1200.00"
		
		var $currency 	= "RON"; 	// Valuta comenzii
		// FORMAT OBLIGATORIU: "RON"
		
		var $order		= ""; 		// Order_id unic, 
		// FORMAT OBLIGATORIU: minim 6, maxim 18 caractere numerice, prima cifra diferita de "0"
		// EXEMPLE: "100500", "815023361232167984"
		
		var $desc 		= "";		// Descrierea comenzii; valoarea apare in dreptul comenzii din internetbanking -> LibraPay pentru identificare
		// FORMAT OBLIGATORIU: String (1-50)
		// EXEMPLE: "Comanda online #100500"
		
		var $merch_name = ""; 		// Valoare preluata din config.librapay.php; valoarea nu trebuie schimbata
		var $merch_url 	= ""; 		// Valoare preluata din config.librapay.php; valoarea nu trebuie schimbata
		var $email 		= "";   	// Valoare preluata din config.librapay.php; valoarea nu trebuie schimbata
		var $key 		= ""; 		// Valoare preluata din config.librapay.php; valoarea nu trebuie schimbata
		var $merchant 	= ""; 		// Valoare preluata din config.librapay.php; valoarea nu trebuie schimbata
		var $terminal 	= ""; 		// Valoare preluata din config.librapay.php; valoarea nu trebuie schimbata
		var $backref 	= "";		// Valoare preluata din config.librapay.php; valoarea nu trebuie schimbata
		var $postAction = "";		// Valoare preluata din config.librapay.php; valoarea nu trebuie schimbata
		var $trimite 	= '';		// Valoare preluata din config.librapay.php; valoarea nu trebuie schimbata
		
		var $trtype 	= 0;		// Valoarea nu trebuie schimbata 
		var $country 	= "-";		// Valoarea nu trebuie schimbata
		var $merch_gmt 	= "-";		// Valoarea nu trebuie schimbata
		
		var $hex_key 	= ""; 		// Valoare ce urmeaza a fi calculata
		var $psign 		= ""; 		// Valoare ce urmeaza a fi calculata
		var $string 	= ""; 		// Valoare ce urmeaza a fi calculata
		var $form 		= "";	 	// Valoare ce urmeaza a fi calculata
		
		
		
		
		var $userId 	= -1;
		var $dataProducts = array(); // Produsele din comanda; valoare ce urmeaza a fi calculata
		
		function Librapay($config = array()){
			$member_vars = array('merch_name', 'merch_url', 'email', 'key', 'merchant', 'terminal','backref','postAction','trimite');
			foreach($config as $k => $v){
				if(in_array($k, $member_vars)) $this->{$k} = $v;
			}
		}
		
		function getString($type="preAuthPost"){
			switch ($type){
				case 'preAuthPost':
				$this->string = strlen($this->amount).$this->amount .
				strlen($this->currency).$this->currency . strlen($this->order).$this->order .
				strlen($this->desc).$this->desc . strlen($this->merch_name).$this->merch_name .
				strlen($this->merch_url).$this->merch_url . strlen($this->merchant).$this->merchant .
				strlen($this->terminal).$this->terminal . strlen($this->email).$this->email .
				strlen($this->trtype).$this->trtype . $this->country .
				$this->merch_gmt . strlen($this->timestamp).$this->timestamp .
				strlen($this->nonce).$this->nonce . strlen($this->backref).$this->backref;
				break;
				case 'preAuthResponse':
				if(trim($this->approval) == '') {
					$txt_approval = "-";
					} else {
					$txt_approval = strlen($this->approval).$this->approval;
				}
				if(trim($this->rrn) == '') {
					$txt_rrn = "-";
					} else {
					$txt_rrn = strlen($this->rrn).$this->rrn;
				}
				if(trim($this->int_ref) == '') {
					$txt_int_ref = "-";
					} else {
					$txt_int_ref = strlen($this->int_ref).$this->int_ref;
				}
				$this->string = strlen($this->terminal).$this->terminal .
				strlen($this->trtype).$this->trtype . strlen($this->order).$this->order .
				strlen($this->amount).$this->amount .strlen($this->currency).$this->currency .
				strlen($this->desc).$this->desc .strlen($this->action).$this->action .
				strlen($this->rc).$this->rc .strlen($this->message).$this->message .
				$txt_rrn .$txt_int_ref .
				$txt_approval .
				strlen($this->timestamp).$this->timestamp .
				strlen($this->nonce).$this->nonce; 
				break;			
			}
		}
		
		function getHexKey() {		
			$this->hex_key = pack('H*', $this->key);		
		}
		
		function getPsign() {		
			$this->psign = strtoupper(hash_hmac('sha1', $this->string, $this->hex_key));
		}
		
		function updateVars() {
			$this->timestamp = gmdate("YmdHis");
			$this->nonce 	 = md5("shopperkey_".rand(99999,9999999));
			$this->getString();
			$this->getHexKey();
			$this->getPsign();		
		}
		
		function generateForm($type="pay_auth") {
			switch ($type){
				case "pay_auth":
				$this->updateVars();
				$this->form = '
				<form id="PaymentForm" name="PaymentForm" method="post" action="'. $this->postAction .'">
				<input type="hidden" name="AMOUNT" value="'. $this->amount .'" />
				<input type="hidden" name="CURRENCY" value="'. $this->currency .'" />
				<input type="hidden" name="ORDER" value="'. $this->order .'" />
				<input type="hidden" name="DESC" value="'. $this->desc .'" />
				<input type="hidden" name="TERMINAL" value="'. $this->terminal .'" />
				<input type="hidden" name="TIMESTAMP" value="'. $this->timestamp .'" />
				<input type="hidden" name="NONCE" value="'. $this->nonce .'" />
				<input type="hidden" name="BACKREF" value="'. $this->backref .'" />		
				<input type="hidden" name="DATA_CUSTOM" value="'. $this->dataProducts .'" />	
				<input type="hidden" name="STRING" value="'. $this->string .'" />		
				<input type="hidden" name="P_SIGN" value="'. $this->psign .'" />
				'. $this->trimite .'
				</form>		
				';				
				break;
			}
		}
	}
?>