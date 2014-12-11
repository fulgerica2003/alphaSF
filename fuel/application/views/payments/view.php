<table cellpadding=0 cellspacing=10>
	<tr>
		<td>Referinta</td>
		<td><?php echo htmlspecialchars($payment->unid,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Data</td>
		<td><?php echo htmlspecialchars($payment->date_added,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Suma</td>
		<td><?php echo htmlspecialchars($payment->amount_in,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Moneda</td>
		<td><?php echo htmlspecialchars($payment->currency_in,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Tip plata</td>
		<td><?php echo htmlspecialchars($payment->id_payment_type,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Stare</td>
		<td><?php echo htmlspecialchars(get_status_label($payment->status),ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Comision</td>
		<td><?php echo htmlspecialchars($payment->fee,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Total</td>
		<td><?php echo htmlspecialchars($payment->total,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Modalitate de plata beneficiar</td>
		<td><?php echo htmlspecialchars(get_label($payment->payment_method),ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Oras beneficiar</td>
		<td><?php echo htmlspecialchars($payment->ben_city,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Adresa beneficiar</td>
		<td><?php echo htmlspecialchars($payment->ben_address,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Nume</td>
		<td><?php echo htmlspecialchars($payment->ben_surname . ' ' . $payment->ben_name,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Telefon</td>
		<td><?php echo htmlspecialchars($payment->ben_phone,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>Adresa de email</td>
		<td><?php echo htmlspecialchars($payment->ben_email,ENT_QUOTES,'UTF-8');?></td>
	</tr>
	<tr>
		<td>IBAN</td>
		<td><?php echo htmlspecialchars($payment->ben_iban,ENT_QUOTES,'UTF-8');?></td>
	</tr>
</table>

<p><?php echo anchor('payments/add', 'Plata noua')?> | <?php echo anchor('payments/', 'Lista plati')?></p>