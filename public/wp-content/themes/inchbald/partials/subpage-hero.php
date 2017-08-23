<?php

    /**
    * Sub page hero banner
    */

    // Check if it's NOT the home page (Front page)
    if( !is_front_page() ) {

        // Get the featured image
        $thumbnail = get_the_post_thumbnail_url();
        // Get post title
        $main_title = get_the_title();
        $current = $post->ID;
        $parent = $post->post_parent;
        $grandparent_get = get_post($parent);
        $grandparent = $grandparent_get->post_parent;

        echo '<section class="o-subpage-hero" style="background-image: url(' . $thumbnail . ')" data-subpage-hero>';
            echo '<div class="o-subpage-hero__inner">';
                echo '<div class="u-max-width-container">';
                    echo '<ul class="o-subpage-hero__bread">';

                        /**
                        * Display Parent Page Title
                        * https://www.fldtrace.com/how-to-display-parent-page-title-in-wordpress
                        */

                        // Parent title
                        $class = ( $parent ) ? '' : 'o-subpage-hero__crumbs__main-title';

                        echo '<li class="o-subpage-hero__crumbs ' . $class . '">';
                            echo get_the_title($parent);
                        echo '</li>';

                        if($parent) {

                            // Parent title
                            echo '<li class="o-subpage-hero__crumbs o-subpage-hero__crumbs__main-title">';
                                echo $main_title;
                            echo '</li>';
                        }

                    echo '</ul>';
                echo '</div>';
            echo '</div>';
        echo '</section>';

    }

 ?>
