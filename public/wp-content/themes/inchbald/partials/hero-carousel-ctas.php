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

    // This variable to item
    $class = $args['class'];

    echo '<div class="o-hero-carousel__ctas ' . $class . '">';
        echo '<div class="u-max-width-container u-max-width-container--tiny o-hero-carousel__ctas-inner">';

            /**
            * Hero CTA's
            */
            foreach ($content['course_titles'] as $key => $value) {
                echo '<a href="' . $value['url'] . '" class="o-hero-carousel__cta">';
                    echo '<h2 class="o-hero-carousel__cta-title">' . $value['title'] . '</h2>';
                        echo '<span class="o-hero-carousel__cta-link">' . $value['link_title'] . '';
                            $svg_icon_args = array(
                                'icon' => $value['icon']
                            );
                            svgIcon($svg_icon_args);
                        echo '</span>';
                echo '</a>';
            }

        echo '</div>';
    echo '</div>';


 ?>
