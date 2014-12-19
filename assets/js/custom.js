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
	
$(function() {
    $( "#birth_date" ).datepicker({
      changeMonth: true,
      changeYear: true,
	  dateFormat: "dd.mm.yy",
	  yearRange: "-70:-14"
    });
  });
	
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

