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
		?>

		<div class="page-wrap">

			<div class="header-wrapper" id="header-wrapper">

				<div class="a-search-form" id="search-form">
					<?php include 'searchform.php'; ?>
				</div>

				<header class="page-header">

					<!-- Logo -->
					<div class="page-header__column page-header__column--logo">
						<a href="<?php echo home_url(); ?>" class="inchbald-logo--link">
							<svg class="icon icon--inchbald-logo">
								<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-inchbald"></use>
							</svg>
						</a>
					</div>

					<!-- Navigation -->
					<div class="page-header__column page-header__column--navigation">
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
					<div class="page-header__column page-header__column--search-portal">

						<div class="page-header__column page-header__column--search">
							<a href="#" class="search" id="search-button">

								<svg class="icon icon--search" id="search-icon">
									<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-search" viewBox="0 0 32 32"></use>
								</svg>

								<svg class="icon icon--close" id="close-icon">
									<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-close" viewBox="0 0 32 32"></use>
								</svg>

							</a>
						</div>

						<div class="page-header__column page-header__column--portal">
							<ul class="login">

								<li class="login__item login__item--student">
									<a href="#" class="login__portal">
										<svg class="icon icon--lock">
											<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-lock" viewBox="0 0 32 32"></use>
										</svg>
										Student Portal
									</a>
								</li>

								<li class="login__item">
									<a href="#" class="login__portal">
										<svg class="icon icon--lock">
											<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-lock" viewBox="0 0 32 32"></use>
										</svg>
										Alumni Portal
									</a>
								</li>

							</ul>
						</div>

					</div>


				</header>

			</div>

			<?php

				/**
				* Hero carousel
				*/
				echo '<div class="o-hero-carousel" data-hero-carousel >';

					//Hero title and controls
					echo '<div class="o-hero-carousel__content">';
						echo '<div class="o-hero-carousel__content__inner">';

							if( have_rows('hero_carousel')) :
								while( have_rows('hero_carousel')): the_row();

								$hero_carousel_title = get_sub_field('hero_carousel_title');
								$hero_carousel_paragraph = get_sub_field('hero_carousel_paragraph');

										echo '<div class="o-hero-carousel__content__wrapper">';
											echo '<h1 class="o-hero-carousel__content__title">' . $hero_carousel_title . '</h1>';
											echo '<p class="o-hero-carousel__content__paragraph">' . $hero_carousel_paragraph . '</p>';
										echo '</div>';

								endwhile;
							endif;

						echo '</div>';

						//Carousel controls
						echo '<div class="o-hero-carousel__controls">';
							//Prev arrow
							echo '<div class="o-hero-carousel__controls__column o-hero-carousel__controls__column--arrow">';
								echo '<span class="o-hero-carousel__controls__navigation--prev">';
									echo '<svg class="icon">';
										echo '<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-arrow" viewBox="0 0 32 32"></use>';
									echo '</svg>';
								echo '</span>';
							echo '</div>';

							//Next arrow
							echo '<div class="o-hero-carousel__controls__column o-hero-carousel__controls__column--arrow">';
								echo '<span class="o-hero-carousel__controls__navigation--next">';
									echo '<svg class="icon">';
										echo '<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-arrow" viewBox="0 0 32 32"></use>';
									echo '</svg>';
								echo '</span>';
							echo '</div>';

							//Watch video
							echo '<div class="o-hero-carousel__controls__column">';
								echo '<a href="#">
								<svg class="icon">
									<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-play" viewBox="0 0 32 32"></use>
								</svg>
								Watch video
								</a>';
							echo '</div>';
						echo '</div>';

					echo '</div>';

					//Hero carousel background image
					echo '<div class="o-hero-carousel__inner">';

						if( have_rows('hero_carousel')) :
							while( have_rows('hero_carousel')): the_row();

							$hero_carousel_image = get_sub_field('hero_carousel_image');

								echo '<div class="o-hero-carousel__background-image" style="background-image: url('. $hero_carousel_image['url'] .')">';
								echo '</div>';

							endwhile;
						endif;

					echo '</div>';
				echo '</div>';

			 ?>
