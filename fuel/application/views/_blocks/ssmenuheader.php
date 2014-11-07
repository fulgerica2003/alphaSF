<div id="header">
	<div class="col-lg-12 col-sm-24">
		<div class="main-box" id="heade-menu">
			<a href="<?php echo site_url();?>" id="logo-box"></a>
			<div id="lang-container">
				<a href ="#" class="login-header" data-toggle="modal" data-target="#pop-up-login">
					<span id="login-button" >LOGIN</span>
				</a>
				<div class="modal fade" id="pop-up-login" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&amp;times;</button>
								<h4 class="modal-title" id="myModalLabel">Modal title</h4>
							</div>
							<div class="modal-body">
								<h3>Modal Body</h3>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div>
						</div>
					</div>
				</div>
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