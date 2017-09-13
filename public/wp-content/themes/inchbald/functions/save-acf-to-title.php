<?php
    /*
    * Save ACF to post title on save
    */
    function saveACFTitle($post_id){

        if( !get_the_title( $post_id ) ) {

            $field_value = get_field('video', $post_id, FALSE);
            // Strip the url and get the ID
            $id = preg_replace('#^https?://vimeo.com/#', '', $field_value);

            $vimeo = file_get_contents("http://vimeo.com/api/v2/video/$id.json");
            $data = json_decode($vimeo);

            // Title from Vimeo
            $new_title = $data[0]->title;

            // Feature image from Vimeo
            $feature_image = $data[0]->thumbnail_large;

            // Sanitize title for slug
            $slug = sanitize_title( $new_title );

            // Set the post data
            $new_post = array(
                'post_type' => 'videos',
                'ID'           => $post_id,
                'post_title'   => $new_title,
                'post_name'   => $slug
            );

            set_post_thumbnail( $post_id, $feature_image );

            // Remove the hook to avoid infinite loop. Please make sure that it has
            // the same priority (20)
            remove_action('acf/save_post', 'saveACFTitle', 20);

            // Update the post
            wp_update_post( $new_post );

            // Add the hook back
            add_action('acf/save_post', 'saveACFTitle', 20);

        }

    }

    add_action('acf/save_post', 'saveACFTitle', 20);


 ?>
