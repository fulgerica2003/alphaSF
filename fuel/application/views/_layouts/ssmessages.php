<?php 
	$this->load->view('_blocks/ssheader');
?>

<div class="container cont-container" >
	<?php
		$this->load->view('_blocks/ssmenuauthheader');
	?>
	
	<?php echo fuel_var('body');?>
	<?php $this->load->view('_blocks/ssfooter')?>

</div>