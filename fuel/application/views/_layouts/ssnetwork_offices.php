<?php
	$this->load->view('_blocks/ssheader');
	$CI->load->model('ss_network_model');
	$ss_offices = $CI->ss_network_model->list_items_with_city(1);
?>
<div class="container" >
	<?php $this->load->view('_blocks/ssmenuheader')?>
	
	<div id="banner-box">
		<div class="col-lg-12 col-sm-12">
			<?php echo (isset($banner_img) && $banner_img?'<div id = "banner-int"><img src="'.img_path($banner_img).'" alt="" /></div>':''); ?>
			<div class="titlu-pagina"><?php echo lang('network_title', $lang); ?></div>
		</div>
	</div>
	
	<div class="col-lg-12 col-sm-12">
		<nav class="meniu-interior">
			<div id="box-meniu-interior">
				<div id="button-meniu-interior"></div>
				<?php echo fuel_nav(
					array(	'group_id' => 'retea',
					'language' => $lang, 'depth' => 1, 
					'container_tag_class' => 'lista-nav-big', 
				'active_class' => 'activ', )); ?>
				<div class="clearfix"></div>
			</div>
		</nav>			
	</div>
	
	<div id="wrapper">
		<div class="col-lg-12 col-sm-12">
			<div class="caseta">
				<?php $locations = array(); $idx = 0; $locations = ''; $office_data = array(); foreach ($ss_offices as $key => $value):?>
				<div class="letter-box">
					<div class="network-letter col-lg-1 col-sm-1"><?php echo $key;?></div>
					<ul class="network-list col-lg-11 col-sm-11">
						<?php 
            foreach ($value as $office) :
						$idx++;
						$office_info = $office->city_name . '<br/>'.
							$office->address . '<br/>'.
							$office->phone . '<br/>'.
							$office->email .'<br/>';
						
						$office_details = lang('network_bh') . ': '. lang('network_mon') .' - ' . lang('network_fri') . ' ' .date('H:i',strtotime($office->bh_week_start)).' - '. date('H:i',strtotime($office->bh_week_end));
						
						$office_details .= 
						((strtotime($office->bh_break_start) != strtotime('00:00:00')) && (strtotime($office->bh_break_end) != strtotime('00:00:00'))) ? '(' . lang('network_break') . ' '. date('H:i',strtotime($office->bh_break_start)) .' - '. date('H:i',strtotime($office->bh_break_end)).')': '';
						
						$office_details .= ((strtotime($office->bh_sat_start) != strtotime('00:00:00')) && (strtotime($office->bh_sat_end) != strtotime('00:00:00'))) ? '<br/>' . lang('network_sat') . ' '. date('H:i',strtotime($office->bh_sat_start)) .' - '. date('H:i',strtotime($office->bh_sat_end)): '';
						
						$office_details .= ((strtotime($office->bh_sun_start) != strtotime('00:00:00')) && (strtotime($office->bh_sun_end) != strtotime('00:00:00'))) ? '<br/>' . lang('network_sun') . ' '. date('H:i',strtotime($office->bh_sun_start)) .' - '. date('H:i',strtotime($office->bh_sun_end)): '';
						
						$office_details .= (!empty($office->details) && strlen($office->details) > 0) ? '<br/>' . str_replace(PHP_EOL, '', $office->details) : '';
						
						$office_info .= (!empty($office_details) && strlen($office_details) > 0) ? $office_details : '';
						
						$locations[] = array('info' => $office_info,
                                 'clat' => $office->coord_lat,
                                 'clong' => $office->coord_long );
						
						?>
						<li>
							<div class="col-lg-3 col-sm-12 oras"><?php echo $office->city_name;?></div>
							<div class="network-adresa col-lg-5 col-sm-6">
								<?php echo lang('network_phone'); ?>/ <?php echo $office->phone;?>
								<br/><?php echo lang('network_email'); ?>/ <a href="mailto: <?php echo $office->email;?>"><?php echo $office->email;?></a>
								<br/><?php echo lang('network_address'); ?>/ <?php echo $office->address;?>,  <?php echo $office->county;?> <a class="vezi-harta" href="javascript:mapView(<?php echo ($idx - 1)?>);"><?php echo lang('network_see_map'); ?></a>
							</div>
							<div class="program col-lg-4 col-sm-6">
								<?php echo $office_details;?>
							</div>
							<div class="clearfix"></div>
						</li>
						<?php endforeach; ?>
					</ul>
					<div class="clearfix"></div>
				</div>
				<?php endforeach; ?>
				<?php //$locations = substr($locations, 0, -1);?>
			</div>
		</div>
		<div class="col-lg-12 col-sm-12">
			<div class="caseta">
				<a name="gmap"></a>
				<div id="map" style="width:100%;height:500px;"></div>
				<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
				<script type="text/javascript">
					var locations = <?php echo json_encode($locations); ?>;
					var map=new google.maps.Map(document.getElementById('map'),{zoom:6,center: new google.maps.LatLng(45.9419466,25.0094303),mapTypeId:google.maps.MapTypeId.ROADMAP});
                    var infowindow = new google.maps.InfoWindow();
                    var marker=new Array();
                    $.each( locations, function(i, location) {
                        marker[i]=new google.maps.Marker({ position: new google.maps.LatLng(location.clat,location.clong),map:map});
                        google.maps.event.addListener(marker[i],'click',(function(marker, i) { return function(){ infowindow.setContent(location.info);infowindow.open(map,marker[i]);}})(marker, i));
                    });
                    function mapView(i){ infowindow.setContent(locations[i].info);infowindow.open(map,marker[i]); $('html,body').animate({ scrollTop: $('#map').offset().top}, 500); }

				</script>				
			</div>
		</div>
	</div>
	<?php $this->load->view('_blocks/ssfooter')?>
