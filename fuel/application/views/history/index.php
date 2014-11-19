<table cellpadding=0 cellspacing=10>
	<tr>
		<th>Referinta</th>
		<th>Tip tranzactie</th>
		<th>Mesaj</th>
		<th>Data</th>
	</tr>
	<?php foreach ($messages as $message):?>
		<tr>
			<td><?php echo htmlspecialchars($message->unid,ENT_QUOTES,'UTF-8');?></td>
			<td><?php echo htmlspecialchars($message->tx_type,ENT_QUOTES,'UTF-8');?></td>
			<td><?php echo htmlspecialchars($message->message,ENT_QUOTES,'UTF-8');?></td>
            <td><?php echo htmlspecialchars($message->date_added,ENT_QUOTES,'UTF-8');?></td>
		</tr>
	<?php endforeach;?>
</table>

<p><?php echo anchor('invoices/newInvoice', 'Factura noua')?> | <?php echo anchor(last_url(), 'Inapoi')?></p>