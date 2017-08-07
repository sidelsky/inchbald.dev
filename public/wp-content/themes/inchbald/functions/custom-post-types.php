<?php

	/**
	* Custom Post Types
	*/

	function createPostTypes() {

		//Post type
		create_post_type(
			array(
				'name' => NULL,
				'singular_name' => NULL,
				'has_archive' => FALSE,
				'rewrite' => array(
					'slug' => NULL,
					'with_front' => TRUE
				),
				'menu_icon' =>  'dashicons-admin-users',
				'menu_position' => 5,
				'supports' => array(
					'title',
					'editor',
					'thumbnail',
					'excerpt',
					'revisions'
				),
			)
		);
		//End post type


	}

	add_action('init', 'createPostTypes');


?>
