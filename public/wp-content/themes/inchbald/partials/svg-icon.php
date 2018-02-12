<?php

    // Get post title and content for about us
    if( isset($svg_icon_args) && is_array($svg_icon_args) ){

        $args = $svg_icon_args;

    } else {
        $args = array();
    }

    $defaults = array(
        'icon' => NULL,
    );

    $args = wp_parse_args( $args, $defaults );

    // this variable to item
    $icon = $args['icon'];

    echo '<svg class="icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#shape-' . $icon . '" viewBox="0 0 32 32"></use></svg>';

 ?>
