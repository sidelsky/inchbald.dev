<?php

	include('header.php');

?>

	<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

		<div class="l-lost-column--three-twelfths">
			<?php echo list_child_pages(); ?>
			<?php include 'sidebar.php'; ?>
		</div>

		<div class="l-lost-column--nine-twelfths">

		<?php

			if (have_posts()): while (have_posts()) : the_post();
			$do_not_duplicate = $post->ID;

				/**
				* Get the post title
				*/
				echo '<h2 class="o-posts__title">';
					echo get_the_title();
				echo '</h2>';

				/**
				* Get author details
				*/
				$first_name = get_the_author_meta('first_name');
				$last_name = get_the_author_meta('last_name');
				$full_name = $first_name . ' ' . $last_name;

				echo '<span class="o-posts__author o-posts__author o-posts__meta">';
					echo 'By' . ' ' . $full_name . ',';
				echo '</span>';

				/**
				* Get the category
				*/
				echo '<span class="o-course__term o-posts__term o-posts__meta">' . get_the_category()[0]->name . ',' . '</span>';

				/**
				* Get date
				*/
				echo '<span class="o-posts__date o-posts__meta">' . get_the_time('F j, Y') . '</span>';

				/**
				* Featured image
				*/
				$image = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full' );

				if($image[0]) {
					echo '<div class="o-posts__image">';
						echo '<img src="' . $image[0] . '">';
					echo '</div>';
				}

				/**
				* Get the content
				*/
				echo '<div class="o-posts__excerpt">';
					the_content();
				echo '</div>';

			endwhile; endif;

			/**
			* Related posts
			*/
			echo '<div class="l-lost-grid related-posts">';


				echo '<h2 class="related-posts__main-title">Related Articles</h2>';

				$args = array(
				  'post_type' => 'post',
				  'posts_per_page' => -1,
				  'orderby' => 'post_date',
				  'order' => 'DEC'
				);

				$loop = new WP_Query( $args );

				while ( $loop->have_posts() ) : $loop->the_post();
				if( $post->ID == $do_not_duplicate ) continue;

					echo '<div class="l-lost-column--four-twelfths">';
						/**
						* Featured image
						*/
						$image = wp_get_attachment_image_src( get_post_thumbnail_id( $loop->ID ), 'full' );

						if($image[0]) {
							echo '<a href="' . get_permalink() . '" class="o-posts__image">';
								echo '<img src="' . $image[0] . '">';
							echo '</a>';
						}

						echo '<h3 class="o-posts__title">';
							echo '<a href="' . get_permalink() . '">';
								echo get_the_title();
							echo '</a>';
						echo '</h3>';

					echo '</div>';
				endwhile;
			echo '</div>';

		?>

		</div>

	</section>

<?php include("footer.php"); ?>
