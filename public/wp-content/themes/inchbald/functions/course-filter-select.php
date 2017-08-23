<?php


    function courseFilter($taxonomy) {

        $taxonomy = 'course-subject';

        echo '<div class="l-lost-column--six-twelfths o-course-filter__container" data-filter-select>';
            echo '<div class="o-course-filter__title"><span>Course subject</span>';
                echo '<ul tabindex="0" class="o-course-filter__select-menu">';

                    $terms = get_terms([
                        'taxonomy' => $taxonomy
                    ]);

                    foreach ($terms as $term) {
                        echo '<li class="o-course-filter__item" rel="' . $term->term_id . '">' . $term->name . '</li>';
                    };

                echo '</ul>';
            echo '</div>';
        echo '</div>';


    };


 ?>
