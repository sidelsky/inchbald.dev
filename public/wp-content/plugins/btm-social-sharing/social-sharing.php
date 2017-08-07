<?php
/*
Plugin Name: BTM Simple Social Sharing
Description: Simple social sharing with minimal JS
Version: 1.0.0
License: GPL-2.0+
*/

use BTMSimpleSocialSharing\SharingManager;
use BTMSimpleSocialSharing\Installer;

if ( ! defined( 'WPINC' ) ) {
	die;
}

define('SHARE_CACHE_FREQUENCY', 4);

spl_autoload_register(function ($class) {

	// project-specific namespace prefix
	$prefix = 'BTMSimpleSocialSharing\\';

	// base directory for the namespace prefix
	$base_dir = __DIR__ . '/src/';

	// does the class use the namespace prefix?
	$len = strlen($prefix);
	if (strncmp($prefix, $class, $len) !== 0) {
		// no, move to the next registered autoloader
		return;
	}

	// get the relative class name
	$relative_class = substr($class, $len);

	// replace the namespace prefix with the base directory, replace namespace
	// separators with directory separators in the relative class name, append
	// with .php
	$file = $base_dir . str_replace('\\', '/', $relative_class) . '.php';

	// if the file exists, require it
	if (file_exists($file)) {
		require $file;
	}
});

function run_sharing_manager() {

	$sharingManager = new SharingManager( plugin_dir_path( __FILE__ ) );
}

run_sharing_manager();

register_activation_hook( __FILE__, 'simplesocialsharing_activate' );

function simplesocialsharing_activate()
{
	$init = new Installer();
	//$init->setup();
}
