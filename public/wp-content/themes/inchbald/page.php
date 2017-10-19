<?php

	include('header.php');


?>

<section role="main" class="u-max-width-container l-lost-grid u-section-padding-tb">

	<div class="l-lost-column--three-twelfths">
		<?php echo list_child_pages(); ?>
		<?php include 'sidebar.php'; ?>
	</div>

	<div class="l-lost-column--nine-twelfths">
		<?php if (have_posts()): while (have_posts()) : the_post(); ?>
			<?php the_content(); ?>
		<?php endwhile; endif; ?>
	</div>

</section>

<?php include('footer.php'); ?>
