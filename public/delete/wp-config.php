<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'cl17-a-wordp-23h');

/** MySQL database username */
define('DB_USER', 'cl17-a-wordp-23h');

/** MySQL database password */
define('DB_PASSWORD', 'X!De9423d');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Lw4eT9UG1YNmbP9(SZLOOyGMoy+yB0u!XdaYOuEe1BMKLqA/WD#7xPlIM^BqfW#K');
define('SECURE_AUTH_KEY',  'pb^09^OmoOKbFRGVs+O-fEAuPRb6D0O=6e9(q8n(qRn5YoooVEc=ZbYS)Kq=dSi=');
define('LOGGED_IN_KEY',    '1_1^!ZnnLTr^6j^50Q+ZsrFtl8#gcV(+2XymQ55C^ZH4OgF=HZ=Er)/n0p-HOm9j');
define('NONCE_KEY',        '7A2N4yZhnhMINro#Efl2zoA5Khf^7iKoeXncMtBck#Yt#4vy#wYe)3^4H8/3lTGI');
define('AUTH_SALT',        'Ipvyq#96HX7bFLyV03#e6e6bai1#u3!5aceag56nb+zzX+8!uPdPbvzhIgj_)nLt');
define('SECURE_AUTH_SALT', 'wvx5Xpnctn4s5Z#oY6Q4ZYLbq73GAbQv2lXcbk7XZF+Ot/ETmwzQexwv)Dx+S0os');
define('LOGGED_IN_SALT',   'tNo/0a#pOw_^f1e7eQlABm9zHCEYvg-BGAxt7Bp!MdSEj!vwMC!=j-2Ga=62mkRI');
define('NONCE_SALT',       'CM0zP9KV646nG)mSuBT)s-IUVtgHOyu08HD_)qB#evGnE9S/ZExoy6/FC6UJtTQy');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de.mo to wp-content/languages and set WPLANG to 'de' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/**
 *  Change this to true to run multiple blogs on this installation.
 *  Then login as admin and go to Tools -> Network
 */
define('WP_ALLOW_MULTISITE', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

/* Destination directory for file streaming */
define('WP_TEMP_DIR', ABSPATH . 'wp-content/');

