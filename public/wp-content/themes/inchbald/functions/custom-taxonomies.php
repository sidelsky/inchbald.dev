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

?>
