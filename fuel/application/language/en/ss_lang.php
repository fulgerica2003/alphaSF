<?php
/*
|--------------------------------------------------------------------------
| etichete home
|--------------------------------------------------------------------------
|
*/
$lang['login_label'] = 'LOGIN';
$lang['login_hi'] = 'Hi, <a href = \'%s\'><span class="name-login">%s</span></a>!';
$lang['login_logout'] = 'LOGOUT';
$lang['login_text'] = 'Press to button for authentication.';

/*
|--------------------------------------------------------------------------
| etichete 404
|--------------------------------------------------------------------------
|
*/
$lang['404_heading'] = '404 Page Not Found.';
$lang['404_message'] = 'The page you requested was not found.';
$lang['404_title'] = '404 Error : Page Cannot Be Found';

/*
|--------------------------------------------------------------------------
| etichete servicii
|--------------------------------------------------------------------------
|
*/
$lang['services_title'] = 'Services';

// campuri text
$lang['calc_txt036'] = 'Transaction confirmation';
$lang['calc_txt037'] = 'Attention! Payment cancel will incur a 15 EURO charge from transferred amount, plus interbanking fees. Please confirm that youu agree with Smith & Smith Terms and Conditions.';
$lang['calc_txt038'] = 'Transfer de bani online';
$lang['calc_txt039'] = 'Transaction correction';
$lang['calc_txt040'] = 'Your transaction has been corected according to instructions sent via email or phone to Smith & Smith representative. Please confirm that youu agree with Smith & Smith Terms and Conditions.';
$lang['calc_txt041'] = 'Online money transfer';
$lang['calc_txt042'] = 'Transaction refund <span style="color:#b5251d"><span id = "modal_unid"></span></span>';
$lang['calc_txt043'] = 'Your transaction with reference <span style="color:#b5251d"><span id = "modal_unid"></span></span> will be refunded in the account used for payment initiation. The reimbursment fee is 15 euro and will be deducted from the available amount, plus interbanking fees. Please confirm that youu agree with Smith & Smith Terms and Conditions.';

$lang['calc_txt074'] = 'Online invoice payment';
$lang['calc_txt075'] = 'Transaction confirmation';
$lang['calc_txt076'] = 'Attention! Payment cancel will incur a <span style="color:#b5251d;">15 EURO</span> charge from transferred amount, plus interbanking fees. Please confirm that youu agree with Smith & Smith Terms and Conditions.';

// mesaje
$lang['calc_msg004'] = 'Your payment reference is %s. Within 2 business days since payment initiation, please transfer the amount to Smith & Smith account identified by IBAN / SWIFT / BANK so we can receive the amount in maximum 5 business days since payment initiation. After this time limit, if the amount is not received in Smith & Smith account, the payment is canceled.';
$lang['calc_msg005'] = 'The payment operation has been finalized. Transaction reference is %s. If you have chosen cash payment, as soon as available we will send you transaction code that you need to send to recipient.';
$lang['calc_msg006'] = 'There has been an error. Please contact the bank issuer of your card in order to check the transaction and/or ontact Inquiries, Complaints Smith & Smith department via phone +4.021.331.8000. Thank you for your understanding!';
$lang['calc_msg007'] = 'Sorry! Your payment with reference %s has not been successful. Please contact Inquiries, Complaints Smith & Smith department via phone +4.021.331.8000. Thank you for your understanding!';
$lang['calc_msg008'] = 'Sorry! Your payment with reference %s has not been successful. Please contact Inquiries, Complaints Smith & Smith department via phone +4.021.331.8000. Thank you for your understanding!';
$lang['calc_msg009'] = 'The ordered amount with reference %s has been received in Smith & Smith account. Transaction PIN is %s. Please send this PIN to  Mr./Mrs. %s.';
$lang['calc_msg010'] = 'Your transaction with reference %s has been received in Smith & Smith accounts, but the amount it is different from the amount in transaction. According to Smith & Smith Terms and Conditions the transaction will be payed to the recipient with the new amount. Thank you for understanding!';
$lang['calc_msg011'] = 'Sorry! Your payment with reference %s has not been successful. Please contact Inquiries, Complaints Smith & Smith department via phone +4.021.331.8000. Thank you for your understanding!';
$lang['calc_msg012'] = 'Sorry! Your payment with reference %s has not been successful. Please contact Inquiries, Complaints Smith & Smith department via phone +4.021.331.8000. Thank you for your understanding!';
$lang['calc_msg013'] = 'Congratulations! Payment operation has been successful!';
$lang['calc_msg014'] = 'The paid amount has been refunded in your account!';
$lang['calc_msgcancel'] = 'Payment operation with reference %s has been canceled!';
$lang['calc_msgpayrefund'] = 'Your amount will be refunded in the account used for transfer reference %s!';

// emailuri; sunt de forma _sb pt subiect si _cont pt continut
$lang['calc_eml002_sb'] = '%s : Smith & Smith transaction details';
$lang['calc_eml002_cont'] = 'Your payment reference is %s. Within 2 business days since payment initiation, please transfer the amount to Smith & Smith account identified by IBAN / SWIFT / BANK so we can receive the amount in maximum 5 business days since payment initiation. After this time limit, if the amount is not received in Smith & Smith account, the payment is canceled.';
$lang['calc_eml003_sb'] = '%s : Smith & Smith transaction details';
$lang['calc_eml003_cont'] = 'The payment operation has been finalized. Transaction reference is %s. If you have chosen cash payment, as soon as available we will send you transaction code that you need to send to recipient.';
$lang['calc_eml004_sb'] = '%s : Smith & Smith payment error.';
$lang['calc_eml004_cont'] = 'Your payment with reference %s has not been successful. Please contact Inquiries, Complaints Smith & Smith department via phone +4.021.331.8000. Thank you for your understanding!';
$lang['calc_eml005pin_sb'] = '%s : Smith & Smith transaction details';
$lang['calc_eml005pin_cont'] = 'The ordered amount with reference %s has been received in Smith & Smith account. Transaction PIN is %s. Please send this PIN to  Mr./Mrs. %s.';
$lang['calc_eml005_sb'] = '%s : Smith & Smith transaction details';
$lang['calc_eml005_cont'] = 'The ordered amount with reference %s has been received in Smith & Smith account and will be send to recipient account, Mr./Mrs. %s.';
$lang['calc_eml006_sb'] = '%s: Different amounts';
$lang['calc_eml006_cont'] = 'Your transaction with reference %s has been received in Smith & Smith accounts, but the amount it is different from the amount in transaction. According to Smith & Smith Terms and Conditions the transaction will be payed to the recipient with the new amount.';
$lang['calc_eml007_sb'] = '%s : Payment error.';
$lang['calc_eml007_cont'] = 'Sorry! Your payment with reference %s has not been successful. Please contact Inquiries, Complaints Smith & Smith department via phone +4.021.331.8000. Thank you for your understanding!';
$lang['calc_eml008_sb'] = '%s : Payment error';
$lang['calc_eml008_cont'] = 'Sorry! Your payment with reference %s has not been successful. Please contact Inquiries, Complaints Smith & Smith department via phone +4.021.331.8000. Thank you for your understanding!';
$lang['calc_eml009_sb'] = '%s : Success payment.';
$lang['calc_eml009_cont'] = 'Congratulations! Payment operation has been successful!';
$lang['calc_eml010_sb'] = '%s : Transaction refund.';
$lang['calc_eml010_cont'] = 'The paid amount has been refunded in your account!';
$lang['calc_emlcancel_sb'] = '%s : operation cancel.';
$lang['calc_emlcancel_cont'] = 'Payment operation with reference %s has been canceled!';

/*
|--------------------------------------------------------------------------
| etichete facturi
|--------------------------------------------------------------------------
|
*/

// mesaje
$lang['fact_msg013'] = 'Congratulations! Payment operation has been successful. Your payment reference is %s!';
$lang['fact_msg016'] = 'Your payment reference is %s. Within 2 business days since payment initiation, please transfer the amount to Smith & Smith account identified by IBAN / SWIFT / BANK so we can receive the amount in maximum 5 business days since payment initiation. After this time limit, if the amount is not received in Smith & Smith account, the payment is canceled.';
$lang['fact_msg017'] = 'Congratulations! Payment operation has been successful. Your payment reference is %s';
$lang['fact_msg018'] = 'Congratulations! Payment operation has been successful. Your payment reference is %s';
$lang['fact_msgcancel'] = 'Payment operation with reference %s has been canceled!';

// emailuri; sunt de forma _sb pt subiect si _cont pt continut
$lang['fact_eml009_sb'] = '%s : Success payment.';
$lang['fact_eml009_cont'] = 'Congratulations! Payment operation has been successful!';
$lang['fact_eml011_sb'] = '%s : Smith & Smith invoice payment initiation';
$lang['fact_eml011_cont'] = 'Your payment reference is %s. In 2 business days since payment initiation, please transfer the amount to Smith & Smith account identified by IBAN / SWIFT / BANK so we can receive the amount in maximum 5 business days since payment initiation. After this time limit, if the amount is not received in Smith & Smith account, the payment is canceled.';
$lang['fact_eml012_sb'] = '%s: Your invoice has been paid via Smith & Smith';
$lang['fact_eml012_cont'] = 'Congratulations! Payment operation has been successful. Your payment reference is %s';
$lang['fact_eml013_sb'] = '%s : Smith & Smith Transaction error';
$lang['fact_eml013_cont'] = 'Sorry! Your payment with reference %s has not been successful. Please contact Inquiries, Complaints Smith & Smith department via phone +4.021.331.8000. Thank you for your understanding!';
$lang['fact_eml014_sb'] = '%s: Your invoice has been paid via Smith & Smith';
$lang['fact_eml014_cont'] = 'Congratulations! Payment operation has been successful. Your payment reference is %s';
$lang['fact_emlcancel_sb'] = '%s : operation cancel.';
$lang['fact_emlcancel_cont'] = 'Payment operation with reference %s has been canceled!';

/*
|--------------------------------------------------------------------------
| etichete casete
|--------------------------------------------------------------------------
|
*/
$lang['caseta_details'] = 'Details';
$lang['caseta_fees'] = 'All fees';

$lang['caseta_find_more'] = 'Find out more';
$lang['caseta_read_more'] = 'Read more';

$lang['caseta_online_titlu'] = 'Money Transfer Online';
$lang['caseta_online_content'] = 'Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.';

$lang['caseta_acasa_titlu'] = 'Home (HD)';
$lang['caseta_acasa_content'] = 'Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.';

$lang['caseta_cash_titlu'] = 'Money Transfer Cash';
$lang['caseta_cash_content'] = 'Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.';

$lang['caseta_comisioane_titlu'] = 'Commissions Cash Romania - Abroad';
$lang['caseta_comisioane_content'] = 'Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.';
$lang['caseta_comisioane_short'] = 'Fee cash RO- strainatate';
$lang['caseta_comisioane_amount'] = 'Amount';
$lang['caseta_comisioane_fee'] = 'Fee';

$lang['caseta_retea_titlu'] = 'Our Network';
$lang['caseta_retea_content'] = 'Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.';

$lang['caseta_slider_news_titlu'] = 'News';

$lang['caseta_curs_valutar_titlu'] = 'Foreign Exchange';
$lang['caseta_curs_valutar_currency'] = 'Currency';
$lang['caseta_curs_valutar_quote'] = 'RON Quote';
$lang['caseta_curs_valutar_eur'] = 'Eur';
$lang['caseta_curs_valutar_usd'] = 'US Dollar';

$lang['caseta_promo_titlu'] = 'Discounts';
$lang['caseta_promo_msg'] = 'Discounts<br />message.';
$lang['caseta_promo_content'] = 'Lorem ipsum dolor sit amet';

$lang['caseta_reclama1_titlu'] = 'Commercial 1';
$lang['caseta_reclama1_content'] = 'Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.';

$lang['caseta_reclama2_titlu'] = 'Commercial 2';
$lang['caseta_reclama2_content'] = 'Lorem ipsum dolor sit amet, <span style="color:#ff0000;">money transfer</span>, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.';

/*
|--------------------------------------------------------------------------
| etichete stiri
|--------------------------------------------------------------------------
|
*/
$lang['news_title'] = 'News';
$lang['news_read'] = 'Read→';
$lang['news_older'] = 'Older';
$lang['news_newer'] = 'Newer';
$lang['news_details_back'] = 'Back';

/*
|--------------------------------------------------------------------------
| etichete faq
|--------------------------------------------------------------------------
|
*/
$lang['faq_title'] = 'Frequently asked questions';
$lang['faq_q'] = 'Q';
$lang['faq_a'] = 'A';

/*
|--------------------------------------------------------------------------
| etichete retea
|--------------------------------------------------------------------------
|
*/
$lang['network_title'] = 'Our network';
$lang['network_phone'] = 'P';
$lang['network_email'] = 'E';
$lang['network_address'] = 'A';
$lang['network_see_map'] = 'See map→';
$lang['network_bh'] = 'Business hours';
$lang['network_mon'] = 'Mon';
$lang['network_fri'] = 'Fri';
$lang['network_break'] = 'lunch time';
$lang['network_sat'] = 'Sat';
$lang['network_sun'] = 'Sun';

/*
|--------------------------------------------------------------------------
| etichete contact
|--------------------------------------------------------------------------
|
*/
$lang['contact_title'] = 'Contact';
$lang['contact_name'] = 'Name';
$lang['contact_email'] = 'E-mail';
$lang['contact_msg_type'] = 'Subject';
$lang['contact_msg_type_o1'] = 'General questions';
$lang['contact_msg_type_o2'] = 'Questions regarding money transfers';
$lang['contact_msg_type_o3'] = 'I am already an agent';
$lang['contact_msg_type_o4'] = 'I want to become agent';
$lang['contact_message'] = 'Message';
$lang['contact_send'] = 'Send';
$lang['contact_success'] = 'Your message was successfully submitted!';
$lang['contact_new'] = 'New message';
$lang['contact_required'] = 'This field is required';

/*
|--------------------------------------------------------------------------
| etichete formular agent
|--------------------------------------------------------------------------
|
*/
$lang['agent_nume'] = 'Name';
$lang['agent_prenume'] = 'First Name';
$lang['agent_email'] = 'E-mail';
$lang['agent_firma'] = 'Company';
$lang['agent_varsta'] = 'Age';
$lang['agent_telefon'] = 'Phone no';
$lang['agent_oras'] = 'City';
$lang['agent_required'] = 'This field is required';
$lang['agent_new'] = 'New request';
$lang['agent_send'] = 'Send';
$lang['agent_success'] = 'Your message was successfully submitted!';
$lang['agent_subject'] = 'Agent affiliation request';

/*
|--------------------------------------------------------------------------
| etichete footer
|--------------------------------------------------------------------------
|
*/
$lang['foo_menu1_title'] = 'Services';
$lang['foo_menu2_title'] = 'Online';
$lang['foo_menu3_title'] = 'Contact';
$lang['foo_menu4_title'] = 'About us';
$lang['foo_menu5_title'] = 'Keep in touch';
$lang['foo_cga'] = 'Business Terms & Conditions';
$lang['foo_anpc'] = 'NACP';
$lang['foo_data_protection'] = 'Data Protection';
$lang['foo_top'] = 'TOP';
$lang['foo_support_title'] = '24/7 Support';
$lang['foo_support_text'] = 'Don\'t hesitate to call us whenever you like. <br/>Phone number 004 021 335 88 00 and 004 0724 388 388 or email us at <a href="#">hello@smith.com.ro</a>';
$lang['foo_copyright'] = '©2014. Smith&Smith. All rights reserved.';

/*
|--------------------------------------------------------------------------
| etichete profile
|--------------------------------------------------------------------------
|
*/
$lang['profile_name_box'] = 'Your name';
$lang['profile_email_box'] = 'These information cannot be changed';
$lang['profile_password_box'] = 'Pay attention to password change';
$lang['profile_personal_box'] = 'Personale data';
$lang['profile_bank_box'] = 'Banking data';
$lang['profile_default_language_box'] = 'Default language used for messages and emails';

$lang['profile_last_name'] = 'Last name';
$lang['profile_first_name'] = 'First name';
$lang['profile_email'] = 'Email address';
$lang['profile_password'] = 'Password';
$lang['profile_password_confirm'] = 'Password confirm';
$lang['profile_phone'] = 'Phone number';
$lang['profile_birth_date'] = 'Birth date';
$lang['profile_country'] = 'Country';
$lang['profile_account'] = 'Bank account';
$lang['profile_swift'] = 'Bank SWIFT code';
$lang['profile_bank'] = 'Bank';
$lang['profile_default_language'] = 'Default language';

$lang['profile_save'] = 'SAVE';

/*
|--------------------------------------------------------------------------
| etichete online payments
|--------------------------------------------------------------------------
|
*/
$lang['payments_sidenote_trans'] = 'A friendly sidenote.<br />About the field on its right.';
$lang['payments_sidenote_cash'] = 'Choose one of our cash payments.';
$lang['payments_sidenote_exch'] = 'Foreign exchange info.';
$lang['payments_sidenote_iban'] = 'Please fill in recipient\'s IBAN.';
$lang['payments_sidenote_city'] = 'If the city is not available, please select another payment method.';
$lang['payments_sidenote_ben'] = 'Fill in recipeint\'s info.';

$lang['payments_pay'] = 'Transfer';
$lang['payments_card'] = 'Debit card';
$lang['payments_account'] = 'Banking account';

$lang['payments_amount'] = 'Amount';
$lang['payments_currency'] = 'Currency';
$lang['payments_payment_type'] = 'Receiver payment type';
$lang['payments_fee'] = 'Fee';
$lang['payments_total'] = 'Total';
$lang['payments_last_name'] = 'last name';
$lang['payments_first_name'] = 'first name';
$lang['payments_phone'] = 'phone';
$lang['payments_email'] = 'email';
$lang['payments_address'] = 'address';

$lang['payments_iban'] = 'iban';
$lang['payments_city'] = 'city';
$lang['payments_f_exch'] = 'foreign exchange';
$lang['payments_agree_exch'] = 'I agree with foreign exchange';
$lang['payments_exch_recipient'] = 'The recipient receives';

$lang['payments_pick'] = 'choose';

$lang['payments_cmd'] = 'SEND';

$lang['payments_thanks'] = 'Thank you!';
$lang['payments_thanks_cmd'] = 'NEW TRANSFER';

$lang['payments_summary_title'] = 'Summary';
$lang['payments_summary_value'] = 'Transfer value';
$lang['payments_summary_fee'] = 'Fee';
$lang['payments_summary_total'] = 'Total';

/*
|--------------------------------------------------------------------------
| etichete online invoices
|--------------------------------------------------------------------------
|
*/
$lang['invoices_sidenote_trans'] = 'Friendly sidenote.<br />About field to the right.';
$lang['invoices_sidenote_supplier_cat'] = 'Choose a supplier category.';
$lang['invoices_sidenote_supplier_info'] = 'Choose supplier and fill in info.';

$lang['invoices_pay'] = 'Online invoice payment';
$lang['invoices_card'] = 'Debit card';
$lang['invoices_account'] = 'Bank account';

$lang['invoices_amount'] = 'Billing amount';
$lang['invoices_providercat'] = 'Supplier category';
$lang['invoices_provider'] = 'Supplier';

$lang['invoices_fee'] = 'Fee';
$lang['invoices_total'] = 'Total';
$lang['invoices_last_name'] = 'nume';
$lang['invoices_first_name'] = 'prenume';
$lang['invoices_phone'] = 'telefon';
$lang['invoices_email'] = 'email';
$lang['invoices_address'] = 'adresa';

$lang['invoices_pick'] = 'choose';

$lang['invoices_cmd'] = 'PAY';

$lang['invoices_thanks'] = 'Thank you!';
$lang['invoices_thanks_cmd'] = 'NEW INVOICE';

$lang['invoices_summary_title'] = 'Summary';
$lang['invoices_summary_value'] = 'Invoices value';
$lang['invoices_summary_fee'] = 'Fee';
$lang['invoices_summary_total'] = 'Total';
$lang['invoices_summary_supplier'] = 'Supplier';
$lang['invoices_summary_supplier_name'] = 'Supplier name: ';

/*
|--------------------------------------------------------------------------
| etichete abonare
|--------------------------------------------------------------------------
|
*/
$lang['subscribe_title'] = 'Subscribe to our newsletter';
$lang['subscribe_exists'] = 'The provided e-mail is already subscribed.';
$lang['subscribe_success'] = 'Thank you!';

/*
|--------------------------------------------------------------------------
| etichete online_messages
|--------------------------------------------------------------------------
|
*/
$lang['om_title'] = 'Messages';
$lang['om_date'] = 'Date';
$lang['om_message'] = 'Message';
$lang['om_details'] = 'Details';
$lang['om_close_details'] = 'Close details';
$lang['om_print'] = 'Print';
$lang['om_message_box'] = 'Messages';

/*
|--------------------------------------------------------------------------
| etichete online_history_invoices
|--------------------------------------------------------------------------
|
*/
$lang['ohi_title'] = 'Invoices history';
$lang['ohi_amount'] = 'Amount';
$lang['ohi_date'] = 'Date';
$lang['ohi_supplier'] = 'Supplier';
$lang['ohi_details'] = 'Details';
$lang['ohi_close_details'] = 'Close details';
$lang['ohi_payment_type'] = 'Payment method';
$lang['ohi_currency'] = 'Currency';
$lang['ohi_payer'] = 'Payer';
$lang['ohi_supplier_details'] = 'Supplier details';
$lang['ohi_print'] = 'PRINT';
$lang['ohi_messages'] = 'MESSAGES';
$lang['ohi_recent_invoices'] = 'Recent invoices';

/*
|--------------------------------------------------------------------------
| etichete online_history_payments
|--------------------------------------------------------------------------
|
*/
$lang['ohp_title'] = 'Transfer history';
$lang['ohp_amount'] = 'Amount';
$lang['ohp_date'] = 'Date';
$lang['ohp_recipient'] = 'Recipient';
$lang['ohp_details'] = 'Details';
$lang['ohp_close_details'] = 'Close details';
$lang['ohp_payment_type'] = 'Payment method';
$lang['ohp_currency'] = 'Currency';
$lang['ohp_payment_method'] = 'Payed from';
$lang['ohp_currency_out'] = 'Recipient currency';
$lang['ohp_amount_cv'] = 'Foreign exchange';
$lang['ohp_payer'] = 'Payer';
$lang['ohp_print'] = 'PRINT';
$lang['ohp_messages'] = 'MESSAGES';
$lang['ohp_return'] = 'RETURN';
$lang['ohp_correction'] = 'CORRECTION';
$lang['ohp_recent_payments'] = 'Recent transfers';
$lang['ohp_status'] = 'Status';
// aceste status-uri tb sa fie corelate cu helpers/my_helper.php/status si get_status_label
$lang['ohp_status_init'] = 'Processing';
$lang['ohp_status_pay'] = 'Payment pending';
$lang['ohp_status_err'] = 'Payment error (final)';
$lang['ohp_status_wait'] = 'Correction or refund?';
$lang['ohp_status_corr'] = 'Corrected, processing';
$lang['ohp_status_ref'] = 'Refund pending';
$lang['ohp_status_rfd'] = 'Refunded (final)';
$lang['ohp_status_pyd'] = 'Payed (final)';
$lang['ohp_status_can'] = 'Cancelled (final)';

$lang['ohp_correction_values'] = 'New values: ';
$lang['ohp_correction_ben_name'] = 'Name changed: ';
$lang['ohp_correction_ben_surname'] = 'Surname changed: ';
$lang['ohp_correction_ben_phone'] = 'Phone changed: ';
$lang['ohp_correction_ben_email'] = 'Email changed: ';
$lang['ohp_correction_ben_iban'] = 'IBAN changed: ';
$lang['ohp_correction_ben_address'] = 'Address changeda: ';
$lang['ohp_correction_ben_city'] = 'City changed: ';

/*
|--------------------------------------------------------------------------
| etichete generale
|--------------------------------------------------------------------------
|
*/
$lang['general_close'] = 'Close';
$lang['general_agree'] = 'I agree with changes';
$lang['general_terms'] = 'I agree with Smith&Smith online <br /> <a style="color:#b5251d;" href="conditii-generale">terms and conditions</a>.';