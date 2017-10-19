<div class="l-lost-grid o-course-listing course-list" data-isotope >

    <?php

        $args = array(
            'post_type' => 'courses',
            'posts_per_page' => -1
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
                $combo_filter = '#comboFilters%5BCourse+subject%5D=.';
                $filter_interior_design = 'interior-design';
                $filter_garden_design = 'garden-design';
                $post_title = get_the_title();


                // Filter the course list by has with url link
                $terms = get_the_terms( $post->ID, $course_subject );
    			$second_term_name = $terms[1];

                if ( $second_term_name->name == 'Interior design' ) {
					$url = $post_url . '/' . $combo_filter . $filter_interior_design;
				}

				if ( $second_term_name->name == 'Garden design' ) {
					$url = $post_url . '/' . $combo_filter . $filter_garden_design;
				}

                echo '<a href="' . $url . '" class="filter-item course-item ' . $course_subject_slug . ' ' . $course_type_slug . '" data-subject="' . $course_subject_slug . '" data-type="' . $course_type_slug . '">';
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
