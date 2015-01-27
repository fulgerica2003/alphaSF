var i = 0;

function casetaAbroad() {
	if( $(window).width() < 730){
		$('#abroad-1').appendTo('#caseta-abroad');
		} else {
		$('#abroad-2').appendTo('#caseta-abroad');
	}
}

function getCookie(cname) {
	var name = cname + "=";
	var ca = document.cookie.split(';');
	for(var i=0; i<ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1);
		if (c.indexOf(name) == 0) return c.substring(name.length,c.length);
	}
	return "";
}
var clang = getCookie('ss_lang');

$(document).ready(function(){
	casetaAbroad();
	
	
	$('#catSupplier').change(function() {
		$.get('online_invoices/suppliers_by_cat/'+$(this).val() , function( data ) {
			$('#supplier').empty().append(data);
			$('#customFields').empty();	
		});
	});
	
	$('#supplier').change(function() {			
		$.get('online_invoices/add_custom_fields/'+$(this).val()+'/'+clang , function( data ) {
			$('#customFields').empty().append(data);
		});
	});
	
	// online_payments
	var theLanguage = $('html').attr('lang');
	$('#currency').change(function() {
		$('#customFields').empty();
		$('#modIncasare').empty();
		$('#fee').val('');
		$('#total').val('');
		$.get('online_payments/update_ben_opts/'+$(this).val() , function( data ) {
			$('#modIncasare').empty().append(data);
		});
		$('.moneda-cas-tranz').text($(this).val().toUpperCase());
	});
	
	/*$('#modIncasare').change(function() {
		$('#customFields').empty();
		$('#fee').val('');
		$('#total').val('');
		amount = parseInt($('#amount').val()) + (parseInt($('#valFract').val())/100);
		$.get('online_payments/update_custom_fields', {payment_method: $(this).val(), currency: $('#currency').val(), amount: amount, lang: theLanguage}, function(data) {
			$('#customFields').empty().append(data);
		});
	});
	
	$('#amount').change(function() {
		$('#customFields').empty();
		$('#fee').val('');
		$('#total').val('');
		amount = parseInt($('#amount').val()) + (parseInt($('#valFract').val())/100);
		$.get('online_payments/update_custom_fields', {payment_method: $('#modIncasare').val(), currency: $('#currency').val(), amount: amount, lang: theLanguage}, function(data) {
			$('#customFields').empty().append(data);
		});
	});*/
	
	$('.online-update-custom-fields').change(function() {
		$('#customFields').empty();
		$('#fee').val('');
		$('#total').val('');
		if ($('#valFract').val().length === 0){
			valFract = 0;
		}else{
			valFract = $('#valFract').val();
		}
		amount = parseInt($('#amount').val()) + (parseInt(valFract)/100);
		$.get('online_payments/update_custom_fields', {payment_method: $('#modIncasare').val(), currency: $('#currency').val(), amount: amount, lang: theLanguage}, function(data) {
			$('#customFields').empty().append(data);
		});
	});
	
	$('.online-update-fee-total').change(function() {
		$('#fee').val('');
		$('#total').val('');
		if ($(this).attr('id') == 'tipPlataCont' || $('#tipPlataCont').attr('checked')){
			payment_type = 'cont';
		}else if ($(this).attr('id') == 'tipPlataCard' || $('#tipPlataCard').attr('checked')){
			payment_type = 'card';
		}
		if ($('#valFract').val().length === 0){
			valFract = 0;
		}else{
			valFract = $('#valFract').val();
		}
		amount = parseInt($('#amount').val()) + (parseInt(valFract)/100);
		$.get('online_payments/update_total', {payment_method: $('#modIncasare').val(), payment_type: payment_type, currency: $('#currency').val(), amount: amount}, function(data) {
			$('#fee').val(data.fee);
			$('#total').val(data.total);
			$('#valTransferSummary').text(amount ? amount : 0);
			$('#valComisionSummary').text(data.fee ? data.fee : 0);
			$('#valTotalSummary').text(data.total ? data.total : 0);
			$('.moneda-cas-tranz').text($('#currency').val().toUpperCase());
		}, "json");
	});
	
	var displayConfirm = $('input#displayConfirm').val();
	if (displayConfirm == 'true'){
		$('#displayConfirmModal').modal('show');
	}
	
	var the_terms = $("#the-terms");
    the_terms.click(function() {
        if ($(this).is(":checked")) {
            $("#acceptBtn").removeAttr("disabled");
			} else {
            $("#acceptBtn").attr("disabled", "disabled");
		}
	});
	
	var the_terms_retur = $("#the-terms-retur");
    the_terms_retur.click(function() {
        if ($(this).is(":checked")) {
            $("#acceptBtnRetur").removeAttr("disabled");
			} else {
            $("#acceptBtnRetur").attr("disabled", "disabled");
		}
	});
	
	var the_terms_corectie = $("#the-terms-corectie");
	var the_change_corectie = $("#the-change-corectie");
    
	the_terms_corectie.click(function() {
        if ($(this).is(":checked") && the_change_corectie.is(":checked")) {
            $("#acceptBtnCorectie").removeAttr("disabled");
			} else {
            $("#acceptBtnCorectie").attr("disabled", "disabled");
		}
	});
	
	
    the_change_corectie.click(function() {
        if ($(this).is(":checked") && the_terms_corectie.is(":checked")) {
            $("#acceptBtnCorectie").removeAttr("disabled");
			} else {
            $("#acceptBtnCorectie").attr("disabled", "disabled");
		}
	});
	
	// online invoices
		
	$('.invoice-update-fee-total').change(function() {
		$('#fee').val('');
		$('#total').val('');
		if ($(this).attr('id') == 'tipPlataCont' || $('#tipPlataCont').attr('checked')){
			payment_type = 'cont';
		}else if ($(this).attr('id') == 'tipPlataCard' || $('#tipPlataCard').attr('checked')){
			payment_type = 'card';
		}
		
		if (!$('#valFract').val()){
			valFract = 0;
		}else{
			valFract = $('#valFract').val();
		}
		amount = parseInt($('#valInt').val()) + (parseInt(valFract)/100);
		if (payment_type && amount){
			$.get('online_invoices/update_total', {payment_method: 6, payment_type: payment_type, currency: $('#currency').val().toLowerCase(), amount: amount}, function(data) {
			$('#fee').val(data.fee);
			$('#total').val(data.total);
		}, "json");
		}
		
	});
	
	// calc online_payments
	if ($('#cop_amount').val() && $('#cop_currency').val() && $('#cop_modIncasare').val()){
		// aici intra daca utilizatorul a dat submit, dar nu era autentificat si inchide fereastra de autentificare, fara a se autentifica
		$.get('calculator/update_total', {payment_method: $('#cop_modIncasare').val(), currency: $('#cop_currency').val(), amount: $('#cop_amount').val()}, function(data) {
			$('#cop_fee').replaceWith('<div id = "cop_fee"><span class="suma-transfer-bani">' + (data.fee ? data.fee : '0,0') +'</span> <span class="ron-transfer">RON</span></div>');
			$('#cop_total').replaceWith('<div id = "cop_total"><span class="suma-transfer-bani">' + (data.total ? data.total : '0,0') +'</span> <span class="ron-transfer">RON</span></div>');
			$('#cop_hidden_fee').val(data.fee);
			$('#cop_hidden_total').val(data.total);
		}, "json");
	}
	
	$('#cop_currency').change(function() {
		$('#cop_modIncasare').empty();
		$('#cop_fee').replaceWith('<div id = "cop_fee"><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">' + $('#cop_currency').val().toUpperCase() + '</span></div>');
		$('#cop_total').replaceWith('<div id = "cop_total"><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">' + $('#cop_currency').val().toUpperCase() + '</span></div>');
		$.get('calculator/update_ben_opts/'+$(this).val() , function( data ) {
			$('#cop_modIncasare').empty().append(data);
		});
	});
	
	$('.cop-update-fee-total').change(function() {
		$('#fee').val('');
		$('#total').val('');
		if ($(this).attr('id') == 'tipPlataCont'){
			payment_type = 'cont';
		} else if ($(this).attr('id') == 'tipPlataCard'){
			payment_type = 'card';
		}
		$.get('calculator/update_total', {payment_method: $('#cop_modIncasare').val(), payment_type: payment_type, currency: $('#cop_currency').val(), amount: $('#cop_amount').val()}, function(data) {
			$('#cop_fee').replaceWith('<div id = "cop_fee"><span class="suma-transfer-bani">' + (data.fee ? data.fee : '0,0') +'</span> <span class="ron-transfer">' + $('#cop_currency').val().toUpperCase() + '</span></div>');
			$('#cop_total').replaceWith('<div id = "cop_total"><span class="suma-transfer-bani">' + (data.total ? data.total : '0,0') +'</span> <span class="ron-transfer">' + $('#cop_currency').val().toUpperCase() + '</span></div>');
			$('#cop_hidden_fee').val(data.fee);
			$('#cop_hidden_total').val(data.total);
		}, "json");
	});
	
	// calc online_invoices
	
	if ($('#cof_amount').val()){
		if ($(this).attr('id') == 'tipPlataCont'){
			payment_type = 'cont';
		}else if ($(this).attr('id') == 'tipPlataCard'){
			payment_type = 'card';
		}
		$.get('calculator/update_total', {payment_method: 6, payment_type: payment_type, currency: 'ron', amount: $('#cof_amount').val()}, function(data) {
			$('#cof_fee').replaceWith('<div id = "cof_fee"><span class="suma-factura-online">' + (data.fee ? data.fee : '0,0') +'</span> RON</div>');
			$('#cof_total').replaceWith('<div id = "cof_total"><span class="suma-factura-online">' + (data.total ? data.total : '0,0') +'</span> RON</div>');
			$('#cof_hidden_fee').val(data.fee);
			$('#cof_hidden_total').val(data.total);
		}, "json");
	}
	
	$('.cof-update-fee-total').change(function() {
		if ($(this).attr('id') == 'tipPlataCont'){
			payment_type = 'cont';
		}else if ($(this).attr('id') == 'tipPlataCard'){
			payment_type = 'card';
		}
		$.get('calculator/update_total', {payment_method: 6, payment_type: payment_type, currency: 'ron', amount: $('#cof_amount').val()}, function(data) {
			$('#cof_fee').replaceWith('<div id = "cof_fee"><span class="suma-factura-online">' + (data.fee ? data.fee : '0,0') +'</span> RON</div>');
			$('#cof_total').replaceWith('<div id = "cof_total"><span class="suma-factura-online">' + (data.total ? data.total : '0,0') +'</span> RON</div>');
			$('#cof_hidden_fee').val(data.fee);
			$('#cof_hidden_total').val(data.total);
		}, "json");
	});
		

	
	// register + login
	$(function() {
		$( "#birth_date" ).datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat: "dd.mm.yy",
			yearRange: "-70:-14",
			monthNamesShort: ['01', '02', '03', '04', '05', '06',
            '07', '08', '09', '10', '11', '12'],
		});
	});
	
	
	
	if($('#tipPlataCard').attr('checked')) {
		$('#TABleft').addClass('lable1 radioactiv');
	} 
	
	if($('#tipPlataCont').attr('checked')) {
		$('#TABright').addClass('lable1 radioactiv');
	} 
	
	$('.radio-container1 .lable1').click(function(){
		$(this).siblings('input').click();
		$('.radio-container1 .lable1').removeClass('radioactiv');
		$(this).addClass('radioactiv');
	})
	
	$('#button-top, #button-top-map').on('click', function(){
		$("html, body").animate({ scrollTop: "0px" });
	});
	
	$('#button-lista-lang').on('click', function(){
		$('.language-box').css({height:(++i % 2) ? 'inherit' : 40});
	});
    
    $('.minimize-caseta').on('click', function(){
    	var el = $(this).parent(),
		curHeight = el.height(),
		autoHeight = el.css('height', 'auto').outerHeight();
		console.log(curHeight);
		if (el.hasClass('maximize')){
			el.height(curHeight).animate({height: 60}, 300);
			$(this).html('+');
			el.removeClass('maximize');
			} else {
			el.height(curHeight).animate({height: autoHeight}, 300);
    		$(this).html('-');
    		el.addClass('maximize');
		}
	});
    
    $('#button-meniu-interior').on('click', function(){
    	var el = $(this).parent(),
		curHeight = el.height(),
		autoHeight = el.css('height', 'auto').outerHeight();
		el.height(curHeight).animate({height: (curHeight== 60) ? autoHeight : 60}, 300);
	});
	
    if($('#slider').length){
	    $("#slider").carousel({
			interval: 5000 
		});
	    
	    $('#text-slider p').html($('.carousel-inner .active .text-slid').html())
	    if ($('.carousel-inner .active .slider-button').html()!= ''){
	    	$('#text-slider a').html($('.carousel-inner .active .slider-button').html()).css('display', 'block');
	    	$('#text-slider a').attr('href', $('.carousel-inner .active .slider-button').attr('href'));
		}
		$('#slider').on('slide.bs.carousel', function () {
	      	$('#text-slider p').animate({"opacity":"0.2"});
	     	$('#text-slider a').animate({"opacity":"0.2"});
		}); 
	    $('#slider').on('slid.bs.carousel', function () {
			$('#text-slider p').html($('.carousel-inner .active .text-slid').html()).animate({"opacity":"1"});
			
	       	if ($('.carousel-inner .active .slider-button').html()!= ''){
	      		$('#text-slider a').html($('.carousel-inner .active .slider-button').html()).animate({"opacity":"1"});
	    		$('#text-slider a').attr('href', $('.carousel-inner .active .slider-button').attr('href'));
				} else {
	    		$('#text-slider a').css('display', 'none');
			}
		}); 
	}
	
	$('#slider-news').anythingSlider({
		// mode				: "fade",
   		buildArrows         : false, 
  		buildNavigation     : true,
  		buildStartStop      : false,
  		infiniteSlides      : true,
  	 	hashTags            : false,
  	 	autoPlay            : true,
  	 	delay				: 5000,
  	 	resizeContents 		: true,
		expand				: true,
   		navigationFormatter : function(i, panel){ 
    		return '<div class="buton-selected-slide"></div>';
		}
	});
	
	$.urlParam = function(name){
		var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
		if (results==null){
			return null;
		}
		else{
			return results[1] || 0;
		}
	}
	
	var showLoginVal = $.urlParam('showLogin');
	var showLogin = (showLoginVal == null ? false: true);
	
	$('#pop-up-login').modal({
        show: showLogin,
        remote: 'auth/login?lang='+clang,
		backdrop: 'static',
	});
	
	$('.modal-content').on('click', '#sign-up-button', function(){ 
	 	//$('.modal-title').html('Sign up');
	 	$('#auth-pop').hide();
		$.get( "auth/register", { lang: clang }, function( data ) {
			$( '#auth-pop' ).html( data );
		});
		$('#auth-pop').fadeIn(800);
		$('#id-modal-header').show();
	});
	
	$('.modal-content').on('click', '#login-button-pop', function(){ 
	  	//$('.modal-title').html('Login');
		$('#id-modal-header').fadeOut(800);
	 	$('#auth-pop').hide();
		$.get( "auth/login", { lang: clang }, function( data ) {
			$( '#auth-pop' ).html( data );
		});
	 	$('#auth-pop').fadeIn(800);
	});
	
	$('.modal-content').on('click', '#recovery', function(event){ 
	  	//$('.modal-title').html('Login');
		event.preventDefault();
		$('#id-modal-header').fadeOut(800);
	 	$('#auth-pop').hide();
		$.get( "auth/forgot_password", { lang: clang }, function( data ) {
			$( '#auth-pop' ).html( data );
		});
	 	$('#auth-pop').fadeIn(800);
	});
	
	$('.modal-content').on('click', '#back-to-login', function(event){ 
	  	//$('.modal-title').html('Login');
		event.preventDefault();
		$('#id-modal-header').fadeOut(800);
	 	$('#auth-pop').hide();
		$.get( "auth/login", { lang: clang }, function( data ) {
			$( '#auth-pop' ).html( data );
		});
	 	$('#auth-pop').fadeIn(800);
	});
	
	$('.modal-content').on('submit', '#form-login-pop', function(event){
		// Stop form from submitting normally
		event.preventDefault();
		// Get some values from elements on the page:
		var $form = $( this ),
		url = $form.attr( "action" );
		// Send the data using post
		//var posting = $.post( url, { identity: term } );
		var posting = $.post( url + '?lang='+clang, $( "#form-login-pop" ).serialize() );
		// Put the results in a div
		posting.done(function( data ) {
			if (data === ""){
				window.location.replace(document.URL);
				var newURL = "";
				if (showLoginVal && showLoginVal == "op"){
					newURL = "online_payments";
				}
				if (showLoginVal && showLoginVal == "oi"){
					newURL = "online_invoices";
				}
				window.location.assign(newURL);
				}else{
				$('.modal-content').empty().append( data );
			}
		});
	});
	
	$('#subscribe').on('submit', function(event){
		// Stop form from submitting normally
		event.preventDefault();
		// Get some values from elements on the page:
		var $form = $( this ),
		url = $form.attr( "action" );
		// Send the data using post
		var posting = $.post( url + '?lang='+clang, $( this ).serialize(), function( data ) {
			if (data === ""){
				window.location.replace(document.URL);
				}else{
				if (data.error === true){
					$('#subscribeModalBody').empty().append( '<p class="eroare_factura2">' + data.result + '</p>');
					}else{
					$('#subscribeModalBody').empty().append( '<p class="eroare_factura">' + data.result + '</p>');
				}
				$('#subscribeModal').modal('show');
			}
		}, "json");
		
	});
	
	// aceste etichete le setez pe view (online_messages, online_history_payments, online_history_invoices) si sunt div-uri ascunse
	// am facut asa ca sa pot citi etichetele din lang
	var close_details_label = $( "#close_details_label" ).text();
	
	var details_label = $( "#details_label" ).text();
	
	$('.lista-mesaje').on('click', '.detalii-color', function() {
		if ($(this).parents('.lista-mesaje').hasClass('active') ){
			$(this).parents('.lista-mesaje').animate({ "height":40}, 500).removeClass('active');
			$(this).text(details_label);
			} else {
			var mata = parseInt($(this).parents('.lista-mesaje').find('.beneficiar').outerHeight())+81;
			$(this).parents('.lista-mesaje').animate({ "height":mata}, 500).addClass('active');
			$(this).text(close_details_label);
		}
		
		
	}); 
	
	$('.lista-istoric-tranzactii').on('click', '.cont-mesj', function() {
		var test = $(this).parent().siblings('.cip-alex');
		var limsg =  $(this).parents('.lista-istoric-tranzactii');
		if (limsg.hasClass('active') ){
			test.slideUp();
			$(this).text(details_label);
			limsg.removeClass('active');
			} else {
			
			test.slideDown()
			test.addClass('active');
			$(this).text(close_details_label);
			limsg.addClass('active');
		}
		
		
	});
	
	$(document).on("click", "#retur_link", function () {
		var unid = $(this).data('id');
		$(".modal-body #modal_unid").text( unid );
		$(".modal-body #hidden_modal_unid").val( unid );
	});
	
	$(document).on("click", "#corectie_link", function () {
		var unid = $(this).data('id');
		$(".modal-body #hidden_modal_unid").val( unid );
		//var mydata = $(".modal-body #correction_fields").text();
		//if (!mydata){
		$.post('online_payments/get_correction', {myunid: unid}, function(data) {
			var obj = jQuery.parseJSON( data );
			
			if (obj.ben_name){
				$(".modal-body #ohp_correction_ben_name").removeAttr("style");
				$(".modal-body #ohp_correction_ben_name #ben_name").html(obj.ben_name);
				$(".modal-body #hidden_ben_name").val( obj.ben_name );
			}
			
			if (obj.ben_surname){
				$(".modal-body #ohp_correction_ben_surname").removeAttr("style");
				$(".modal-body #ohp_correction_ben_surname #ben_surname").html(obj.ben_surname);
				$(".modal-body #hidden_ben_surname").val( obj.ben_surname );
			}
			
			if (obj.ben_phone){
				$(".modal-body #ohp_correction_ben_phone").removeAttr("style");
				$(".modal-body #ohp_correction_ben_phone #ben_phone").html(obj.ben_phone);
				$(".modal-body #hidden_ben_phone").val( obj.ben_phone );
			}
			
			if (obj.ben_email){
				$(".modal-body #ohp_correction_ben_email").removeAttr("style");
				$(".modal-body #ohp_correction_ben_email #ben_email").html(obj.ben_email);
				$(".modal-body #hidden_ben_email").val( obj.ben_email );
			}
			
			if (obj.ben_iban){
				$(".modal-body #ohp_correction_ben_iban").removeAttr("style");
				$(".modal-body #ohp_correction_ben_iban #ben_iban").html(obj.ben_iban);
				$(".modal-body #hidden_ben_iban").val( obj.ben_iban );
			}
			
			if (obj.ben_address){
				$(".modal-body #ohp_correction_ben_address").removeAttr("style");
				$(".modal-body #ohp_correction_ben_address #ben_address").html(obj.ben_address);
				$(".modal-body #hidden_ben_address").val( obj.ben_address );
			}
			
			if (obj.ben_city){
				$(".modal-body #ohp_correction_ben_city").removeAttr("style");
				$(".modal-body #ohp_correction_ben_city #ben_city").html(obj.ben_city);
				$(".modal-body #hidden_id_ben_city").val( obj.id_ben_city );
			}
		});
	//}	
});
});

$( window ).resize(function() {
	
	casetaAbroad();
	var devicewidth = $(window).width();
	switch (true) {
        case (devicewidth > 730):
		$('.caseta').removeAttr('style');
		$('.minimize-caseta').html('+');
        case (devicewidth > 1199):
		$('#box-meniu-interior').removeAttr('style');
		break;
	}
	$('.lista-mesaje.active').each(function(){
		$(this).height($(this).find('.beneficiar').outerHeight()+41)
	}); 
});

