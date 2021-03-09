<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'kiyeto' );

/** MySQL database password */
define( 'DB_PASSWORD', '1234' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ':k;(r|}UdR@+bkQID^TW#F(w^Bd^fQ]VY cJ;Tw}bk>|hAk>SIH2*VaCbNf=EMRt' );
define( 'SECURE_AUTH_KEY',  '+qJ-yVPX}w1ICeUbX{ybLOwevz <@cxZm[tRdgAr:ImUpu(rfoDq+SU}`ftY5 x&' );
define( 'LOGGED_IN_KEY',    'IkE.EDSNEFrXl;2;3Y<7 Wg&9cE*l]t8gD;M]-A6kFc+j:uLJ$KqBQj>*z]tWhlP' );
define( 'NONCE_KEY',        ':Ol|05mLAA-6g=h(`VK5?mIrr#sS5 ,?U(+8@Dqeu8{Z3!3VDc0hi{bofp9U~vd|' );
define( 'AUTH_SALT',        'B8nKRBM<I=A3-!s2C.bDDAWT*W}%G{;W,PJ9vZ~`_KCu`emj(yg!*.?>]]?zXjuP' );
define( 'SECURE_AUTH_SALT', 'aHyD]pB/v #&Q ]5Fj^6JylRw]6u9]Y3.wuj~Zgj1Oyq+p#Z(au# ^,{im3QO6c~' );
define( 'LOGGED_IN_SALT',   '(VRW1L.iVUKBqD% FU!LML#WK}2IFKgjLI {o ci;vyws^M`k{Z90Ge0|m[nz8<o' );
define( 'NONCE_SALT',       'xj.9|k7<}D8ZWuEKwSDVX~53-hnBRscTr9;]9Ad_ut}krqkXgOfuC9LL1}JG]Ra7' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';