<?php

	include('header.php');

	/**
	* Set course taxonomies
	*/
	$course_subject = 'course-subject';
	$course_type = 'course-type';

	$courses_subtitle = get_field('courses_subtitle');


?>

<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

	<div class="l-lost-column--three-twelfths">
		<?php echo list_child_pages(); ?>
	</div>

	<div class="l-lost-column--nine-twelfths">
		<?php

			if (have_posts()): while (have_posts()) : the_post();

			$terms = get_the_terms( $post->ID, $course_subject );
			$second_term_name = $terms[1];

				if ( $second_term_name->name == 'Interior design' ) {
					$class_name = 'o-course__term--interior-design';
				}

				if ( $second_term_name->name == 'Garden design' ) {
					$class_name = 'o-course__term--garden-design';
				}

				echo '<h1 class="o-course__title">' . get_the_title() . '</h1>';
				echo '<span class="o-course__term ' . $class_name . '">' . $second_term_name->name . ' ' . 'courses' . '</span>';
				echo '<h2 class="o-course__sub-title">' . $courses_subtitle  . '</h2>';
				echo '<div class="o-course__course-intro">' . get_the_content_with_formatting() . '</div>';

			endwhile; else:

				echo $notice;

			endif;

			/**
			* Accordion content
			*/
			$tabs = 'tabs';
			$tab_content = 'tab_content';

			if( have_rows( $tabs ) ) :

				echo '<ul class="o-accordion" data-accordion >';

				// Loop through the rows of data
				while ( have_rows( $tabs ) ) : the_row();

					echo '<li class="o-accordion__tab">';

						// Display a sub field value
						$tab_title = get_sub_field('tab_title');

						echo '<a href="#" class="o-accordion__tab__title">' . $tab_title . '</a>';

						// Tabe content
						if( have_rows( $tab_content ) ) :

							// START: Content wraper
							echo '<div class="o-accordion__inner">';

								// Loop through the rows of data
								while ( have_rows( $tab_content ) ) : the_row();

									// Display a sub field value
									$paragraph_content = get_sub_field('paragraph_content');
									$table_title = get_sub_field('table_title');
									$table_description = get_sub_field('table_description');

										if ( $paragraph_content ) {

											echo '<div class="o-accordion__paragraph-content">' . $paragraph_content . '</div>';

										}

										if ( $table_title && $table_description) {

											echo '<div class="o-accordion__row">';
												echo '<div class="o-accordion__table-title">' . $table_title . '</div>';
												echo '<div class="o-accordion__table-description">' . $table_description . '</div>';
											echo '</div>';

										}

								endwhile;

							echo '</div>';
							// END: Content wraper


					echo '</li">';

					else :

					// No rows found
					echo $notice;

					endif;

				endwhile;

				echo '</ul>';

				if ( $second_term_name->name == 'Interior design' ) {
					$class_name = 'o-course__cta--interior-design';
				}

				if ( $second_term_name->name == 'Garden design' ) {
					$class_name = 'o-course__cta--garden-design';
				}

				echo '<div class="o-course__cta ' . $class_name . '">';
					echo '<div class="o-course__cta__col"><p>' . $content['course_application']['title'] . '</p></div>';
					echo '<div class="o-course__cta__col"><a href="' . $content['course_application']['url'] . '">' . $content['course_application']['button_title'] . '</a></div>';
				echo '</div>';

			else :

			// No rows found
			echo '<p>' . $content['notice'] . '</p>';

			endif;

		?>
	</div>

</section>

<?php include('footer.php'); ?>
