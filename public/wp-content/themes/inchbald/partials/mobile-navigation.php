<?php

    echo '<div class="overlay">';
        echo '<div class="overlay__content">';

            wp_nav_menu( array(

                'menu'            => 'Primary',
                'container'       => 'nav',
                'container_class' => 'mobile-navigation',
                'theme_location'  => 'primary-menu',
                'menu_class'      => 'mobile-nav',
                'menu_id'      => 'mobile-navigation',

            ));

        echo '</div>';
    echo '</div>';

 ?>
