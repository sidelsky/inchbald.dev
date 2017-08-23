<?php include('header.php'); ?>

	<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

		<div class="l-lost-column--three-twelfths">

			<?php echo list_child_pages(); ?>

		</div>

		<div class="l-lost-column--nine-twelfths">
			<div class="o-course-filter">
				<div class="l-lost-grid">

					<?php

					// $taxonomy = 'course-subject';
					// $terms = get_terms([
					//     'taxonomy' => $taxonomy
					// ]);
					//
				    // echo '<section class="m-tabbed-carousel u-section-side-spacing u-section-spacing--x-large">';
				    //     echo '<div class="m-tabbed-carousel__inner u-max-width-container u-max-width-container--medium" data-ad-formats>';
					//
				    //         /*
				    //          * show on mobile
				    //          */
				    //         echo '<ul class="is-accordion ">';
					//
				    //         foreach ($terms as $term) {
					//
				    //             echo '<li>';
					//
				    //                 echo '<a href="#" rel="' . $term->term_id . '" class=" tab accordion">';
				    //                     echo '<span class="tab__title">';
				    //                         echo $term->name;
				    //                     echo '</span>';
				    //                 echo '</a>';
					//
					// 				/**
					// 				* List of ad formats
					// 				*/
					// 				$args = array(
					// 				  'post_type' => 'courses',
					// 				  'posts_per_page' => -1,
					// 				  'orderby' => 'post_date',
					// 				  'order' => 'DEC'
					// 				);
					//
					// 				$loop = new WP_Query( $args );
					//
					// 				echo '<div class="filter__pannel">';
					//
					// 					if ($loop->have_posts()) {
					//
					// 						while ( $loop->have_posts() ) : $loop->the_post();
					//
					// 							the_title();
					//
					// 						endwhile;
					//
					// 					}
					//
					// 				echo '</div>';
					//
				    //             echo '</li>';
				    //         }
					//
				    //         echo '</ul>';
					//
					//
				    //     echo '</div>';
				    // echo '</section>';

					 ?>

					<?php
						courseFilter('course-subject');
					 ?>

					<div class="l-lost-column--six-twelfths o-course-filter__container" data-filter-select>
						<div class="o-course-filter__title"><span>Course type</span>
							<ul tabindex="0" class="o-course-filter__select-menu">
								<?php
									$taxonomy = 'course-type';
									$terms = get_terms([
									    'taxonomy' => $taxonomy
									]);

									foreach ($terms as $term) {
										echo '<li class="o-course-filter__item" rel="' . $term->term_id . '">' . $term->name . '</li>';
									};
								?>
							</ul>
						</div>
					</div>

				</div>
			</div>

		</div>


	</section>

<?php include('footer.php'); ?>
