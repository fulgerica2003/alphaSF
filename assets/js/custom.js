var i = 0;

function casetaAbroad() {
	if( $(window).width() < 730){
		$('#abroad-1').appendTo('#caseta-abroad');
	} else {
		$('#abroad-2').appendTo('#caseta-abroad');
	}
}

$(document).ready(function(){
	casetaAbroad();
	

	$('#catSupplier').change(function() {
			$.get('inv/suppliers_by_cat/'+$(this).val() , function( data ) {
 				$('#supplier').empty().append(data);
				$('#customFields').empty();	
			});
	});

	$('#supplier').change(function() {			
			$.get('inv/add_custom_fields/'+$(this).val() , function( data ) {
				$('#customFields').empty().append(data);
			});
	});
	
	// online_payments
	$('#currency').change(function() {
			$('#customFields').empty();
			$('#modIncasare').empty();
			$('#fee').val('');
			$('#total').val('');
			$.get('online_payments/update_ben_opts/'+$(this).val() , function( data ) {
				$('#modIncasare').empty().append(data);
			});
	});
	
	$('#modIncasare').change(function() {
			$('#customFields').empty();
			$('#fee').val('');
			$('#total').val('');
			$.get('online_payments/update_custom_fields', {payment_method: $(this).val(), currency: $('#currency').val(), amount: $('#amount').val()}, function(data) {
				$('#customFields').empty().append(data);
			});
			$.get('online_payments/update_total', {payment_method: $(this).val(), currency: $('#currency').val(), amount: $('#amount').val()}, function(data) {
				$('#fee').val(data.fee);
				$('#total').val(data.total);
			}, "json");
	});
	
	$('#amount').change(function() {
			$('#customFields').empty();
			$('#fee').val('');
			$('#total').val('');
			$.get('online_payments/update_custom_fields', {payment_method: $('#modIncasare').val(), currency: $('#currency').val(), amount: $(this).val()}, function(data) {
				$('#customFields').empty().append(data);
			});
			$.get('online_payments/update_total', {payment_method: $('#modIncasare').val(), currency: $('#currency').val(), amount: $(this).val()}, function(data) {
				$('#fee').val(data.fee);
				$('#total').val(data.total);
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
	
	// calc online_payments
	$('#cop_currency').change(function() {
			$('#cop_modIncasare').empty();
			$('#cop_fee').replaceWith('<div id = "cop_fee"><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">RON</span></div>');
			$('#cop_total').replaceWith('<div id = "cop_total"><span class="suma-transfer-bani">0,0</span> <span class="ron-transfer">RON</span></div>');
			$.get('online_payments/update_ben_opts/'+$(this).val() , function( data ) {
				$('#cop_modIncasare').empty().append(data);
			});
	});
	
	$('#cop_modIncasare').change(function() {
			$.get('online_payments/update_total', {payment_method: $(this).val(), currency: $('#cop_currency').val(), amount: $('#cop_amount').val()}, function(data) {
				$('#cop_fee').replaceWith('<div id = "cop_fee"><span class="suma-transfer-bani">' + data.fee ? data.fee : '0,0' +'</span> <span class="ron-transfer">RON</span></div>');
				$('#cop_total').replaceWith('<div id = "cop_total"><span class="suma-transfer-bani">' + (data.total ? data.total : '0,0') +'</span> <span class="ron-transfer">RON</span></div>');
			}, "json");
	});
	
	$('#cop_amount').change(function() {
			$.get('online_payments/update_total', {payment_method: $('#cop_modIncasare').val(), currency: $('#cop_currency').val(), amount: $(this).val()}, function(data) {
				$('#cop_fee').replaceWith('<div id = "cop_fee"><span class="suma-transfer-bani">' + (data.fee ? data.fee : '0,0') +'</span> <span class="ron-transfer">RON</span></div>');
				$('#cop_total').replaceWith('<div id = "cop_total"><span class="suma-transfer-bani">' + (data.total ? data.total : '0,0') +'</span> <span class="ron-transfer">RON</span></div>');
			}, "json");
	});
	
	// calc online_invoices
	
	$('#cof_amount').change(function() {
			$.get('online_payments/update_total', {payment_method: 1, currency: 'ron', amount: $(this).val()}, function(data) {
				$('#cof_fee').replaceWith('<div id = "cof_fee"><span class="suma-factura-online">' + (data.fee ? data.fee : '0,0') +'</span> RON</div>');
				$('#cof_total').replaceWith('<div id = "cof_total"><span class="suma-factura-online">' + (data.total ? data.total : '0,0') +'</span> RON</div>');
			}, "json");
	});
	
	
	// register + login
	$(function() {
		$( "#birth_date" ).datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat: "dd.mm.yy",
			yearRange: "-70:-14"
		});
	});
  
  $('#birth_date').click(function() {			
			console.log('ceva');
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
	 
	 $('#pop-up-login').modal({
        show: false,
        remote: 'auth/login'
	 });
	 
	 $('.modal-content').on('click', '#sign-up-button', function(){ 
	 	//$('.modal-title').html('Sign up');
	 	$('#auth-pop').hide();
		$.get( "auth/register", function( data ) {
			$( '#auth-pop' ).html( data );
	 });
		console.log('loaded register');
		$('#auth-pop').fadeIn(800);
		$('#id-modal-header').show();
	 });
	 
	  $('.modal-content').on('click', '#login-button-pop', function(){ 
	  	//$('.modal-title').html('Login');
		$('#id-modal-header').fadeOut(800);
	 	$('#auth-pop').hide();
		$.get( "auth/login", function( data ) {
			$( '#auth-pop' ).html( data );
		});
	 	$('#auth-pop').fadeIn(800);
	 });
	 
	 $('.modal-content').on('click', '#recovery', function(event){ 
	  	//$('.modal-title').html('Login');
		event.preventDefault();
		$('#id-modal-header').fadeOut(800);
	 	$('#auth-pop').hide();
		$.get( "auth/forgot_password", function( data ) {
			$( '#auth-pop' ).html( data );
		});
	 	$('#auth-pop').fadeIn(800);
	 });
	 
	 $('.modal-content').on('click', '#back-to-login', function(event){ 
	  	//$('.modal-title').html('Login');
		event.preventDefault();
		$('#id-modal-header').fadeOut(800);
	 	$('#auth-pop').hide();
		$.get( "auth/login", function( data ) {
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
		var posting = $.post( url, $( "#form-login-pop" ).serialize() );
		// Put the results in a div
		posting.done(function( data ) {
			if (data === ""){
				window.location.replace(document.URL);
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
		var posting = $.post( url, $( this ).serialize(), function( data ) {
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
    
    
});

