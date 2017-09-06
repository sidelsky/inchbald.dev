<!doctype html>
<html <?php language_attributes(); ?>>

	<head>
		<title><?php wp_title(''); ?><?php if(wp_title('', false)) { echo ' |'; } ?> <?php bloginfo('name'); ?></title>

		<meta charset="<?php bloginfo('charset'); ?>" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=device-width,initial-scale=1.0" />

		<link href="<?php echo get_template_directory_uri(); ?>/assets/img/favicon.ico" rel="shortcut icon" />

		<?php wp_head(); ?>
	</head>

	<body <?php body_class(); ?>>
		<?php
			//Include SVG Sprite
			include('assets/build/svg-sprite.svg');

			/*
			* Mobile overlay menu
			*/
			include('partials/mobile-navigation.php');

			/*
			* Language
			*/
			include('language/en.php');


		?>

		<div class="page-wrap">

			<div class="header-wrapper" id="header-wrapper">

				<div class="a-search-form" id="search-form">
					<?php include 'searchform.php'; ?>
				</div>

				<?php include 'partials/header-bar.php'; ?>

			</div>

			<?php
				include('partials/hero-carousel.php');

				include('partials/subpage-hero.php');
			 ?>
