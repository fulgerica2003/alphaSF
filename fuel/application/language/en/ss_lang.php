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

/*
|--------------------------------------------------------------------------
| etichete servicii
|--------------------------------------------------------------------------
|
*/
$lang['services_title'] = 'Services';

/*
|--------------------------------------------------------------------------
| etichete login; a se vedea documentul de specificatii
| pentru maparea campurilo
| TODO de standardizat placeholdere: de ex, ref tx, nume, prenume, link etc
|--------------------------------------------------------------------------
|
*/
// mesaje
$lang['lgn_msg001'] = 'Accesati contul dumneavoastra de email si
validati contul creat pe platforma Smith & Smith.';
$lang['lgn_msg002'] = 'Felicitari! Ati creat un cont pe platforma Smith
& Smith.';

// emailuri; ; sunt de forma _sb pt subiect si _cont pt continut
$lang['lgn_eml001_sb'] = 'Validare cont Smith & Smith';
$lang['lgn_eml001_cont'] = 'Va rugam acesati {linkul} pentru a valida contul
creatpe platforma Smith & Smith';

/*
|--------------------------------------------------------------------------
| etichete calculator; a se vedea documentul de specificatii
| pentru maparea campurilor
| TODO de standardizat placeholdere: de ex, ref tx, nume, prenume etc
|--------------------------------------------------------------------------
|
*/






// campuri text
$lang['calc_txt001'] = 'Transfer de bani online';
$lang['calc_txt002'] = 'Transfera';
$lang['calc_txt003'] = 'Suma transferata';
$lang['calc_txt004'] = 'Modalitate de plata la beneficiar';
$lang['calc_txt005'] = '';
$lang['calc_txt006'] = '';
$lang['calc_txt007'] = '';
$lang['calc_txt008'] = '';
$lang['calc_txt009'] = '';
$lang['calc_txt010'] = '';
$lang['calc_txt011'] = '';
$lang['calc_txt012'] = 'Comision de transfer';
$lang['calc_txt013'] = '';
$lang['calc_txt014'] = '';
$lang['calc_txt015'] = 'Total de transferat';
$lang['calc_txt016'] = '';
$lang['calc_txt017'] = '';
$lang['calc_txt018'] = 'Localitati disponibile';
$lang['calc_txt019'] = 'In cazul in care localitatea cautata nu este disponibila la
plata va rugam sa selectati alta modalitate de plata';
$lang['calc_txt020'] = 'Puteti efectua un schimb valutar la cursul';
$lang['calc_txt021'] = '';
$lang['calc_txt022'] = 'Beneficiarul primeste';
$lang['calc_txt023'] = '';
$lang['calc_txt024'] = 'RON';
$lang['calc_txt025'] = 'De acord cu schimbul valutar';
$lang['calc_txt026'] = 'Beneficiarul primeste';
$lang['calc_txt027'] = '';
$lang['calc_txt028'] = 'RON la curs';
$lang['calc_txt029'] = 'Beneficiar';
$lang['calc_txt030'] = 'Nume';
$lang['calc_txt031'] = 'Prenume';
$lang['calc_txt032'] = 'Telefon';
$lang['calc_txt033'] = 'Email';
$lang['calc_txt034'] = 'IBAN';
$lang['calc_txt035'] = 'Transfer de bani online';
$lang['calc_txt036'] = 'Confirmare tranzactie';
$lang['calc_txt037'] = 'Atentie! Anularea ulterioara a tranzactiei de catre dumneavoastra
presupune deducerea din suma transferata a comisionului de rambursare in valoare de 15 euro
la care se adauga comisioanele interbancare. Va rugam sa confirmati ca sunteti de acord
cu termenii si conditiile platformei de plati online Smith&Smith.';
$lang['calc_txt038'] = 'Transfer de bani online';
$lang['calc_txt039'] = 'Corectie tranzactie';
$lang['calc_txt040'] = 'Tranzactia dumneavoastra a fost corectata conform instructiunilor
pe care le-ati transmis pe email sau la telefon reprezentantului Smith & Smith.
Va rugam sa confirmati modificarile si faptul ca sunteti de acord
cu termenii si conditiile platformei de plati online Smith&Smith.';
$lang['calc_txt041'] = 'Transfer de bani online';
$lang['calc_txt042'] = 'Retur tranzactie %s';
$lang['calc_txt043'] = 'Tranzactia dumneavoastra cu referinta %s urmeaza sa fie returnata
in contul din care operatiunea a fost initiata de dumneavoastra. Comisionul de rambursare este de 15 euro
si se deduce din suma disponibila la care se adauga comisioanele interbancare ce pot interveni.
Va rugam sa confirmati ca sunteti de acord cu termenii si conditiile platformei de plati online Smith&Smith.';

// butoane
$lang['calc_btn004'] = 'de pe card';
$lang['calc_btn005'] = 'din cont bancar';
$lang['calc_btn006'] = 'TRANSFERA';
$lang['calc_btn007'] = 'ACCEPT';
$lang['calc_btn008'] = 'ACCEPT';
$lang['calc_btn009'] = 'ACCEPT';

// campuri select
$lang['calc_slct031'] = 'EUR';
$lang['calc_slct032'] = 'RON';

// mesaje eroare
$lang['calc_err_msg003'] = 'Toate campurile marcate cu rosu sunt obligatorii, va rugam
sa rectificati/completati toate datele solicitate inainte de finalizare.';
$lang['calc_err_msg006'] = 'A intervenit o eroare. Va rugam sa contactati banca
la care detineti cardul pentru verificari si/sau sa contactati serviciul
Sesizari, Reclamatii Smith & Smith la telefon +4.021.331.8000 pentru clarificarea situatiei.
Va multumin pentru intelegere!';
$lang['calc_err_msg007'] = 'Tranzactia dumneavoastra cu referinta %s
nu a fost finalizata cu succes. Va rugam sa contactati serviciul
Sesizari, Reclamatii Smith & Smith la telefon +4.021.331.8000 pentru clarificarea situatiei.
Va multumin pentru intelegere!';

// mesaje
$lang['calc_msg004'] = 'Referinta tranzactiei dumneavoastra este %s. Va rugam ca
in maxim 2 zile lucratoare de la initierea tranzactiei sa transferati suma ordonata catre contul
Smith & Smith identificat prin cod IBAN / SWIFT / Banca, astfel incat suma orodonata sa fie
receptionata in contul Smith & Smith in decurs de 5 zile lucratoare de la initierea tranzactiei.
Dupa expirarea acestui termen, in cazul in care suma nu este receptionata in contul Smith &
Smith, tranzactia se considera anulata.';
$lang['calc_msg005'] = 'Operatiunea de plata a fost finalizata cu succes. Referinta tranzactiei
- dumneavoastra este %s. In cazul in care ati ales plata numerar, va vom
comunica in cel mai scurt timp posibil codul tranzactiei pentru a fi comunicat de
dumneavoastra beneficiarului.';
$lang['calc_msg006'] = '';
$lang['calc_msg007'] = '';
$lang['calc_msg008'] = 'Tranzactia dumneavoastra cu referinta %s nu a fost
finalizata cu succes. Va rugam sa contactati serviciul Sesizari, Reclamatii Smith & Smith la
telefon +4.021.331.8000 pentru clarificarea situatiei.';
$lang['calc_msg009'] = 'Suma orodonata de dumneavoastra cu referinta %s a fost
receptionata in contul Smith & Smith. PIN-ul tranzactiei dumneavoastra este [PIN]. Va rugam
comunicati PIN-ul tranzactiei beneficiarului, Dl./D-na. %s.';
$lang['calc_msg009'] = 'Tranzactia dumneavoastra cu referinta %s a fost
receptionata in contul Smith & Smith, dar suma receptionata este diferita de suma ordonata de
dumneavoastra. Conform termenelor de utilizare ele platformei online Smith & Smith
tranzactia se finalizeaza cu noua suma pe care ati ordonat-o catre destinatar in conformitate cu
termenii si conditiile de utilizare a platformei de plati online Smith & Smith. Va multumim
pentru intelegere!';
$lang['calc_msg010'] = 'Tranzactia dumneavoastra cu referinta %s a fost
receptionata in contul Smith & Smith, dar suma receptionata este diferita de suma ordonata de
dumneavoastra. Conform termenelor de utilizare ele platformei online Smith & Smith
tranzactia se finalizeaza cu noua suma pe care ati ordonat-o catre destinatar in conformitate cu
termenii si conditiile de utilizare a platformei de plati online Smith & Smith. Va multumim
pentru intelegere!';
$lang['calc_msg011'] = 'Ne pare rau! Plata nu a putut fi efectuata. Va rugam contactati serviciul
Sugestii, Sesizari, Reclamatii Smith & Smith la telefon +4.021.331.8000 pentru clarificarea
situatiei. Va multumin pentru intelegere!';
$lang['calc_msg012'] = 'Ne pare rau! Plata nu a putut fi efectuata. Va rugam contactati serviciul
- Sugestii, Sesizari, Reclamatii Smith & Smith la telefon +4.021.331.8000 pentru clarificarea
- situatiei. Va multumin pentru intelegere!';
$lang['calc_msg013'] = 'Felicitari! Operatiunea de plata a fost finalizata cu succes!';
$lang['calc_msg014'] = 'Banii dumneavoastra au fost returnati cu succes in contul din care s-a initiat
transferul!';

// emailuri; sunt de forma _sb pt subiect si _cont pt continut
$lang['calc_eml002_sb'] = '%s : Detalii tranzactie Smith & Smith';
$lang['calc_eml002_cont'] = 'Referinta tranzactiei dumneavoastra este %s. Va rugam ca in
maxim 2 zile lucratoare de la initierea tranzactiei sa transferati suma ordonata catre contul
Smith & Smith identificat prin cod IBAN / SWIFT / Banca, astfel incat suma orodonata sa
fie receptionata in contul Smith & Smith in decurs de 5 zile lucratoare de la initierea
tranzactiei. Dupa expirarea acestui termen, in cazul in care suma nu este receptionata in
contul Smith & Smith, tranzactia se considera anulata.';
$lang['calc_eml003_sb'] = '%s : Detalii tranzactie Smith & Smith';
$lang['calc_eml003_cont'] = 'Operatiunea de plata a fost incheiata cu succes. Referinta tranzactiei
dumneavoastra este %s. In cazul in care ati ales plata numerar, in cel mai
scurt va vom comunica codul tranzactiei ce trebuie sa-l comunicati beneficiarului.';
$lang['calc_eml004_sb'] = '%s : Eroare tranzactie Smith & Smith';
$lang['calc_eml004_cont'] = 'Tranzactia dumneavoastra cu referinta %s nu a fost finalizata
cu succes. Va rugam sa contactati serviciul Sesizari, Reclamatii Smith & Smith la telefon
+4.021.331.8000 pentru clarificarea situatiei.';
$lang['calc_eml005pin_sb'] = '%s : Detalii tranzactie Smith & Smith';
$lang['calc_eml005pin_cont'] = 'Suma orodonata de dumneavoastra cu referinta %s a fost
receptionata in contul Smith & Smith. PIN-ul tranzactiei dumneavoastra este [PIN]. Va
rugam comunicati PIN-ul tranzactiei beneficiarului, Dl./D-na. %s.';
$lang['calc_eml005_sb'] = '%s : Detalii tranzactie Smith & Smith';
$lang['calc_eml005_cont'] = 'Suma orodonata de dumneavoastra cu referinta %s a fost
receptionata in contul Smith & Smith si urmeaza sa fie transferata in contul beneficiarului,
Dl./D-na. %s.';
$lang['calc_eml006_sb'] = '%s: Diferenta suma transmisa';
$lang['calc_eml006_cont'] = 'Tranzactia dumneavoastra cu referinta %s a fost receptionata
in contul Smith & Smith, dar suma transferata este diferita de suma ordonata de
dumneavoastra. Conform termenelor de utilizare a siteului Smith & Smith tranzactia se
finalizeaza cu noua suma catre destinatar.';
$lang['calc_eml007_sb'] = '%s : Eroare finalizare plata.';
$lang['calc_eml007_cont'] = 'Ne pare rau! Plata nu a putut fi efectuata. Va rugam contactati serviciul
Sugestii, Sesizari, Reclamatii Smith & Smith la telefon +4.021.331.8000 pentru clarificarea
situatiei. Va multumin pentru intelegere!';
$lang['calc_eml008_sb'] = '%s : Eroare finalizare plata';
$lang['calc_eml008_cont'] = 'Ne pare rau! Plata nu a putut fi efectuata. Va rugam contactati serviciul
Sugestii, Sesizari, Reclamatii Smith & Smith la telefon +4.021.331.8000 pentru clarificarea
situatiei. Va multumin pentru intelegere!';
$lang['calc_eml009_sb'] = '%s : Plata efectuata cu succes.';
$lang['calc_eml009_cont'] = 'Felicitari! Operatiunea de plata a fost finalizata cu succes!';
$lang['calc_eml010_sb'] = '%s : Retur tranzactie.';
$lang['calc_eml010_cont'] = 'Banii dumneavoastra au fost returnati cu succes in contul din care s-a initiat
transferul!';

/*
|--------------------------------------------------------------------------
| etichete facturi; a se vedea documentul de specificatii
| pentru maparea campurilor
| TODO de standardizat placeholdere: de ex, ref tx, nume, prenume etc
|--------------------------------------------------------------------------
|
*/

// campuri text
$lang['fact_txt043'] = 'Facturi online';
$lang['fact_txt044'] = 'Plateste';
$lang['fact_txt045'] = 'Valoarea facturii';
$lang['fact_txt046'] = ',';
$lang['fact_txt047'] = 'RON';
$lang['fact_txt048'] = 'Comision de plata';
$lang['fact_txt049'] = 'N/A';
$lang['fact_txt050'] = 'RON';
$lang['fact_txt051'] = 'Total de plata';
$lang['fact_txt052'] = 'N/A';
$lang['fact_txt053'] = 'Curs valutar 1 EUR =';
$lang['fact_txt055'] = 'RON';
$lang['fact_txt056'] = 'Plata Facturi Online';
$lang['fact_txt057'] = 'Plateste';
$lang['fact_txt058'] = 'Valoarea facturii';
$lang['fact_txt059'] = ',';
$lang['fact_txt060'] = 'RON';
$lang['fact_txt061'] = 'Categorie';
$lang['fact_txt062'] = 'Furnizor';
$lang['fact_txt063'] = 'Camp suplimentar 1';
$lang['fact_txt064'] = 'Camp suplimentar 2';
$lang['fact_txt065'] = 'Camp suplimentar 3';
$lang['fact_txt066'] = 'Comision de plata';
$lang['fact_txt067'] = 'N/A';
$lang['fact_txt068'] = 'RON';
$lang['fact_txt069'] = 'Total de plata';
$lang['fact_txt070'] = 'N/A';
$lang['fact_txt071'] = 'Curs valutar 1 EUR =';
$lang['fact_txt072'] = 'N/A';
$lang['fact_txt073'] = 'RON';
$lang['fact_txt074'] = 'Plata Facturi Online';
$lang['fact_txt075'] = 'Confirmare tranzactie';
$lang['fact_txt076'] = 'Atentie! Anularea ulterioara a tranzactiei de catre dumneavoastra presupune
deducerea din suma transferata a comisionului de rambursare in valoare de 15 euro la care se
adauga comisioanele interbancare. Acordul dumneavoastra este necesar pentru continuarea
transferului bancar. Va rugam sa confirmati ca suneteti de acord cu termenii si conditiile
platformei de plati online Smith&Smith.';
$lang['fact_txt077'] = 'Camp suplimentar 4';
$lang['fact_txt078'] = 'Camp suplimentar 5';
$lang['fact_txt079'] = 'Camp suplimentar 6';

// butoane
$lang['fact_btn010'] = 'de pe card';
$lang['fact_btn011'] = 'din cont bancar';
$lang['fact_btn012'] = 'Plateste';
$lang['fact_btn013'] = 'de pe card';
$lang['fact_btn014'] = 'din cont bancar';
$lang['fact_btn015'] = 'Plateste';
$lang['fact_btn016'] = 'ACCEPT';

// campuri select

// mesaje eroare
$lang['fact_err_msg015'] = 'Toate campurile marcate cu rosu sunt obligatorii, va rugam sa
completati toate datele solicitate inainte ca tranzactia dumneavoastra sa fie procesata.';
$lang['fact_err_msg018'] = 'A aparut o eroare. Va rugam sa contactati banca la care detineti cardul
pentru verificari si/sau sa contactati serviciul Sesizari, Reclamatii Smith & Smith la telefon
+4.021.331.8000 pentru clarificarea situatiei. Va multumin pentru intelegere!';
$lang['fact_err_msg019'] = 'Ne pare rau! Plata dumneavoastra cu referinta %s nu a fost
finalizata cu succes. Va rugam sa contactati serviciul Sesizari, Reclamatii Smith & Smith la
telefon +4.021.331.8000 pentru clarificarea situatiei. Va multumin pentru intelegere!';

// mesaje
$lang['fact_msg016'] = 'Referinta platii dumneavoastra este %s. Va rugam ca in
maxim 2 zile lucratoare de la initierea tranzactiei sa transferati suma ordonata catre contul
Smith & Smith identificat prin cod IBAN / SWIFT / Banca, astfel incat suma orodonata sa fie
receptionata in contul Smith & Smith in decurs de 5 zile lucratoare de la initierea platii. Dupa
expirarea acestui termen, in cazul in care suma nu este receptionata in contul Smith & Smith,
plata se considera anulata.';
$lang['fact_msg017'] = 'Felicitari! Operatiunea de plata a fost incheiata cu succes. Referinta platii
dumneavoastra este %s';
$lang['fact_msg018'] = 'Felicitari! Plata dumneavoastra cu referinta %s s-a incheiat
cu succes.';

// emailuri; sunt de forma _sb pt subiect si _cont pt continut
$lang['fact_eml011_sb'] = '%s : Initiere plata facturi prin Smith&Smith';
$lang['fact_eml011_cont'] = 'Referinta platii dumneavoastra este %s. Va rugam ca in
maxim 2 zile lucratoare de la initierea platii sa transferati suma ordonata catre contul Smith
& Smith identificat prin cod IBAN / SWIFT / Banca, astfel incat suma orodonata sa fie
receptionata in contul Smith & Smith in decurs de 5 zile lucratoare de la initierea tranzactiei.
Dupa expirarea acestui termen, in cazul in care suma nu este receptionata in contul Smith &
Smith, plata se considera anulata.';
$lang['fact_eml012_sb'] = '%s : S-a efectuat plata facturii dumneavoastra de utilitati prin
Smith&Smith';
$lang['fact_eml012_cont'] = 'Felicitari ! Operatiunea de plata a fost incheiata cu succes. Referinta platii
dumneavoastra este %s';
$lang['fact_eml013_sb'] = '%s : Eroare tranzactie Smith & Smith';
$lang['fact_eml013_cont'] = 'Ne pare rau! Plata dumneavoastra cu referinta %s nu a fost
finalizata cu succes. Va rugam sa contactati serviciul Sesizari, Reclamatii Smith & Smith la
telefon +4.021.331.8000 pentru clarificarea situatiei. Va multumim pentru intelegere!';
$lang['fact_eml014_sb'] = '%s: S-a efectuat plata facturii dumneavoastra prin
Smith&Smith';
$lang['fact_eml014_cont'] = 'Felicitari ! Operatiunea de plata a fost incheiata cu succes. Referinta platii
dumneavoastra este %s';

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

$lang['profile_save'] = 'SAVE';