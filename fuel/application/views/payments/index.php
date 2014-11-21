<table cellpadding=0 cellspacing=10>
	<tr>
		<th>Referinta</th>
		<th>Data</th>
		<th>Suma</th>
		<th>Moneda</th>
		<th>Beneficiar</th>
		<th>Stare</th>
		<th>Detalii</th>
		<th>Mesaje</th>
	</tr>
	<?php foreach ($payments as $payment):?>
		<tr>
            <td><?php echo htmlspecialchars($payment->unid,ENT_QUOTES,'UTF-8');?></td>
            <td><?php echo htmlspecialchars($payment->date_added,ENT_QUOTES,'UTF-8');?></td>
            <td><?php echo htmlspecialchars($payment->amount,ENT_QUOTES,'UTF-8');?></td>
			<td><?php echo htmlspecialchars($payment->currency,ENT_QUOTES,'UTF-8');?></td>
			<td><?php echo htmlspecialchars($payment->ben_surname . ' ' . $payment->ben_name,ENT_QUOTES,'UTF-8');?></td>
			<td><?php echo htmlspecialchars(get_status_label($payment->status),ENT_QUOTES,'UTF-8');?></td>
			<td>
				<?php
					if ($payment->status == get_status('corr')){
						echo anchor("payments/correction/".urlencode($payment->id), 'corectie') .
						'/' .
						anchor("payments/refund/".urlencode($payment->id), 'retur');
					}else{
						echo anchor("payments/view/".$payment->id, 'detalii') ;
					}
					?></td>
			<td><?php echo anchor("history/index/".urlencode($payment->unid), 'mesaje') ;?></td>
			<td>
		</tr>
	<?php endforeach;?>
</table>

<p><?php echo anchor('payments/add', 'Plata noua')?></p>