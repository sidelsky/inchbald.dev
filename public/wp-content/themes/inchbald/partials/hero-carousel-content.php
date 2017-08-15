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
        echo '<div class="o-hero-carousel__controls">';
            //Prev arrow
            echo '<div class="o-hero-carousel__controls__column o-hero-carousel__controls__column--arrow">';
                echo '<span class="o-hero-carousel__controls__navigation--prev">';
                    echo '<svg class="icon">';
                        echo '<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-arrow" viewBox="0 0 32 32"></use>';
                    echo '</svg>';
                echo '</span>';
            echo '</div>';

            //Next arrow
            echo '<div class="o-hero-carousel__controls__column o-hero-carousel__controls__column--arrow">';
                echo '<span class="o-hero-carousel__controls__navigation--next">';
                    echo '<svg class="icon">';
                        echo '<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-arrow" viewBox="0 0 32 32"></use>';
                    echo '</svg>';
                echo '</span>';
            echo '</div>';

            //Watch video
            echo '<div class="o-hero-carousel__controls__column watch-video">';
                echo '<a href="#video-model">
                <svg class="icon">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-play" viewBox="0 0 32 32"></use>
                </svg>
                Watch video
                </a>';
            echo '</div>';
        echo '</div>';
    echo '</div>';

 ?>
