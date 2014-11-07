<?php
	$this->load->view('_blocks/ssheader');
	$CI->load->model('news_model');
	$ssNews = $CI->news_model->find_all_array(array('language' => $lang, 'published' => 'yes'), 'publish_date desc');
?>
<div class="container" >
	<?php $this->load->view('_blocks/ssmenuheader')?>
	
	<div id="banner-box">
		<div class="col-lg-12 col-sm-12">
			<?php echo (isset($banner_img) && $banner_img?'<div id = "banner-int"><img src="'.img_path($banner_img).'" alt="" /></div>':''); ?>
			<div class="titlu-pagina"><?php echo lang('news_title'); ?></div>
		</div>
	</div>
	
	
	<div id="wrapper">
		<div class="col-lg-9 col-sm-12">
			<div class="caseta page-text">
				<ul class="news-list">
					<?php $ni = 0; foreach($ssNews as $news) : $ni++; ?>
					<li>
						<div class="news-date col-lg-3 col-sm-3"><?php echo strftime('%#d %B %Y', strtotime($news['publish_date'])); ?></div>
						<div class="col-lg-9 col-sm-9"><span class="news-exp"><?php echo $news['title']; ?></span><a class="news-citeste">Citeste→</a></div>
					</li>
					<?php endforeach; ?>
				</ul>
				<div id="more-news">MAI VECHI</div>
				
			</div>
		</div>
		
		<?php $this->load->view('_blocks/caseta-online')?>
		<div class="col-lg-3 col-sm-6">
			<div class="caseta minimize" id="caseta-calculator">
				<div class="minimize-caseta">+</div>
				<div class="caseta-titlu">Calculator<a href="#" id="calc-login">LOGIN</a></div>
				
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
		</div>
	</div>
	
	<?php $this->load->view('_blocks/ssfooter')?>
