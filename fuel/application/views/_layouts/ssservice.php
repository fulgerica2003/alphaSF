<?php
	$this->load->view('_blocks/ssheader');
?>
<div class="container" >
	<?php $this->load->view('_blocks/ssmenuheader')?>
	
	<div id="banner-box">
		<div class="col-lg-12 col-sm-12">
			<?php echo (isset($banner_img) && $banner_img?'<div id = "banner-int"><img src="'.img_path($banner_img).'" alt="" /></div>':''); ?>
			<div class="titlu-pagina"><?php echo lang('services_title', $lang); ?></div>
		</div>
	</div>
	
	<div class="col-lg-12 col-sm-12">
		<nav class="meniu-interior">
			<div id="box-meniu-interior">
				<div id="button-meniu-interior"></div>
				<?php echo fuel_nav(array('group_id' => 'servicii', 'language' => $lang, 'depth' => 0, 'container_tag_class' => 'lista-nav-big', 'active_class' => 'activ', )); ?>
				<div class="clearfix"></div>
				<div id="box-meniu-interior1">
				<?php echo fuel_nav(array('group_id' => 'servicii', 'language' => $lang, 'depth' => 0, 'container_tag_class' => 'lista-nav-big', 'active_class' => 'activ', 'parent' => 'servicii/'.uri_segment(2), )); ?>
				<div class="clearfix"></div>
				</div>
			</div>
		</nav>
	</div>
	<div id="wrapper" class="margin-top">
		<div class="col-lg-6 col-sm-12">
			<div class="caseta page-text service-text">
				<?php echo fuel_var('body', ''); ?>
			</div>
		</div>
	</div>
	<div class="col-lg-6 col-md-12 col-sm-12">
		<div class="caseta minimize calc-mare service-text" id="caseta-calculator">
			<div class="minimize-caseta">+</div>
			<div class="caseta-titlu">Calculator</div>
			
			<form id="form-calc" action="" method="post">
				<select id="select-from">
					<option value="1">From</option>
					<option value="2">Test</option>
				</select>
				<select id="select-to">
					<option value="1">To</option>
					<option value="2">Test</option>
				</select>
				<div class="radio-container">
					<div class="lable radioactiv" id="credit">Credit Card</div>
					<input type="radio" name="cont" checked value="1">
				</div>
				<div class="radio-container">
					<div class="lable" id="account">Account </div>
					<input type="radio" name="cont" value="2">
				</div>
				<div class="div-input">
					<div class="input-lable">Ammount (Euro)</div>
					<input type="text" name="ammount" value="0,0">
				</div>
				</form>	
				<div class="clearfix"></div>
				
				<div class="box-rezultate">
					Commission transfer <span class="rezulatate">+ 0,0</span>
				</div>	  
				<div class="box-rezultate">
					<input type="checkbox" name="home" value="home">Home delivery <span class="rezulatate">+ 0,0</span>
				</div>	
				<div class="total-calc">
					Total
					<span id="rezultat">0,0 &euro;</span>
				</div>		
				<div id="login-box">
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div id="login-titlu">LOGIN</div>
						<div id="text-login">If you want to lorem ipsum dolor sit amet conservatum est, please use this form to login.</div>
					</div>
					
					<div class="col-lg-6 col-md-6 col-sm-6">
						<form id="form-login" action="" method="post">
							<input type="text" name="user" placeholder="Username">
							<input type="password" name="password" placeholder="Password">
							<input type="submit" id="login-submit" value="LOGIN">
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<?php $this->load->view('_blocks/caseta-comisioane', array('page' => 'services')); ?>
		<?php $this->load->view('_blocks/caseta-online', array('page' => 'services_small')); ?>
		<?php $this->load->view('_blocks/caseta-acasa', array('page' => 'services')); ?>
		<?php $this->load->view('_blocks/caseta-retea', array('page' => 'services')); ?>
		<?php $this->load->view('_blocks/caseta-slider-news', array('page' => 'services')); ?>
		<?php $this->load->view('_blocks/caseta-moneygram', array('page' => 'services')); ?>
		
		
	
	
	<?php $this->load->view('_blocks/ssfooter')?>
