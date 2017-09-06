<?php

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
            echo '<a href="' . $lang['hero_content']['watch_video']['url'] . '">' . $lang['hero_content']['watch_video']['icon'] . ' ' . $lang['hero_content']['watch_video']['title'] . '</a>';
        echo '</div>';
        echo '</div>';
    echo '</div>';

 ?>
