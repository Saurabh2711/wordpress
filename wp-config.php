<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
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
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'abcd123');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         '{H&,zhT*)G_t Qe6%T3EyFukC;Z[sd<fDk-_|U^!GWiSe${Mk2/XaT]cRy*+wDe]');
define('SECURE_AUTH_KEY',  '>l8c~RvnQ$e?>_./`d|4}oa4eidON}1 dnMn35=#$Y:%!yleUB<ZQZdCRH6^yma-');
define('LOGGED_IN_KEY',    'fX|=:QAu84 b[P`p<k k?Jmg|AFgtVx=~]bJ62 &r-ChrtK*$0`?Q{QVrkur~i][');
define('NONCE_KEY',        ']#e^dEdd[^3{Ts_@oPrH^r3?Bd$,}`Y_cVhP|tb+^*KRq&<0r8bMWE^<=Z8j1L(;');
define('AUTH_SALT',        'c$+1}FohC`h^.i:tSo]:*qDPt%dujcJr)DO/^,xQHaBfUq&IGd8w [8h*Q_vU9yb');
define('SECURE_AUTH_SALT', 'PTe[yY:rrT/t)EP-h6sA~*vz?7nSYYq]p)d$;wzhR%w&~C<nkmxc?PrqzB!=Tv[V');
define('LOGGED_IN_SALT',   'w!&PtsH3+>uvWO%/rG<5]`&G~iubl1~LzMa5n03j&|r`dZcRPWVUv>fP{TfC^6C ');
define('NONCE_SALT',       'B5U&h7`PnALk:^=Ii&)BsTNjRPUGy.rYaricM!Hzd 0U}U!v:IW`](jS*:c1*4;R');

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
