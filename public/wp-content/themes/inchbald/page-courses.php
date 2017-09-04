<?php

	/**
	* Template name: Course listing
	*/

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

			<?php /*
			<div class="filters">
				<div class="ui-group">
					<h3>Subject</h3>
					<div class="button-group js-radio-button-group" data-filter-group="subject">
						<button class="button" data-filter=".all-course-subjects">all-course-subjects</button>
						<button class="button" data-filter=".interior-design">interior-design</button>
						<button class="button" data-filter=".garden-design">garden-design</button>
					</div>

					<h3>Type</h3>
					<div class="button-group js-radio-button-group" data-filter-group="type">
						<button class="button" data-filter=".all-course-types">all-course-types</button>
						<button class="button" data-filter=".online">online</button>
						<button class="button" data-filter=".part-time">part-time</button>
						<button class="button" data-filter=".full-time">full-time</button>
						<button class="button" data-filter=".short">short</button>
					</div>
				</div>
			</div>
			*/ ?>

			<div class="l-lost-grid o-course-listing course-list" data-isotope >

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

						$count = 0;

						while ($loop->have_posts()) : $loop->the_post();

						$count++;

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
							$course_details = get_field('course_details');
							$course_duration = get_field('course_duration');
							$post_url = get_the_permalink();
							$post_title = get_the_title();

							echo '<a href="' . $post_url . '" class="filter-item course-item ' . $course_subject_slug . ' ' . $course_type_slug . '">';
								echo '<h3 class="course-item__title">' . $post_title . '</h3>';
								echo '<div class="course-item__meta">';
									echo '<div class="course-item__details">' . $course_details . '</div>';
									echo '<span class="course-item__duration  ' . $course_subject_slug . ' ' . $course_type_slug . '">' . $course_duration . '</span>';
								echo '</div>';
							echo '</a>';

						endwhile;

					}


				?>

			</div>

		</div>


	</section>

<?php include('footer.php'); ?>
