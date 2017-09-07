<?php
    /**
    * Portal login
    */
    echo '<div class="page-header__column page-header__column--portal">';
    echo '<ul class="login">';

        foreach ($content['portal_login'] as $key => $value) {

            $svg_icon_args = array(
                'icon' => $value['icon'],
            );

            echo '<li class="login__item">';
                echo '<a href="' . $value['url'] . '">';
                    svgIcon($svg_icon_args);
                    echo ' ' . $value['title'];
                echo '</a>';
            echo '</li>';
        }

    echo '</ul>';
    echo '</div>';

?>
