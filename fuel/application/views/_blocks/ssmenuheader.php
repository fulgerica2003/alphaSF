<div id="header">
	<div class="col-lg-12 col-sm-24">
		<div class="main-box" id="heade-menu">
			<a href="<?php echo site_url();?>" id="logo-box"></a>
			<div id="lang-container">
				<?php $this->load->view('_blocks/_ssauth')?>
				<?php $this->load->view('_blocks/_languages')?>
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="menu-button-red">MENU</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			
			<nav class="navbar navbar-default menu-box" role="navigation" id="nav-main">
				<div>
				  	<div class="collapse navbar-collapse" id="navbar-collapse">
						<?php echo fuel_nav(array('group_id' => 'main', 'language' => $lang, 'depth' => 1, 'container_tag_class' => 'nav navbar-nav lista-nav-big', 'active_class' => 'activ', )); ?>
					</div>  
				</div>
			</nav>
			
		</div> 
	</div>
</div>