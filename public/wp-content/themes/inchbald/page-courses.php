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

				/*
				* Include courses
				*/
				include 'partials/course-list.php';

			 ?>

		</div>


	</section>

<?php include('footer.php'); ?>
