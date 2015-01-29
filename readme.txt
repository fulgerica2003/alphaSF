Instalare:
	- creezi o baza de date si un utilizator
	- importi smith.sql
	- copiezi directorul smith pe server http
	- setezi variabilele necesare in smith/fuel/application/config/database.php.

Daca rulezi pe un *NIX, utilizatorul sub care ruleaza server-ul web tb sa aiba drepturi de scriere pe folder-ul smith/fuel/application/cache.

Interfata de administrare se acceseaza la http://<domeniu>/smith/fuel/login cu admin/abc1234.

Pentru testare schimb de date:
	- gettran e disponibil la http://<domeniu>/smith/backend/gettran
	- getfact e disponibil la http://<domeniu>/smith/backend/getfact
	- uptran e disponibil la http://<domeniu>/smith/backend/uptran
	- upcurs e disponibil la http://<domeniu>/smith/backend/upcurs
	- upcom e disponibil la http://<domeniu>/smith/backend/upcom
	- upfields e disponibil la http://<domeniu>/smith/backend/upfields.

Daca ai nevoie de exemple de apel, gasesti in fisierul smith/application/controllers/backendtest.php si se pot apela cu http://<domeniu>/smith/backendtest/<nume_functie>.

Fisierele rezultat se vor gasi in subdirectorul output.

Autorizare backend
Toate apelurile catre backend trebuie sa contina parametrul auth_code. Acesta se calculeaza cu strtoupper(hash_hmac('sha1', <type> . date('YmdHi'), <key>));
unde type reprezinta valoarea parametrului type din apelul respectiv, iar key = pack('H*', <encryption_key>); unde <encryption_key> este parametrul $config['encryption_key'] din config/config.php.
auth_code se calculeaza folosind data curenta (pana la minut). In cazul in care auth_code primit e diferit de cel calculat, se face redirect catre prima pagina si se jurnalizeaza eroarea in tabela fuel_logs.

Alte setari
Plata cu cardul
Fisierul de configurare se gaseste in fuel/application/config/librapay.php. E necesara modificarea campului $config['backref']

Autentificare
E necesara configurarea numelui site-ului si a adresei de mail de la care se trimit mesajele
Fisierul este fuel/application/config/ion_auth.php. Campurile care trebuie modificate sunt
$config['site_title'] si $config['admin_email'].

Interfata de administrare
Site Variables
from_email - adresa de mail de la care se vor trimite mesajele catre utilizatori

News - modulul de stiri - tabela corespondenta este news; stirile sunt afisate pe pagina stiri

Cities - modulul orase - tabela corespondenta este ss_cities; orasele sunt afisate pe pagina /retea/smith si la transferuri, ca localitate destinatar

Suppliers - modul furnizori - tabela corespondenta este ss_suppliers; cand se adauga un furnizor nou se poate adauga si o categorie furnizor; categoriile furnizor sunt salvate in ss_suppliers_cat. OBS: etichetele fiecarui camp se introduc sub forma ro: eticheta | en: label etc si trebuie neaparat sa contina ro:

Payment methods - modul modalitati de plata - apar in lista de selectie a modalitatilor de plata pt transferuri; etichtele pentru fiecare modalitate de plata sunt de forma l1: eticheta1 | l2: eticheta2 unde l1, l2 reprezinta codul limbii (ro, en etc) si trebuie neaparat sa contina ro: ; tabela corespondenta este ss_payment_methods

Profiles - modul profile client/beneficiar. Campul profile_type e afisat din Types. Tabela corespondenta este ss_profiles

Types - nomenclator de tipuri; se pot defini 3 categorii de tipuri: fee (nume comision), client (profile de tip client), beneficiar (profile de tip beneficiar). Tabela corespondenta este ss_types

Fees - modul lista de comisioane care se aplica la transferuri/facturi; Client type si Beneficiary type sunt afisate din Profiles; Network e afisat din Payment methods. Tabela corespondenta este ss_fees

FAQ - modul intrebari frecvente. Tabela corespondenta este ss_faq. Afisarea se face pe pagina faq

Display fees - lista de comisioane care se afiseaza in caseta pe pagina servicii. Tabela corespondenta este ss_display_fees

Offices - modul lista de agentii; se afiseaza pe pagina retea/smith. Tabela corespondenta e ss_network;

Exchange rate- modul curs de schimb valutar. Se afiseaza pe prima pagina si e folosit ca calculul schimbului valutar. Daca pentru ziua curenta nu exista curs introdus, se tine cont de cel mai recent curs. Tabela corespondenta este ss_exchange_rate.

Newsletter list - lista de adrese de email introduse in caseta de abonare; Tabela corespondenta este ss_newsletter_list

Alte tabele:
users, groups, login_attempts, users_groups - tabele pentru autentificare
ss_corrections - tabela in care se tin corectiile primite prin backend; actualizarea pe transfer se face cand utilizatorul aproba corectia
ss_invoices - tabela in care se tin facturile
ss_messages - tabela in care se tin mesajele trimise pentru fiecare tranzactie (transfer/factura)
ss_payments - tabela in care se tin transferurile
ss_pay_orders - tabela in care se tin informatiile despre plata cu cardul


