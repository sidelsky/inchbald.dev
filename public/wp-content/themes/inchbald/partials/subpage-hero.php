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

        if( is_single() ) {
            $thumbnail = NULL;
        }

        if($thumbnail) {
            $class = '';
        } else {
            $class = 'o-subpage-hero--shallow';
        }

        echo '<section class="o-subpage-hero ' . $class . '" style="background-image: url(' . $thumbnail . ')" data-subpage-hero>';
            echo '<div class="o-subpage-hero__inner">';
                echo '<div class="u-max-width-container">';
                    echo '<ul class="o-subpage-hero__bread">';

                        /**
                        * Display Parent Page Title
                        * https://www.fldtrace.com/how-to-display-parent-page-title-in-wordpress
                        */

                        // Parent title
                        $class = ( $parent ) ? '' : 'o-subpage-hero__crumbs__main-title';

                        // $uri = $_SERVER['REQUEST_URI'];
                        // $name = str_replace('/', '<li class="o-subpage-hero__crumbs ' . $class . '">', $uri);
                        // echo $name . '</li>';

                        //If is courses
                        if( is_home() ) {

                            echo '<li class="o-subpage-hero__crumbs o-subpage-hero__crumbs__main-title">';
                                echo '<a href="/media/school-blog/">';
                                    echo 'School blog';
                                echo '</a>';
                            echo '</li>';

                        }

                        //If is courses
                        if( is_singular('courses') ) {

                            echo '<li class="o-subpage-hero__crumbs">';
                                echo '<a href="/inchbald.co.uk/courses">';
                                    echo 'Courses';
                                echo '</a>';
                            echo '</li>';

                        }

                        //If is single
                        if( is_single() && !is_singular('courses') ) {

                            echo '<li class="o-subpage-hero__crumbs">';
                                echo '<a href="/media/school-blog/">';
                                    echo 'School blog';
                                echo '</a>';
                            echo '</li>';

                        }

                        if( !is_home() ) {

                            echo '<li class="o-subpage-hero__crumbs ' . $class . '">';
                                echo '<a href="' . get_the_permalink($parent) . '">';
                                    echo get_the_title($parent);
                                echo '</a>';
                            echo '</li>';

                        }

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
