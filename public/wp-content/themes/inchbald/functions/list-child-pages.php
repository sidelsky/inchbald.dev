<?php

    function list_child_pages() {

        /**
        * Current_page_item class when listing custom post type pages
        */
        add_filter('page_css_class', function($classes, $page) {
        global $post;
        if ( 'courses' == get_post_type($post) && $post->ID == $page->ID ) {
            $classes[] = 'current_page_item';
        }
            return $classes;

        }, 10, 2);

        /**
        * List pages
        */
        global $post;
        $output = '';

        if ( is_page() && $post->post_parent || is_post_type_archive() && $post->post_parent ) {

            $child_pages = wp_list_pages(array(
                'title_li' => null,
                'child_of' => $post->post_parent,
                'echo' => 0
            ));

        } elseif (  is_singular( 'courses' ) ) {

            $child_pages = wp_list_pages(array(
                'post_type'   => 'courses',
                'sort_column' => 'menu_order',
                'title_li'    => null,
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

            $output .= '<nav class="o-side-navigation">';

                // If is CPT Courses
                if ( is_singular( 'courses' ) ) {
                    $output .= '<ul class="o-side-navigation__inner">';
                        $output .= '<li class="page_item page-item-82"><a href="/academics/courses/">Courses</a></li>';
                    $output .= '</ul>';
                }

                $output .= '<ul class="o-side-navigation__inner">' . $child_pages . '</ul>';
            $output .= '</nav>';

        }

        return $output;

    }

    add_shortcode('child_pages', 'list_child_pages');

?>
