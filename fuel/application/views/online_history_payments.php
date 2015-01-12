<div id="wrapper">
	<div class="col-lg-9 col-sm-12">
		<div class="caseta page-text text2">
			<div class="titluri-cont2"><?php echo lang('ohp_title');?></div>
			
			<ul id="lista-istoric">
				<li class="cap-lista">
					<div class="suma suma-data" id="suma-color"><?php echo lang('ohp_amount');?></div>
					<div class="moneda"></div>
					<div class="data-istoric "><?php echo lang('ohp_date');?></div>
					<div class="beneficiar tranzactii-beneficiar"><?php echo lang('ohp_recipient');?></div>
					<div class="detalii-istoric"><?php echo lang('ohp_details');?></div>
				</li>
							<?php foreach ($vars['payments'] as $payment):?>
				<li class="lista-istoric-tranzactii">
					<div class="suma suma-data"><?php echo $payment->amount_in; ?></div>
					<div class="moneda"><?php echo (strtolower($payment->currency_in) == 'ron' ? 'RON' : (strtolower($payment->currency_in) == 'eur' ? '&#8364;' : 'N/A'))?></div>
					<div class="data-istoric"><?php echo $payment->date_added; ?></div>
					<div class="beneficiar tranzactii-beneficiar"><?php echo $payment->ben_name . ' ' . $payment->ben_surname; ?></div>
					<div class="detalii-istoric detalii_mesaje"><span class="cont-mesj"><?php echo lang('ohp_details');?></span></div>
					<div class="cip-alex">
						<div class="contentMesaje">
							<div class="cipri-mesaj"><span><?php echo lang('ohp_date');?> </span><span><?php echo $payment->date_added; ?></span></div>
							<div class="cipri-mesaj"><span><?php echo lang('ohp_payment_type');?> </span><span><?php echo $payment->id_payment_type; ?></span></div>
							<div class="cipri-mesaj"><span><?php echo lang('ohp_currency');?> </span><span><?php echo (strtolower($payment->currency_in) == 'ron' ? 'RON' : (strtolower($payment->currency_in) == 'eur' ? 'Euro' : 'N/A'))?></span></div>
							<div class="cipri-mesaj"><span><?php echo lang('ohp_amount');?> </span><span><?php echo $payment->amount_in; ?></span></div>
							<div class="cipri-mesaj"><span><?php echo lang('ohp_payment_method');?> </span><span><?php echo get_label($payment->payment_method, $lang); ?></span></div>
							<div class="cipri-mesaj"><span><?php echo lang('ohp_currency_out');?> </span><span><?php echo $payment->currency_out; ?></span></div>
							<div class="cipri-mesaj"><span><?php echo lang('ohp_amount_cv');?> </span><span><?php echo $payment->amount_out; ?></span></div>
							<div class="cipri-mesaj specialMesaj"><span><?php echo lang('ohp_payer');?> </span><span><?php echo $payment->cl_prenume . ' ' . $payment->cl_nume; ?></span></div>
							<div class="cipri-mesaj specialMesaj"> <span><?php echo lang('ohp_recipient');?> </span><span><?php echo $payment->ben_name . ' ' . $payment->ben_surname; ?><br /><?php echo $payment->ben_email; ?><br /><br /><?php echo $payment->ben_phone; ?><br /><br /><?php echo $payment->ben_address; ?><br /><br /><?php echo $payment->ben_city; ?></span></div>
							<div class="clearfix"></div>
						</div>
						<div class="links-istoric">
								<div class="boxLinkMes">
								<a href="online_messages/display/<?php echo urlencode($payment->unid); ?>"><?php echo lang('ohp_messages');?></a>
								<a href="#" onclick="window.print();return false;"><?php echo lang('ohp_print');?></a>
								<a href="#" ><?php echo lang('ohp_return');?></a>
								<a href="#" ><?php echo lang('ohp_correction');?></a>
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
			<div class="caseta-titlu"><?php echo lang('ohp_recent_payments');?></div>
			<ul class="caseta-tranzactii caseta-tranzactii-mesaje">
				<?php foreach ($vars['recent_payments'] as $recent_payment):?>
				<li>
					<div ><?php echo $recent_payment->amount_in . $recent_payment->currency_in; ?></div>
					<p class="para_mesaje"><?php echo $recent_payment->ben_name . ' ' . $recent_payment->ben_surname; ?></p>
					<p class="clearfix"></p>
				</li>
				<?php endforeach;?>
				
			</ul>	
			<div class="caseta-titlu" id="mesagerie-mesaje"><?php echo lang('ohp_recent_payments');?></div>	
		</div>
	</div>
</div>

<!--cele doua div-uri de mai jos le tin ascunse pt ca am nevoie in custom.js de etichete-->
<div id = "close_details_label" style = "display:none"><?php echo lang('ohp_close_details')?></div>
<div id = "details_label" style = "display:none"><?php echo lang('ohp_details')?></div>