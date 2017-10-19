<?php

	// This function allows short excerpts with paragraphs
	function improved_trim_excerpt($text) {

		global $post;

		if ( '' == $text ) {

			$text .= get_the_content();


			$text .= strip_tags($text, '<a> <p>');

			$excerpt_length = 50;

			$words = explode(' ', $text, $excerpt_length + 1);

			if (count($words) > $excerpt_length) {

				array_pop($words);
				array_push($words, '... <span class="read-more"><a href="'. get_permalink($post->ID) . '">' . 'Read more' . '</a></span>');

				$text = implode(' ', $words);
			}

		}

		return $text;
	}

	remove_filter('get_the_excerpt', 'wp_trim_excerpt');
	add_filter('get_the_excerpt', 'improved_trim_excerpt');

 ?>
