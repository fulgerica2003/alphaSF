<!DOCTYPE html>
<!--[if lte IE 7]><html class=" lang="<?php echo $lang; ?>"ie7"><![endif]-->
<!--[if IE 8]><html class="ie8" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if !IE]><!--><html lang="<?php echo $lang; ?>"><!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title><?php echo fuel_var('page_title', ''); ?> - <?=$this->fuel->config('site_name')?></title>
	<meta name="keywords" content="<?php echo fuel_var('meta_keywords'); ?>">
	<meta name="description" content="<?php echo fuel_var('meta_description'); ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<?php echo css('bootstrap,style,fonts').css($css); ?>
	
	<?php echo jquery('1.11.1'); ?>
	<?php echo js('bootstrap.min,jquery.anythingslider.min,custom'); ?>

	<!--[if lt IE 9 ]> <script src="/js/html5shiv.js?c=943912800" type="text/javascript" charset="utf-8"></script>
	<script src="/js/respond.js?c=943912800" type="text/javascript" charset="utf-8"></script>
	 <![endif]-->
	<base href="<?php echo site_url(); ?>" />
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0" />
	<meta name="robots" content="noindex" />
</head>
<body>