<section class="o-event-banner">
	<div class="u-max-width-container o-event-banner__columns">

		<div class="o-event-banner__column o-event-banner__column--narrow">
			<h3 class="o-event-banner__details o-event-banner__title">Upcoming Events</h3>
		</div>

		<div class="o-event-banner__column o-event-banner__column--wide">

			<span class="o-event-banner__controls o-event-banner__controls--prev u-hide-below--small">
				<svg class="icon">
					<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-event-arrow-prev" viewBox="0 0 32 32"></use>
				</svg>
			</span>

				<div class="o-event-banner__inner" data-event-banner >

				<?php

					$svg_icon_args = array(
						'icon' => $content['event_banner_cta']['icon'],
					);

					$args = array(
					  'post_type' => 'events',
					  'posts_per_page' => -1,
					  'orderby' => 'post_date',
					  'order' => 'DEC'
					);
					$loop = new WP_Query( $args );
					while ( $loop->have_posts() ) : $loop->the_post();

						$from_date = get_field('from_date');
						$to_date = get_field('to_date');

						echo '<div class="o-event-banner__event">';
							echo '<h3 class="o-event-banner__details">' . '<span>' . get_the_title() . '</span>' . ' <span class="u-hide-below--small">-</span> ' . '<span class="o-event-banner__date">' . $from_date . ' - ' . $to_date . '</span>' . '<a href="' . get_the_permalink() . '" class="o-event-banner__button">';
								echo  $content['event_banner_cta']['title'];
								svgIcon($svg_icon_args);
							echo '</a></h3>';
						echo '</div>';

					endwhile;
				?>

				</div>

			<span class="o-event-banner__controls o-event-banner__controls--next u-hide-below--small">
				<svg class="icon">
					<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-event-arrow-next" viewBox="0 0 32 32"></use>
				</svg>
			</span>

		</div>
	</div>
</section>
