<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php
class Inv extends CI_Controller {
	
	
	function index(){
		$this->add();
	}
	
	function Inv() {
		parent::__construct();

     }

	public function save()
	{
 	 echo $this->input->post('tipPlata'); 
 	 echo '</br>';
 	 echo $this->input->post('valInt'); 
 	 echo '</br>';
 	 echo $this->input->post('valFract'); 
 	 echo '</br>';

	}
	
	public function add(){
	 	$vars['suppCat'] = $this->optsSupplCat();
	 	$vars['payOpts'] = get_payment_types();

	 	$this->fuel->pages->render('inv', $vars);
	}
	
	private function optsSupplCat(){
		$this->load->model('ss_suppliers_cat_model');
		$suppcat=$this->ss_suppliers_cat_model->list_items();
		$opts='<option value="">Alege</option>';									

		foreach ($suppcat as $row)
				{
					$opts = $opts.'<option value="' . $row['id'] .'">'. $row['name'] .'</option>\n';
     			}
     	return $opts;
		
	}
	
	/**** afisez lista de furnizori in functie de categoria selectata; e apelata prin jquery
	*/
	public function suppliers_by_cat($id_cat){
		$this->load->model('ss_suppliers_model');
		$str = '<option value="" label="Selecteaza...">Selecteaza...</option>';
		$options = $this->ss_suppliers_model->options_list(NULL, NULL, array('id_cat' => $id_cat));
	
		foreach($options as $key => $val)
			{
				$str .= '<option value="'.$key.'" label="'.$val.'" '.'>'.$val.'</option>\n';
			}	
		echo $str;
	}
	
	
	public function add_custom_fields($query){
		
			$supplier = $this->get_supplier($query);
			
			if (!empty($supplier)){
				// parcurg lista de campuri ca sa vad pe care trebuie sa le randez
				// tin cont de campurile care au setat si, ti, unde i = 1...6
				echo $this->add_details_field('s1', $supplier->s1, $supplier->t1);;
				echo $this->add_details_field('s2', $supplier->s2, $supplier->t2);
				echo $this->add_details_field('s3', $supplier->s3, $supplier->t3);
				echo $this->add_details_field('s4', $supplier->s4, $supplier->t4);
				echo $this->add_details_field('s5', $supplier->s5, $supplier->t5);
				echo $this->add_details_field('s6', $supplier->s6, $supplier->t6);
			}
		}
		
	private function get_supplier($id_supplier){
			
			$this->load->model('ss_suppliers_model');
			
			$where['select'] = 's1, t1, s2, t2, s3, t3, s4, t4, s5, t5, s6, t6, name';
			$where['where'] = array('id' => $id_supplier);
			$where['limit'] = 1;
			
			$query = $this->ss_suppliers_model->query($where);
			
			if (!empty($query->result())){
				$supplier = $query->result()[0];
				return $supplier;
			} else {
				return null;
			}
	}
	
	private function add_details_field($field_id, $label_vals, $type_val){

		$this->load->helper('form');

		$inputField='';
		
			if (!empty($label_vals) && strlen($label_vals) > 0 && !empty($type_val) && strlen($type_val) > 0){
				
				$label = get_label($label_vals);
				if ($type_val=='text' or $type_val=='date' or $type_val=='number') {	
					$fdata = array(
						'name'        => $field_id,
						'id'          => $field_id,
						'value'       => '',
						'maxlength'   => '100',
						'size'        => '50',
						'type'		  => 'text',
						'class'       => 'agent-input',
						'style'       => 'width:100%',
					);							
					$inputField =
					'<div class="input-box">
					<div class="agent-lable">'.$label.'</div>
					<div name="test">'. form_input($fdata).'</div>					
					<div class="clearfix"></div>
					</div>';
				}
				if ($type_val=='textarea') {								
					$fdata = array(
						'name'        => $field_id,
						'id'          => $field_id,
						'value'       => '',
						'rows'        => '3',
						'type'		  => 'textarea',
						'class'       => 'agent-input',
						'style'       => 'width:100%',
					);	
					$inputField =
					'<div class="input-box">
					<div class="agent-lable">'.$label.'</div>
					<div name="test">'. form_textarea($fdata).'</div>					
					<div class="clearfix"></div>
					</div>';
				}
			
				return $inputField;
			}
	}
		

	
}


?>