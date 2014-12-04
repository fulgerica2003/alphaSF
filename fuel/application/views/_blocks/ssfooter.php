<div id="footer">
	<div class="col-lg-12 col-sm-12">
		<div class="caseta">
				<div class="col-lg-6 col-sm-12">
					<div class="col-lg-4 col-sm-4">
						<div class="titlu-lista-footer"><?php echo lang('foo_menu1_title')?></div>
						<?php echo fuel_nav(array('group_id' => 'servicii', 'language' => $lang, 'depth' => 0, 'container_tag_class' => 'liste-footer', )); ?>
					</div>
					<div class="col-lg-4 col-sm-4">
						<div class="titlu-lista-footer"><?php echo lang('foo_menu2_title')?></div>
						<ul class="liste-footer">
							<li><a href="#" >TRANSFER DE BANI</a></li>
							<li><a href="#" >PLATA FACTURI</a></li>
							<li><a href="#" >DESCHIDERE CONT</a></li>
							<li><a href="#" >TOP-UP</a></li>
						</ul>
					</div>
					<div class="col-lg-4 col-sm-4">
						<div class="titlu-lista-footer"><?php echo lang('foo_menu3_title')?></div>
						<?php echo fuel_nav(array('group_id' => 'contact', 'language' => $lang, 'depth' => 0, 'container_tag_class' => 'liste-footer', )); ?>
					</div>
				</div>
				<div class="col-lg-6 col-sm-12" >
					<div class="col-lg-4 col-sm-4">
						<div class="titlu-lista-footer"><?php echo lang('foo_menu4_title')?></div>
						<?php echo fuel_nav(array('group_id' => 'foo_menu4', 'language' => $lang, 'depth' => 0, 'container_tag_class' => 'liste-footer', )); ?>
					</div>
					<div class="col-lg-3 col-sm-3">
						<div  id="button-top"><?php echo lang('foo_top')?></div>
					</div>
					<div class="col-lg-5 col-sm-5">
						<div class="titlu-lista-footer"><?php echo lang('foo_menu5_title')?></div>
						<?php echo fuel_nav(array('group_id' => 'foo_menu5', 'depth' => 0, 'container_tag_class' => 'liste-footer', )); ?>
					</div>
					
				</div>
				
				
				 
			<div class="clearfix"></div>
			</div>
		
	</div>
	<div class="col-lg-12 col-sm-12">
		<div class="caseta thin-box">
			<div class="col-lg-6 col-sm-12">
				<div class="col-lg-5 col-sm-5">
					<a href="conditii-generale" ><?php echo lang('foo_cga'); ?></a>
				</div>
				<div class="col-lg-2 col-sm-2">
					<a href="http://www.anpc.gov.ro/" target="_blank"><?php echo lang('foo_anpc'); ?></a>
				</div>
				<div class="col-lg-5 col-sm-5">
					<a href="http://www.dataprotection.ro/" target="_blank"><?php echo lang('foo_data_protection'); ?></a>
				</div>
			</div>
			<div class="col-lg-6 col-sm-12">
				<div id="footer-right"><?php echo lang('foo_copyright'); ?></div>
			</div>
			<div class="clearfix"></div>
		</div> 
		
	</div>
</div>

</div>
</body>
</html>