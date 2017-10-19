<?php

    /**
    * WIdgets
    */

    function arphabet_widgets_init() {

        register_sidebar( array(
            'name'          => 'Sidebar',
            'id'            => 'sidebar',
            'before_widget' => '<div>',
            'after_widget'  => '</div>',
            'before_title'  => '<h2 class="rounded">',
            'after_title'   => '</h2>',
        ) );

    }
    add_action( 'widgets_init', 'arphabet_widgets_init' );


 ?>
