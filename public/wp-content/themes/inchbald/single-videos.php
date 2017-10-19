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

				// Get iframe HTML
				$vimeo_iframe = get_field('video');

				// use preg_match to find iframe src
				preg_match('/src="(.+?)"/', $vimeo_iframe, $matches);
				$src = $matches[1];

				// add extra params to iframe src
				$params = array(
				    'controls'  => 0,
				    'hd'        => 1,
				    'autohide'  => 0,
				    'title'		=> 0,
				    'url' 		=> 1
				);

				$new_src = add_query_arg($params, $src);

				$vimeo_iframe = str_replace($src, $new_src, $vimeo_iframe);

				// add extra attributes to iframe html
				$attributes = 'frameborder="0"';

				$vimeo_iframe = str_replace('></iframe>', ' ' . $attributes . '></iframe>', $vimeo_iframe);

				echo '<h1>' . get_the_title() . '</h1>';

				echo '<div class="u-video-wrapper u-mb">';
					echo $vimeo_iframe;
				echo '</div>';

				/**
				* Video thumbnails
				*/
				include 'partials/video_thumbnails.php';

			endwhile; else:

				echo $notice;

			endif;

		?>

	</div>

</section>

<?php include('footer.php'); ?>
