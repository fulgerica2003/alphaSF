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

// datele de configurare LibraPay pentru site-ul comerciantului
$config = array();
/*
$config['merch_name']		= 'SC SMITH &SMITH SRL';
$config['merch_url']		= 'http://www.smith.com.ro';
$config['email']			= 'stela.dimofte@smith-smith.ro';
$config['key']				= 'cd75289065d00bd3558c187ba2242645';
$config['merchant']			= '000000088001307';
$config['terminal']			= '88001307';
*/
$config['merch_name']		= 'SC SMITH &SMITH SRL';
$config['merch_url']		= 'http://eur.smith.com.ro';
$config['email']			= 'stela.dimofte@smith-smith.ro';
$config['key']				= '3ad09957e18a3ac8658303122490e17a';
$config['merchant']			= '000000088001351';
$config['terminal']			= '88001351';
// backref se modifica in controllers/pay/load_config - se adauga limba intre domeniu si controller ca sa stiu ce limba sa afisez cand ma intorc de la plata
$config['backref']			= 'http://<domeniu>/pay/card_response';

// ---------- TEST INTERFACE ----- cele doua randuri de mai jos se comenteaza la trecerea in live
$config['postAction']		= 'https://merchant.librapay.ro/pay_auth.php'; 		
//$config['trimite']			= '<input type="submit" name="trimite" value="Trimite" />';

// ---------- LIVE INTERFACE ----- cele doua randuri de mai jos se decomenteaza la trecerea in live
//$config['postAction']		= 'https://secure.librapay.ro/pay'; 
$config['trimite']		= '<script type="text/javascript">document.getElementById("PaymentForm").submit();</script>';
