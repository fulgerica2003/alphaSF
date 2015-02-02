<?php
	$front_lang = $this->fuel->language->selected();
	$action = ($front_lang == 'ro' ? '' : $front_lang . '/') . $vars['link'];
	?>

<div id="wrapper">
	<div class="col-lg-12 col-sm-12">
		<div class="caseta page-text text2">
			<div class="titluri-cont2"><?php echo lang($vars['title'])?></div>
			<?php echo $vars['message'];?>
			<div class="col-lg-8 col-lg-offset-4 col-sm-12">
				<div id = "newer-news" >
					<a href="<?php echo $action?>"><?php echo lang($vars['text'])?></a>
				</div>
				<div  class="clearfix" ></div>
			</div>
			
		</div>
		
	</div>
</div>



