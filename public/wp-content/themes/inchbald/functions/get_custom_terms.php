<?php

    /**
    * Get custom terms
    */
    function custom_cat_function() {

        $course_subject = 'course-subject';

        global $post;

        $args = array(
          'orderby'      => 'ID',
          'order'        => 'ASC'
        );
        
        $terms = get_the_terms($post->id, $course_subject, $args);

        $count = count( $terms );

        if ( $count > 0 ) {
            echo '<ul>';
            foreach ( $terms as $term ) {
                echo '<li>' . $term->name . '</li>';
            }
            echo '</ul>';
        }
    }


 ?>
