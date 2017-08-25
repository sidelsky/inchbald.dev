<?php

	/**
	* Custom Post Types
	*/

	function createPostTypes() {

		//Post type - Events
		create_post_type(
			array(
				'name' => 'Events',
				'singular_name' => 'Event',
				'has_archive' => true,
				'rewrite' => array(
					'slug' => NULL,
					'with_front' => TRUE
				),
				'menu_icon' =>  'dashicons-admin-site',
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

		//Post type - Courses
		create_post_type(
			array(
				'name' => 'Courses',
				'singular_name' => 'Course',
				'has_archive' => false,
				'rewrite' => array(
					'slug' => NULL,
					'with_front' => TRUE
				),
				'menu_icon' =>  'dashicons-welcome-learn-more',
				'menu_position' => 5,
				'supports' => array(
					'title',
					'editor',
					'thumbnail',
					'revisions'
				),
			)
		);
		//End post type


	}

	add_action('init', 'createPostTypes');


?>
