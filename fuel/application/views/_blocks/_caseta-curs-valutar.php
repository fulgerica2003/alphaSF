<?php 
$CI->load->model('ss_exchange_rate_model');
$eur = $CI->ss_exchange_rate_model->find_one(array('type' => 'EUR', 'apply_date <= ' => date('Y-m-d', time())));
$usd = $CI->ss_exchange_rate_model->find_one(array('type' => 'USD', 'apply_date <= ' => date('Y-m-d', time())));
?>

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
					<td><?php echo lang('caseta_curs_valutar_eur')?></td><td><p><?php echo ($eur != null ? $eur->value : lang('caseta_curs_valutar_NA'));?></p></td>
				</tr>
				<tr>
					<td><?php echo lang('caseta_curs_valutar_usd')?></td><td><?php echo ($usd != null ? $usd->value : lang('caseta_curs_valutar_NA'));?></td>
				</tr>
			</table>
		</div>
	</div>
</div>