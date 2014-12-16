<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php
class Sspayments extends CI_Controller {
	
	 function Sspayments() {
		parent::__construct();
		$this->load->model('ss_invoices_model');
     }


	public function save()
	{
 	 echo $this->input->post('tipPlata'); 
 	 echo '</br>';
 	 echo $this->input->post('valInt'); 
 	 echo '</br>';
 	 echo $this->input->post('valFract'); 
 	 echo '</br>';



 	//var_dump($this->fuel->pages->get('sspayments')) ;
	 //$data['selectedVal'] = $this->input->post('tipPlata');
		
	 //$this->load->view('becomeagent');	
	//echo $this->fuel->pages->render('home');
	}
	
	 function renterCatOptions(){
		$opts="";
		$suppcar=$CI->ss_suppliers_cat_model->list_items();
		foreach ($suppcar as $row)
				{
					$opts = $opts.'<option value="' . $row['id'] .'">'. $row['name'] .'</option>';
     			}
     	return $opts;
	}
	
		/**** afisez lista de furnizori in functie de categoria selectata; e apelata prin jquery
		*/
		public function suppliers_by_cat(){
			$cat = intval(uri_segment(3));
			$supp = intval(uri_segment(4));
			$this->load->model('ss_suppliers_model');
			$options = $this->ss_suppliers_model->options_list(NULL, NULL, array('id_cat' => $cat));
			$str = '<option value="" label="Selecteaza...">Selecteaza...</option>';
			foreach($options as $key => $val)
			{
				$str .= '<option value="'.$key.'" label="'.$val.'" '. ($supp != $key ? '' : ' selected').'>'.$val.'</option>\n';
			}
			echo $str;
		}
		
	
}


?>