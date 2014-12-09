<div id="auth-pop">
	<div id = "id-modal-header" class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close-pop-up">Close</button>
		<p class="modal-title"><?php echo 'Utilizator blocat';?></p>
		<!-- <p><?php //echo lang('register_user_subheading');?></p> -->
	</div>
	
	<div class="modal-body">
		<!-- <div id="infoMessage"><?php //echo $message;?></div> -->
		<p class="eroare_factura2"><?php echo 'Utilizatorul a fost blocat. Accesati contul dumneavoastra de email si reactivati contul.'?></p>
		<div class="clearfix"></div>
		<div class="submit_succes_singup">
			<p><a href="auth/login" id="back-to-login"><?php echo lang('login_heading');?></a></p>
			<button class="agent-submit " type="button" data-dismiss="modal" aria-hidden="true" >OK</button>
		</div>
		<div class="clearfix"></div>
	</div>
</div>			