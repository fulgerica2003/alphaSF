<div id="wrapper">
	<div class="col-lg-9 col-sm-12">
		<div class="caseta page-text text2">
			<div class="titluri-cont2"><?php echo $vars['text'] === 'pay' ? lang('payments_thanks') : lang('invoices_thanks')?></div>
			<?php echo $vars['message'];?>
			<div class="col-lg-8 col-lg-offset-4 col-sm-12">
				<div id = "newer-news" >
					<a href="<?php echo $vars['link']?>"><?php echo $vars['text'] === 'pay' ? lang('payments_thanks_cmd') : lang('invoices_thanks_cmd')?></a>
				</div>
				<div  class="clearfix" ></div>
			</div>
			
		</div>
		
	</div>
</div>



