<div class="language-box">
	<ul id="lista-lang">
		<?php foreach(get_language_options() as $key => $value):?>
		<li><a href="/<?php echo fuel_var('subfolder'); ?>/<?php echo $key . '/' . (is_home() ? '' : uri_path()); ?>" class="buton-lang<?php echo $lang == $key ? ' active-lang' : ''; ?>" id="<?php echo get_language_name($key)?>"><?php echo $value?></a></li>
		<?php endforeach;?>
	</ul>
	<div id="button-lista-lang"></div>
</div>