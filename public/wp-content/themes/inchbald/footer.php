


<footer class="page-footer" role="contentinfo">

	<div class="u-max-width-container">
		<div class="page-footer__columns">

			<div class="page-footer__column">
				<?php include 'partials/inchbald-logo.php'; ?>
			</div>

			<div class="page-footer__column">
				<nav class="footer-navigation">
					<a href="<?php echo $lang['footer_navigation']['visit']['url']; ?>" class="footer-navigation__item"><?php echo $lang['footer_navigation']['visit']['title']; ?></a>
					<a href="<?php echo $lang['footer_navigation']['contact']['url']; ?>" class="footer-navigation__item"><?php echo $lang['footer_navigation']['contact']['title']; ?></a>
				</nav>
				<span class="page-footer__copyright">
					&copy; <?php echo date('Y'); ?> Copyright <?php bloginfo('name'); ?>
				</span>
			</div>

			<div class="page-footer__column">
				<nav class="social-navigation">
					<?php
						/**
						* Solcial icons
						*/
						foreach ($lang['social'] as $key => $value) {
							echo '<a href="' . $value['url'] . '" class="social-navigation__item">' . $value['icon'] . '</a>';
						}
 					?>

				</nav>
			</div>

		</div>
	</div>

</footer>

</div> <!-- page-wrap END -->

<?php wp_footer(); ?>

</body>
</html>
