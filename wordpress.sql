-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2015 at 06:51 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-05-03 12:54:15', '2015-05-03 12:54:15', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 1, 'root', 'uttamsaurabh818@gmail.com', '', '::1', '2015-05-03 14:17:34', '2015-05-03 14:17:34', 'jhhjjhkjlk', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=189 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:12/wordpress', 'yes'),
(2, 'home', 'http://localhost:12/wordpress', 'yes'),
(3, 'blogname', 'MySite', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'uttamsaurabh818@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:9:"hello.php";i:1;s:21:"megamenu/megamenu.php";i:2;s:23:"ml-slider/ml-slider.php";i:3;s:39:"siteorigin-panels/siteorigin-panels.php";i:4;s:35:"smpl-shortcodes/smpl-shortcodes.php";i:5;s:39:"so-widgets-bundle/so-widgets-bundle.php";i:6;s:31:"wp-lightbox-2/wp-lightbox-2.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:67:"G:\\XAMP\\htdocs\\wordpress/wp-content/themes/vantage/content-page.php";i:1;s:60:"G:\\XAMP\\htdocs\\wordpress/wp-content/themes/vantage/style.css";i:2;s:0:"";}', 'no'),
(41, 'template', 'vantage', 'yes'),
(42, 'stylesheet', 'vantage', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31533', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '9', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31533', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";N;s:14:"sidebar-header";N;s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1430769420;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430787258;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430830477;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1430833363;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.2.1";s:12:"last_checked";i:1430758174;}', 'yes'),
(106, '_transient_random_seed', '86f3c0b35f51ce0319e906ba87f76172', 'yes'),
(109, '_transient_timeout_plugin_slugs', '1430823777', 'no'),
(110, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:21:"megamenu/megamenu.php";i:3;s:23:"ml-slider/ml-slider.php";i:4;s:39:"siteorigin-panels/siteorigin-panels.php";i:5;s:35:"smpl-shortcodes/smpl-shortcodes.php";i:6;s:39:"so-widgets-bundle/so-widgets-bundle.php";i:7;s:31:"wp-lightbox-2/wp-lightbox-2.php";}', 'no'),
(113, 'can_compress_scripts', '1', 'yes'),
(114, '_site_transient_timeout_wporg_theme_feature_list', '1430669292', 'yes'),
(115, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430657718;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(118, 'current_theme', 'Vantage', 'yes'),
(119, 'theme_mods_wpex-pytheas', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430658522;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(120, 'theme_switched', '', 'yes'),
(121, 'optionsframework', 'a:1:{s:2:"id";s:19:"options_wpex_themes";}', 'yes'),
(122, 'options_wpex_themes', 'a:51:{s:11:"custom_logo";s:0:"";s:28:"headerimg_front_page_exclude";s:1:"1";s:24:"disable_background_image";b:0;s:6:"retina";b:0;s:17:"widgetized_footer";s:1:"1";s:14:"lightbox_theme";s:10:"pp_default";s:16:"masterhead_right";s:44:"<i class="icon-phone"></i>Call us: 999-99-99";s:16:"custom_copyright";s:134:"<a href="http://wordpress.org" title="WordPress">WordPress</a>Theme by<a href="http://wpexplorer.me" title="WPExplorer">WPExplorer</a>";s:16:"slides_slideshow";s:4:"true";s:16:"slides_randomize";s:4:"true";s:16:"slides_animation";s:5:"slide";s:16:"slides_direction";s:10:"horizontal";s:15:"slideshow_speed";s:4:"7000";s:15:"animation_speed";s:3:"600";s:10:"slides_alt";s:0:"";s:12:"home_tagline";s:23:"Homepage Tagline Sample";s:19:"home_services_title";s:10:"What We Do";s:19:"home_services_count";s:1:"6";s:14:"home_portfolio";s:1:"1";s:20:"home_portfolio_title";s:11:"Recent Work";s:20:"home_portfolio_count";s:1:"4";s:9:"home_blog";s:1:"1";s:15:"home_blog_title";s:11:"Recent News";s:15:"home_blog_count";s:1:"4";s:21:"blog_single_thumbnail";s:1:"1";s:12:"blog_exceprt";s:1:"1";s:8:"blog_bio";s:1:"1";s:9:"blog_tags";s:1:"1";s:12:"blog_related";s:1:"1";s:6:"social";s:1:"1";s:7:"twitter";s:0:"";s:6:"google";s:0:"";s:8:"facebook";s:0:"";s:8:"linkedin";s:0:"";s:6:"flickr";s:0:"";s:9:"pinterest";s:0:"";s:6:"github";s:0:"";s:7:"behance";s:0:"";s:8:"dribbble";s:0:"";s:6:"forrst";s:0:"";s:7:"youtube";s:0:"";s:5:"vimeo";s:0:"";s:5:"skype";s:0:"";s:6:"paypal";s:0:"";s:6:"envato";s:0:"";s:7:"gowalla";s:0:"";s:6:"icloud";s:0:"";s:8:"evernote";s:0:"";s:5:"quora";s:0:"";s:9:"wordpress";s:0:"";s:3:"rss";s:0:"";}', 'yes'),
(127, 'recently_activated', 'a:1:{s:19:"akismet/akismet.php";i:1430662996;}', 'yes'),
(129, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1430758178;}', 'yes'),
(130, 'theme_mods_vantage', 'a:3:{i:0;b:0;s:17:"version_activated";s:5:"1.4.2";s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(133, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes'),
(135, 'siteorigin_panels_initial_version', '2.1.2', 'no'),
(136, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(137, 'rewrite_rules', 'a:71:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=9&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(138, 'siteorigin_panels_home_page_id', '9', 'yes'),
(142, 'siteorigin_widget_bundle_version', '1.2.2', 'yes'),
(143, '_transient_timeout_sow:cleared', '1431265173', 'no'),
(144, '_transient_sow:cleared', '1', 'no'),
(152, 'jqlb_help_text', '', 'yes'),
(153, 'jqlb_automate', '1', 'yes'),
(154, 'jqlb_comments', '1', 'yes'),
(155, 'jqlb_resize_on_demand', '1', 'yes'),
(156, 'jqlb_show_download', '0', 'yes'),
(157, 'jqlb_navbarOnTop', '0', 'yes'),
(158, 'jqlb_resize_speed', '400', 'yes'),
(164, 'jqlb_margin_size', '0', 'yes'),
(169, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1430763411', 'no'),
(170, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(173, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(176, 'ml-slider_children', 'a:0:{}', 'yes'),
(181, '_transient_is_multi_author', '0', 'yes'),
(184, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1430758176;}', 'yes'),
(185, 'megamenu_version', '1.7.3.1', 'yes'),
(187, '_site_transient_timeout_theme_roots', '1430759977', 'yes'),
(188, '_site_transient_theme_roots', 'a:5:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:7:"vantage";s:7:"/themes";s:12:"wpex-pytheas";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=159 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(12, 9, 'panels_data', 'a:3:{s:7:"widgets";a:13:{i:0;a:3:{s:8:"headline";s:8:"Semester";s:12:"sub_headline";s:0:"";s:11:"panels_info";a:6:{s:5:"class";s:23:"Vantage_Headline_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:1;a:12:{s:5:"title";s:10:"Semester 1";s:4:"text";s:0:"";s:4:"icon";s:0:"";s:21:"icon_background_color";s:0:"";s:5:"image";s:88:"https://secure.gravatar.com/avatar/51cc73fba61f938fe5c0220e18a352f6?s=48&d=monsterid&r=g";s:13:"icon_position";s:4:"left";s:9:"icon_size";s:5:"small";s:4:"more";s:10:"Semester 1";s:8:"more_url";s:0:"";s:3:"box";b:0;s:12:"all_linkable";b:0;s:11:"panels_info";a:6:{s:5:"class";s:25:"Vantage_CircleIcon_Widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:2;a:12:{s:5:"title";s:10:"Semester 2";s:4:"text";s:0:"";s:4:"icon";s:17:"fa fa-institution";s:21:"icon_background_color";s:0:"";s:5:"image";s:0:"";s:13:"icon_position";s:4:"left";s:9:"icon_size";s:5:"small";s:4:"more";s:0:"";s:8:"more_url";s:0:"";s:3:"box";b:0;s:12:"all_linkable";b:0;s:11:"panels_info";a:6:{s:5:"class";s:25:"Vantage_CircleIcon_Widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:12:{s:5:"title";s:10:"Semester 3";s:4:"text";s:0:"";s:4:"icon";s:17:"fa fa-institution";s:21:"icon_background_color";s:0:"";s:5:"image";s:0:"";s:13:"icon_position";s:4:"left";s:9:"icon_size";s:5:"small";s:4:"more";s:0:"";s:8:"more_url";s:0:"";s:3:"box";b:0;s:12:"all_linkable";b:0;s:11:"panels_info";a:6:{s:5:"class";s:25:"Vantage_CircleIcon_Widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:2;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:4;a:12:{s:5:"title";s:10:"Semester 4";s:4:"text";s:0:"";s:4:"icon";s:17:"fa fa-institution";s:21:"icon_background_color";s:0:"";s:5:"image";s:0:"";s:13:"icon_position";s:4:"left";s:9:"icon_size";s:5:"small";s:4:"more";s:0:"";s:8:"more_url";s:0:"";s:3:"box";b:0;s:12:"all_linkable";b:0;s:11:"panels_info";a:6:{s:5:"class";s:25:"Vantage_CircleIcon_Widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:3;s:2:"id";i:4;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:5;a:12:{s:5:"title";s:10:"Semester 5";s:4:"text";s:0:"";s:4:"icon";s:17:"fa fa-institution";s:21:"icon_background_color";s:0:"";s:5:"image";s:0:"";s:13:"icon_position";s:4:"left";s:9:"icon_size";s:5:"small";s:4:"more";s:0:"";s:8:"more_url";s:0:"";s:3:"box";b:0;s:12:"all_linkable";b:0;s:11:"panels_info";a:6:{s:5:"class";s:25:"Vantage_CircleIcon_Widget";s:3:"raw";b:0;s:4:"grid";i:2;s:4:"cell";i:0;s:2:"id";i:5;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:6;a:12:{s:5:"title";s:10:"Semester 6";s:4:"text";s:0:"";s:4:"icon";s:17:"fa fa-institution";s:21:"icon_background_color";s:0:"";s:5:"image";s:0:"";s:13:"icon_position";s:4:"left";s:9:"icon_size";s:5:"small";s:4:"more";s:0:"";s:8:"more_url";s:0:"";s:3:"box";b:0;s:12:"all_linkable";b:0;s:11:"panels_info";a:6:{s:5:"class";s:25:"Vantage_CircleIcon_Widget";s:3:"raw";b:0;s:4:"grid";i:2;s:4:"cell";i:1;s:2:"id";i:6;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:7;a:12:{s:5:"title";s:10:"Semester 7";s:4:"text";s:0:"";s:4:"icon";s:17:"fa fa-institution";s:21:"icon_background_color";s:0:"";s:5:"image";s:0:"";s:13:"icon_position";s:4:"left";s:9:"icon_size";s:5:"small";s:4:"more";s:0:"";s:8:"more_url";s:0:"";s:3:"box";b:0;s:12:"all_linkable";b:0;s:11:"panels_info";a:6:{s:5:"class";s:25:"Vantage_CircleIcon_Widget";s:3:"raw";b:0;s:4:"grid";i:2;s:4:"cell";i:2;s:2:"id";i:7;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:8;a:12:{s:5:"title";s:10:"Semester 8";s:4:"text";s:0:"";s:4:"icon";s:17:"fa fa-institution";s:21:"icon_background_color";s:0:"";s:5:"image";s:0:"";s:13:"icon_position";s:4:"left";s:9:"icon_size";s:5:"small";s:4:"more";s:0:"";s:8:"more_url";s:0:"";s:3:"box";b:0;s:12:"all_linkable";b:0;s:11:"panels_info";a:6:{s:5:"class";s:25:"Vantage_CircleIcon_Widget";s:3:"raw";b:0;s:4:"grid";i:2;s:4:"cell";i:3;s:2:"id";i:8;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:9;a:3:{s:8:"headline";s:14:"Recent Uploads";s:12:"sub_headline";s:0:"";s:11:"panels_info";a:6:{s:5:"class";s:23:"Vantage_Headline_Widget";s:3:"raw";b:0;s:4:"grid";i:3;s:4:"cell";i:0;s:2:"id";i:9;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:10;a:3:{s:5:"title";s:0:"";s:5:"posts";s:0:"";s:11:"panels_info";a:6:{s:5:"class";s:37:"SiteOrigin_Widget_PostCarousel_Widget";s:3:"raw";b:0;s:4:"grid";i:4;s:4:"cell";i:0;s:2:"id";i:10;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:11;a:3:{s:8:"headline";s:11:"Recent News";s:12:"sub_headline";s:0:"";s:11:"panels_info";a:6:{s:5:"class";s:23:"Vantage_Headline_Widget";s:3:"raw";b:0;s:4:"grid";i:5;s:4:"cell";i:0;s:2:"id";i:11;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:12;a:4:{s:5:"title";s:0:"";s:6:"number";i:5;s:11:"panels_info";a:4:{s:5:"class";s:22:"WP_Widget_Recent_Posts";s:4:"grid";i:6;s:4:"cell";i:0;s:2:"id";i:12;}s:9:"show_date";b:0;}}s:5:"grids";a:7:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:4;s:5:"style";a:0:{}}i:2;a:2:{s:5:"cells";i:4;s:5:"style";a:0:{}}i:3;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:4;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:5;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:6;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:13:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.25;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.25;}i:3;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.25;}i:4;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.25;}i:5;a:2:{s:4:"grid";i:2;s:6:"weight";d:0.25;}i:6;a:2:{s:4:"grid";i:2;s:6:"weight";d:0.25;}i:7;a:2:{s:4:"grid";i:2;s:6:"weight";d:0.25;}i:8;a:2:{s:4:"grid";i:2;s:6:"weight";d:0.25;}i:9;a:2:{s:4:"grid";i:3;s:6:"weight";i:1;}i:10;a:2:{s:4:"grid";i:4;s:6:"weight";i:1;}i:11;a:2:{s:4:"grid";i:5;s:6:"weight";i:1;}i:12;a:2:{s:4:"grid";i:6;s:6:"weight";i:1;}}}'),
(13, 9, '_wp_page_template', 'home-panels.php'),
(16, 11, '_edit_last', '1'),
(18, 11, '_edit_lock', '1430660912:1'),
(21, 14, '_edit_last', '1'),
(22, 14, '_edit_lock', '1430662693:1'),
(24, 16, '_edit_last', '1'),
(25, 16, '_edit_lock', '1430662744:1'),
(27, 18, '_edit_last', '1'),
(28, 18, '_edit_lock', '1430680044:1'),
(29, 21, '_edit_last', '1'),
(30, 21, '_wp_page_template', 'default'),
(31, 21, 'vantage_metaslider_slider', ''),
(32, 21, 'vantage_metaslider_slider_stretch', '1'),
(33, 21, 'vantage_menu_icon', ''),
(34, 21, '_edit_lock', '1430720137:1'),
(44, 24, '_menu_item_type', 'post_type'),
(45, 24, '_menu_item_menu_item_parent', '0'),
(46, 24, '_menu_item_object_id', '21'),
(47, 24, '_menu_item_object', 'page'),
(48, 24, '_menu_item_target', ''),
(49, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 24, '_menu_item_xfn', ''),
(51, 24, '_menu_item_url', ''),
(52, 24, '_menu_item_orphaned', '1430720337'),
(71, 27, '_menu_item_type', 'post_type'),
(72, 27, '_menu_item_menu_item_parent', '0'),
(73, 27, '_menu_item_object_id', '9'),
(74, 27, '_menu_item_object', 'page'),
(75, 27, '_menu_item_target', ''),
(76, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 27, '_menu_item_xfn', ''),
(78, 27, '_menu_item_url', ''),
(79, 27, '_menu_item_orphaned', '1430720482'),
(80, 28, '_menu_item_type', 'post_type'),
(81, 28, '_menu_item_menu_item_parent', '0'),
(82, 28, '_menu_item_object_id', '21'),
(83, 28, '_menu_item_object', 'page'),
(84, 28, '_menu_item_target', ''),
(85, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 28, '_menu_item_xfn', ''),
(87, 28, '_menu_item_url', ''),
(88, 28, '_menu_item_orphaned', '1430720483'),
(89, 29, '_menu_item_type', 'post_type'),
(90, 29, '_menu_item_menu_item_parent', '0'),
(91, 29, '_menu_item_object_id', '9'),
(92, 29, '_menu_item_object', 'page'),
(93, 29, '_menu_item_target', ''),
(94, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 29, '_menu_item_xfn', ''),
(96, 29, '_menu_item_url', ''),
(97, 29, '_menu_item_orphaned', '1430720483'),
(98, 30, '_menu_item_type', 'post_type'),
(99, 30, '_menu_item_menu_item_parent', '0'),
(100, 30, '_menu_item_object_id', '2'),
(101, 30, '_menu_item_object', 'page'),
(102, 30, '_menu_item_target', ''),
(103, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 30, '_menu_item_xfn', ''),
(105, 30, '_menu_item_url', ''),
(106, 30, '_menu_item_orphaned', '1430720484'),
(107, 31, '_edit_last', '1'),
(108, 31, '_edit_lock', '1430724661:1'),
(109, 31, '_wp_page_template', 'default'),
(110, 31, 'vantage_metaslider_slider', ''),
(111, 31, 'vantage_metaslider_slider_stretch', '1'),
(112, 31, 'vantage_menu_icon', ''),
(113, 33, 'ml-slider_settings', 'a:34:{s:4:"type";s:4:"flex";s:6:"random";b:0;s:8:"cssClass";s:0:"";s:8:"printCss";b:1;s:7:"printJs";b:1;s:5:"width";i:700;s:6:"height";i:300;s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";i:3000;s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:6:"random";s:10:"navigation";b:1;s:5:"links";b:1;s:10:"hoverPause";b:1;s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";b:0;s:14:"animationSpeed";i:600;s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";i:15;s:6:"center";b:0;s:9:"smartCrop";b:1;s:12:"carouselMode";b:0;s:14:"carouselMargin";i:5;s:6:"easing";s:6:"linear";s:8:"autoPlay";b:1;s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";b:0;s:10:"noConflict";b:1;}'),
(114, 34, '_menu_item_type', 'post_type'),
(115, 34, '_menu_item_menu_item_parent', '0'),
(116, 34, '_menu_item_object_id', '9'),
(117, 34, '_menu_item_object', 'page'),
(118, 34, '_menu_item_target', ''),
(119, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(120, 34, '_menu_item_xfn', ''),
(121, 34, '_menu_item_url', ''),
(122, 34, '_menu_item_orphaned', '1430726194'),
(123, 35, '_menu_item_type', 'post_type'),
(124, 35, '_menu_item_menu_item_parent', '0'),
(125, 35, '_menu_item_object_id', '21'),
(126, 35, '_menu_item_object', 'page'),
(127, 35, '_menu_item_target', ''),
(128, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(129, 35, '_menu_item_xfn', ''),
(130, 35, '_menu_item_url', ''),
(131, 35, '_menu_item_orphaned', '1430726194'),
(132, 36, '_menu_item_type', 'post_type'),
(133, 36, '_menu_item_menu_item_parent', '0'),
(134, 36, '_menu_item_object_id', '9'),
(135, 36, '_menu_item_object', 'page'),
(136, 36, '_menu_item_target', ''),
(137, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(138, 36, '_menu_item_xfn', ''),
(139, 36, '_menu_item_url', ''),
(140, 36, '_menu_item_orphaned', '1430726195'),
(141, 37, '_menu_item_type', 'post_type'),
(142, 37, '_menu_item_menu_item_parent', '0'),
(143, 37, '_menu_item_object_id', '2'),
(144, 37, '_menu_item_object', 'page'),
(145, 37, '_menu_item_target', ''),
(146, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(147, 37, '_menu_item_xfn', ''),
(148, 37, '_menu_item_url', ''),
(149, 37, '_menu_item_orphaned', '1430726196'),
(150, 38, '_menu_item_type', 'post_type'),
(151, 38, '_menu_item_menu_item_parent', '0'),
(152, 38, '_menu_item_object_id', '31'),
(153, 38, '_menu_item_object', 'page'),
(154, 38, '_menu_item_target', ''),
(155, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(156, 38, '_menu_item_xfn', ''),
(157, 38, '_menu_item_url', ''),
(158, 38, '_menu_item_orphaned', '1430726197');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-05-03 12:54:15', '2015-05-03 12:54:15', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-05-03 12:54:15', '2015-05-03 12:54:15', '', 0, 'http://localhost:12/wordpress/?p=1', 0, 'post', '', 2),
(2, 1, '2015-05-03 12:54:15', '2015-05-03 12:54:15', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:12/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-05-03 12:54:15', '2015-05-03 12:54:15', '', 0, 'http://localhost:12/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-05-03 12:54:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-03 12:54:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=3', 0, 'post', '', 0),
(9, 1, '2015-05-03 13:26:14', '0000-00-00 00:00:00', '', 'Home Page', '', 'publish', 'closed', 'open', '', '', '', '', '2015-05-03 13:26:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?page_id=9', 0, 'page', '', 0),
(11, 1, '2015-05-03 13:43:28', '2015-05-03 13:43:28', 'Saurabh Uttam\r\n\r\nMNNIT Allahabad\r\n\r\nComputer Science and Encgineering', 'Saurabh', '', 'publish', 'open', 'open', '', 'saurabh', '', '', '2015-05-03 13:43:28', '2015-05-03 13:43:28', '', 0, 'http://localhost:12/wordpress/?p=11', 0, 'post', '', 0),
(12, 1, '2015-05-03 13:43:28', '2015-05-03 13:43:28', 'Saurabh Uttam\r\n\r\nMNNIT Allahabad\r\n\r\nComputer Science and Encgineering', 'Saurabh', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-05-03 13:43:28', '2015-05-03 13:43:28', '', 11, 'http://localhost:12/wordpress/2015/05/03/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-05-03 14:20:30', '2015-05-03 14:20:30', 'jjggjhgjgj', 'sneha', '', 'publish', 'open', 'open', '', 'sneha', '', '', '2015-05-03 14:20:30', '2015-05-03 14:20:30', '', 0, 'http://localhost:12/wordpress/?p=14', 0, 'post', '', 0),
(15, 1, '2015-05-03 14:20:30', '2015-05-03 14:20:30', 'jjggjhgjgj', 'sneha', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-05-03 14:20:30', '2015-05-03 14:20:30', '', 14, 'http://localhost:12/wordpress/2015/05/03/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2015-05-03 14:20:54', '2015-05-03 14:20:54', 'hguguhiu', 'preety', '', 'publish', 'open', 'open', '', 'preety', '', '', '2015-05-03 14:20:54', '2015-05-03 14:20:54', '', 0, 'http://localhost:12/wordpress/?p=16', 0, 'post', '', 0),
(17, 1, '2015-05-03 14:20:54', '2015-05-03 14:20:54', 'hguguhiu', 'preety', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2015-05-03 14:20:54', '2015-05-03 14:20:54', '', 16, 'http://localhost:12/wordpress/2015/05/03/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2015-05-03 14:21:41', '2015-05-03 14:21:41', 'jhjhjhj', 'default', '', 'publish', 'open', 'open', '', 'default', '', '', '2015-05-03 14:21:41', '2015-05-03 14:21:41', '', 0, 'http://localhost:12/wordpress/?p=18', 0, 'post', '', 0),
(19, 1, '2015-05-03 14:21:41', '2015-05-03 14:21:41', 'jhjhjhj', 'default', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-05-03 14:21:41', '2015-05-03 14:21:41', '', 18, 'http://localhost:12/wordpress/2015/05/03/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2015-05-04 06:17:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-04 06:17:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=20', 0, 'post', '', 0),
(21, 1, '2015-05-04 06:17:50', '2015-05-04 06:17:50', '', '', '', 'publish', 'open', 'open', '', '21', '', '', '2015-05-04 06:17:50', '2015-05-04 06:17:50', '', 0, 'http://localhost:12/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2015-05-04 06:17:50', '2015-05-04 06:17:50', '', '', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2015-05-04 06:17:50', '2015-05-04 06:17:50', '', 21, 'http://localhost:12/wordpress/2015/05/04/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2015-05-04 06:18:56', '0000-00-00 00:00:00', '', '#21 (no title)', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 06:18:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=24', 1, 'nav_menu_item', '', 0),
(27, 1, '2015-05-04 06:21:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 06:21:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2015-05-04 06:21:22', '0000-00-00 00:00:00', '', '#21 (no title)', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 06:21:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2015-05-04 06:21:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 06:21:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2015-05-04 06:21:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 06:21:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2015-05-04 07:32:18', '2015-05-04 07:32:18', 'sajhajhas', 'Saurabh', '', 'publish', 'open', 'open', '', 'saurabh', '', '', '2015-05-04 07:32:18', '2015-05-04 07:32:18', '', 0, 'http://localhost:12/wordpress/?page_id=31', 0, 'page', '', 0),
(32, 1, '2015-05-04 07:32:18', '2015-05-04 07:32:18', 'sajhajhas', 'Saurabh', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2015-05-04 07:32:18', '2015-05-04 07:32:18', '', 31, 'http://localhost:12/wordpress/2015/05/04/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2015-05-04 07:53:04', '2015-05-04 07:53:04', '', 'New Slider', '', 'publish', 'open', 'open', '', 'new-slider', '', '', '2015-05-04 07:53:04', '2015-05-04 07:53:04', '', 0, 'http://localhost:12/wordpress/?post_type=ml-slider&p=33', 0, 'ml-slider', '', 0),
(34, 1, '2015-05-04 07:56:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 07:56:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2015-05-04 07:56:34', '0000-00-00 00:00:00', '', '#21 (no title)', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 07:56:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2015-05-04 07:56:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 07:56:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2015-05-04 07:56:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 07:56:35', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2015-05-04 07:56:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-04 07:56:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:12/wordpress/?p=38', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, '33', '33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 1, 0),
(14, 1, 0),
(16, 1, 0),
(18, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(3, 3, 'ml-slider', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"57f45fdf07f2f4c4b66fc2d8d3517491798c18c4b91d1ea135924fc8c2512af0";a:4:{s:10:"expiration";i:1430830475;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1430657675;}s:64:"352d3d1a5240dd5639f4e4220e43ff4d897532e5c56b5e5ca2673ae661d38a20";a:4:{s:10:"expiration";i:1430893005;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1430720205;}s:64:"da69e060afae792e4de80f42ee2e50c67b716139e7135d9fe9d243ab360c0b6d";a:4:{s:10:"expiration";i:1430930991;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1430758191;}}'),
(15, 1, 'wp_user-settings', 'post_dfw=off&editor=tinymce&posts_list_mode=list&siteorigin_settings_tab=0'),
(16, 1, 'wp_user-settings-time', '1430720642'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BQ50naUIkvuS9uy0AL5LtjLJtXyrGY.', 'root', 'uttamsaurabh818@gmail.com', '', '2015-05-03 12:54:14', '', 0, 'root');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
