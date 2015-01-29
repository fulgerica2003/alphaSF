<?php header("HcTTP/1.1 404 Not Found"); ?>
<?php 
	// This is a default setup. Feel free to change as see fit.
	
	define('IS_404', TRUE);
	define('FUELIFY', FALSE);
	include(APPPATH.'views/_variables/global.php');
	extract($vars);
	
	// set the 404 page title
	$GLOBALS['page_title'] = lang('404_title');
	
	// to prevent weird CSS errors if someone passes a name of a class used in your CSS
	$GLOBALS['body_class'] = '';
	
	require_once(FUEL_PATH.'helpers/asset_helper.php');
	require_once(APPPATH.'helpers/MY_html_helper.php');
	require_once(APPPATH.'helpers/MY_url_helper.php');
	require_once(APPPATH.'helpers/my_helper.php');
?>	
<?php
	$CI->load->view('_blocks/ssheader');
?>
<div class="container" >
	<?php $CI->load->view('_blocks/ssmenuheader')?>
	
	<div id="wrapper" class="margin-top">
		<div class="col-lg-9 col-sm-12">
			<div class="caseta page-text">
				<div id="error_404">
					<h1><?php echo lang('404_heading');?></h1>
					<?php echo lang('404_message');?>
				</div>
			</div>
		</div>
	</div>
	
	<?php $CI->load->view('_blocks/ssfooter')?>
