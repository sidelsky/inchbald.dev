<?php
	include('header.php');
?>

<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

	<?php if (have_posts()) : ?>

	<?php while (have_posts()) : the_post(); ?>

	<div id="post-<?php the_ID(); ?>" class="o-posts__title o-posts__search-result">
		<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title(); ?></a>
	</div>

	<?php endwhile; ?>

	<?php else : ?>

	<h2>We are very sorry</h2>
	<h3><strong>The term<span style="color:grey; font-style: italic;">'<?php the_search_query(); ?>'</span> was not found</strong></h3>
	<p>Please try a new search term or use the main navigation to find what your're looking for.</p>

	<?php endif; ?>

</section>

<?php 
	include('footer.php');
?>