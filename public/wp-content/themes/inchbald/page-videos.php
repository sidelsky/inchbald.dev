<?php

	/**
	* Template name: Videos
	*/

	include('header.php');
	$do_not_duplicate = $post->ID;

?>

	<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

		<div class="l-lost-column--three-twelfths">
			<?php echo list_child_pages(); ?>
			<?php include 'sidebar.php'; ?>
		</div>

		<div class="l-lost-column--nine-twelfths">

			<?php
				echo '<h1>' . get_the_title() . '</h1>';
				include 'partials/video_thumbnails.php';
			?>

		</div>


	</section>






<?php include('footer.php'); ?>
