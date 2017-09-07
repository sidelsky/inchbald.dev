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
			include('content/en.php');


		?>

		<div class="page-wrap">

			<div class="header-wrapper" id="header-wrapper">

				<div class="a-search-form" id="search-form">
					<?php include 'searchform.php'; ?>
				</div>

				<header class="page-header">

				    <!-- Logo -->
				    <div class="page-header__column page-header__column--logo">
				        <?php include 'partials/inchbald-logo.php'; ?>
				    </div>

				    <!-- Navigation -->
				    <div class="page-header__column page-header__column--navigation u-hide-below--large">
				        <nav class="a-site-nav">
				            <?php
				                //Nav Menu
				                $args = array(
				                    'container' =>	'',
				                    'echo' =>	true,
				                    'items_wrap' =>	'<ul class="a-site-nav__menu">%3$s</ul>'
				                );
				                wp_nav_menu($args);
				            ?>
				        </nav>
				    </div>

				    <!-- Search and Portal-->
				    <div class="page-header__column page-header__column--search-portal u-hide-below--large">

				        <div class="page-header__column page-header__column--search">
				            <a href="#" class="search" data-search-button>

				                <svg class="icon icon--search" id="search-icon">
				                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-search" viewBox="0 0 32 32"></use>
				                </svg>

				                <svg class="icon icon--close" id="close-icon">
				                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-close" viewBox="0 0 32 32"></use>
				                </svg>

				            </a>
				        </div>

						<?php include('partials/portal.php'); ?>

				    </div>

				    <div class="page-header__column page-header__column--search u-hide-above--large">
				        <a href="#" class="search" data-search-button>

				            <svg class="icon icon--search" id="search-icon">
				                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-search" viewBox="0 0 32 32"></use>
				            </svg>

				            <svg class="icon icon--close" id="close-icon">
				                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-close" viewBox="0 0 32 32"></use>
				            </svg>

				        </a>
				    </div>

				    <div class="page-header__column page-header__column--search u-hide-above--large">
				    <div class="c-hamburger__container">
				        <div class="c-hamburger c-hamburger--htx" data-hamburger-menu>
				            <span></span>
				        </div>
				    </div>


				</header>


			</div>

			<?php
				include('partials/hero-carousel.php');

				include('partials/subpage-hero.php');
			 ?>
