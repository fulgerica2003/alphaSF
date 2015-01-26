<?php 
	$this->load->helper('form'); 
?>
<div class="modal fade" id="subscribeModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
	<div id="subscribeModalDialog" class="modal-dialog">
		<div id = "subscribeModalContent" class="modal-content">
			<div id="subscribe-pop">
				<div id = "subscribe-modal-header" class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up"><?php echo lang('general_close');?></button>
					<p class="modal-title"><?php echo lang('subscribe_title');?>
					</div>
					<!-- body-ul modalului e completat din custom.js-->
					<div id = "subscribeModalBody" class="modal-body">
					</div>
				</div>
			</div>
		</div>
	</div>
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
						<?php echo fuel_nav(array('group_id' => 'foo_menu2', 'language' => $lang, 'depth' => 0, 'container_tag_class' => 'liste-footer', )); ?>
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
						<ul class="liste-footer">
							<li>
								<form id = "subscribe" action = 'newsletter/subscribe' method = "post">
									<input id = "email" class="email-footer" type="text"  name="email" placeholder="E-mail">
								</form>
							</li>
						</ul>	
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