<?php

	include('header.php');

	/**
	* Set course taxonomies
	*/
	$course_subject = 'course-subject';
	$course_type = 'course-type';

?>

	<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

		<div class="l-lost-column--three-twelfths">
			<?php echo list_child_pages(); ?>
		</div>

		<div class="l-lost-column--nine-twelfths">

			<?php
				/**
				* Couse filters
				*/
				echo '<div class="o-course-filter">';
					echo '<div class="l-lost-grid">';
						courseFilter('Course subject', $course_subject);
						courseFilter('Course type', $course_type);
					echo '</div>';
				echo '</div>';
			 ?>


			<div class="l-lost-grid o-course-listing course-list" data-isotope>

				<?php

					$args = array(
			            'post_type' => 'courses',
			            'posts_per_page' => -1,
			            'orderby' => 'post_date',
			            'order' => 'DEC'
			        );

					$loop = new WP_Query($args);

					/**
					* Courses
					*/
					if ($loop->have_posts()) {

						while ($loop->have_posts()) : $loop->the_post();

							/**
							* Get slug from Course subject taxonomy
							*/
							$course_subject_taxonomy = get_the_terms( $post->ID, $course_subject );
							$taxonomy_slug = wp_list_pluck($course_subject_taxonomy, 'slug');
							$course_subject_slug = join(' ', $taxonomy_slug);

							/**
							* Get slug from Course type taxonomy
							*/
							$course_type_taxonomy = get_the_terms( $post->ID, $course_type );
							$taxonomy_slug = wp_list_pluck($course_type_taxonomy, 'slug');
							$course_type_slug = join(' ', $taxonomy_slug);

							/**
							* Post vars
							*/
							$course_duration = get_field('course_duration');

							echo '<div class="filter-item course-item ' . $course_subject_slug . ' ' . $course_type_slug . '">';
								echo '<h3 class="course-item__title">' . get_the_title() . '</h3>';
								echo '<span class="course-item__duration">' . $course_duration . '</span>';
							echo '</div>';

						endwhile;
					}


				?>

			</div>

		</div>


	</section>

<?php include('footer.php'); ?>
