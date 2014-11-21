<table cellpadding=0 cellspacing=10>
	<tr>
		<th>Referinta</th>
		<th>Data</th>
		<th>Suma</th>
		<th>Moneda</th>
		<th>Furnizor</th>
		<th>Stare</th>
		<th>Detalii</th>
		<th>Mesaje</th>
	</tr>
	<?php foreach ($invoices as $invoice):?>
		<tr>
            <td><?php echo htmlspecialchars($invoice->unid,ENT_QUOTES,'UTF-8');?></td>
            <td><?php echo htmlspecialchars($invoice->date_added,ENT_QUOTES,'UTF-8');?></td>
            <td><?php echo htmlspecialchars($invoice->amount,ENT_QUOTES,'UTF-8');?></td>
			<td><?php echo htmlspecialchars($invoice->currency,ENT_QUOTES,'UTF-8');?></td>
			<td><?php echo htmlspecialchars($invoice->name,ENT_QUOTES,'UTF-8');?></td>
			<td><?php echo htmlspecialchars(get_status_label($invoice->status),ENT_QUOTES,'UTF-8');?></td>
			<td><?php echo anchor("invoices/view/".$invoice->id, 'detalii') ;?></td>
			<td><?php echo anchor("history/index/".urlencode($invoice->unid), 'mesaje') ;?></td>
		</tr>
	<?php endforeach;?>
</table>

<p><?php echo anchor('invoices/add', 'Factura noua')?></p>