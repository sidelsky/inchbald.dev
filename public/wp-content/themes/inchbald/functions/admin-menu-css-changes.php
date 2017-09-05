<?php

//Admin menu css changes
function ers_admin_css(){

		$theme_dir = get_theme_root_uri();
		$theme_name = wp_get_theme();

		$theme_name_lower = strtolower($theme_name);

		$src = "$theme_dir/$theme_name_lower/assets/build/admin-css/admin.css";
		$handle = "customAdminCss";
		wp_register_script($handle, $src);
		wp_enqueue_style($handle, $src, array(), false, false);
    }

    add_action('admin_head', 'ers_admin_css');

 ?>
