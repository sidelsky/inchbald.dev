<?php
    /**
    * Custom taxonomies
    */

    //Example
    //'name' => 'Ad types',
    //'singular_name' => 'Ad type',
    //'slug' => 'ad_types'
    //'post_name' => 'ad-formats'

    //Set all of the taxonomies
    function customTaxonomies() {

        // Course subject
        $ad_type = create_custom_taxonomy(

            $args = array(
                'name' => 'Course subject',
                'singular_name' => 'Course subject',
                'slug' => 'course-subject'
            )

        );

        $custom_posts = array(
            'post_name' => 'courses'
        );

        register_taxonomy($args['slug'], $custom_posts['post_name'], $ad_type['args']);



        // Course type
        $ad_type = create_custom_taxonomy(

            $args = array(
                'name' => 'Course type',
                'singular_name' => 'Course type',
                'slug' => 'course-type'
            )

        );

        $custom_posts = array(
            'post_name' => 'courses'
        );

        register_taxonomy($args['slug'], $custom_posts['post_name'], $ad_type['args']);


    }


    add_action('init', 'customTaxonomies');


    /**
    * Add a default TERM to the taxonomy 'course-subject'
    */
    $custom_post_name = 'courses';

    function createDefaultTaxTermCourseSubject( $post_id ) {

        $taxonomy = 'course-subject';
        $default_term = 'All course subjects';

        $current_post = get_post( $post_id );

        // This makes sure the taxonomy is only set when a new post is created
        if ( $current_post->post_date == $current_post->post_modified ) {
            wp_set_object_terms( $post_id, $default_term, $taxonomy, true );
        }

    }

    add_action( 'save_post_'.$custom_post_name, 'createDefaultTaxTermCourseSubject' );


    /**
    * Add a default TERM to the taxonomy 'course-subject'
    */
    $custom_post_name = 'courses';

    function createDefaultTaxTermCourseType( $post_id ) {

        $taxonomy = 'course-type';
        $default_term = 'All course types';

        $current_post = get_post( $post_id );

        // This makes sure the taxonomy is only set when a new post is created
        if ( $current_post->post_date == $current_post->post_modified ) {
            wp_set_object_terms( $post_id, $default_term, $taxonomy, true );
        }

    }

    add_action( 'save_post_'.$custom_post_name, 'createDefaultTaxTermCourseType' );


?>
