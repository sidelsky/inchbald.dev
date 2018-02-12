<?php

/*
Plugin Name: Blockquote with cite
Description: Adds a button to the visual editor to help generate a Blockquote.
Author: Errol Sidelsky
*/

// Add Shortcode
function specialBlockquote( $atts, $content ) {
	$atts = shortcode_atts(
		array(
			'cite' => '',
		), $atts, 'blockquote' );

	return '<blockquote class="blockquote">' . '<span class="blockquote__inner">' . $content . '</span>' . '<cite class="blockquote__cite">' . $atts['cite'] . '</cite>' . '</blockquote>';
}
add_shortcode( 'blockquote', 'specialBlockquote' );

//Add the button in WP
function enqueue_plugin_scripts($plugin_array) {
   //enqueue TinyMCE plugin script with its ID.
	$plugin_array['specialBlockquoteShortcode'] =  plugin_dir_url(__FILE__) . "blockquote-with-cite.js";
	return $plugin_array;
}

add_filter("mce_external_plugins", "enqueue_plugin_scripts");


/**
 * Register with hook 'wp_enqueue_scripts', which can be used for front end CSS and JavaScript
 */

//add_action( 'wp_enqueue_scripts', 'load_style' ); //Turn off style for now

/**
 * Enqueue plugin style-file
 */
function load_style() {
    // Respects SSL, Style.css is relative to the current file
    wp_register_style( 'blockquoteStyle', plugins_url('style.css', __FILE__) );
    wp_enqueue_style( 'blockquoteStyle' );
}


function register_buttons_editor($buttons) {
  //register buttons with their id.
	array_push($buttons, "specialBlockquote");
	return $buttons;
}

add_filter("mce_buttons", "register_buttons_editor");

//End
?>
