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

        $ad_type = create_custom_taxonomy(

            $args = array(
                'name' => NULL,
                'singular_name' => NULL,
                'slug' => NULL
            )

        );

        $custom_posts = array(
            'post_name' => NULL
        );

        //register_taxonomy($args['slug'], $custom_posts['post_name'], $ad_type['args']);


    }
    add_action('init', 'customTaxonomies');

?>
