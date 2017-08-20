<?php


    if( isset($hero_carousel_content_args) && is_array($hero_carousel_content_args) ){

    $args = $hero_carousel_content_args;
        } else {
            $args = array();
        }

    $defaults = array(
        'class' => NULL,
    );

    $args = wp_parse_args( $args, $defaults );

    // this variable to item
    $class = $args['class'];

    echo '<div class="o-hero-carousel__content ' . $class . '">';
        echo '<div class="o-hero-carousel__content__inner">';

            if( have_rows('hero_carousel')) :
                while( have_rows('hero_carousel')): the_row();

                    $hero_carousel_title = get_sub_field('hero_carousel_title');
                    $hero_carousel_paragraph = get_sub_field('hero_carousel_paragraph');

                        echo '<div class="o-hero-carousel__content__wrapper">';
                            echo '<h1 class="o-hero-carousel__content__title">' . $hero_carousel_title . '</h1>';
                            echo '<p class="o-hero-carousel__content__paragraph">' . $hero_carousel_paragraph . '</p>';
                        echo '</div>';

                endwhile;
            endif;

        echo '</div>';

        //Carousel controls
        include('hero-content-controls.php')

 ?>
