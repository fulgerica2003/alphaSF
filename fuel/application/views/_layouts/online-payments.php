<?php 
	$this->load->view('_blocks/ssheader');
?>

<div class="container cont-container" >
	<?php
		$this->load->view('_blocks/ssmenuauthheader');
	?>
	
	<div id="wrapper"> 
		<div class="col-lg-9 col-sm-12">
			<div class="caseta page-text">
				<div id="titluri-cont">
					<?php echo fuel_var('form_title');?>
				</div>
				<div class="col-lg-12 col-sm-12">

				<?php echo fuel_var('body');?>

				</div>
				<div class="clearfix" ></div>
				<br /><br /><br /><br /><br /><br />
            </div>
		</div>
		<?php $this->load->view('_blocks/_caseta_sumar_transfer');?>
	</div>
	<?php $this->load->view('_blocks/ssfooter')?>

</div>


	