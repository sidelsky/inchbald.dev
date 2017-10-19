	<?php

		/**
		* Footer
		*/

	 ?>
	 
	<footer class="page-footer" role="contentinfo">

		<div class="u-max-width-container">
			<div class="page-footer__columns">

				<div class="page-footer__column">
					<?php include 'partials/inchbald-logo.php'; ?>
				</div>

				<div class="page-footer__column">
					<nav class="footer-navigation">
						<?php
							/**
							* Footer links
							*/
							foreach ($content['footer_navigation'] as $key => $value) {
								echo '<a href="' . $value['url'] . '" class="footer-navigation__item">' . $value['title'] . '</a>';
							}
						?>
					</nav>

					<nav class="footer-navigation">
					<?php

						/**
						* Telephone
						*/
						foreach ($content['telephone'] as $key => $value) {
							echo '<a href="' . $value['tel'] . '" class="footer-navigation__item">';
								echo $value['title'] . ':' . ' ' . $value['tel'];
							echo '</a>';
						}

					 ?>
					 </nav>
					<span class="page-footer__copyright">
						&copy; <?php echo date('Y'); ?> Copyright <?php bloginfo('name'); ?>
					</span>
				</div>

				<div class="page-footer__column">
					<nav class="social-navigation">
						<?php
							/**
							* Social icons
							*/
							foreach ($content['social'] as $key => $value) {
								echo '<a href="' . $value['url'] . '" class="social-navigation__item">';
								$svg_icon_args = array(
									'icon' => $value['icon'],
								);
								svgIcon($svg_icon_args);
								echo '</a>';
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
