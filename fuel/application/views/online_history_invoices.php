<div id="wrapper">
	<div class="col-lg-9 col-sm-12">
		<div class="caseta page-text text2">
			<div class="titluri-cont2"><?php echo lang('ohi_title');?></div>
			
			<ul id="lista-istoric">
				<li class="cap-lista">
					<div class="suma suma-data" id="suma-color"><?php echo lang('ohi_amount');?></div>
					<div class="moneda"></div>
					<div class="data-istoric "><?php echo lang('ohi_date');?></div>
					<div class="beneficiar tranzactii-beneficiar"><?php echo lang('ohi_supplier');?></div>
					<div class="detalii-istoric"><?php echo lang('ohi_details');?></div>
				</li>
				<?php foreach ($vars['invoices'] as $invoice):?>
				<li class="lista-istoric-tranzactii">
					<div class="suma suma-data"><?php echo $invoice->amount_in; ?></div>
					<div class="moneda"><?php echo (strtolower($invoice->currency_in) == 'ron' ? 'RON' : (strtolower($invoice->currency_in) == 'eur' ? '&#8364;' : 'N/A'))?></div>
					<div class="data-istoric"><?php echo $invoice->date_added; ?></div>
					<div class="beneficiar tranzactii-beneficiar"><?php echo $invoice->frnz_name; ?></div>
					<div class="detalii-istoric detalii_mesaje"><span class="cont-mesj"><?php echo lang('ohi_details');?></span></div>
					<div class="cip-alex">
						<div class="contentMesaje">
							<div class="cipri-mesaj"><span><?php echo lang('ohi_date');?> </span><span><?php echo $invoice->date_added; ?></span></div>
							<div class="cipri-mesaj"><span><?php echo lang('ohi_payment_type');?> </span><span><?php echo $invoice->id_payment_type; ?></span></div>
							<div class="cipri-mesaj"><span><?php echo lang('ohi_currency');?> </span><span><?php echo (strtolower($invoice->currency_in) == 'ron' ? 'RON' : (strtolower($invoice->currency_in) == 'eur' ? '&#8364;' : 'N/A'))?></span></div>
							<div class="cipri-mesaj"><span><?php echo lang('ohi_amount');?> </span><span><?php echo $invoice->amount_in; ?></span></div>
							<div class="cipri-mesaj specialMesaj"><span><?php echo lang('ohi_payer');?> </span><span><?php echo $invoice->cl_prenume . ' ' . $invoice->cl_nume; ?></span></div>
							<div class="cipri-mesaj specialMesaj"> <span><?php echo lang('ohi_supplier_details');?> </span><span><?php echo $invoice->frnz_iban; ?><br /><?php echo $invoice->frnz_bank; ?><br />
								<?php echo ($invoice->spl_field_num_1 ? get_label($invoice->spl_field_num_1, $lang) . ': ' . $invoice->spl_field_val_1 . '<br />' : '') ; ?>
								<?php echo ($invoice->spl_field_num_2 ? get_label($invoice->spl_field_num_2, $lang) . ': ' . $invoice->spl_field_val_2 . '<br />' : '') ; ?>
								<?php echo ($invoice->spl_field_num_3 ? get_label($invoice->spl_field_num_3, $lang) . ': ' . $invoice->spl_field_val_3 . '<br />' : '') ; ?>
								<?php echo ($invoice->spl_field_num_4 ? get_label($invoice->spl_field_num_4, $lang) . ': ' . $invoice->spl_field_val_4 . '<br />' : '') ; ?>
								<?php echo ($invoice->spl_field_num_5 ? get_label($invoice->spl_field_num_5, $lang) . ': ' . $invoice->spl_field_val_5 . '<br />' : '') ; ?>
								<?php echo ($invoice->spl_field_num_6 ? get_label($invoice->spl_field_num_6, $lang) . ': ' . $invoice->spl_field_val_6 . '<br />' : '') ; ?>
								</span></div>
							<div class="clearfix"></div> 
						</div>
						<div class="links-istoric">
							<div class="boxLinkMes">
								<a href="online_messages/display/<?php echo urlencode($invoice->unid); ?>"><?php echo lang('ohi_messages');?></a>
								<a href="#" onclick="window.print();return false;"><?php echo lang('ohi_print');?></a>
							</div>
						</div>
					</div>
					
				</li>
				<?php endforeach;?>
			</ul>
			<?php echo $vars['pagination']; ?>
			<div class="clearfix" ></div>
			<br /><br /><br /><br /><br /><br />
		</div>
		
	</div>
	
	
	<div class="col-lg-3 col-sm-12">
		<div class="caseta minimize" id="caseta-tranzactii">
			<div class="minimize-caseta">+</div>
			<div class="caseta-titlu"><?php echo lang('ohi_recent_invoices');?></div>
			<ul class="caseta-tranzactii caseta-tranzactii-mesaje">
				<?php foreach ($vars['recent_invoices'] as $recent_invoice):?>
				<li>
					<div ><?php echo $recent_invoice->amount_in . $recent_invoice->currency_in; ?></div>
					<p class="para_mesaje"><?php echo $recent_invoice->frnz_name; ?></p>
					<p class="clearfix"></p>
				</li>
				<?php endforeach;?>
			</ul>	
			<div class="caseta-titlu" id="mesagerie-mesaje"><?php echo lang('ohi_recent_invoices');?></div>	
		</div>
	</div>
</div>

<!--cele doua div-uri de mai jos le tin ascunse pt ca am nevoie in custom.js de etichete-->
<div id = "close_details_label" style = "display:none"><?php echo lang('ohi_close_details')?></div>
<div id = "details_label" style = "display:none"><?php echo lang('ohi_details')?></div>