<?php
	$front_lang = $this->fuel->language->selected();
	$action = ($front_lang == 'ro' ? '' : $front_lang . '/');
	if ($page == 'online_invoices'){
		$mytitle = 'calc_txt074';
		$bodytitle = 'calc_txt075';
		$message = 'calc_txt076';
		$action .= 'online_invoices/add';
	} else if ($page == 'online_payments'){
		$mytitle = 'calc_txt075';
		$bodytitle = 'calc_txt036';
		$message = 'calc_txt037';
		$action .= 'online_payments/add';
	}
	?>

<div class="modal fade" id="displayConfirmModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        	<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up"><?php echo lang('general_close');?></button>
				<p class="modal-title"><?php echo lang($mytitle);?></p>
			</div>
			<div class="modal-body" id="displayConfirmModalBody">
				<p class="eroare_factura"><?php echo lang($bodytitle);?></p>
				<p class="eroare_factura_text"><?php echo lang($message);?></p>
					<form id = "confirmTransfer" method = "post" action = "<?php echo $action;?>">
						<div class="input-box termeni">
						<input id = "the-terms" type="checkbox" name="confirmCheck" checked value="1"><span class="lable-radio"><?php echo lang('general_terms');?></span>
					</div>
					<div class="clearfix"></div>
					
					<div class="submit_eroare">
						<input id = "acceptBtn" class="agent-submit" type="submit" value="ACCEPT">
					</div>
					<div class="clearfix"></div>
					</form>
				</div>	
			</div>
		</div>
	</div>