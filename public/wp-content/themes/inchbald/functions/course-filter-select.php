<?php

    /**
    * Course filter
    */
    function courseFilter($course_type, $taxonomy) {

        echo '<div class="l-lost-column--six-twelfths o-course-filter__container filters" data-filter-select >';
            echo '<div class="o-course-filter__title"><span>' . $course_type . '</span>';
                echo '<ul tabindex="0" class="button-group o-course-filter__select-menu" data-filter-group="' . $course_type . '">';

                    $terms = get_terms([
                        'taxonomy' => $taxonomy
                    ]);

                    $count = count($terms);

                    if ( $count > 0 ){

                        foreach ($terms as $term) {
                            $termname = strtolower($term->name);
                            $termname = str_replace(' ', '-', $termname);
                            echo '<li data-filter=".' . $termname . '" class="o-course-filter__item item">' . $term->name . '</li>';
                        };

                    };

                echo '</ul>';
            echo '</div>';
        echo '</div>';

    };


 ?>
