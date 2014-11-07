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
	$('.radio-container .lable').click(function(){
		$(this).siblings('input').click();
		$('.radio-container .lable').removeClass('radioactiv');
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
        remote: 'login.php'
	 });
	 
	 $('.modal-content').on('click', '#sign-up-button', function(){ 
	 	$('.modal-title').html('Sign up');
	 	$('#login-pop').hide();
	 	$('#sign-up-pop').fadeIn(800);
	 });
	 
	  $('.modal-content').on('click', '#login-button-pop', function(){ 
	  	$('.modal-title').html('Login');
	 	$('#sign-up-pop').hide();
	 	$('#login-pop').fadeIn(800);
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

