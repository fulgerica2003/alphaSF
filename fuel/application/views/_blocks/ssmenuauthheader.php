<div id="header" class="header-cont">
	<div class="col-lg-12 col-sm-24">
		<div class="main-box" id="heade-menu">
			<a href="<?php echo site_url();?>" id="logo-box"></a>
			<div id="lang-container">
				<?php $this->load->view('_blocks/_ssauth')?>
				<div class="language-box">
					<ul id="lista-lang">
						<li><a href="/<?php echo fuel_var('subfolder'); ?>/<?php echo uri_path(); ?>" class="buton-lang<?php echo  $lang == 'ro' ? ' active-lang' : ''; ?>" id="romana">RO</a></li>
						<li><a href="/<?php echo fuel_var('subfolder'); ?>/it/<?php echo (is_home() ? '' : uri_path()); ?>" class="buton-lang<?php echo  $lang == 'it' ? ' active-lang' : ''; ?>" id="italiana">IT</a></li>
						<li><a href="/<?php echo fuel_var('subfolder'); ?>/sp/<?php echo (is_home() ? '' : uri_path()); ?>" class="buton-lang<?php echo  $lang == 'sp' ? ' active-lang' : ''; ?>" id="spaniola">SP</a></li>
						<li><a href="/<?php echo fuel_var('subfolder'); ?>/en/<?php echo (is_home() ? '' : uri_path()); ?>" class="buton-lang<?php echo  $lang == 'en' ? ' active-lang' : ''; ?>" id="engleza">EN</a></li>
						
					</ul>
					<div id="button-lista-lang"></div>
				</div>
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="menu-button-red">MENU</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
		</div> 
	</div>
</div>
<div class="col-lg-12 col-sm-12">
	<nav class="meniu-interior">
		<div id="box-meniu-interior">
			<div id="button-meniu-interior"></div>
				<?php echo fuel_nav(array('group_id' => 'mainauth', 'language' => $lang, 'depth' => 1, 'container_tag_class' => 'nav navbar-nav lista-nav-big', 'active_class' => 'activ', )); ?>
			<div class="clearfix"></div>
		</div>
	</nav>
</div>



	
