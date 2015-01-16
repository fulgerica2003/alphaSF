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
				<p class="eroare_factura_text">
					<div id = "correction_fields">
						<div id = "ohp_correction_values"><?php echo lang('ohp_correction_values')?></div>
						<div id = "ohp_correction_ben_name" style = "display:none"><?php echo lang('ohp_correction_ben_name')?><span id = "ben_name"></span></div>
						<div id = "ohp_correction_ben_surname" style = "display:none"><?php echo lang('ohp_correction_ben_surname')?><span id = "ben_surname"></span></div>
						<div id = "ohp_correction_ben_phone" style = "display:none"><?php echo lang('ohp_correction_ben_phone')?><span id = "ben_phone"></span></div>
						<div id = "ohp_correction_ben_email" style = "display:none"><?php echo lang('ohp_correction_ben_email')?><span id = "ben_email"></span></div>
						<div id = "ohp_correction_ben_iban" style = "display:none"><?php echo lang('ohp_correction_ben_iban')?><span id = "ben_iban"></span></div>
						<div id = "ohp_correction_ben_address" style = "display:none"><?php echo lang('ohp_correction_ben_address')?><span id = "ben_address"></span></div>
						<div id = "ohp_correction_ben_city" style = "display:none"><?php echo lang('ohp_correction_ben_city')?><span id = "ben_city"></span></div>
					</div>
				</p>
				<form action = "online_payments/correction" method = "post">
					<input type="hidden" name="hidden_modal_unid" value="" id = "hidden_modal_unid">
					<input type="hidden" name="hidden_ben_name" value="" id = "hidden_ben_name">
					<input type="hidden" name="hidden_ben_surname" value="" id = "hidden_ben_surname">
					<input type="hidden" name="hidden_ben_phone" value="" id = "hidden_ben_phone">
					<input type="hidden" name="hidden_ben_email" value="" id = "hidden_ben_email">
					<input type="hidden" name="hidden_ben_iban" value="" id = "hidden_ben_iban">
					<input type="hidden" name="hidden_ben_address" value="" id = "hidden_ben_address">
					<input type="hidden" name="hidden_id_ben_city" value="" id = "hidden_id_ben_city">
					<div class="input-box  ">
						<input id = "the-terms-corectie" type="checkbox" name="accept1" checked value="1"><span class="lable-radio"><?php echo lang('general_agree');?></span>
					</div>	
					<div class="input-box conditii-corectie ">	
						<input id = "the-change-corectie" type="checkbox" name="accept2" checked value="2"><span class="lable-radio"><?php echo lang('general_terms');?></span>
					</div>
					<div class="clearfix"></div>
					
					<div class="submit_eroare_corectie">
						<input id = "acceptBtnCorectie" class="agent-submit" type="submit" value="ACCEPT">
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
			</div>
		</div>
</div>