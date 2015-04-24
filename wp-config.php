<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'levi_solicitors');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

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
define('AUTH_KEY',         '{]YJkJm-zc<G1jo3+~GNen oi[aHyz*2|jTa4$B-t:=At2 @xQd*Ib(?v+C4aS8.');
define('SECURE_AUTH_KEY',  '%X=|e,-c)a}9fj;gSX&^}9+ `B8L+UEopd+4`PU:{>A9vRSI^nCOO$MZr`#)R3.|');
define('LOGGED_IN_KEY',    'A-Lpofly-JZ}z^zuy2RekcmDVi.|Z4UKO7 JbSjnzw)xGiP2oSUjFX^=vG?wFRX7');
define('NONCE_KEY',        'u$V/Z}qP09|VIpQ+A>(+CdNL`xfRpVLu> /[=H4(wnSR%tgk44e.}AQ+[[plrqe^');
define('AUTH_SALT',        '-S*]Pj_T.>P$P*+t7||T<iq&.:X.]|;sSfGkg[U~Q7_JIfw`W?9uEcFGEw<v/K1;');
define('SECURE_AUTH_SALT', 'MDdo*~;|8iP<}h>EtM1;7iF.xYN^BGSvqtJIj-+`wUy^W4d1vjlq<ILf|a^%^6~p');
define('LOGGED_IN_SALT',   ']q#i[9-L@-<T-B+^,]t6<,th%Q<tn@5&#p#)eFJ-wRn ?w-+-kJ00$Ot?a`sy7DE');
define('NONCE_SALT',       ';Cr+f*=9<g{5A6(=qMOGKA-M#LHySvEL++?g{BDBD-]@5~K2Yx]U#c]ON/-;]M*0');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
