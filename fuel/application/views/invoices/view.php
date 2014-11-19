<table cellpadding=0 cellspacing=10>
	<tr>
		<td>Referinta</td>
		<td><?php echo htmlspecialchars($invoice->unid,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Data</td>
		<td><?php echo htmlspecialchars($invoice->date_added,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Suma</td>
		<td><?php echo htmlspecialchars($invoice->amount,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Moneda</td>
		<td><?php echo htmlspecialchars($invoice->currency,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Tip plata</td>
		<td><?php echo htmlspecialchars($invoice->id_payment_type,ENT_QUOTES,'UTF-8');?></td>
	</tr>	
	<tr>
		<td>Furnizor</td>
		<td><?php echo htmlspecialchars($invoice->name,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Stare</td>
		<td><?php echo htmlspecialchars($invoice->status,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Comision</td>
		<td><?php echo htmlspecialchars($invoice->fee,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Total</td>
		<td><?php echo htmlspecialchars($invoice->total,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Alte campuri</td>
		<td>TODO: valoare</td>
	</tr>
</table>

<p><?php echo anchor('invoices/newInvoice', 'Factura noua')?> | <?php echo anchor('invoices/', 'Lista facturi')?></p>