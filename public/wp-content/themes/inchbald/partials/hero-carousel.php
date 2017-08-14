<?php

    /**
    * Hero carousel
    */
    echo '<div class="o-hero-carousel" data-hero-carousel >';

        //Hero title and controls
        $hero_carousel_content_args = array(
            'class' => 'u-hide-below--small',
        );
        include ('hero-carousel-content.php');

        //Carousel CTA's
        $hero_carousel_ctas_args = array(
            'class' => 'u-hide-below--small',
        );
        include ('hero-carousel-ctas.php');

        //Hero carousel background image
        echo '<div class="o-hero-carousel__inner">';

            if( have_rows('hero_carousel')) :
                while( have_rows('hero_carousel')): the_row();

                $hero_carousel_image = get_sub_field('hero_carousel_image');

                    echo '<div class="o-hero-carousel__background-image" style="background-image: url('. $hero_carousel_image['url'] .')">';
                    echo '</div>';

                endwhile;
            endif;

        echo '</div>';

        //Hero title and controls
        $hero_carousel_content_args = array(
            'class' => 'u-hide-above--small',
        );
        include ('hero-carousel-content.php');

        //Carousel CTA's
        $hero_carousel_ctas_args = array(
            'class' => 'u-hide-above--small',
        );
        include ('hero-carousel-ctas.php');

    echo '</div>';

 ?>
