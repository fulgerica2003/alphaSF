<?php
/* template head */
/* end template head */ ob_start(); /* template body */ ?><!DOCTYPE html>
<!--[if lte IE 7]><html class=" lang="ro"ie7"><![endif]-->
<!--[if IE 8]><html class="ie8" lang="ro"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="ro"><![endif]-->
<!--[if !IE]><!--><html lang="ro"><!--<![endif]-->
<html>
<head>
	<meta charset="utf-8">
	<title><!--__FUEL_MARKER__0-->Home - Smith & Smith</title>
	<meta name="keywords" content="<!--__FUEL_MARKER__1-->">
	<meta name="description" content="<!--__FUEL_MARKER__2-->">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link href="/smith/assets/css/bootstrap.css?c=" media="all" rel="stylesheet"/>
	<link href="/smith/assets/css/style.css?c=" media="all" rel="stylesheet"/>
	<link href="/smith/assets/css/fonts.css?c=" media="all" rel="stylesheet"/>
		
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script><script>window.jQuery || document.write('<script src="/smith/assets/js/jquery.js?c="><\/script>');</script>	<script src="/smith/assets/js/bootstrap.min.js?c=" type="text/javascript" charset="utf-8"></script>
	<script src="/smith/assets/js/jquery.anythingslider.min.js?c=" type="text/javascript" charset="utf-8"></script>
	<script src="/smith/assets/js/custom.js?c=" type="text/javascript" charset="utf-8"></script>
	
	<!--[if lt IE 9 ]> <script src="/js/html5shiv.js?c=943912800" type="text/javascript" charset="utf-8"></script>
	<script src="/js/respond.js?c=943912800" type="text/javascript" charset="utf-8"></script>
	 <![endif]-->
	<base href="http://localhost/smith/" />
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0" />
	<meta name="robots" content="noindex" />
</head>
<body><div id="slide-container">
	<div id="slider"  class="carousel slide">
		<div class="carousel-inner">
									<div class="item active" id="home-carousel-inner">
				<div class="item-image" style="background-image:url('/smith/assets/images/slides/slide1.jpg')"></div>
				<p class="text-slid">Transfer de bani. </p>
				<a class="slider-button" href="home">Test</a>
			</div>
						<div class="item">
				<div class="item-image" style="background-image:url('/smith/assets/images/slides/slide2.jpg')"></div>
				<p class="text-slid">Slide 2</p>
				<a class="slider-button" href="home">Titlu buton 2</a>
			</div>
								</div>
	    <a class="left carousel-control" href="#slider" data-slide="prev"></a>
	    <a class="right carousel-control" href="#slider" data-slide="next"></a>
	</div>	
</div>
<div class="container">
	<div id="text-slider">
		<p></p>
		<a href="#"></a>
	</div>
</div>

<div class="container main-container" >
	
	<div id="header">
	<div class="col-lg-12 col-sm-24">
		<div class="main-box" id="heade-menu">
			<a href="http://localhost/smith/" id="logo-box"></a>
			<div id="lang-container">
				<a href ="#" class="login-header" data-toggle="modal" data-target="#pop-up-login">
					<span id="login-button" >LOGIN</span>
				</a>
				<div class="modal fade" id="pop-up-login" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&amp;times;</button>
								<h4 class="modal-title" id="myModalLabel">Modal title</h4>
							</div>
							<div class="modal-body">
								<h3>Modal Body</h3>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div>
						</div>
					</div>
				</div>
				<div class="language-box">
					<ul id="lista-lang">
						<li><a href="/<!--__FUEL_MARKER__3-->smith/page_router" class="buton-lang active-lang" id="romana">RO</a></li>
						<li><a href="/<!--__FUEL_MARKER__4-->smith/it/" class="buton-lang" id="italiana">IT</a></li>
						<li><a href="/<!--__FUEL_MARKER__5-->smith/sp/" class="buton-lang" id="spaniola">SP</a></li>
						<li><a href="/<!--__FUEL_MARKER__6-->smith/en/" class="buton-lang" id="engleza">EN</a></li>
						
					</ul>
					<div id="button-lista-lang"></div>
				</div>
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="menu-button-red">MENU</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			
			<nav class="navbar navbar-default menu-box" role="navigation" id="nav-main">
				<div>
				  	<div class="collapse navbar-collapse" id="navbar-collapse">
						
<ul class="nav navbar-nav lista-nav-big">
	<li class="first activ"><a href="http://localhost/smith/home">HOMEPAGE</a></li>
	<li class="last"><a href="http://localhost/smith/stiri">STIRI</a></li>
</ul>
					</div>  
				</div>
			</nav>
			
		</div> 
	</div>
</div>	
	
	<div id="content-wrapper">
		<div class="col-lg-3 col-sm-6">  
	<div class="caseta caseta-bkg  minimize" id="caseta-online">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu">Transfer online de bani</div>
		<div class="caseta-content">
			Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.		</div>
		<a href="<!--__FUEL_MARKER__7--><?php echo site_url('home');?>" class="detail-link">Detalii</a>
	</div>
</div>		<div class="col-lg-3 col-sm-6">
	<div class="caseta caseta-bkg minimize" id="caseta-acasa">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu">Acasa (HD)</div>
		<div class="caseta-content">
			Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.		</div>
		<a href="<!--__FUEL_MARKER__8--><?php echo site_url('home');?>" class="detail-link">Detalii</a>
	</div>
</div>		<div class="col-lg-3 col-sm-6">
			<div class="caseta minimize" id="caseta-calculator">
	<div class="minimize-caseta">+</div>
	<div class="caseta-titlu">Calculator<a href="#" id="calc-login data-toggle="modal" data-target="#pop-up-login"">LOGIN</a></div>
		
		<form id="form-calc" action="" method="post">
			<select id="select-from">
				<option value="1">From</option>
				<option value="2">Test</option>
			</select>
			<select id="select-to">
				<option value="1">To</option>
				<option value="2">Test</option>
			</select>
			<div class="radio-container">
				<div class="lable radioactiv" id="credit">Credit Card</div>
				<input type="radio" name="cont" checked value="1">
			</div>
			<div class="radio-container">
				<div class="lable" id="account">Account </div>
				<input type="radio" name="cont" value="2">
			</div>
			<div class="div-input">
				<div class="input-lable">Ammount (Euro)</div>
				<input type="text" name="ammount" value="0,0">
			</div>
		</form>	
		<div class="box-rezultate">
			Commission transfer <span class="rezulatate">+ 0,0</span>
		</div>	  
		<div class="box-rezultate">
			<input type="checkbox" name="home" value="home">Home delivery <span class="rezulatate">+ 0,0</span>
		</div>	
		<div class="total-calc">
			Total
			<span id="rezultat">0,0 &euro;</span>
		</div>		
	</div>
</div>				<div class="col-lg-3 col-sm-6">
	<div class="caseta caseta-bkg minimize" id="caseta-cash">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu">Transfer de bani lichizi</div>
		<div class="caseta-content">
			Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.		</div>
		<a href="<!--__FUEL_MARKER__9--><?php echo site_url('home');?>" class="detail-link">Detalii</a>
	</div>
</div>			<div class="col-lg-6 col-sm-12">  
	<div class="caseta minimize special-height" id="caseta-abroad">
		<div class="caseta-titlu"><span id="intreg">Comisioane Romania - Abroad</span><span id="prescurtare">Commissions Cash RO - Abr</span></div>
		<div class="minimize-caseta">+</div>
		<div class="col-lg-6 col-sm-6" id="abroad-1"> 
			<div class="caseta-content padding-fix">
				Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.			</div>
			<a href="#" class="detail-link">Toate comisioanele</a>
		</div>
		<div class="col-lg-6 col-sm-6" id="abroad-2"> 
			<div class="caseta-content caseta-form">
				<table border="0" cellpadding="0" id="table-ammount" width="100%">
					<tr>
						<td>Ammount</td><td>Our Fee</td>
					</tr>
					<tr>
						<td>1—50&euro;</td><td>3,5&euro;</td>
					</tr>
					<tr>
						<td>501—600&euro;</td><td>16&euro;</td>
					</tr>
					<tr>
						<td>901—1000&euro;</td><td>28&euro;</td>
					</tr>
				</table>
			</div>
		</div>
		
	</div>
</div>			<div class="col-lg-3 col-sm-6">  
	<div class="caseta minimize special-height">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu">Reteaua noastra</div>
		
		<div class="caseta-content">
			Lorem ipsum dolor sit amet, money transfer, adipiscing elit. Pellentesque est ante, fermentum at tellus eget.		</div>
		<a href="<!--__FUEL_MARKER__10--><?php echo site_url('home');?>" class="detail-link">Afla mai multe</a>
	</div>
</div>			<div class="col-lg-3 col-sm-6">
	<div class="caseta minimize slider-news">
		<div class="minimize-caseta">+</div>
		<div class="caseta-titlu">Stiri</div>
		<ul id="slider-news">
						<li>
				<p class="news-slide-titlu">Stirea numarul 4</p>
				<p class="news-slide-data">- 7 November 2014</p>
				<p ><a href = "http://localhost/smith/stiri" class="news-slide-link">CITESTE MAI DEPARTE</a></p>
			</li>
						<li>
				<p class="news-slide-titlu">Un nou agent SS la Filiasi</p>
				<p class="news-slide-data">- 6 November 2014</p>
				<p ><a href = "http://localhost/smith/stiri" class="news-slide-link">CITESTE MAI DEPARTE</a></p>
			</li>
						<li>
				<p class="news-slide-titlu">Program agentii SS</p>
				<p class="news-slide-data">- 6 November 2014</p>
				<p ><a href = "http://localhost/smith/stiri" class="news-slide-link">CITESTE MAI DEPARTE</a></p>
			</li>
					</ul>
	</div>
</div>			<div class="col-lg-3 col-sm-6">  
	<div class="caseta moneygram">
		<!--__FUEL_MARKER__11--><img src="<?php echo img_path('banners/moneygram.png');?>" alt="" />	</div>
</div>		</div>
		
	<div id="footer">
	<div class="col-lg-12 col-sm-12">
		<div class="caseta">
			<div class="col-lg-6 col-sm-12">
				<div class="col-lg-4 col-sm-4">
					<div class="titlu-lista-footer">Money Transfer Online</div>
					<ul class="liste-footer">
						<li><a href="#" >CARD</a></li>
						<li><a href="#" >ACCOUNT</a></li>
						<li><a href="#" >ACASA (HD)</a></li>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4">
					<div class="titlu-lista-footer">Money Transfer Cash</div>
					<ul class="liste-footer">
						<li><a href="#" >ROMANIA — ABROAD</a></li>
						<li><a href="#" >ROMANIA — ROMANIA</a></li>
						<li><a href="#" >ABROAD — ROMANIA</a></li>
						<li><a href="#" >ACASA (HD)</a></li>
					</ul>
				</div>
				<div class="col-lg-4 col-sm-4">
					<div class="titlu-lista-footer">About us</div>
					<ul class="liste-footer">
						<li><a href="#" >ABOUT US</a></li>
						<li><a href="#" >NEWS</a></li>
						<li><a href="#" >OUR PARTNERS</a></li>
						<li><a href="#" >BECOME AGENT</a></li>
						<li><a href="#" >OUR NETWORK</a></li>
						<li><a href="#" >CONTACT</a></li>
					</ul>
				</div>
			</div>
			
			<div class="col-lg-6 col-sm-12">
				<div class="col-lg-12 col-sm-12">
					<div class="titlu-lista-footer">Suport 24/7</div>
					
					<div class="caseta-content col-lg-10 col-sm-9" >
						<div id="suport-image"><img src="assets/img/poza-suport.jpg"></div>
						Nu ezitati sa ne contactati in orice moment. <br/>Telefon 004 021 335 88 00 si 004 0724 388 388 sau pe email la adresa <a href="#">hello@smith.com.ro</a>					</div>
					<div class="col-lg-1" id="button-top">SUS</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		
	</div>
	<div class="col-lg-12 col-sm-12">
		<div class="caseta thin-box">
			<div class="col-lg-6 col-sm-12">
				<div class="col-lg-2 col-sm-2">
					ANPC 
				</div>
				<div class="col-lg-5 col-sm-5">
					Conditii generale ale afacerii  
				</div>
				<div class="col-lg-5 col-sm-5">
					Data Protection
				</div>
			</div>
			<div class="col-lg-6 col-sm-12">
				<div id="footer-right">©2014. Smith&Smith. Toate drepturile rezervate.</div>
			</div>
			<div class="clearfix"></div>
		</div> 
		
	</div>
</div>

</div>
</body>
</html>			<?php  /* end template body */
return $this->buffer . ob_get_clean();
?>