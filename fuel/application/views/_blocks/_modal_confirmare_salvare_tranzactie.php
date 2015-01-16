<div class="modal fade" id="displayConfirmModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        	<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up"><?php echo lang('general_close');?></button>
				<p class="modal-title"><?php echo lang('calc_txt035');?></p>
			</div>
			<div class="modal-body" id="displayConfirmModalBody">
				<p class="eroare_factura"><?php echo lang('calc_txt036');?></p>
				<p class="eroare_factura_text"><?php echo lang('calc_txt037');?></p>
					<form id = "confirmTransfer" method = "post" action = "online_payments/add">
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