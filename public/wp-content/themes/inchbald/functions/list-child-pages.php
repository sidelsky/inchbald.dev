<?php

    function list_child_pages() {

        global $post;
        $string = '';

        if ( is_page() && $post->post_parent || is_post_type_archive() && $post->post_parent ) {

            $child_pages = wp_list_pages(array(
                'title_li' => null,
                'child_of' => $post->post_parent,
                'echo' => 0
            ));

        } else {

            $child_pages = wp_list_pages(array(
                'title_li' => null,
                'child_of' => $post->ID,
                'echo' => 0
            ));

        }

        if ( $child_pages ) {

            $string .= '<nav class="o-side-navigation">';
            $string .= '<ul class="o-side-navigation__inner">' . $child_pages . '</ul>';
            $string .= '</nav>';

        }

        return $string;

    }

    add_shortcode('child_pages', 'list_child_pages');

?>
