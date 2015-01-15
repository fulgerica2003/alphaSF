<div class="modal fade" id="corectie_tranzactie" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        	<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up"><?php echo lang('general_close');?></button>
				<p class="modal-title"><?php echo lang('calc_txt038');?></p>
			</div>
			<div class="modal-body" id="login-pop">
				<p class="eroare_factura2"><?php echo lang('calc_txt039');?></p>
				<p class="eroare_factura_text"><?php echo lang('calc_txt040');?></p>
				<form action = "online_payments/correction" method = "post">
				<input type="hidden" name="hidden_modal_unid" value="" id = "hidden_modal_unid">
					<div class="input-box  ">
						<input type="checkbox" name="accept1" checked value="1"><span class="lable-radio"><?php echo lang('general_agree');?></span>
					</div>	
					<div class="input-box conditii-corectie ">	
						<input type="checkbox" name="accept2" checked value="2"><span class="lable-radio"><?php echo lang('general_terms');?></span>
					</div>
					<div class="clearfix"></div>
					
					<div class="submit_eroare_corectie">
						<input class="agent-submit" type="submit" value="ACCEPT">
					</div>
					</form>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>	