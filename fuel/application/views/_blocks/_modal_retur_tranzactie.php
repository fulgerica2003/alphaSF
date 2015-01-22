<div class="modal fade" id="retur_tranzactie" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up"><?php echo lang('general_close');?></button>
				<p class="modal-title"><?php echo lang('calc_txt041');?></p>
			</div>
			
			<div class="modal-body" id="login-pop">
				
				<p class="eroare_factura"><?php echo lang('calc_txt042');?></p>
				<p class="eroare_factura_text"><?php echo lang('calc_txt043');?></p>
				<form action = "online_payments/refund" method = "post">
					<input type="hidden" name="hidden_modal_unid" value="" id = "hidden_modal_unid">
					<div class="input-box termeni">
						<input id = "the-terms-retur" type="checkbox" name="accept" checked value="1"><span class="lable-radio"><?php echo lang('general_terms');?></span>
					</div>
					<div class="clearfix"></div>
					
					<div class="submit_eroare2">
						<input id = "acceptBtnRetur" class="agent-submit" type="submit" value="ACCEPT">
					</div>
				</form>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
</div>	