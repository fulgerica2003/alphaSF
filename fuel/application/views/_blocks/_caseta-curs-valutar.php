<div class="col-lg-3 col-sm-6">  
	<div class="caseta minimize special-height" >
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu"><?php echo lang('caseta_curs_valutar_titlu')?></div>
		<div class="caseta-content caseta-form">
			
			<table border="0" cellpadding="0" id="table-ammount" width="100%">
				<tr>
					<td><?php echo lang('caseta_curs_valutar_currency')?></td><td><?php echo lang('caseta_curs_valutar_quote')?></td>
				</tr>
				<tr>
					<td><?php echo lang('caseta_curs_valutar_eur')?></td><td><p><?php echo fuel_var('exchange_rate')?></p></td>
				</tr>
				<tr>
					<td><?php echo lang('caseta_curs_valutar_usd')?></td><td><?php echo fuel_var('exchange_rate_usd')?></td>
				</tr>
			</table>
		</div>
	</div>
</div>