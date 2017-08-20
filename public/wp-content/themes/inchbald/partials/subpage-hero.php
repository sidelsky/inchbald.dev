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

        echo '<section class="o-subpage-hero" style="background-image: url(' . $thumbnail . ')" data-subpage-hero>';
            echo '<div class="o-subpage-hero__inner">';
                echo '<div class="u-max-width-container">';
                    echo '<ul class="o-subpage-hero__bread">';
                        echo '<li class="o-subpage-hero__crumbs">' . $main_title . '</li>';
                        echo '<li class="o-subpage-hero__crumbs">Courses</li>';
                    echo '</ul>';
                echo '</div>';
            echo '</div>';
        echo '</section>';

    }

 ?>
