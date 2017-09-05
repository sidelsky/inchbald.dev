<?php

    if( isset($hero_carousel_ctas_args) && is_array($hero_carousel_ctas_args) ){

    $args = $hero_carousel_ctas_args;
        } else {
            $args = array();
        }

    $defaults = array(
        'class' => NULL,
    );

    $args = wp_parse_args( $args, $defaults );

    // this variable to item
    $class = $args['class'];

    echo '<div class="o-hero-carousel__ctas ' . $class . '">';
        echo '<div class="u-max-width-container u-max-width-container--tiny o-hero-carousel__ctas-inner">';

            echo '<a href="/academics/courses/#comboFilters%5BCourse+subject%5D=.interior-design" class="o-hero-carousel__cta o-hero-carousel__cta--interior-design">';
                echo '<h2 class="o-hero-carousel__cta-title">Interior Design<br>Courses</h2>';
                echo '<span class="o-hero-carousel__cta-link">View courses <svg class="icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-arrow" viewBox="0 0 32 32"></use></svg></span>';
            echo '</a>';

            echo '<a href="/academics/courses/#comboFilters%5BCourse+subject%5D=.garden-design" class="o-hero-carousel__cta o-hero-carousel__cta--garden-design">';
                echo '<h2 class="o-hero-carousel__cta-title">Garden Design<br>Courses</h2>';
                echo '<span class="o-hero-carousel__cta-link">View courses <svg class="icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-arrow" viewBox="0 0 32 32"></use></svg></span>';
            echo '</a>';

        echo '</div>';
    echo '</div>';


 ?>
