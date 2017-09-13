<?php

    /**
    * Get Vimeo thumbnails
    */
    function getVimeoThumbUrl($id) {
        $data = file_get_contents("http://vimeo.com/api/v2/video/$id.json");
        $data = json_decode($data);
        return $data[0]->thumbnail_large;
    }

    function getVimeoTitle($id) {
        $data = file_get_contents("http://vimeo.com/api/v2/video/$id.json");
        $data = json_decode($data);
        //print_r($data[0]);
        //getVimeoTitle($vimeo_video_id);
    }

    $args = array(
      'post_type' => 'videos',
      'posts_per_page' => -1,
      'orderby' => 'post_date',
      'order' => 'DEC'
    );
    $loop = new WP_Query( $args );

    echo '<div class="l-lost-grid--flex">';

    while ( $loop->have_posts() ) : $loop->the_post();
    if ( $post->ID == $do_not_duplicate ) continue;

        // Get the custom field
        $field_value = get_field('video', FALSE, FALSE);
        // Strip the url and get the ID
        $vimeo_video_id = preg_replace('#^https?://vimeo.com/#', '', $field_value);

        echo '<a href="'.get_permalink().'" class="l-lost-three-col o-video-thumbs">';
            echo '<div class="o-video-thumbs__thumbnail" style="background-image: url(' . getVimeoThumbUrl($vimeo_video_id) . '); "></div>';
            echo '<h3 class="o-video-thumbs__title">' . get_the_title() . '</h3>';
                echo '<div class="o-video-thumbs__cta">';
                    echo $content['video_thumbnail']['cta'] . ' ';
                    $svg_icon_args = array(
                        'icon' => $content['video_thumbnail']['icon'],
                    );
                    svgIcon($svg_icon_args);
                echo '</div>';
        echo '</a>';

    endwhile;

    echo '</div>';

 ?>
