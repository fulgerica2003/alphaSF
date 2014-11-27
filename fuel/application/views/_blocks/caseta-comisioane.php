<?php
	$CI->load->model('ss_display_fees_model');
	
	if (!empty($page) && $page == 'services'){
		$ss_fees = $CI->ss_display_fees_model->find_all_array(null, 'amount_min asc');
		}else{
		$ss_fees = $CI->ss_display_fees_model->find_all_array('amount_min in (1, 501, 901)', 'amount_min asc');
	}
?>

<div class="col-lg-6 col-sm-12">  
	<div class="caseta <?php echo (!empty($page) && $page == 'services' ? 'bkg-brown abroad-mare' : ''); ?> minimize special-height" id="caseta-abroad">
		<div class="caseta-titlu"><span id="intreg"><?php echo lang('caseta_comisioane_titlu')?></span><span id="prescurtare"><?php echo lang('caseta_comisioane_short');?></span></div>
		<div class="minimize-caseta">+</div>
		<?php if (empty($page) || $page != 'services'){?>
			<div class="col-lg-6 col-sm-6" id="abroad-1"> 
				<div class="caseta-content padding-fix">
					<?php echo lang('caseta_comisioane_content');?>
				</div>
				<a href="#" class="detail-link"><?php echo lang('caseta_fees');?></a>
			</div>
		<?php }?>
		<?php if (empty($page) || $page != 'services'){?>
			<div class="col-lg-6 col-sm-6" id="abroad-2">
				<div class="caseta-content caseta-form">
				<?php }?>
				<table border="0" cellpadding="0" id="table-ammount" width="100%">
					<tr>
						<td><?php echo lang('caseta_comisioane_amount');?></td><td><?php echo lang('caseta_comisioane_fee');?></td>
					</tr>
					
					<?php $fi = 0; foreach($ss_fees as $fee) : $fi++; ?>
					<tr>
						<td><?php echo $fee['amount_min'] . ' - ' . $fee['amount_max']?>&euro;</td><td><?php echo $fee['fee'] . ($fee['type'] == 'flat' ? '&euro;' : '%')?></td>
					</tr>
					<?php endforeach; ?>
				</table>
				<?php if (empty($page) || $page != 'services'){?>
				</div>
			</div>
		<?php }?>
		
	</div>
</div>