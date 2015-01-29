<div class="col-lg-3 col-sm-12">
	<div class="caseta minimize" id="caseta-tranzactii">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu"><?php echo lang('invoices_summary_title');?></div>
		<ul class="caseta-tranzactii">
			<li>
				<div><?php echo lang('invoices_summary_value');?></div>
				<div><span id="valFacturaSummary">0</span> <span class="moneda-cas-tranz" id="valFacturaM">RON</span></div>
				<p class="clearfix"></p>
			</li>
			<li>
				<div><?php echo lang('invoices_summary_fee');?></div>
				<div><span id="valComisionSummary">0</span> <span class="moneda-cas-tranz" id="valComisionM">RON</span></div>
				<p class="clearfix"></p>
			</li>
			<li>
			<div><?php echo lang('invoices_summary_total');?></a></div>
			<div><span id="valTotalSummary">0</span> <span class="moneda-cas-tranz" id="valTotalM">RON</span></div>
			<p class="clearfix"></p>
		</li>
	</ul>
	<div class="caseta-titlu" id="furnizorcaseta"><?php echo lang('invoices_summary_supplier');?></div>
	<ul class="casetuta-simpla-2">
		<li><?php echo lang('invoices_summary_supplier_name');?><span id = "numeFurnizorSummary"></span>
		</li>
		<span id = "customFieldsSummary"></span>
		
	</ul>
	<div></div>
	<div></div>
</div>
</div>