<form action="<?php echo esc_url( home_url( '/' ) ); ?>" method="get" id="search-form">
	<input type="text" name="s" id="search" value="<?php the_search_query(); ?>" />
</form>