<?php

	/**
	* Template name: Blog
	*/

	include('header.php');

?>

	<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

		<div class="l-lost-column--three-twelfths">
			<?php echo list_child_pages(); ?>
		</div>

		<div class="l-lost-column--nine-twelfths">

		<?php
			$args = array(
			  'post_type' => 'post',
			  'posts_per_page' => -1,
			  'orderby' => 'post_date',
			  'order' => 'DEC'
			);

			$loop = new WP_Query( $args );

			while ( $loop->have_posts() ) : $loop->the_post();

				echo '<div class="l-lost-grid">';

					if ( get_the_category()[0]->name == 'Interior Design' ) {
						$class_name = 'o-course__term--interior-design';
					} elseif ( get_the_category()[0]->name == 'Garden Design' ) {
						$class_name = 'o-course__term--garden-design';
					} else {
						$class_name = 'o-course__term--other';
					}

					echo '<div class="l-lost-column--three-twelfths">';

						/**
						* Get the category
						*/
						echo '<a href="../../category/' . get_the_category()[0]->slug . '" class="o-course__term o-posts__term o-posts__meta ' . $class_name . '">' . get_the_category()[0]->name . '</a>';

						echo '<h2 class="o-posts__title">';
							echo '<a href="' . get_permalink() . '">';
								echo get_the_title();
							echo '</a>';
						echo '</h2>';

						/**
						* Get date
						*/
						echo '<span class="o-posts__date o-posts__meta">' . get_the_time('F j, Y') . '</span>';

						/**
						* Get author details
						*/

						$first_name = get_the_author_meta('first_name');
						$last_name = get_the_author_meta('last_name');
						$full_name = $first_name . ' ' . $last_name;

						echo '<a class="o-posts__author o-posts__author o-posts__meta"" href="' . get_author_posts_url( get_the_author_meta( 'ID' ), get_the_author_meta( 'user_nicename' ) ) . '">' . 'By' . ' ' . $full_name . '</a>';

					echo '</div>';

					echo '<div class="l-lost-column--nine-twelfths">';

						/**
						* Featured image
						*/
						$image = wp_get_attachment_image_src( get_post_thumbnail_id( $loop->ID ), 'full' );

						if($image[0]) {
							echo '<a href="' . get_permalink() . '" class="o-posts__image">';
								echo '<img src="' . $image[0] . '">';
							echo '</a>';
						}

						echo '<p class="o-posts__excerpt">';
							echo get_the_excerpt();
						echo '</p>';

					echo '</div>';

				echo '</div>';

			endwhile;
		?>

		</div>

	</section>

<?php include("footer.php"); ?>
