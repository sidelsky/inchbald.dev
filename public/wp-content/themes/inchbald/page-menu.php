<?php

	/**
	* Template name: Menu page
	*/

	include('header.php');

?>


<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

	<div class="l-lost-column--three-twelfths">
		<?php echo list_child_pages(); ?>
	</div>

	<div class="l-lost-column--nine-twelfths">

		<div class="masonry-grid" data-masonry-grid >

			<?php

				if( have_rows('masonry') ):

					// Loop through the rows of data
					while ( have_rows('masonry') ) : the_row();

						$masonry_item_title = get_sub_field('masonry_item_title');
						$masonry_item_image = get_sub_field('masonry_item_image');
						$masonry_item_height = get_sub_field('masonry_item_height');
						$masonry_item_width = get_sub_field('masonry_item_width');
						$masonry_item_link = get_sub_field('masonry_item_link');
						$height = '';
						$width = '';

						if( $masonry_item_height == true ) {
							$height = 'masonry-grid__item--height2';
						}
						if( $masonry_item_width ) {
							$width = 'masonry-grid__item--width2';
						}
						echo '<a href="' . $masonry_item_link . '" class="masonry-grid__item ' . $height . ' ' . $width . '" style="background-image:url(' . $masonry_item_image['url'] . ')">';
							echo '<div class="masonry-grid__title">' . $masonry_item_title . '</div>';
						echo '</a>';

					endwhile;

				endif;

 			?>

		</div>

	</div>

</section>

<?php

	include('footer.php');

?>
