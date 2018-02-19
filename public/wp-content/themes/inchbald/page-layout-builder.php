<?php

	/**
	* Template name: Layout Builder
	*/

	include('header.php');

?>

	<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

		<div class="l-lost-column--three-twelfths">
			<?php
				echo list_child_pages(); 
				include 'sidebar.php';
			?>
		</div>

		<div class="l-lost-column--nine-twelfths o-layout-builder">

			<?php
				/**
				* Layout Builder
				*/

				// check if the flexible content field has rows of data
				if( have_rows('layout_builder') ):

				 	// loop through the rows of data
				    while ( have_rows('layout_builder') ) : the_row();

						/**
						* Headings
						*/
				        if( get_row_layout() == 'heading' ) :

							$heading_title = get_sub_field('heading_title');
							$centralise_title = get_sub_field('centralise_heading');
							$title_underline_colour = get_sub_field('title_underline_colour');

							switch ($title_underline_colour) {

								case 'blue':
									$colour_class = '--blue';
									break;

								case 'green':
									$colour_class = '--green';
									break;

								case 'violet':
									$colour_class = '--violet';
									break;

								default:
									$colour_class = '--orange';
									break;
							}

							// align the title to the centre
							$centralise_class = $centralise_title === ( TRUE ) ? 'o-layout-builder__heading--centralised' : '';

							echo '<h1 class="o-layout-builder__heading o-layout-builder__heading' . $colour_class . ' ' . $centralise_class . '">' . $heading_title . '</h1>';

				        endif;

						/**
						* Buttons
						*/
				        if( get_row_layout() == 'button' ) :

							$button_title = get_sub_field('button_title');
							$button_link = get_sub_field('button_link');
							$button_colour = get_sub_field('button_colour');

							switch ($button_colour) {

								case 'blue':
									$colour_class = '--blue';
									break;

								case 'green':
									$colour_class = '--green';
									break;

								case 'violet':
									$colour_class = '--violet';
									break;

								default:
									$colour_class = '--orange';
									break;
							}

							// Button alignment
							$alignment = get_sub_field('button_alignment');
							switch ($alignment) {

								case 'center':
									$button_alignment = '--align-center';
									break;

								case 'right':
									$button_alignment = '--align-right';
									break;

								default:
									$button_alignment = '--align-left';
									break;
							}

							echo '<div class="o-layout-builder__button' . $button_alignment . ' "><a href="' . $button_link . '" class="o-layout-builder__button o-layout-builder__button' . $colour_class . ' ">' . $button_title . '</a></div>';

				        endif;


						/**
						* Banner
						*/
						if( get_row_layout() == 'banner' ) :

							$banner_title = get_sub_field('banner_title');
							$banner_button_title = get_sub_field('banner_button_title');
							$banner_button_link = get_sub_field('banner_button_link');
							$banner_colour = get_sub_field('banner_colour');

							switch ($banner_colour) {

								case 'blue':
									$colour_class = '--blue';
									break;

								case 'green':
									$colour_class = '--green';
									break;

								case 'violet':
									$colour_class = '--violet';
									break;

								default:
									$colour_class = '--orange';
									break;
							}

							echo '<div class="o-layout-builder__banner o-layout-builder__banner' . $colour_class . '">';
								echo '<div class="o-layout-builder__banner__col">';
									echo '<p>' . $banner_title . '</p>';
								echo '</div>';
								echo '<div class="o-layout-builder__banner__col">';
									echo '<a href="' . $banner_button_link . '">' . $banner_button_title . '</a>';
								echo '</div>';
							echo '</div>';

						endif;


						/**
						* Image & text
						*/
						if( get_row_layout() == 'text_image' ) :

							$text_image_text = get_sub_field('text_image_text');
							$text_image_image = get_sub_field('text_image_image');

							echo '<div class="o-layout-builder__text_image">';
								echo '<div class="o-layout-builder__text_image__col o-layout-builder__text_image__col--para">';
									echo $text_image_text;
								echo '</div>';
								echo '<div class="o-layout-builder__text_image__col">';
									echo '<img src="' . $text_image_image['url'] . '">';
								echo '</div>';
							echo '</div>';

						endif;

						/**
						* Full width image
						*/
						if( get_row_layout() == 'full_width_image' ) :

							$full_width_image_image = get_sub_field('full_width_image_image');

							echo '<img src="' . $full_width_image_image['url'] . '" class="o-layout-builder__full-with-image" />';

						endif;


						/**
						* Text paragragh
						*/
						if( get_row_layout() == 'full_width_paragraph' ) :

							$text_paragraph = get_sub_field('text_paragraph');

							// no layouts found
							echo '<div class="o-layout-builder__full-with-para">';
								echo $text_paragraph;
							echo '</div>';

						endif;


				    endwhile;

				else :

				   echo '<p>' . $content['notice'] . '</p>';

				endif;



			 ?>

		</div>


	</section>

<?php include('footer.php'); ?>
