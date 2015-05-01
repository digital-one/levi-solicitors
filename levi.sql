-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2015 at 10:39 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `levi_solicitors`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-04-23 11:13:33', '2015-04-23 11:13:33', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://92.60.114.159/~levisolicitorsco', 'yes'),
(2, 'home', 'http://92.60.114.159/~levisolicitorsco', 'yes'),
(3, 'blogname', 'Levi Solicitors LLP', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'accounts@digital-one.co.uk', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'jS F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:29:"gravityforms/gravityforms.php";i:1;s:29:"acf-repeater/acf-repeater.php";i:2;s:30:"advanced-custom-fields/acf.php";i:3;s:33:"duplicate-post/duplicate-post.php";i:4;s:15:"levis/levis.php";i:5;s:37:"tinymce-advanced/tinymce-advanced.php";i:6;s:24:"wordpress-seo/wp-seo.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'levis', 'yes'),
(42, 'stylesheet', 'levis', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
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
(85, 'page_on_front', '2', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:64:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', 'en_GB', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:6:{i:1430435617;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430464320;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430478826;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1430479125;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1430494534;a:1:{s:14:"yoast_tracking";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_random_seed', 'd1c19c3537ddd7dd12afb01b9ab88eea', 'yes'),
(106, '_site_transient_timeout_browser_055f21c47f6f393fcd6b4d9ef02f355b', '1430392428', 'yes'),
(107, '_site_transient_browser_055f21c47f6f393fcd6b4d9ef02f355b', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(108, 'can_compress_scripts', '1', 'yes'),
(130, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:26:"accounts@digital-one.co.uk";s:7:"version";s:5:"4.1.2";s:9:"timestamp";i:1429787640;}', 'yes'),
(133, 'recently_activated', 'a:0:{}', 'yes'),
(134, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429787676;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(135, 'current_theme', 'Levis Solicitors', 'yes'),
(136, 'theme_mods_levis', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:6:{s:9:"main-menu";i:2;s:11:"footer-menu";i:3;s:15:"footer-you-menu";i:3;s:20:"footer-business-menu";i:4;s:16:"footer-team-menu";i:5;s:17:"footer-about-menu";i:6;}}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(139, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(142, '_site_transient_timeout_available_translations', '1429806234', 'yes'),
(143, '_site_transient_available_translations', 'a:55:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-21 15:46:45";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:15:41";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:19:26";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:22:49";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-22 06:13:16";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:30:22";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:32:23";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:34:24";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:38:25";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-15 12:48:44";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:44:26";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:46:15";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:42:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:48:12";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:54:32";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:50:12";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 14:56:31";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-27 08:55:29";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:03:17";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-21 06:21:33";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:08:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:14:57";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.2/haz.zip";s:3:"iso";a:2:{i:1;s:3:"haz";i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-08 22:28:26";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:25:25";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:27:28";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:29:34";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-22 13:36:50";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:33:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:35:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-20 11:48:55";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:47:56";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 15:59:41";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:02:30";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-16 06:38:46";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:07:08";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:11:07";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:14:41";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-27 14:48:56";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:19:48";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:23:44";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-20 08:33:09";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:30:35";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:33:33";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-27 00:00:51";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:43:10";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-04-10 12:55:55";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.2";s:7:"updated";s:19:"2015-03-26 16:55:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-26 02:21:02";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(148, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.2.1.zip";s:6:"locale";s:5:"en_GB";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.2.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.1";s:7:"version";s:5:"4.2.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.1";s:7:"version";s:5:"4.2.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.1";s:7:"version";s:5:"4.2.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp41@wordpress.org";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.4-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.1.4-partial-2.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.4-rollback-2.zip";}s:7:"current";s:5:"4.1.4";s:7:"version";s:5:"4.1.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:5:"4.1.2";s:13:"support_email";s:26:"updatehelp41@wordpress.org";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1430421129;s:15:"version_checked";s:5:"4.1.2";s:12:"translations";a:0:{}}', 'yes'),
(149, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1430421130;s:7:"checked";a:1:{s:5:"levis";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(221, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430435492', 'no'),
(222, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430435492', 'no'),
(223, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430392292', 'no'),
(224, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1430435494', 'no'),
(225, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1430435494', 'no'),
(226, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1430392294', 'no'),
(227, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1430435495', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(228, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n \n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n   \n    \n    \n    \n    \n    \n        \n\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Apr 2015 10:51:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:28:"Your WordPress, Streamlined.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Broken Link Checker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/broken-link-checker/#post-2441";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 08 Oct 2007 21:35:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2441@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"This plugin will check your posts, comments and other content for broken links and missing images, and notify you if any are found.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Janis Elsts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WPtouch Mobile Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wptouch/#post-5468";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 May 2008 04:58:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5468@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:67:"Make your WordPress website mobile-friendly with just a few clicks.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"BraveNewCode Inc.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Displays Google Analytics reports and real-time statistics in your WordPress Dashboard. Inserts the latest tracking code in every page of your site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"ManageWP Worker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/worker/#post-24528";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 18 Feb 2011 13:06:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"24528@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:103:"ManageWP is the ultimate WordPress productivity tool, allowing you to efficiently manage your websites.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Vladimir Prelovac";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"solarissmoke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Redirection";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/redirection/#post-2286";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Sep 2007 04:45:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2286@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Redirection is a WordPress plugin to manage 301 redirections and keep track of 404 errors without requiring knowledge of Apache .htaccess files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"John Godley";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"The Events Calendar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/plugins/the-events-calendar/#post-14790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Dec 2009 21:58:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"14790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:128:"The Events Calendar is a carefully crafted, extensible plugin that lets you easily share your events. Beautiful. Solid. Awesome.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Peter Chester";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"P3 (Plugin Performance Profiler)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/p3-profiler/#post-32894";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Dec 2011 23:11:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"32894@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:102:"See which plugins are slowing down your site.  This plugin creates a performance report for your site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"GoDaddy.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n     \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 12 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"bbPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/bbpress/#post-14709";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 13 Dec 2009 00:05:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"14709@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:50:"bbPress is forum software, made the WordPress way.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"John James Jacoby";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:8:"WP Smush";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-smushit/#post-7936";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 04 Dec 2008 00:00:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"7936@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:108:"Reduce image file sizes, improve performance and boost your SEO using the free WPMU DEV WordPress Smush API.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alex Dunae";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:13:"Photo Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/photo-gallery/#post-63299";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 Jan 2014 15:58:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"63299@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:143:"Photo Gallery is an advanced plugin with a list of tools and options for adding and editing images for different views. It is fully responsive.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"webdorado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/buddypress/#post-10314";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Apr 2009 17:48:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"10314@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"BuddyPress helps you run any kind of social network on your WordPress, with member profiles, activity streams, user groups, messaging, and more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Andy Peatling";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n      \n      \n      \n      \n      \n      \n          ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 30 Apr 2015 11:11:35 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Thu, 30 Apr 2015 11:26:40 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Thu, 30 Apr 2015 10:51:40 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911040210";}', 'no'),
(229, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1430435495', 'no'),
(230, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1430392295', 'no'),
(231, '_transient_timeout_plugin_slugs', '1430507141', 'no'),
(232, '_transient_plugin_slugs', 'a:10:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:29:"acf-repeater/acf-repeater.php";i:2;s:19:"akismet/akismet.php";i:3;s:37:"breadcrumb-navxt/breadcrumb-navxt.php";i:4;s:33:"duplicate-post/duplicate-post.php";i:5;s:29:"gravityforms/gravityforms.php";i:6;s:9:"hello.php";i:7;s:15:"levis/levis.php";i:8;s:37:"tinymce-advanced/tinymce-advanced.php";i:9;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(233, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1430435495', 'no'),
(234, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/04/wordpress-4-2-1/''>WordPress 4.2.1 Security Release</a> <span class="rss-date">27th April 2015</span><div class="rssSummary">WordPress 4.2.1 is now available. This is a critical security release for all previous versions and we strongly encourage you to update your sites immediately. A few hours ago, the WordPress team was made aware of a cross-site scripting vulnerability, which could enable commenters to compromise a site. The vulnerability was discovered by Jouko Pynnönen. [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wptavern.com/only-24-of-themes-hosted-on-wordpress-org-support-the-customizer''>WPTavern: Data Shows 24% of Themes Hosted on WordPress.org Support the Customizer</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/postmatic-launches-100-email-based-commenting-for-wordpress''>WPTavern: Postmatic Launches 100% Email-Based Commenting for WordPress</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/wp-rest-api-version-2-0-beta-1-released''>WPTavern: WP REST API Version 2.0 Beta 1 Released</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''https://wordpress.org/plugins/google-analytics-dashboard-for-wp/'' class=''dashboard-news-plugin-link''>Google Analytics Dashboard for WP</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=google-analytics-dashboard-for-wp&amp;_wpnonce=551d836fd4&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Google Analytics Dashboard for WP''>Install</a>)</span></li></ul></div>', 'no'),
(243, 'acf_version', '4.4.1', 'yes'),
(244, 'duplicate_post_copyexcerpt', '1', 'yes'),
(245, 'duplicate_post_copyattachments', '0', 'yes'),
(246, 'duplicate_post_copychildren', '0', 'yes'),
(247, 'duplicate_post_copystatus', '0', 'yes'),
(248, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(249, 'duplicate_post_show_row', '1', 'yes'),
(250, 'duplicate_post_show_adminbar', '1', 'yes'),
(251, 'duplicate_post_show_submitbox', '1', 'yes'),
(252, 'duplicate_post_version', '2.6', 'yes'),
(253, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(254, 'gform_enable_background_updates', '1', 'yes'),
(255, 'rg_form_version', '1.9.6', 'yes'),
(256, '_transient_timeout_gform_update_info', '1430498914', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(257, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:8:{s:4:"date";s:29:"Thu, 30 Apr 2015 16:48:34 GMT";s:6:"server";s:12:"Apache/2.4.7";s:12:"x-powered-by";s:20:"PHP/5.5.9-1ubuntu4.6";s:4:"vary";s:15:"Accept-Encoding";s:16:"content-encoding";s:4:"gzip";s:14:"content-length";s:4:"1132";s:10:"connection";s:5:"close";s:12:"content-type";s:9:"text/html";}s:4:"body";s:5473:"{"is_valid_key":"1","version":"1.9.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.9.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=%2F51TGl5YTLSf1yIbUzGxMmjw60s%3D","expiration_time":1431579600,"offerings":{"gravityforms":{"is_available":true,"version":"1.9.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.9.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=%2F51TGl5YTLSf1yIbUzGxMmjw60s%3D"},"gravityformsauthorizenet":{"is_available":true,"version":"1.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=egXVzB45S4f%2B0Mkstpea5a0tK4g%3D"},"gravityformsaweber":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/aweber\\/gravityformsaweber_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=R0gpusXYKqSI6nh2M8PbDHL9WNw%3D"},"gravityformscampaignmonitor":{"is_available":true,"version":"3.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campaignmonitor\\/gravityformscampaignmonitor_3.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=fHNUoXUD3LtloeqN7z5Ebs8%2FYtY%3D"},"gravityformscoupons":{"is_available":true,"version":"2.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/coupons\\/gravityformscoupons_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=U2QSlc54Xx0WQJ895X5cxCI55b4%3D"},"gravityformsemma":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/emma\\/gravityformsemma_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=DwYTsY75%2B7%2FUvd3hy61P3BpDtZ0%3D"},"gravityformsfreshbooks":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/freshbooks\\/gravityformsfreshbooks_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=VdGMcCp9Mxknk%2Bn2looVs3G6y40%3D"},"gravityformslogging":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_1.3.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=qRc4hTDg0m6qSr%2BX0tBzpCalc3s%3D"},"gravityformsmailchimp":{"is_available":true,"version":"3.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/mailchimp\\/gravityformsmailchimp_3.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=sg373OH6JRWdj4lrjbw32ZjX6no%3D"},"gravityformspaypal":{"is_available":true,"version":"2.4","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypal\\/gravityformspaypal_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=6QJr1VPqPQNcxKB%2B7Fpa78hCLLY%3D"},"gravityformspaypalpaymentspro":{"is_available":true,"version":"1.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpaymentspro\\/gravityformspaypalpaymentspro_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=ixYiShsuywJyZq%2Fx15zyerJtG%2BA%3D"},"gravityformspaypalpro":{"is_available":true,"version":"1.5","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpro\\/gravityformspaypalpro_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=YTyDiaZO9D42EMK%2BvSOx3fYk8UU%3D"},"gravityformspicatcha":{"is_available":false,"version":"2.0"},"gravityformspolls":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/polls\\/gravityformspolls_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=06ZQe1rGjO731ktGNNmOXhv72vs%3D"},"gravityformsquiz":{"is_available":true,"version":"2.4","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/quiz\\/gravityformsquiz_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=8EjAD8MoNRPG5RKvex8LvD3EuLI%3D"},"gravityformssignature":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/signature\\/gravityformssignature_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=%2FoKz0BiYIMoSHHyxcvkmGm4633o%3D"},"gravityformsstripe":{"is_available":true,"version":"1.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/stripe\\/gravityformsstripe_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=qAmQcznuukjG5fivvI5M0qq0Dho%3D"},"gravityformssurvey":{"is_available":true,"version":"2.5","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/survey\\/gravityformssurvey_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=Gt%2FPkMAiayiFWQskhfURh9EZNJw%3D"},"gravityformstwilio":{"is_available":true,"version":"2.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/twilio\\/gravityformstwilio_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=hknNJbcntAPo7xR%2Fxbp9oH%2BFGFM%3D"},"gravityformsuserregistration":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=LWh99JuRj7VHQi%2BRBE%2FgQbgmfnM%3D"},"gravityformszapier":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1430585314&Signature=LWh99JuRj7VHQi%2BRBE%2FgQbgmfnM%3D"}},"is_active":"1"}";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no'),
(258, 'wpseo', 'a:24:{s:14:"blocking_files";a:0:{}s:26:"ignore_blog_public_warning";b:0;s:31:"ignore_meta_description_warning";b:0;s:20:"ignore_page_comments";b:0;s:16:"ignore_permalink";b:0;s:11:"ignore_tour";b:1;s:15:"ms_defaults_set";b:0;s:23:"theme_description_found";s:0:"";s:21:"theme_has_description";b:0;s:19:"tracking_popup_done";b:1;s:7:"version";s:5:"2.1.1";s:10:"seen_about";b:1;s:11:"alexaverify";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:14:"yoast_tracking";b:1;}', 'yes'),
(259, 'wpseo_permalinks', 'a:13:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:14:"hide-feedlinks";b:0;s:12:"hide-rsdlink";b:0;s:14:"hide-shortlink";b:0;s:16:"hide-wlwmanifest";b:0;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(260, 'wpseo_titles', 'a:54:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:6:"noydir";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(261, 'wpseo_social', 'a:21:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"e2bba54a56f8c8a68204265cd5c11006";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:10:"googleplus";b:0;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(262, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(263, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(264, 'wpseo_xml', 'a:15:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(268, 'rg_gforms_key', 'ffaedfb96ac7f5479d432a12483ac48a', 'yes'),
(269, 'rg_gforms_disable_css', '1', 'yes'),
(270, 'rg_gforms_enable_html5', '0', 'yes'),
(271, 'gform_enable_noconflict', '0', 'yes'),
(272, 'rg_gforms_enable_akismet', '', 'yes'),
(273, 'rg_gforms_captcha_public_key', '', 'yes'),
(274, 'rg_gforms_captcha_private_key', '', 'yes'),
(275, 'rg_gforms_currency', 'USD', 'yes'),
(276, 'rg_gforms_message', '<!--GFM-->', 'yes'),
(279, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1430421130;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}s:37:"breadcrumb-navxt/breadcrumb-navxt.php";O:8:"stdClass":7:{s:2:"id";s:4:"1283";s:4:"slug";s:16:"breadcrumb-navxt";s:6:"plugin";s:37:"breadcrumb-navxt/breadcrumb-navxt.php";s:11:"new_version";s:5:"5.2.0";s:3:"url";s:47:"https://wordpress.org/plugins/breadcrumb-navxt/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/breadcrumb-navxt.zip";s:14:"upgrade_notice";s:268:"This version requires PHP5.3 or newer. Some improvements to the settings page were made. Additionally, note that the Max Breadcrumb Length setting has been deprecated in favor of using CSS styling to perform the length limiting.ion enhances compatibility with bbPress.";}s:33:"duplicate-post/duplicate-post.php";O:8:"stdClass":7:{s:2:"id";s:4:"1295";s:4:"slug";s:14:"duplicate-post";s:6:"plugin";s:33:"duplicate-post/duplicate-post.php";s:11:"new_version";s:3:"2.6";s:3:"url";s:45:"https://wordpress.org/plugins/duplicate-post/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/duplicate-post.2.6.zip";s:14:"upgrade_notice";s:90:"PHP 5.4 (Strict Standards) compatible + Fixed possible XSS and SQL injections + other bugs";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:3:"731";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.1.9";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.1.9.zip";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"2.1.1";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.2.1.1.zip";}}}', 'yes'),
(280, '_transient_timeout_yoast_i18n_wordpress-seo', '1430494624', 'no'),
(281, '_transient_yoast_i18n_wordpress-seo', 'O:8:"stdClass":12:{s:2:"id";s:3:"639";s:4:"name";s:12:"English (UK)";s:4:"slug";s:7:"default";s:10:"project_id";s:1:"1";s:6:"locale";s:5:"en-gb";s:13:"current_count";s:3:"755";s:18:"untranslated_count";i:3;s:13:"waiting_count";s:1:"7";s:11:"fuzzy_count";i:0;s:18:"percent_translated";i:99;s:9:"wp_locale";s:5:"en_GB";s:13:"last_modified";s:19:"2015-04-15 13:54:33";}', 'no'),
(284, 'category_children', 'a:0:{}', 'yes'),
(285, '_transient_timeout_GFCache_1322710bd0895b85292f0e431a732197', '1430408568', 'no'),
(286, '_transient_GFCache_1322710bd0895b85292f0e431a732197', '1', 'no'),
(287, '_transient_timeout_GFCache_1b2b9741a66dab593f796142fa47ada4', '1430412646', 'no'),
(288, '_transient_GFCache_1b2b9741a66dab593f796142fa47ada4', '1', 'no'),
(289, '_transient_timeout_GFCache_a8ed5dda0b234c2f5c4a32928550bf80', '1430415105', 'no'),
(290, '_transient_GFCache_a8ed5dda0b234c2f5c4a32928550bf80', '1', 'no'),
(292, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
(293, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'),
(294, 'tadv_version', '4000', 'yes'),
(301, '_site_transient_timeout_theme_roots', '1430422927', 'yes'),
(302, '_site_transient_theme_roots', 'a:1:{s:5:"levis";s:7:"/themes";}', 'yes'),
(312, 'rewrite_rules', 'a:108:{s:15:"news/archive/?$";s:28:"index.php?post_type=cpt_news";s:45:"news/archive/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=cpt_news&feed=$matches[1]";s:40:"news/archive/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=cpt_news&feed=$matches[1]";s:32:"news/archive/page/([0-9]{1,})/?$";s:46:"index.php?post_type=cpt_news&paged=$matches[1]";s:15:"team/archive/?$";s:28:"index.php?post_type=cpt_team";s:45:"team/archive/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=cpt_team&feed=$matches[1]";s:40:"team/archive/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=cpt_team&feed=$matches[1]";s:32:"team/archive/page/([0-9]{1,})/?$";s:46:"index.php?post_type=cpt_team&paged=$matches[1]";s:27:"^news/archive/pge/([^/]*)/?";s:39:"index.php?pagename=news&pge=$matches[1]";s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:38:"news/archive/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"news/archive/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"news/archive/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"news/archive/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"news/archive/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"news/archive/(.+?)/trackback/?$";s:35:"index.php?cpt_news=$matches[1]&tb=1";s:51:"news/archive/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?cpt_news=$matches[1]&feed=$matches[2]";s:46:"news/archive/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?cpt_news=$matches[1]&feed=$matches[2]";s:39:"news/archive/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?cpt_news=$matches[1]&paged=$matches[2]";s:46:"news/archive/(.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?cpt_news=$matches[1]&cpage=$matches[2]";s:31:"news/archive/(.+?)(/[0-9]+)?/?$";s:47:"index.php?cpt_news=$matches[1]&page=$matches[2]";s:38:"team/archive/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"team/archive/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"team/archive/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"team/archive/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"team/archive/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"team/archive/(.+?)/trackback/?$";s:35:"index.php?cpt_team=$matches[1]&tb=1";s:51:"team/archive/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?cpt_team=$matches[1]&feed=$matches[2]";s:46:"team/archive/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?cpt_team=$matches[1]&feed=$matches[2]";s:39:"team/archive/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?cpt_team=$matches[1]&paged=$matches[2]";s:46:"team/archive/(.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?cpt_team=$matches[1]&cpage=$matches[2]";s:31:"team/archive/(.+?)(/[0-9]+)?/?$";s:47:"index.php?cpt_team=$matches[1]&page=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:26:"(.+?)/([^/]+)(/[0-9]+)?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=937 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1429787781:1'),
(3, 2, '_edit_last', '1'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1430317455:1'),
(6, 8, '_edit_last', '1'),
(7, 8, '_edit_lock', '1430317609:1'),
(8, 10, '_edit_last', '1'),
(9, 10, '_edit_lock', '1430317446:1'),
(10, 12, '_edit_last', '1'),
(11, 12, '_edit_lock', '1430228079:1'),
(12, 14, '_edit_last', '1'),
(13, 14, '_edit_lock', '1430407870:1'),
(14, 16, '_edit_last', '1'),
(15, 16, '_edit_lock', '1429792383:1'),
(16, 18, '_edit_last', '1'),
(17, 18, '_edit_lock', '1430415931:1'),
(18, 20, '_edit_last', '1'),
(19, 20, '_edit_lock', '1430415946:1'),
(20, 22, '_edit_last', '1'),
(21, 22, '_edit_lock', '1430415956:1'),
(22, 24, '_edit_last', '1'),
(23, 24, '_edit_lock', '1430415994:1'),
(24, 26, '_edit_last', '1'),
(25, 26, '_edit_lock', '1429792511:1'),
(26, 28, '_edit_last', '1'),
(27, 28, '_edit_lock', '1429792524:1'),
(28, 30, '_edit_last', '1'),
(29, 30, '_edit_lock', '1429792542:1'),
(30, 32, '_edit_last', '1'),
(31, 32, '_edit_lock', '1429792557:1'),
(32, 34, '_edit_last', '1'),
(33, 34, '_edit_lock', '1429792586:1'),
(34, 36, '_edit_last', '1'),
(35, 36, '_edit_lock', '1429792617:1'),
(36, 38, '_edit_last', '1'),
(37, 38, '_edit_lock', '1429792628:1'),
(38, 40, '_edit_last', '1'),
(39, 40, '_edit_lock', '1429792666:1'),
(40, 42, '_edit_last', '1'),
(41, 42, '_edit_lock', '1429792655:1'),
(42, 44, '_edit_last', '1'),
(43, 44, '_edit_lock', '1429792685:1'),
(44, 46, '_edit_last', '1'),
(45, 46, '_edit_lock', '1430401568:1'),
(46, 48, '_edit_last', '1'),
(47, 48, '_edit_lock', '1429792904:1'),
(48, 50, '_edit_last', '1'),
(49, 50, '_edit_lock', '1429792733:1'),
(50, 52, '_edit_last', '1'),
(51, 52, '_edit_lock', '1429792895:1'),
(52, 54, '_edit_last', '1'),
(53, 54, '_edit_lock', '1429795373:1'),
(54, 55, '_edit_last', '1'),
(55, 55, '_edit_lock', '1430401556:1'),
(56, 57, '_menu_item_type', 'post_type'),
(57, 57, '_menu_item_menu_item_parent', '0'),
(58, 57, '_menu_item_object_id', '2'),
(59, 57, '_menu_item_object', 'page'),
(60, 57, '_menu_item_target', ''),
(61, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 57, '_menu_item_xfn', ''),
(63, 57, '_menu_item_url', ''),
(65, 58, '_menu_item_type', 'post_type'),
(66, 58, '_menu_item_menu_item_parent', '0'),
(67, 58, '_menu_item_object_id', '6'),
(68, 58, '_menu_item_object', 'page'),
(69, 58, '_menu_item_target', ''),
(70, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 58, '_menu_item_xfn', ''),
(72, 58, '_menu_item_url', ''),
(74, 59, '_menu_item_type', 'post_type'),
(75, 59, '_menu_item_menu_item_parent', '0'),
(76, 59, '_menu_item_object_id', '8'),
(77, 59, '_menu_item_object', 'page'),
(78, 59, '_menu_item_target', ''),
(79, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 59, '_menu_item_xfn', ''),
(81, 59, '_menu_item_url', ''),
(83, 60, '_menu_item_type', 'post_type'),
(84, 60, '_menu_item_menu_item_parent', '0'),
(85, 60, '_menu_item_object_id', '10'),
(86, 60, '_menu_item_object', 'page'),
(87, 60, '_menu_item_target', ''),
(88, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 60, '_menu_item_xfn', ''),
(90, 60, '_menu_item_url', ''),
(92, 61, '_menu_item_type', 'post_type'),
(93, 61, '_menu_item_menu_item_parent', '0'),
(94, 61, '_menu_item_object_id', '12'),
(95, 61, '_menu_item_object', 'page'),
(96, 61, '_menu_item_target', ''),
(97, 61, '_menu_item_classes', 'a:1:{i:0;s:14:"sub-menu-right";}'),
(98, 61, '_menu_item_xfn', ''),
(99, 61, '_menu_item_url', ''),
(110, 63, '_menu_item_type', 'post_type'),
(111, 63, '_menu_item_menu_item_parent', '0'),
(112, 63, '_menu_item_object_id', '14'),
(113, 63, '_menu_item_object', 'page'),
(114, 63, '_menu_item_target', ''),
(115, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 63, '_menu_item_xfn', ''),
(117, 63, '_menu_item_url', ''),
(119, 64, '_menu_item_type', 'post_type'),
(120, 64, '_menu_item_menu_item_parent', '58'),
(121, 64, '_menu_item_object_id', '16'),
(122, 64, '_menu_item_object', 'page'),
(123, 64, '_menu_item_target', ''),
(124, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(125, 64, '_menu_item_xfn', ''),
(126, 64, '_menu_item_url', ''),
(128, 65, '_menu_item_type', 'post_type'),
(129, 65, '_menu_item_menu_item_parent', '58'),
(130, 65, '_menu_item_object_id', '18'),
(131, 65, '_menu_item_object', 'page'),
(132, 65, '_menu_item_target', ''),
(133, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 65, '_menu_item_xfn', ''),
(135, 65, '_menu_item_url', ''),
(137, 66, '_menu_item_type', 'post_type'),
(138, 66, '_menu_item_menu_item_parent', '0'),
(139, 66, '_menu_item_object_id', '16'),
(140, 66, '_menu_item_object', 'page'),
(141, 66, '_menu_item_target', ''),
(142, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(143, 66, '_menu_item_xfn', ''),
(144, 66, '_menu_item_url', ''),
(146, 67, '_menu_item_type', 'post_type'),
(147, 67, '_menu_item_menu_item_parent', '0'),
(148, 67, '_menu_item_object_id', '18'),
(149, 67, '_menu_item_object', 'page'),
(150, 67, '_menu_item_target', ''),
(151, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 67, '_menu_item_xfn', ''),
(153, 67, '_menu_item_url', ''),
(155, 68, '_menu_item_type', 'post_type'),
(156, 68, '_menu_item_menu_item_parent', '0'),
(157, 68, '_menu_item_object_id', '20'),
(158, 68, '_menu_item_object', 'page'),
(159, 68, '_menu_item_target', ''),
(160, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(161, 68, '_menu_item_xfn', ''),
(162, 68, '_menu_item_url', ''),
(164, 69, '_menu_item_type', 'post_type'),
(165, 69, '_menu_item_menu_item_parent', '0'),
(166, 69, '_menu_item_object_id', '22'),
(167, 69, '_menu_item_object', 'page'),
(168, 69, '_menu_item_target', ''),
(169, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 69, '_menu_item_xfn', ''),
(171, 69, '_menu_item_url', ''),
(173, 70, '_menu_item_type', 'post_type'),
(174, 70, '_menu_item_menu_item_parent', '0'),
(175, 70, '_menu_item_object_id', '24'),
(176, 70, '_menu_item_object', 'page'),
(177, 70, '_menu_item_target', ''),
(178, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(179, 70, '_menu_item_xfn', ''),
(180, 70, '_menu_item_url', ''),
(182, 71, '_menu_item_type', 'post_type'),
(183, 71, '_menu_item_menu_item_parent', '0'),
(184, 71, '_menu_item_object_id', '26'),
(185, 71, '_menu_item_object', 'page'),
(186, 71, '_menu_item_target', ''),
(187, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(188, 71, '_menu_item_xfn', ''),
(189, 71, '_menu_item_url', ''),
(191, 72, '_menu_item_type', 'post_type'),
(192, 72, '_menu_item_menu_item_parent', '0'),
(193, 72, '_menu_item_object_id', '28'),
(194, 72, '_menu_item_object', 'page'),
(195, 72, '_menu_item_target', ''),
(196, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(197, 72, '_menu_item_xfn', ''),
(198, 72, '_menu_item_url', ''),
(200, 73, '_menu_item_type', 'post_type'),
(201, 73, '_menu_item_menu_item_parent', '0'),
(202, 73, '_menu_item_object_id', '30'),
(203, 73, '_menu_item_object', 'page'),
(204, 73, '_menu_item_target', ''),
(205, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(206, 73, '_menu_item_xfn', ''),
(207, 73, '_menu_item_url', ''),
(209, 74, '_menu_item_type', 'post_type'),
(210, 74, '_menu_item_menu_item_parent', '0'),
(211, 74, '_menu_item_object_id', '32'),
(212, 74, '_menu_item_object', 'page'),
(213, 74, '_menu_item_target', ''),
(214, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 74, '_menu_item_xfn', ''),
(216, 74, '_menu_item_url', ''),
(218, 75, '_menu_item_type', 'post_type'),
(219, 75, '_menu_item_menu_item_parent', '0'),
(220, 75, '_menu_item_object_id', '34'),
(221, 75, '_menu_item_object', 'page'),
(222, 75, '_menu_item_target', ''),
(223, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(224, 75, '_menu_item_xfn', ''),
(225, 75, '_menu_item_url', ''),
(227, 76, '_menu_item_type', 'post_type'),
(228, 76, '_menu_item_menu_item_parent', '0'),
(229, 76, '_menu_item_object_id', '36'),
(230, 76, '_menu_item_object', 'page'),
(231, 76, '_menu_item_target', ''),
(232, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(233, 76, '_menu_item_xfn', ''),
(234, 76, '_menu_item_url', ''),
(236, 77, '_menu_item_type', 'post_type'),
(237, 77, '_menu_item_menu_item_parent', '0'),
(238, 77, '_menu_item_object_id', '38'),
(239, 77, '_menu_item_object', 'page'),
(240, 77, '_menu_item_target', ''),
(241, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(242, 77, '_menu_item_xfn', ''),
(243, 77, '_menu_item_url', ''),
(245, 78, '_menu_item_type', 'post_type'),
(246, 78, '_menu_item_menu_item_parent', '0'),
(247, 78, '_menu_item_object_id', '40'),
(248, 78, '_menu_item_object', 'page'),
(249, 78, '_menu_item_target', ''),
(250, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 78, '_menu_item_xfn', ''),
(252, 78, '_menu_item_url', ''),
(254, 79, '_menu_item_type', 'post_type'),
(255, 79, '_menu_item_menu_item_parent', '0'),
(256, 79, '_menu_item_object_id', '42'),
(257, 79, '_menu_item_object', 'page'),
(258, 79, '_menu_item_target', ''),
(259, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(260, 79, '_menu_item_xfn', ''),
(261, 79, '_menu_item_url', ''),
(263, 80, '_menu_item_type', 'post_type'),
(264, 80, '_menu_item_menu_item_parent', '0'),
(265, 80, '_menu_item_object_id', '44'),
(266, 80, '_menu_item_object', 'page'),
(267, 80, '_menu_item_target', ''),
(268, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(269, 80, '_menu_item_xfn', ''),
(270, 80, '_menu_item_url', ''),
(272, 81, '_menu_item_type', 'post_type'),
(273, 81, '_menu_item_menu_item_parent', '0'),
(274, 81, '_menu_item_object_id', '46'),
(275, 81, '_menu_item_object', 'page'),
(276, 81, '_menu_item_target', ''),
(277, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(278, 81, '_menu_item_xfn', ''),
(279, 81, '_menu_item_url', ''),
(281, 82, '_menu_item_type', 'post_type'),
(282, 82, '_menu_item_menu_item_parent', '0'),
(283, 82, '_menu_item_object_id', '48'),
(284, 82, '_menu_item_object', 'page'),
(285, 82, '_menu_item_target', ''),
(286, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(287, 82, '_menu_item_xfn', ''),
(288, 82, '_menu_item_url', ''),
(290, 83, '_menu_item_type', 'post_type'),
(291, 83, '_menu_item_menu_item_parent', '0'),
(292, 83, '_menu_item_object_id', '50'),
(293, 83, '_menu_item_object', 'page'),
(294, 83, '_menu_item_target', ''),
(295, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(296, 83, '_menu_item_xfn', ''),
(297, 83, '_menu_item_url', ''),
(299, 84, '_menu_item_type', 'post_type'),
(300, 84, '_menu_item_menu_item_parent', '0'),
(301, 84, '_menu_item_object_id', '14'),
(302, 84, '_menu_item_object', 'page'),
(303, 84, '_menu_item_target', ''),
(304, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(305, 84, '_menu_item_xfn', ''),
(306, 84, '_menu_item_url', ''),
(308, 52, '_wp_trash_meta_status', 'draft'),
(309, 52, '_wp_trash_meta_time', '1429878123'),
(310, 54, '_wp_trash_meta_status', 'draft'),
(311, 54, '_wp_trash_meta_time', '1429878126'),
(312, 87, '_menu_item_type', 'post_type'),
(313, 87, '_menu_item_menu_item_parent', '58'),
(314, 87, '_menu_item_object_id', '20'),
(315, 87, '_menu_item_object', 'page'),
(316, 87, '_menu_item_target', ''),
(317, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(318, 87, '_menu_item_xfn', ''),
(319, 87, '_menu_item_url', ''),
(321, 88, '_menu_item_type', 'post_type'),
(322, 88, '_menu_item_menu_item_parent', '58'),
(323, 88, '_menu_item_object_id', '22'),
(324, 88, '_menu_item_object', 'page'),
(325, 88, '_menu_item_target', ''),
(326, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(327, 88, '_menu_item_xfn', ''),
(328, 88, '_menu_item_url', ''),
(330, 89, '_menu_item_type', 'post_type'),
(331, 89, '_menu_item_menu_item_parent', '58'),
(332, 89, '_menu_item_object_id', '24'),
(333, 89, '_menu_item_object', 'page'),
(334, 89, '_menu_item_target', ''),
(335, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(336, 89, '_menu_item_xfn', ''),
(337, 89, '_menu_item_url', ''),
(339, 90, '_menu_item_type', 'post_type'),
(340, 90, '_menu_item_menu_item_parent', '59'),
(341, 90, '_menu_item_object_id', '26'),
(342, 90, '_menu_item_object', 'page'),
(343, 90, '_menu_item_target', ''),
(344, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(345, 90, '_menu_item_xfn', ''),
(346, 90, '_menu_item_url', ''),
(348, 91, '_menu_item_type', 'post_type'),
(349, 91, '_menu_item_menu_item_parent', '59'),
(350, 91, '_menu_item_object_id', '28'),
(351, 91, '_menu_item_object', 'page'),
(352, 91, '_menu_item_target', ''),
(353, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(354, 91, '_menu_item_xfn', ''),
(355, 91, '_menu_item_url', ''),
(357, 92, '_menu_item_type', 'post_type'),
(358, 92, '_menu_item_menu_item_parent', '59'),
(359, 92, '_menu_item_object_id', '30'),
(360, 92, '_menu_item_object', 'page'),
(361, 92, '_menu_item_target', ''),
(362, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(363, 92, '_menu_item_xfn', ''),
(364, 92, '_menu_item_url', ''),
(366, 93, '_menu_item_type', 'post_type'),
(367, 93, '_menu_item_menu_item_parent', '59'),
(368, 93, '_menu_item_object_id', '32'),
(369, 93, '_menu_item_object', 'page'),
(370, 93, '_menu_item_target', ''),
(371, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(372, 93, '_menu_item_xfn', ''),
(373, 93, '_menu_item_url', ''),
(375, 94, '_menu_item_type', 'post_type'),
(376, 94, '_menu_item_menu_item_parent', '59'),
(377, 94, '_menu_item_object_id', '34'),
(378, 94, '_menu_item_object', 'page'),
(379, 94, '_menu_item_target', ''),
(380, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(381, 94, '_menu_item_xfn', ''),
(382, 94, '_menu_item_url', ''),
(384, 12, '_wp_page_template', 'template-about.php'),
(385, 10, '_wp_page_template', 'template-team.php'),
(386, 6, '_wp_page_template', 'template-sector-landing.php'),
(387, 8, '_wp_page_template', 'template-sector-landing.php'),
(388, 55, '_wp_page_template', 'template-blog.php'),
(389, 46, '_wp_page_template', 'template-blog.php'),
(390, 95, '_menu_item_type', 'post_type'),
(391, 95, '_menu_item_menu_item_parent', '61'),
(392, 95, '_menu_item_object_id', '36'),
(393, 95, '_menu_item_object', 'page'),
(394, 95, '_menu_item_target', ''),
(395, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(396, 95, '_menu_item_xfn', ''),
(397, 95, '_menu_item_url', ''),
(399, 96, '_menu_item_type', 'post_type'),
(400, 96, '_menu_item_menu_item_parent', '61'),
(401, 96, '_menu_item_object_id', '38'),
(402, 96, '_menu_item_object', 'page'),
(403, 96, '_menu_item_target', ''),
(404, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(405, 96, '_menu_item_xfn', ''),
(406, 96, '_menu_item_url', ''),
(408, 97, '_menu_item_type', 'post_type'),
(409, 97, '_menu_item_menu_item_parent', '61'),
(410, 97, '_menu_item_object_id', '40'),
(411, 97, '_menu_item_object', 'page'),
(412, 97, '_menu_item_target', ''),
(413, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(414, 97, '_menu_item_xfn', ''),
(415, 97, '_menu_item_url', ''),
(417, 98, '_menu_item_type', 'post_type'),
(418, 98, '_menu_item_menu_item_parent', '61'),
(419, 98, '_menu_item_object_id', '42'),
(420, 98, '_menu_item_object', 'page'),
(421, 98, '_menu_item_target', ''),
(422, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(423, 98, '_menu_item_xfn', ''),
(424, 98, '_menu_item_url', ''),
(426, 99, '_menu_item_type', 'post_type'),
(427, 99, '_menu_item_menu_item_parent', '61'),
(428, 99, '_menu_item_object_id', '44'),
(429, 99, '_menu_item_object', 'page'),
(430, 99, '_menu_item_target', ''),
(431, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(432, 99, '_menu_item_xfn', ''),
(433, 99, '_menu_item_url', ''),
(435, 100, '_menu_item_type', 'post_type'),
(436, 100, '_menu_item_menu_item_parent', '61'),
(437, 100, '_menu_item_object_id', '46'),
(438, 100, '_menu_item_object', 'page'),
(439, 100, '_menu_item_target', ''),
(440, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(441, 100, '_menu_item_xfn', ''),
(442, 100, '_menu_item_url', ''),
(444, 101, '_menu_item_type', 'post_type'),
(445, 101, '_menu_item_menu_item_parent', '61'),
(446, 101, '_menu_item_object_id', '48'),
(447, 101, '_menu_item_object', 'page'),
(448, 101, '_menu_item_target', ''),
(449, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(450, 101, '_menu_item_xfn', ''),
(451, 101, '_menu_item_url', ''),
(453, 102, '_menu_item_type', 'post_type'),
(454, 102, '_menu_item_menu_item_parent', '61'),
(455, 102, '_menu_item_object_id', '50'),
(456, 102, '_menu_item_object', 'page'),
(457, 102, '_menu_item_target', ''),
(458, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(459, 102, '_menu_item_xfn', ''),
(460, 102, '_menu_item_url', ''),
(462, 103, '_edit_last', '1'),
(463, 103, '_edit_lock', '1430407117:1'),
(464, 103, '_wp_page_template', 'template-single.php'),
(465, 14, '_wp_page_template', 'template-contact.php'),
(466, 105, '_edit_last', '1'),
(467, 105, '_edit_lock', '1430415911:1'),
(468, 105, '_wp_page_template', 'default'),
(469, 18, '_wp_page_template', 'default'),
(470, 20, '_wp_page_template', 'default'),
(471, 22, '_wp_page_template', 'default'),
(472, 24, '_wp_page_template', 'default'),
(473, 107, '_edit_last', '1'),
(474, 107, '_edit_lock', '1430416016:1'),
(475, 107, '_wp_page_template', 'default'),
(476, 109, '_edit_last', '1'),
(477, 109, '_edit_lock', '1430416038:1'),
(478, 109, '_wp_page_template', 'default'),
(479, 111, '_edit_last', '1'),
(480, 111, '_edit_lock', '1430416068:1'),
(481, 111, '_wp_page_template', 'default'),
(482, 113, '_edit_last', '1'),
(483, 113, '_wp_page_template', 'default'),
(484, 113, '_edit_lock', '1430416093:1'),
(485, 115, '_edit_last', '1'),
(486, 115, '_wp_page_template', 'default'),
(487, 115, '_edit_lock', '1430416119:1'),
(488, 117, '_edit_last', '1'),
(489, 117, '_wp_page_template', 'default'),
(490, 117, '_edit_lock', '1430416135:1'),
(491, 119, '_edit_last', '1'),
(492, 119, '_wp_page_template', 'default'),
(493, 119, '_edit_lock', '1430416155:1'),
(494, 121, '_edit_last', '1'),
(495, 121, '_wp_page_template', 'default'),
(496, 121, '_edit_lock', '1430416175:1'),
(497, 123, '_edit_last', '1'),
(498, 123, '_wp_page_template', 'default'),
(499, 123, '_edit_lock', '1430416200:1'),
(500, 125, '_edit_last', '1'),
(501, 125, '_wp_page_template', 'default'),
(502, 125, '_edit_lock', '1430416270:1'),
(503, 127, '_menu_item_type', 'post_type'),
(504, 127, '_menu_item_menu_item_parent', '58'),
(505, 127, '_menu_item_object_id', '105'),
(506, 127, '_menu_item_object', 'page'),
(507, 127, '_menu_item_target', ''),
(508, 127, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(509, 127, '_menu_item_xfn', ''),
(510, 127, '_menu_item_url', ''),
(512, 128, '_menu_item_type', 'post_type'),
(513, 128, '_menu_item_menu_item_parent', '58'),
(514, 128, '_menu_item_object_id', '107'),
(515, 128, '_menu_item_object', 'page'),
(516, 128, '_menu_item_target', ''),
(517, 128, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(518, 128, '_menu_item_xfn', ''),
(519, 128, '_menu_item_url', ''),
(521, 129, '_menu_item_type', 'post_type'),
(522, 129, '_menu_item_menu_item_parent', '58'),
(523, 129, '_menu_item_object_id', '109'),
(524, 129, '_menu_item_object', 'page'),
(525, 129, '_menu_item_target', ''),
(526, 129, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(527, 129, '_menu_item_xfn', ''),
(528, 129, '_menu_item_url', ''),
(530, 130, '_menu_item_type', 'post_type'),
(531, 130, '_menu_item_menu_item_parent', '0'),
(532, 130, '_menu_item_object_id', '111'),
(533, 130, '_menu_item_object', 'page'),
(534, 130, '_menu_item_target', ''),
(535, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(536, 130, '_menu_item_xfn', ''),
(537, 130, '_menu_item_url', ''),
(538, 130, '_menu_item_orphaned', '1430416463'),
(539, 131, '_menu_item_type', 'post_type'),
(540, 131, '_menu_item_menu_item_parent', '58'),
(541, 131, '_menu_item_object_id', '113'),
(542, 131, '_menu_item_object', 'page'),
(543, 131, '_menu_item_target', ''),
(544, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(545, 131, '_menu_item_xfn', ''),
(546, 131, '_menu_item_url', ''),
(548, 132, '_menu_item_type', 'post_type'),
(549, 132, '_menu_item_menu_item_parent', '58'),
(550, 132, '_menu_item_object_id', '115'),
(551, 132, '_menu_item_object', 'page'),
(552, 132, '_menu_item_target', ''),
(553, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(554, 132, '_menu_item_xfn', ''),
(555, 132, '_menu_item_url', ''),
(557, 133, '_menu_item_type', 'post_type'),
(558, 133, '_menu_item_menu_item_parent', '58'),
(559, 133, '_menu_item_object_id', '117'),
(560, 133, '_menu_item_object', 'page'),
(561, 133, '_menu_item_target', ''),
(562, 133, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(563, 133, '_menu_item_xfn', ''),
(564, 133, '_menu_item_url', ''),
(566, 134, '_menu_item_type', 'post_type'),
(567, 134, '_menu_item_menu_item_parent', '58'),
(568, 134, '_menu_item_object_id', '119'),
(569, 134, '_menu_item_object', 'page'),
(570, 134, '_menu_item_target', ''),
(571, 134, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(572, 134, '_menu_item_xfn', ''),
(573, 134, '_menu_item_url', ''),
(575, 135, '_menu_item_type', 'post_type'),
(576, 135, '_menu_item_menu_item_parent', '58'),
(577, 135, '_menu_item_object_id', '121'),
(578, 135, '_menu_item_object', 'page'),
(579, 135, '_menu_item_target', ''),
(580, 135, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(581, 135, '_menu_item_xfn', ''),
(582, 135, '_menu_item_url', ''),
(584, 136, '_menu_item_type', 'post_type'),
(585, 136, '_menu_item_menu_item_parent', '58'),
(586, 136, '_menu_item_object_id', '123'),
(587, 136, '_menu_item_object', 'page'),
(588, 136, '_menu_item_target', ''),
(589, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(590, 136, '_menu_item_xfn', ''),
(591, 136, '_menu_item_url', ''),
(593, 137, '_menu_item_type', 'post_type'),
(594, 137, '_menu_item_menu_item_parent', '58'),
(595, 137, '_menu_item_object_id', '125'),
(596, 137, '_menu_item_object', 'page'),
(597, 137, '_menu_item_target', ''),
(598, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(599, 137, '_menu_item_xfn', ''),
(600, 137, '_menu_item_url', ''),
(602, 138, '_edit_last', '1'),
(603, 138, 'field_55427d1eecb86', 'a:14:{s:3:"key";s:19:"field_55427d1eecb86";s:5:"label";s:9:"Job Title";s:4:"name";s:14:"team_job_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(604, 138, 'field_55427d4becb87', 'a:14:{s:3:"key";s:19:"field_55427d4becb87";s:5:"label";s:13:"Email Address";s:4:"name";s:10:"team_email";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(605, 138, 'field_55427d5decb88', 'a:14:{s:3:"key";s:19:"field_55427d5decb88";s:5:"label";s:9:"Telephone";s:4:"name";s:8:"team_tel";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(606, 138, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"cpt_team";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(607, 138, 'position', 'acf_after_title'),
(608, 138, 'layout', 'no_box'),
(609, 138, 'hide_on_screen', ''),
(610, 138, '_edit_lock', '1430420723:1'),
(611, 139, '_edit_last', '1'),
(612, 139, '_edit_lock', '1430421412:1'),
(613, 139, 'team_job_title', 'Managing Partner'),
(614, 139, '_team_job_title', 'field_55427d1eecb86'),
(615, 139, 'team_email', 'snewdall@levisolicitors.co.uk'),
(616, 139, '_team_email', 'field_55427d4becb87'),
(617, 139, 'team_tel', '0113 297 3187'),
(618, 139, '_team_tel', 'field_55427d5decb88'),
(625, 142, '_wp_attached_file', '2015/04/20110715-124337.jpg'),
(626, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:528;s:6:"height";i:270;s:4:"file";s:27:"2015/04/20110715-124337.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20110715-124337-320x190.jpg";s:5:"width";i:320;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20110715-124337-300x153.jpg";s:5:"width";i:300;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile_image";a:4:{s:4:"file";s:27:"20110715-124337-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20110715-124337-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"20110715-124337-200x102.jpg";s:5:"width";i:200;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(627, 142, '_wp_attachment_image_alt', 'Steven Newdall'),
(628, 139, '_thumbnail_id', '142'),
(629, 143, '_edit_last', '1'),
(630, 143, '_edit_lock', '1430421600:1'),
(631, 143, 'team_job_title', 'Senior Partner'),
(632, 143, '_team_job_title', 'field_55427d1eecb86'),
(633, 143, 'team_email', 'iland@levisolicitors.co.uk'),
(634, 143, '_team_email', 'field_55427d4becb87'),
(635, 143, 'team_tel', '0113 297 3176'),
(636, 143, '_team_tel', 'field_55427d5decb88'),
(637, 144, '_wp_attached_file', '2015/04/ian_land.jpg'),
(638, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:146;s:6:"height";i:145;s:4:"file";s:20:"2015/04/ian_land.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:20:"ian_land-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:20:"ian_land-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(639, 143, '_thumbnail_id', '144'),
(640, 145, '_edit_last', '1'),
(641, 145, '_edit_lock', '1430421736:1'),
(642, 146, '_wp_attached_file', '2015/04/jonathan_baum.jpg'),
(643, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:25:"2015/04/jonathan_baum.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:25:"jonathan_baum-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:25:"jonathan_baum-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(644, 145, '_thumbnail_id', '146'),
(645, 145, 'team_job_title', 'Partner'),
(646, 145, '_team_job_title', 'field_55427d1eecb86'),
(647, 145, 'team_email', 'jbaum@levisolicitors.co.uk'),
(648, 145, '_team_email', 'field_55427d4becb87'),
(649, 145, 'team_tel', '0113 297 3194'),
(650, 145, '_team_tel', 'field_55427d5decb88'),
(651, 147, '_edit_last', '1'),
(652, 147, '_edit_lock', '1430421859:1'),
(653, 148, '_wp_attached_file', '2015/04/alan_tai.jpg'),
(654, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:146;s:6:"height";i:145;s:4:"file";s:20:"2015/04/alan_tai.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:20:"alan_tai-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:20:"alan_tai-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(655, 147, '_thumbnail_id', '148'),
(656, 147, 'team_job_title', 'Partner'),
(657, 147, '_team_job_title', 'field_55427d1eecb86'),
(658, 147, 'team_email', 'alantai@levisolicitors.co.uk'),
(659, 147, '_team_email', 'field_55427d4becb87'),
(660, 147, 'team_tel', '0113 297 3191'),
(661, 147, '_team_tel', 'field_55427d5decb88'),
(662, 149, '_edit_last', '1'),
(663, 149, '_edit_lock', '1430422020:1'),
(664, 149, 'team_job_title', 'Partner'),
(665, 149, '_team_job_title', 'field_55427d1eecb86'),
(666, 149, 'team_email', 'jmyers@levisolicitors.co.uk '),
(667, 149, '_team_email', 'field_55427d4becb87'),
(668, 149, 'team_tel', '0113 297 1870'),
(669, 149, '_team_tel', 'field_55427d5decb88'),
(670, 150, '_wp_attached_file', '2015/04/jeffrey_myers.jpg'),
(671, 150, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:25:"2015/04/jeffrey_myers.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:25:"jeffrey_myers-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:25:"jeffrey_myers-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(672, 149, '_thumbnail_id', '150'),
(673, 151, '_edit_last', '1'),
(674, 151, '_edit_lock', '1430422171:1'),
(675, 151, 'team_job_title', 'Partner'),
(676, 151, '_team_job_title', 'field_55427d1eecb86'),
(677, 151, 'team_email', 'dbrown@levisolicitors.co.uk'),
(678, 151, '_team_email', 'field_55427d4becb87'),
(679, 151, 'team_tel', '0113 244 9931'),
(680, 151, '_team_tel', 'field_55427d5decb88'),
(681, 152, '_wp_attached_file', '2015/04/darren_brown.jpg'),
(682, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:146;s:6:"height";i:146;s:4:"file";s:24:"2015/04/darren_brown.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:24:"darren_brown-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:24:"darren_brown-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(683, 151, '_thumbnail_id', '152'),
(684, 153, '_edit_last', '1'),
(685, 153, '_edit_lock', '1430422306:1'),
(686, 154, '_wp_attached_file', '2015/04/nia_planchant.jpg'),
(687, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:147;s:6:"height";i:146;s:4:"file";s:25:"2015/04/nia_planchant.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:25:"nia_planchant-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:25:"nia_planchant-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(688, 153, '_thumbnail_id', '154'),
(689, 153, 'team_job_title', 'Partner'),
(690, 153, '_team_job_title', 'field_55427d1eecb86'),
(691, 153, 'team_email', 'nplanchant@levisolicitors.co.uk'),
(692, 153, '_team_email', 'field_55427d4becb87'),
(693, 153, 'team_tel', '0113 297 3163'),
(694, 153, '_team_tel', 'field_55427d5decb88'),
(695, 155, '_edit_last', '1'),
(696, 155, '_edit_lock', '1430422419:1'),
(697, 156, '_wp_attached_file', '2015/04/alice_appleton.jpg'),
(698, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:146;s:6:"height";i:145;s:4:"file";s:26:"2015/04/alice_appleton.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:26:"alice_appleton-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:26:"alice_appleton-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(699, 155, '_thumbnail_id', '156'),
(700, 155, 'team_job_title', 'Partner'),
(701, 155, '_team_job_title', 'field_55427d1eecb86'),
(702, 155, 'team_email', 'aappleton@levisolicitors.co.uk'),
(703, 155, '_team_email', 'field_55427d4becb87'),
(704, 155, 'team_tel', '0113 297 3161'),
(705, 155, '_team_tel', 'field_55427d5decb88'),
(706, 157, '_edit_last', '1'),
(707, 157, '_edit_lock', '1430422703:1'),
(708, 158, '_wp_attached_file', '2015/04/matt_rodd.jpg'),
(709, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:146;s:6:"height";i:146;s:4:"file";s:21:"2015/04/matt_rodd.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:21:"matt_rodd-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:21:"matt_rodd-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(710, 157, '_thumbnail_id', '158'),
(711, 157, 'team_job_title', 'Partner'),
(712, 157, '_team_job_title', 'field_55427d1eecb86'),
(713, 157, 'team_email', 'mrodd@levisolicitors.co.uk'),
(714, 157, '_team_email', 'field_55427d4becb87'),
(715, 157, 'team_tel', '0113 244 9931'),
(716, 157, '_team_tel', 'field_55427d5decb88'),
(717, 159, '_edit_last', '1'),
(718, 159, '_edit_lock', '1430422749:1'),
(719, 160, '_wp_attached_file', '2015/04/20140910-151853.jpg'),
(720, 160, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:146;s:6:"height";i:146;s:4:"file";s:27:"2015/04/20140910-151853.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20140910-151853-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20140910-151853-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(721, 159, '_thumbnail_id', '160'),
(722, 159, 'team_job_title', 'Partner'),
(723, 159, '_team_job_title', 'field_55427d1eecb86'),
(724, 159, 'team_email', 'gsandford@levisolicitors.co.uk '),
(725, 159, '_team_email', 'field_55427d4becb87'),
(726, 159, 'team_tel', '0113 297 3159'),
(727, 159, '_team_tel', 'field_55427d5decb88'),
(728, 161, '_edit_last', '1'),
(729, 161, '_edit_lock', '1430422875:1'),
(730, 162, '_wp_attached_file', '2015/04/20140721-141636.jpg'),
(731, 162, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:27:"2015/04/20140721-141636.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20140721-141636-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20140721-141636-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(732, 161, '_thumbnail_id', '162'),
(733, 161, 'team_job_title', 'Solicitor'),
(734, 161, '_team_job_title', 'field_55427d1eecb86'),
(735, 161, 'team_email', 'rspankie@levisolicitors.co.uk '),
(736, 161, '_team_email', 'field_55427d4becb87'),
(737, 161, 'team_tel', '0113 297 3165'),
(738, 161, '_team_tel', 'field_55427d5decb88'),
(739, 163, '_edit_last', '1'),
(740, 163, '_edit_lock', '1430423001:1'),
(741, 163, 'team_job_title', 'Solicitor'),
(742, 163, '_team_job_title', 'field_55427d1eecb86'),
(743, 163, 'team_email', 'lwilson@levisolicitors.co.uk'),
(744, 163, '_team_email', 'field_55427d4becb87'),
(745, 163, 'team_tel', '0113 297 3150'),
(746, 163, '_team_tel', 'field_55427d5decb88'),
(747, 164, '_wp_attached_file', '2015/04/20110210-144034.jpg'),
(748, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:27:"2015/04/20110210-144034.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20110210-144034-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20110210-144034-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(749, 163, '_thumbnail_id', '164'),
(750, 165, '_edit_last', '1'),
(751, 165, '_edit_lock', '1430423137:1'),
(752, 165, 'team_job_title', 'Solicitor'),
(753, 165, '_team_job_title', 'field_55427d1eecb86'),
(754, 165, 'team_email', 'Vladimir@levisolicitors.co.uk '),
(755, 165, '_team_email', 'field_55427d4becb87'),
(756, 165, 'team_tel', '0113 297 3177 '),
(757, 165, '_team_tel', 'field_55427d5decb88'),
(758, 166, '_wp_attached_file', '2015/04/20140722-155544.jpg'),
(759, 166, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:27:"2015/04/20140722-155544.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20140722-155544-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20140722-155544-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(760, 165, '_thumbnail_id', '166'),
(761, 167, '_edit_last', '1'),
(762, 167, '_edit_lock', '1430423254:1'),
(763, 167, 'team_job_title', 'Fee Earner'),
(764, 167, '_team_job_title', 'field_55427d1eecb86'),
(765, 167, 'team_email', 'ffirth@levisolicitors.co.uk '),
(766, 167, '_team_email', 'field_55427d4becb87'),
(767, 167, 'team_tel', '0113 2973 162'),
(768, 167, '_team_tel', 'field_55427d5decb88'),
(769, 168, '_wp_attached_file', '2015/04/20140910-153009.jpg'),
(770, 168, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:27:"2015/04/20140910-153009.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20140910-153009-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20140910-153009-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(771, 167, '_thumbnail_id', '168'),
(772, 169, '_edit_last', '1'),
(773, 169, '_edit_lock', '1430423390:1'),
(774, 169, 'team_job_title', 'Solicitor'),
(775, 169, '_team_job_title', 'field_55427d1eecb86'),
(776, 169, 'team_email', 'amilburn@levisolicitors.co.uk'),
(777, 169, '_team_email', 'field_55427d4becb87'),
(778, 169, 'team_tel', ' 0113 297 3181'),
(779, 169, '_team_tel', 'field_55427d5decb88'),
(780, 170, '_wp_attached_file', '2015/04/20140722-160940.jpg'),
(781, 170, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:27:"2015/04/20140722-160940.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20140722-160940-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20140722-160940-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(782, 169, '_thumbnail_id', '170'),
(783, 171, '_edit_last', '1'),
(784, 171, 'team_job_title', 'Solicitor'),
(785, 171, '_team_job_title', 'field_55427d1eecb86'),
(786, 171, 'team_email', 'sstephenson@levisolicitors.co.uk'),
(787, 171, '_team_email', 'field_55427d4becb87'),
(788, 171, 'team_tel', '0113 297 3156'),
(789, 171, '_team_tel', 'field_55427d5decb88'),
(790, 171, '_edit_lock', '1430423519:1'),
(791, 172, '_wp_attached_file', '2015/04/Sue-S2-cropped.jpg'),
(792, 172, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:26:"2015/04/Sue-S2-cropped.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:26:"Sue-S2-cropped-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:26:"Sue-S2-cropped-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:9:"x-default";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(793, 171, '_thumbnail_id', '172'),
(794, 173, '_edit_last', '1'),
(795, 173, '_edit_lock', '1430423626:1'),
(796, 174, '_wp_attached_file', '2015/04/20140721-150901.jpg'),
(797, 174, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:27:"2015/04/20140721-150901.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20140721-150901-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20140721-150901-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(798, 173, '_thumbnail_id', '174'),
(799, 173, 'team_job_title', 'Fee Earner'),
(800, 173, '_team_job_title', 'field_55427d1eecb86'),
(801, 173, 'team_email', 'nroughton@levisolicitors.co.uk '),
(802, 173, '_team_email', 'field_55427d4becb87'),
(803, 173, 'team_tel', '0113 297 3175'),
(804, 173, '_team_tel', 'field_55427d5decb88'),
(805, 175, '_edit_last', '1'),
(806, 175, '_edit_lock', '1430423758:1'),
(807, 175, 'team_job_title', 'Solicitor'),
(808, 175, '_team_job_title', 'field_55427d1eecb86'),
(809, 175, 'team_email', 'smchale@levisolicitors.co.uk'),
(810, 175, '_team_email', 'field_55427d4becb87'),
(811, 175, 'team_tel', '0113 297 3158'),
(812, 175, '_team_tel', 'field_55427d5decb88'),
(813, 176, '_wp_attached_file', '2015/04/20140425-154134.jpg'),
(814, 176, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:146;s:6:"height";i:146;s:4:"file";s:27:"2015/04/20140425-154134.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20140425-154134-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20140425-154134-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(815, 175, '_thumbnail_id', '176'),
(816, 177, '_edit_last', '1'),
(817, 177, '_edit_lock', '1430423878:1'),
(818, 178, '_wp_attached_file', '2015/04/20140425-164640.jpg'),
(819, 178, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:146;s:6:"height";i:145;s:4:"file";s:27:"2015/04/20140425-164640.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20140425-164640-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20140425-164640-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(820, 177, '_thumbnail_id', '178'),
(821, 177, 'team_job_title', 'Trainee Solicitor'),
(822, 177, '_team_job_title', 'field_55427d1eecb86'),
(823, 177, 'team_email', 'ggraham@levisolicitors.co.uk '),
(824, 177, '_team_email', 'field_55427d4becb87'),
(825, 177, 'team_tel', '0113 297 1875'),
(826, 177, '_team_tel', 'field_55427d5decb88'),
(827, 180, '_edit_last', '1'),
(828, 180, '_edit_lock', '1430424007:1'),
(829, 180, 'team_job_title', 'Paralegal'),
(830, 180, '_team_job_title', 'field_55427d1eecb86'),
(831, 180, 'team_email', 'jgould@levisolicitors.co.uk '),
(832, 180, '_team_email', 'field_55427d4becb87'),
(833, 180, 'team_tel', '0113 297 3183'),
(834, 180, '_team_tel', 'field_55427d5decb88'),
(835, 181, '_wp_attached_file', '2015/04/20140721-141724.jpg'),
(836, 181, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:27:"2015/04/20140721-141724.jpg";s:5:"sizes";a:2:{s:13:"profile_image";a:4:{s:4:"file";s:27:"20140721-141724-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"profile-image";a:4:{s:4:"file";s:27:"20140721-141724-145x145.jpg";s:5:"width";i:145;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(837, 180, '_thumbnail_id', '181'),
(838, 182, '_menu_item_type', 'post_type'),
(839, 182, '_menu_item_menu_item_parent', '0'),
(840, 182, '_menu_item_object_id', '105'),
(841, 182, '_menu_item_object', 'page'),
(842, 182, '_menu_item_target', ''),
(843, 182, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(844, 182, '_menu_item_xfn', ''),
(845, 182, '_menu_item_url', ''),
(847, 183, '_menu_item_type', 'post_type'),
(848, 183, '_menu_item_menu_item_parent', '0'),
(849, 183, '_menu_item_object_id', '107'),
(850, 183, '_menu_item_object', 'page'),
(851, 183, '_menu_item_target', ''),
(852, 183, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(853, 183, '_menu_item_xfn', ''),
(854, 183, '_menu_item_url', ''),
(856, 184, '_menu_item_type', 'post_type'),
(857, 184, '_menu_item_menu_item_parent', '0'),
(858, 184, '_menu_item_object_id', '109'),
(859, 184, '_menu_item_object', 'page'),
(860, 184, '_menu_item_target', ''),
(861, 184, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(862, 184, '_menu_item_xfn', ''),
(863, 184, '_menu_item_url', ''),
(865, 185, '_menu_item_type', 'post_type'),
(866, 185, '_menu_item_menu_item_parent', '0'),
(867, 185, '_menu_item_object_id', '111'),
(868, 185, '_menu_item_object', 'page'),
(869, 185, '_menu_item_target', ''),
(870, 185, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(871, 185, '_menu_item_xfn', ''),
(872, 185, '_menu_item_url', ''),
(874, 186, '_menu_item_type', 'post_type'),
(875, 186, '_menu_item_menu_item_parent', '0'),
(876, 186, '_menu_item_object_id', '113'),
(877, 186, '_menu_item_object', 'page'),
(878, 186, '_menu_item_target', ''),
(879, 186, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(880, 186, '_menu_item_xfn', ''),
(881, 186, '_menu_item_url', ''),
(883, 187, '_menu_item_type', 'post_type'),
(884, 187, '_menu_item_menu_item_parent', '0'),
(885, 187, '_menu_item_object_id', '115'),
(886, 187, '_menu_item_object', 'page'),
(887, 187, '_menu_item_target', ''),
(888, 187, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(889, 187, '_menu_item_xfn', ''),
(890, 187, '_menu_item_url', ''),
(892, 188, '_menu_item_type', 'post_type'),
(893, 188, '_menu_item_menu_item_parent', '0'),
(894, 188, '_menu_item_object_id', '117'),
(895, 188, '_menu_item_object', 'page'),
(896, 188, '_menu_item_target', ''),
(897, 188, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(898, 188, '_menu_item_xfn', ''),
(899, 188, '_menu_item_url', ''),
(901, 189, '_menu_item_type', 'post_type'),
(902, 189, '_menu_item_menu_item_parent', '0'),
(903, 189, '_menu_item_object_id', '119'),
(904, 189, '_menu_item_object', 'page'),
(905, 189, '_menu_item_target', ''),
(906, 189, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(907, 189, '_menu_item_xfn', ''),
(908, 189, '_menu_item_url', ''),
(910, 190, '_menu_item_type', 'post_type'),
(911, 190, '_menu_item_menu_item_parent', '0'),
(912, 190, '_menu_item_object_id', '121'),
(913, 190, '_menu_item_object', 'page'),
(914, 190, '_menu_item_target', ''),
(915, 190, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(916, 190, '_menu_item_xfn', ''),
(917, 190, '_menu_item_url', ''),
(919, 191, '_menu_item_type', 'post_type'),
(920, 191, '_menu_item_menu_item_parent', '0'),
(921, 191, '_menu_item_object_id', '123'),
(922, 191, '_menu_item_object', 'page'),
(923, 191, '_menu_item_target', ''),
(924, 191, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(925, 191, '_menu_item_xfn', ''),
(926, 191, '_menu_item_url', ''),
(928, 192, '_menu_item_type', 'post_type'),
(929, 192, '_menu_item_menu_item_parent', '0'),
(930, 192, '_menu_item_object_id', '125'),
(931, 192, '_menu_item_object', 'page'),
(932, 192, '_menu_item_target', ''),
(933, 192, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(934, 192, '_menu_item_xfn', ''),
(935, 192, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-04-23 11:13:33', '2015-04-23 11:13:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-23 11:13:33', '2015-04-23 11:13:33', '', 0, 'http://92.60.114.159/~levisolicitorsco/?p=1', 0, 'post', '', 1),
(2, 1, '2015-04-23 11:13:33', '2015-04-23 11:13:33', '', 'Home', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-04-23 11:18:43', '2015-04-23 11:18:43', '', 0, 'http://92.60.114.159/~levisolicitorsco/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-04-23 11:18:39', '2015-04-23 11:18:39', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://92.60.114.159/~levisolicitorsco/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-23 11:18:39', '2015-04-23 11:18:39', '', 2, 'http://92.60.114.159/~levisolicitorsco/?p=4', 0, 'revision', '', 0),
(5, 1, '2015-04-23 11:18:43', '2015-04-23 11:18:43', '', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-23 11:18:43', '2015-04-23 11:18:43', '', 2, 'http://92.60.114.159/~levisolicitorsco/?p=5', 0, 'revision', '', 0),
(6, 1, '2015-04-23 11:18:53', '2015-04-23 11:18:53', '', 'For You', '', 'publish', 'open', 'open', '', 'for-you', '', '', '2015-04-29 14:26:38', '2015-04-29 14:26:38', '', 0, 'http://92.60.114.159/~levisolicitorsco/?page_id=6', 1, 'page', '', 0),
(7, 1, '2015-04-23 11:18:53', '2015-04-23 11:18:53', '', 'For You', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-04-23 11:18:53', '2015-04-23 11:18:53', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-04-23 11:19:02', '2015-04-23 11:19:02', '', 'For Business', '', 'publish', 'open', 'open', '', 'for-business', '', '', '2015-04-29 14:26:48', '2015-04-29 14:26:48', '', 0, 'http://92.60.114.159/~levisolicitorsco/?page_id=8', 2, 'page', '', 0),
(9, 1, '2015-04-23 11:19:02', '2015-04-23 11:19:02', '', 'For Business', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-23 11:19:02', '2015-04-23 11:19:02', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-04-23 11:19:21', '2015-04-23 11:19:21', '', 'Meet the team', '', 'publish', 'open', 'open', '', 'meet-the-team', '', '', '2015-04-28 13:37:14', '2015-04-28 13:37:14', '', 0, 'http://92.60.114.159/~levisolicitorsco/?page_id=10', 3, 'page', '', 0),
(11, 1, '2015-04-23 11:19:21', '2015-04-23 11:19:21', '', 'Meet the team', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-04-23 11:19:21', '2015-04-23 11:19:21', '', 10, 'http://92.60.114.159/~levisolicitorsco/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-04-23 11:19:32', '2015-04-23 11:19:32', '', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2015-04-28 10:57:29', '2015-04-28 10:57:29', '', 0, 'http://92.60.114.159/~levisolicitorsco/?page_id=12', 4, 'page', '', 0),
(13, 1, '2015-04-23 11:19:32', '2015-04-23 11:19:32', '', 'About', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-23 11:19:32', '2015-04-23 11:19:32', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-04-23 11:19:40', '2015-04-23 11:19:40', '', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-04-30 15:21:13', '2015-04-30 15:21:13', '', 0, 'http://92.60.114.159/~levisolicitorsco/?page_id=14', 6, 'page', '', 0),
(15, 1, '2015-04-23 11:19:40', '2015-04-23 11:19:40', '', 'Contact', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-04-23 11:19:40', '2015-04-23 11:19:40', '', 14, 'http://92.60.114.159/~levisolicitorsco/?p=15', 0, 'revision', '', 0),
(16, 1, '2015-04-23 12:35:25', '2015-04-23 12:35:25', '', 'Civil Litigation', '', 'publish', 'open', 'open', '', 'civil-litigation', '', '', '2015-04-23 12:35:25', '2015-04-23 12:35:25', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=16', 0, 'page', '', 0),
(17, 1, '2015-04-23 12:35:25', '2015-04-23 12:35:25', '', 'Civil Litigation', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2015-04-23 12:35:25', '2015-04-23 12:35:25', '', 16, 'http://92.60.114.159/~levisolicitorsco/?p=17', 0, 'revision', '', 0),
(18, 1, '2015-04-23 12:35:57', '2015-04-23 12:35:57', '', 'Clinical Negligence', '', 'publish', 'open', 'open', '', 'clinical-negligence', '', '', '2015-04-30 17:47:54', '2015-04-30 17:47:54', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=18', 2, 'page', '', 0),
(19, 1, '2015-04-23 12:35:57', '2015-04-23 12:35:57', '', 'Clinical Negligence', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-04-23 12:35:57', '2015-04-23 12:35:57', '', 18, 'http://92.60.114.159/~levisolicitorsco/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-04-23 12:36:23', '2015-04-23 12:36:23', '', 'Immigration', '', 'publish', 'open', 'open', '', 'immigration', '', '', '2015-04-30 17:48:08', '2015-04-30 17:48:08', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=20', 3, 'page', '', 0),
(21, 1, '2015-04-23 12:36:23', '2015-04-23 12:36:23', '', 'Immigration', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-23 12:36:23', '2015-04-23 12:36:23', '', 20, 'http://92.60.114.159/~levisolicitorsco/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-04-23 12:36:36', '2015-04-23 12:36:36', '', 'Personal Injury', '', 'publish', 'open', 'open', '', 'personal-injury', '', '', '2015-04-30 17:48:18', '2015-04-30 17:48:18', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=22', 4, 'page', '', 0),
(23, 1, '2015-04-23 12:36:36', '2015-04-23 12:36:36', '', 'Personal Injury', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2015-04-23 12:36:36', '2015-04-23 12:36:36', '', 22, 'http://92.60.114.159/~levisolicitorsco/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-04-23 12:36:57', '2015-04-23 12:36:57', '', 'Pensions Litigation', '', 'publish', 'open', 'open', '', 'pensions-litigation', '', '', '2015-04-30 17:48:34', '2015-04-30 17:48:34', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=24', 5, 'page', '', 0),
(25, 1, '2015-04-23 12:36:57', '2015-04-23 12:36:57', '', 'Pensions Litigation', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2015-04-23 12:36:57', '2015-04-23 12:36:57', '', 24, 'http://92.60.114.159/~levisolicitorsco/?p=25', 0, 'revision', '', 0),
(26, 1, '2015-04-23 12:37:34', '2015-04-23 12:37:34', '', 'Commercial Dispute Resolution', '', 'publish', 'open', 'open', '', 'commercial-dispute-resolution', '', '', '2015-04-23 12:37:34', '2015-04-23 12:37:34', '', 8, 'http://92.60.114.159/~levisolicitorsco/?page_id=26', 0, 'page', '', 0),
(27, 1, '2015-04-23 12:37:34', '2015-04-23 12:37:34', '', 'Commercial Dispute Resolution', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-23 12:37:34', '2015-04-23 12:37:34', '', 26, 'http://92.60.114.159/~levisolicitorsco/?p=27', 0, 'revision', '', 0),
(28, 1, '2015-04-23 12:37:45', '2015-04-23 12:37:45', '', 'Commercial Property', '', 'publish', 'open', 'open', '', 'commercial-property', '', '', '2015-04-23 12:37:45', '2015-04-23 12:37:45', '', 8, 'http://92.60.114.159/~levisolicitorsco/?page_id=28', 1, 'page', '', 0),
(29, 1, '2015-04-23 12:37:45', '2015-04-23 12:37:45', '', 'Commercial Property', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2015-04-23 12:37:45', '2015-04-23 12:37:45', '', 28, 'http://92.60.114.159/~levisolicitorsco/?p=29', 0, 'revision', '', 0),
(30, 1, '2015-04-23 12:38:05', '2015-04-23 12:38:05', '', 'Company & Commercial', '', 'publish', 'open', 'open', '', 'company-commercial', '', '', '2015-04-23 12:38:05', '2015-04-23 12:38:05', '', 8, 'http://92.60.114.159/~levisolicitorsco/?page_id=30', 2, 'page', '', 0),
(31, 1, '2015-04-23 12:38:05', '2015-04-23 12:38:05', '', 'Company & Commercial', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-04-23 12:38:05', '2015-04-23 12:38:05', '', 30, 'http://92.60.114.159/~levisolicitorsco/?p=31', 0, 'revision', '', 0),
(32, 1, '2015-04-23 12:38:19', '2015-04-23 12:38:19', '', 'Debt Recovery', '', 'publish', 'open', 'open', '', 'debt-recovery', '', '', '2015-04-23 12:38:19', '2015-04-23 12:38:19', '', 8, 'http://92.60.114.159/~levisolicitorsco/?page_id=32', 3, 'page', '', 0),
(33, 1, '2015-04-23 12:38:19', '2015-04-23 12:38:19', '', 'Debt Recovery', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-04-23 12:38:19', '2015-04-23 12:38:19', '', 32, 'http://92.60.114.159/~levisolicitorsco/?p=33', 0, 'revision', '', 0),
(34, 1, '2015-04-23 12:38:42', '2015-04-23 12:38:42', '4', 'Professional Negligence', '', 'publish', 'open', 'open', '', 'professional-negligence', '', '', '2015-04-23 12:38:42', '2015-04-23 12:38:42', '', 8, 'http://92.60.114.159/~levisolicitorsco/?page_id=34', 4, 'page', '', 0),
(35, 1, '2015-04-23 12:38:42', '2015-04-23 12:38:42', '4', 'Professional Negligence', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2015-04-23 12:38:42', '2015-04-23 12:38:42', '', 34, 'http://92.60.114.159/~levisolicitorsco/?p=35', 0, 'revision', '', 0),
(36, 1, '2015-04-23 12:39:19', '2015-04-23 12:39:19', '', 'Our History', '', 'publish', 'open', 'open', '', 'our-history', '', '', '2015-04-23 12:39:19', '2015-04-23 12:39:19', '', 12, 'http://92.60.114.159/~levisolicitorsco/?page_id=36', 0, 'page', '', 0),
(37, 1, '2015-04-23 12:39:19', '2015-04-23 12:39:19', '', 'Our History', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-04-23 12:39:19', '2015-04-23 12:39:19', '', 36, 'http://92.60.114.159/~levisolicitorsco/?p=37', 0, 'revision', '', 0),
(38, 1, '2015-04-23 12:39:30', '2015-04-23 12:39:30', '', 'Our Values', '', 'publish', 'open', 'open', '', 'our-values', '', '', '2015-04-23 12:39:30', '2015-04-23 12:39:30', '', 12, 'http://92.60.114.159/~levisolicitorsco/?page_id=38', 1, 'page', '', 0),
(39, 1, '2015-04-23 12:39:30', '2015-04-23 12:39:30', '', 'Our Values', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2015-04-23 12:39:30', '2015-04-23 12:39:30', '', 38, 'http://92.60.114.159/~levisolicitorsco/?p=39', 0, 'revision', '', 0),
(40, 1, '2015-04-23 12:39:43', '2015-04-23 12:39:43', '', 'Case Studies', '', 'publish', 'open', 'open', '', 'case-studies', '', '', '2015-04-23 12:40:07', '2015-04-23 12:40:07', '', 12, 'http://92.60.114.159/~levisolicitorsco/?page_id=40', 2, 'page', '', 0),
(41, 1, '2015-04-23 12:39:43', '2015-04-23 12:39:43', '', 'Case Studies', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2015-04-23 12:39:43', '2015-04-23 12:39:43', '', 40, 'http://92.60.114.159/~levisolicitorsco/?p=41', 0, 'revision', '', 0),
(42, 1, '2015-04-23 12:39:58', '2015-04-23 12:39:58', '', 'Charitable Work', '', 'publish', 'open', 'open', '', 'charitable-work', '', '', '2015-04-23 12:39:58', '2015-04-23 12:39:58', '', 12, 'http://92.60.114.159/~levisolicitorsco/?page_id=42', 3, 'page', '', 0),
(43, 1, '2015-04-23 12:39:58', '2015-04-23 12:39:58', '', 'Charitable Work', '', 'inherit', 'open', 'open', '', '42-revision-v1', '', '', '2015-04-23 12:39:58', '2015-04-23 12:39:58', '', 42, 'http://92.60.114.159/~levisolicitorsco/?p=43', 0, 'revision', '', 0),
(44, 1, '2015-04-23 12:40:28', '2015-04-23 12:40:28', '', 'Regulatory Information', '', 'publish', 'open', 'open', '', 'regulatory-information', '', '', '2015-04-23 12:40:28', '2015-04-23 12:40:28', '', 12, 'http://92.60.114.159/~levisolicitorsco/?page_id=44', 4, 'page', '', 0),
(45, 1, '2015-04-23 12:40:28', '2015-04-23 12:40:28', '', 'Regulatory Information', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-04-23 12:40:28', '2015-04-23 12:40:28', '', 44, 'http://92.60.114.159/~levisolicitorsco/?p=45', 0, 'revision', '', 0),
(46, 1, '2015-04-23 12:40:42', '2015-04-23 12:40:42', '', 'News and Activity', '', 'publish', 'open', 'open', '', 'news-and-activity', '', '', '2015-04-30 13:48:31', '2015-04-30 13:48:31', '', 12, 'http://92.60.114.159/~levisolicitorsco/?page_id=46', 5, 'page', '', 0),
(47, 1, '2015-04-23 12:40:42', '2015-04-23 12:40:42', '', 'News and Activity', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-04-23 12:40:42', '2015-04-23 12:40:42', '', 46, 'http://92.60.114.159/~levisolicitorsco/?p=47', 0, 'revision', '', 0),
(48, 1, '2015-04-23 12:40:55', '2015-04-23 12:40:55', '', 'Careers', '', 'publish', 'open', 'open', '', 'career', '', '', '2015-04-23 12:42:00', '2015-04-23 12:42:00', '', 12, 'http://92.60.114.159/~levisolicitorsco/?page_id=48', 6, 'page', '', 0),
(49, 1, '2015-04-23 12:40:55', '2015-04-23 12:40:55', '', 'Career', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-04-23 12:40:55', '2015-04-23 12:40:55', '', 48, 'http://92.60.114.159/~levisolicitorsco/?p=49', 0, 'revision', '', 0),
(50, 1, '2015-04-23 12:41:16', '2015-04-23 12:41:16', '', 'Videos and Media', '', 'publish', 'open', 'open', '', 'videos-and-media', '', '', '2015-04-23 12:41:16', '2015-04-23 12:41:16', '', 12, 'http://92.60.114.159/~levisolicitorsco/?page_id=50', 7, 'page', '', 0),
(51, 1, '2015-04-23 12:41:16', '2015-04-23 12:41:16', '', 'Videos and Media', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2015-04-23 12:41:16', '2015-04-23 12:41:16', '', 50, 'http://92.60.114.159/~levisolicitorsco/?p=51', 0, 'revision', '', 0),
(52, 1, '2015-04-23 12:41:35', '2015-04-23 12:41:35', '', 'Contact', '', 'trash', 'open', 'open', '', 'contact-2', '', '', '2015-04-24 12:22:03', '2015-04-24 12:22:03', '', 0, 'http://92.60.114.159/~levisolicitorsco/?page_id=52', 0, 'page', '', 0),
(53, 1, '2015-04-23 12:42:00', '2015-04-23 12:42:00', '', 'Careers', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-04-23 12:42:00', '2015-04-23 12:42:00', '', 48, 'http://92.60.114.159/~levisolicitorsco/?p=53', 0, 'revision', '', 0),
(54, 1, '2015-04-23 13:22:53', '2015-04-23 13:22:53', '', 'Blog', '', 'trash', 'open', 'open', '', 'blog-2', '', '', '2015-04-24 12:22:06', '2015-04-24 12:22:06', '', 0, 'http://92.60.114.159/~levisolicitorsco/?page_id=54', 0, 'page', '', 0),
(55, 1, '2015-04-23 13:23:09', '2015-04-23 13:23:09', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2015-04-30 11:11:46', '2015-04-30 11:11:46', '', 0, 'http://92.60.114.159/~levisolicitorsco/?page_id=55', 5, 'page', '', 0),
(56, 1, '2015-04-23 13:23:09', '2015-04-23 13:23:09', '', 'Blog', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2015-04-23 13:23:09', '2015-04-23 13:23:09', '', 55, 'http://92.60.114.159/~levisolicitorsco/?p=56', 0, 'revision', '', 0),
(57, 1, '2015-04-23 13:25:02', '2015-04-23 13:25:02', ' ', '', '', 'publish', 'open', 'open', '', '57', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 0, 'http://92.60.114.159/~levisolicitorsco/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2015-04-23 13:25:02', '2015-04-23 13:25:02', ' ', '', '', 'publish', 'open', 'open', '', '58', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 0, 'http://92.60.114.159/~levisolicitorsco/?p=58', 2, 'nav_menu_item', '', 0),
(59, 1, '2015-04-23 13:25:02', '2015-04-23 13:25:02', ' ', '', '', 'publish', 'open', 'open', '', '59', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 0, 'http://92.60.114.159/~levisolicitorsco/?p=59', 18, 'nav_menu_item', '', 0),
(60, 1, '2015-04-23 13:25:02', '2015-04-23 13:25:02', ' ', '', '', 'publish', 'open', 'open', '', '60', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 0, 'http://92.60.114.159/~levisolicitorsco/?p=60', 24, 'nav_menu_item', '', 0),
(61, 1, '2015-04-23 13:25:02', '2015-04-23 13:25:02', ' ', '', '', 'publish', 'open', 'open', '', '61', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 0, 'http://92.60.114.159/~levisolicitorsco/?p=61', 25, 'nav_menu_item', '', 0),
(63, 1, '2015-04-23 13:25:02', '2015-04-23 13:25:02', ' ', '', '', 'publish', 'open', 'open', '', '63', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 0, 'http://92.60.114.159/~levisolicitorsco/?p=63', 34, 'nav_menu_item', '', 0),
(64, 1, '2015-04-23 15:53:15', '2015-04-23 15:53:15', ' ', '', '', 'publish', 'open', 'open', '', '64', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=64', 3, 'nav_menu_item', '', 0),
(65, 1, '2015-04-23 15:53:15', '2015-04-23 15:53:15', ' ', '', '', 'publish', 'open', 'open', '', '65', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=65', 5, 'nav_menu_item', '', 0),
(66, 1, '2015-04-23 22:42:35', '2015-04-23 22:42:35', ' ', '', '', 'publish', 'open', 'open', '', '66', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2015-04-23 22:42:35', '2015-04-23 22:42:35', ' ', '', '', 'publish', 'open', 'open', '', '67', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=67', 3, 'nav_menu_item', '', 0),
(68, 1, '2015-04-23 22:42:35', '2015-04-23 22:42:35', ' ', '', '', 'publish', 'open', 'open', '', '68', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=68', 4, 'nav_menu_item', '', 0),
(69, 1, '2015-04-23 22:42:35', '2015-04-23 22:42:35', ' ', '', '', 'publish', 'open', 'open', '', '69', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=69', 5, 'nav_menu_item', '', 0),
(70, 1, '2015-04-23 22:42:35', '2015-04-23 22:42:35', ' ', '', '', 'publish', 'open', 'open', '', '70', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=70', 6, 'nav_menu_item', '', 0),
(71, 1, '2015-04-23 22:43:46', '2015-04-23 22:43:46', ' ', '', '', 'publish', 'open', 'open', '', '71', '', '', '2015-04-23 22:43:46', '2015-04-23 22:43:46', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2015-04-23 22:43:46', '2015-04-23 22:43:46', ' ', '', '', 'publish', 'open', 'open', '', '72', '', '', '2015-04-23 22:43:46', '2015-04-23 22:43:46', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=72', 2, 'nav_menu_item', '', 0),
(73, 1, '2015-04-23 22:43:46', '2015-04-23 22:43:46', ' ', '', '', 'publish', 'open', 'open', '', '73', '', '', '2015-04-23 22:43:46', '2015-04-23 22:43:46', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=73', 3, 'nav_menu_item', '', 0),
(74, 1, '2015-04-23 22:43:46', '2015-04-23 22:43:46', ' ', '', '', 'publish', 'open', 'open', '', '74', '', '', '2015-04-23 22:43:46', '2015-04-23 22:43:46', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=74', 4, 'nav_menu_item', '', 0),
(75, 1, '2015-04-23 22:43:46', '2015-04-23 22:43:46', ' ', '', '', 'publish', 'open', 'open', '', '75', '', '', '2015-04-23 22:43:46', '2015-04-23 22:43:46', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=75', 5, 'nav_menu_item', '', 0),
(76, 1, '2015-04-23 22:44:23', '2015-04-23 22:44:23', ' ', '', '', 'publish', 'open', 'open', '', '76', '', '', '2015-04-23 22:44:23', '2015-04-23 22:44:23', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=76', 1, 'nav_menu_item', '', 0),
(77, 1, '2015-04-23 22:44:23', '2015-04-23 22:44:23', ' ', '', '', 'publish', 'open', 'open', '', '77', '', '', '2015-04-23 22:44:23', '2015-04-23 22:44:23', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=77', 2, 'nav_menu_item', '', 0),
(78, 1, '2015-04-23 22:44:23', '2015-04-23 22:44:23', ' ', '', '', 'publish', 'open', 'open', '', '78', '', '', '2015-04-23 22:44:23', '2015-04-23 22:44:23', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=78', 3, 'nav_menu_item', '', 0),
(79, 1, '2015-04-23 22:44:23', '2015-04-23 22:44:23', ' ', '', '', 'publish', 'open', 'open', '', '79', '', '', '2015-04-23 22:44:23', '2015-04-23 22:44:23', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=79', 4, 'nav_menu_item', '', 0),
(80, 1, '2015-04-23 22:44:23', '2015-04-23 22:44:23', ' ', '', '', 'publish', 'open', 'open', '', '80', '', '', '2015-04-23 22:44:23', '2015-04-23 22:44:23', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=80', 5, 'nav_menu_item', '', 0),
(81, 1, '2015-04-23 22:44:23', '2015-04-23 22:44:23', ' ', '', '', 'publish', 'open', 'open', '', '81', '', '', '2015-04-23 22:44:23', '2015-04-23 22:44:23', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=81', 6, 'nav_menu_item', '', 0),
(82, 1, '2015-04-23 22:44:23', '2015-04-23 22:44:23', ' ', '', '', 'publish', 'open', 'open', '', '82', '', '', '2015-04-23 22:44:23', '2015-04-23 22:44:23', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=82', 7, 'nav_menu_item', '', 0),
(83, 1, '2015-04-23 22:44:24', '2015-04-23 22:44:24', ' ', '', '', 'publish', 'open', 'open', '', '83', '', '', '2015-04-23 22:44:24', '2015-04-23 22:44:24', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=83', 8, 'nav_menu_item', '', 0),
(84, 1, '2015-04-23 22:44:24', '2015-04-23 22:44:24', ' ', '', '', 'publish', 'open', 'open', '', '84', '', '', '2015-04-23 22:44:24', '2015-04-23 22:44:24', '', 0, 'http://92.60.114.159/~levisolicitorsco/?p=84', 9, 'nav_menu_item', '', 0),
(85, 1, '2015-04-24 12:22:03', '2015-04-24 12:22:03', '', 'Contact', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2015-04-24 12:22:03', '2015-04-24 12:22:03', '', 52, 'http://92.60.114.159/~levisolicitorsco/?p=85', 0, 'revision', '', 0),
(86, 1, '2015-04-24 12:22:06', '2015-04-24 12:22:06', '', 'Blog', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2015-04-24 12:22:06', '2015-04-24 12:22:06', '', 54, 'http://92.60.114.159/~levisolicitorsco/?p=86', 0, 'revision', '', 0),
(87, 1, '2015-04-24 13:39:25', '2015-04-24 13:39:25', ' ', '', '', 'publish', 'open', 'open', '', '87', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=87', 6, 'nav_menu_item', '', 0),
(88, 1, '2015-04-24 13:39:25', '2015-04-24 13:39:25', ' ', '', '', 'publish', 'open', 'open', '', '88', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=88', 7, 'nav_menu_item', '', 0),
(89, 1, '2015-04-24 13:39:25', '2015-04-24 13:39:25', ' ', '', '', 'publish', 'open', 'open', '', '89', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=89', 8, 'nav_menu_item', '', 0),
(90, 1, '2015-04-24 13:40:07', '2015-04-24 13:40:07', ' ', '', '', 'publish', 'open', 'open', '', '90', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=90', 19, 'nav_menu_item', '', 0),
(91, 1, '2015-04-24 13:40:07', '2015-04-24 13:40:07', ' ', '', '', 'publish', 'open', 'open', '', '91', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=91', 20, 'nav_menu_item', '', 0),
(92, 1, '2015-04-24 13:40:07', '2015-04-24 13:40:07', ' ', '', '', 'publish', 'open', 'open', '', '92', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=92', 21, 'nav_menu_item', '', 0),
(93, 1, '2015-04-24 13:40:07', '2015-04-24 13:40:07', ' ', '', '', 'publish', 'open', 'open', '', '93', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=93', 22, 'nav_menu_item', '', 0),
(94, 1, '2015-04-24 13:40:07', '2015-04-24 13:40:07', ' ', '', '', 'publish', 'open', 'open', '', '94', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 8, 'http://92.60.114.159/~levisolicitorsco/?p=94', 23, 'nav_menu_item', '', 0),
(95, 1, '2015-04-30 13:52:25', '2015-04-30 13:52:25', ' ', '', '', 'publish', 'open', 'open', '', '95', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=95', 26, 'nav_menu_item', '', 0),
(96, 1, '2015-04-30 13:52:25', '2015-04-30 13:52:25', ' ', '', '', 'publish', 'open', 'open', '', '96', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=96', 27, 'nav_menu_item', '', 0),
(97, 1, '2015-04-30 13:52:25', '2015-04-30 13:52:25', ' ', '', '', 'publish', 'open', 'open', '', '97', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=97', 28, 'nav_menu_item', '', 0),
(98, 1, '2015-04-30 13:52:25', '2015-04-30 13:52:25', ' ', '', '', 'publish', 'open', 'open', '', '98', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=98', 29, 'nav_menu_item', '', 0),
(99, 1, '2015-04-30 13:52:25', '2015-04-30 13:52:25', ' ', '', '', 'publish', 'open', 'open', '', '99', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=99', 30, 'nav_menu_item', '', 0),
(100, 1, '2015-04-30 13:52:25', '2015-04-30 13:52:25', ' ', '', '', 'publish', 'open', 'open', '', '100', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=100', 31, 'nav_menu_item', '', 0),
(101, 1, '2015-04-30 13:52:25', '2015-04-30 13:52:25', ' ', '', '', 'publish', 'open', 'open', '', '101', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=101', 32, 'nav_menu_item', '', 0),
(102, 1, '2015-04-30 13:52:25', '2015-04-30 13:52:25', ' ', '', '', 'publish', 'open', 'open', '', '102', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 12, 'http://92.60.114.159/~levisolicitorsco/?p=102', 33, 'nav_menu_item', '', 0),
(103, 1, '2015-04-30 14:03:49', '2015-04-30 14:03:49', '', 'Article', '', 'publish', 'open', 'open', '', 'article', '', '', '2015-04-30 14:04:35', '2015-04-30 14:04:35', '', 46, 'http://92.60.114.159/~levisolicitorsco/?page_id=103', 0, 'page', '', 0),
(104, 1, '2015-04-30 14:03:49', '2015-04-30 14:03:49', '', 'Article', '', 'inherit', 'open', 'open', '', '103-revision-v1', '', '', '2015-04-30 14:03:49', '2015-04-30 14:03:49', '', 103, 'http://92.60.114.159/~levisolicitorsco/?p=104', 0, 'revision', '', 0),
(105, 1, '2015-04-30 17:47:33', '2015-04-30 17:47:33', '', 'Disciplinary', '', 'publish', 'open', 'open', '', 'disciplinary', '', '', '2015-04-30 17:47:33', '2015-04-30 17:47:33', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=105', 1, 'page', '', 0),
(106, 1, '2015-04-30 17:47:33', '2015-04-30 17:47:33', '', 'Disciplinary', '', 'inherit', 'open', 'open', '', '105-revision-v1', '', '', '2015-04-30 17:47:33', '2015-04-30 17:47:33', '', 105, 'http://92.60.114.159/~levisolicitorsco/?p=106', 0, 'revision', '', 0),
(107, 1, '2015-04-30 17:49:14', '2015-04-30 17:49:14', '', 'Professional Negligence', '', 'publish', 'open', 'open', '', 'professional-negligence', '', '', '2015-04-30 17:49:14', '2015-04-30 17:49:14', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=107', 5, 'page', '', 0),
(108, 1, '2015-04-30 17:49:14', '2015-04-30 17:49:14', '', 'Professional Negligence', '', 'inherit', 'open', 'open', '', '107-revision-v1', '', '', '2015-04-30 17:49:14', '2015-04-30 17:49:14', '', 107, 'http://92.60.114.159/~levisolicitorsco/?p=108', 0, 'revision', '', 0),
(109, 1, '2015-04-30 17:49:40', '2015-04-30 17:49:40', '', 'Private Property Litigation', '', 'publish', 'open', 'open', '', 'private-property-litigation', '', '', '2015-04-30 17:49:40', '2015-04-30 17:49:40', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=109', 7, 'page', '', 0),
(110, 1, '2015-04-30 17:49:40', '2015-04-30 17:49:40', '', 'Private Property Litigation', '', 'inherit', 'open', 'open', '', '109-revision-v1', '', '', '2015-04-30 17:49:40', '2015-04-30 17:49:40', '', 109, 'http://92.60.114.159/~levisolicitorsco/?p=110', 0, 'revision', '', 0),
(111, 1, '2015-04-30 17:50:09', '2015-04-30 17:50:09', '', 'Private Property Litigation', '', 'publish', 'open', 'open', '', 'private-property-litigation-2', '', '', '2015-04-30 17:50:09', '2015-04-30 17:50:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=111', 8, 'page', '', 0),
(112, 1, '2015-04-30 17:50:09', '2015-04-30 17:50:09', '', 'Private Property Litigation', '', 'inherit', 'open', 'open', '', '111-revision-v1', '', '', '2015-04-30 17:50:09', '2015-04-30 17:50:09', '', 111, 'http://92.60.114.159/~levisolicitorsco/?p=112', 0, 'revision', '', 0),
(113, 1, '2015-04-30 17:50:35', '2015-04-30 17:50:35', '', 'Residential Conveyancing', '', 'publish', 'open', 'open', '', 'residential-conveyancing', '', '', '2015-04-30 17:50:35', '2015-04-30 17:50:35', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=113', 9, 'page', '', 0),
(114, 1, '2015-04-30 17:50:35', '2015-04-30 17:50:35', '', 'Residential Conveyancing', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2015-04-30 17:50:35', '2015-04-30 17:50:35', '', 113, 'http://92.60.114.159/~levisolicitorsco/?p=114', 0, 'revision', '', 0),
(115, 1, '2015-04-30 17:50:59', '2015-04-30 17:50:59', '', 'New Build Residential Property', '', 'publish', 'open', 'open', '', 'new-build-residential-property', '', '', '2015-04-30 17:50:59', '2015-04-30 17:50:59', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=115', 10, 'page', '', 0),
(116, 1, '2015-04-30 17:50:59', '2015-04-30 17:50:59', '', 'New Build Residential Property', '', 'inherit', 'open', 'open', '', '115-revision-v1', '', '', '2015-04-30 17:50:59', '2015-04-30 17:50:59', '', 115, 'http://92.60.114.159/~levisolicitorsco/?p=116', 0, 'revision', '', 0),
(117, 1, '2015-04-30 17:51:17', '2015-04-30 17:51:17', '', 'Wills & Trusts', '', 'publish', 'open', 'open', '', 'wills-trusts', '', '', '2015-04-30 17:51:17', '2015-04-30 17:51:17', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=117', 11, 'page', '', 0),
(118, 1, '2015-04-30 17:51:17', '2015-04-30 17:51:17', '', 'Wills & Trusts', '', 'inherit', 'open', 'open', '', '117-revision-v1', '', '', '2015-04-30 17:51:17', '2015-04-30 17:51:17', '', 117, 'http://92.60.114.159/~levisolicitorsco/?p=118', 0, 'revision', '', 0),
(119, 1, '2015-04-30 17:51:35', '2015-04-30 17:51:35', '', 'Estate Disputes', '', 'publish', 'open', 'open', '', 'estate-disputes', '', '', '2015-04-30 17:51:35', '2015-04-30 17:51:35', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=119', 12, 'page', '', 0),
(120, 1, '2015-04-30 17:51:35', '2015-04-30 17:51:35', '', 'Estate Disputes', '', 'inherit', 'open', 'open', '', '119-revision-v1', '', '', '2015-04-30 17:51:35', '2015-04-30 17:51:35', '', 119, 'http://92.60.114.159/~levisolicitorsco/?p=120', 0, 'revision', '', 0),
(121, 1, '2015-04-30 17:51:54', '2015-04-30 17:51:54', '', 'Probate', '', 'publish', 'open', 'open', '', 'probate', '', '', '2015-04-30 17:51:54', '2015-04-30 17:51:54', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=121', 13, 'page', '', 0),
(122, 1, '2015-04-30 17:51:54', '2015-04-30 17:51:54', '', 'Probate', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2015-04-30 17:51:54', '2015-04-30 17:51:54', '', 121, 'http://92.60.114.159/~levisolicitorsco/?p=122', 0, 'revision', '', 0),
(123, 1, '2015-04-30 17:52:21', '2015-04-30 17:52:21', '', 'Lasting Powers of Attorney', '', 'publish', 'open', 'open', '', 'lasting-powers-of-attorney', '', '', '2015-04-30 17:52:21', '2015-04-30 17:52:21', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=123', 14, 'page', '', 0),
(124, 1, '2015-04-30 17:52:21', '2015-04-30 17:52:21', '', 'Lasting Powers of Attorney', '', 'inherit', 'open', 'open', '', '123-revision-v1', '', '', '2015-04-30 17:52:21', '2015-04-30 17:52:21', '', 123, 'http://92.60.114.159/~levisolicitorsco/?p=124', 0, 'revision', '', 0),
(125, 1, '2015-04-30 17:52:41', '2015-04-30 17:52:41', '', 'Care Home Fees', '', 'publish', 'open', 'open', '', 'care-home-fees', '', '', '2015-04-30 17:52:41', '2015-04-30 17:52:41', '', 6, 'http://92.60.114.159/~levisolicitorsco/?page_id=125', 15, 'page', '', 0),
(126, 1, '2015-04-30 17:52:41', '2015-04-30 17:52:41', '', 'Care Home Fees', '', 'inherit', 'open', 'open', '', '125-revision-v1', '', '', '2015-04-30 17:52:41', '2015-04-30 17:52:41', '', 125, 'http://92.60.114.159/~levisolicitorsco/?p=126', 0, 'revision', '', 0),
(127, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '127', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=127', 4, 'nav_menu_item', '', 0),
(128, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '128', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=128', 9, 'nav_menu_item', '', 0),
(129, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '129', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=129', 10, 'nav_menu_item', '', 0),
(130, 1, '2015-04-30 17:54:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-30 17:54:23', '0000-00-00 00:00:00', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=130', 1, 'nav_menu_item', '', 0),
(131, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '131', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=131', 11, 'nav_menu_item', '', 0),
(132, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '132', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=132', 12, 'nav_menu_item', '', 0),
(133, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '133', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=133', 13, 'nav_menu_item', '', 0),
(134, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '134', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=134', 14, 'nav_menu_item', '', 0),
(135, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '135', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=135', 15, 'nav_menu_item', '', 0),
(136, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '136', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=136', 16, 'nav_menu_item', '', 0),
(137, 1, '2015-04-30 17:56:24', '2015-04-30 17:56:24', ' ', '', '', 'publish', 'open', 'open', '', '137', '', '', '2015-04-30 19:05:04', '2015-04-30 19:05:04', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=137', 17, 'nav_menu_item', '', 0),
(138, 1, '2015-04-30 19:07:44', '2015-04-30 19:07:44', '', 'Team Custom Fields', '', 'publish', 'closed', 'closed', '', 'acf_team-custom-fields', '', '', '2015-04-30 19:07:44', '2015-04-30 19:07:44', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=acf&#038;p=138', 0, 'acf', '', 0),
(139, 1, '2015-04-30 19:11:20', '2015-04-30 19:11:20', 'Steven is a commercial litigation lawyer with a particular specialism in professional negligence matters and when not trying to plough through the administration mine of the firm advises insurer clients on professional indemnity matters particularly in relation to solicitors.', 'Steven Newdall', '', 'publish', 'closed', 'closed', '', 'steven-newdall', '', '', '2015-04-30 19:18:34', '2015-04-30 19:18:34', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=139', 0, 'cpt_team', '', 0),
(142, 1, '2015-04-30 19:18:01', '2015-04-30 19:18:01', '', '20110715-124337', '', 'inherit', 'open', 'open', '', '20110715-124337', '', '', '2015-04-30 19:18:16', '2015-04-30 19:18:16', '', 0, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20110715-124337.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2015-04-30 19:20:23', '2015-04-30 19:20:23', 'Ian became a partner in 1993 and went on to become the firm’s Senior Partner in 2002. Ian is also head of the Commercial Property department.\r\n\r\nIan specialises in a variety of property matters including the acquisition, sale and lease of commercial property, residential and commercial development and residential and social landlord property work.\r\n\r\nIan is a member of Variety Club Yorkshire committee and is a keen golfer.', 'Ian Land', '', 'publish', 'closed', 'closed', '', 'ian-land', '', '', '2015-04-30 19:21:58', '2015-04-30 19:21:58', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=143', 1, 'cpt_team', '', 0),
(144, 1, '2015-04-30 19:21:54', '2015-04-30 19:21:54', '', 'ian_land', '', 'inherit', 'open', 'open', '', 'ian_land', '', '', '2015-04-30 19:21:54', '2015-04-30 19:21:54', '', 143, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/ian_land.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2015-04-30 19:24:31', '2015-04-30 19:24:31', 'Jonathan became a Partner at Levi’s in 2000 and is head of the Private Client department.\r\n\r\nJonathan provides specialist tax and estate planning advice nationally and internationally for individuals and their families including many entrepreneurial clients and those with family businesses, for whom he frequently acts as an Executor and Trustee.\r\n\r\nJonathan also has experience in a wide range of private client work including probate administration, wills, estate and tax planning (including Deeds of Variation), Court of Protection work and Enduring and Lasting Powers of Attorney. His work has been recognised by the Legal 500.\r\n\r\nIn his spare time Jonathan provides pro bono advice to a local children’s cancer charity.', 'Jonathan Baum', '', 'publish', 'closed', 'closed', '', 'jonathan-baum', '', '', '2015-04-30 19:24:31', '2015-04-30 19:24:31', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=145', 2, 'cpt_team', '', 0),
(146, 1, '2015-04-30 19:24:27', '2015-04-30 19:24:27', '', 'jonathan_baum', '', 'inherit', 'open', 'open', '', 'jonathan_baum', '', '', '2015-04-30 19:24:27', '2015-04-30 19:24:27', '', 145, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/jonathan_baum.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2015-04-30 19:26:37', '2015-04-30 19:26:37', 'Alan is the head of the firm’s Residential Property team, a position which he has held since 2002.\r\n\r\nAs well as standard sale and purchase transactions, title rectification and development and plot sales, Alan has expertise in Commercial Property, predominantly in small business transactions and the sale, purchase and lease of shops and restaurants and associated Premises Licence applications.\r\n\r\nAlan is the Honorary Solicitor to the Wah Kong Chinese Society in Leeds and is fluent in Cantonese.', 'Alan Tai', '', 'publish', 'closed', 'closed', '', 'alan-tai', '', '', '2015-04-30 19:26:37', '2015-04-30 19:26:37', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=147', 3, 'cpt_team', '', 0),
(148, 1, '2015-04-30 19:26:33', '2015-04-30 19:26:33', '', 'alan_tai', '', 'inherit', 'open', 'open', '', 'alan_tai', '', '', '2015-04-30 19:26:33', '2015-04-30 19:26:33', '', 147, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/alan_tai.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2015-04-30 19:29:02', '2015-04-30 19:29:02', 'Jeffrey Myers is a commercial property solicitor. He brings a wealth of experience of over 25 years specialising in advising clients on both business transfers and commercial leases. ', 'Jeffrey Myers', '', 'publish', 'closed', 'closed', '', 'jeffrey-myers', '', '', '2015-04-30 19:29:16', '2015-04-30 19:29:16', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=149', 4, 'cpt_team', '', 0),
(150, 1, '2015-04-30 19:29:13', '2015-04-30 19:29:13', '', 'jeffrey_myers', '', 'inherit', 'open', 'open', '', 'jeffrey_myers', '', '', '2015-04-30 19:29:13', '2015-04-30 19:29:13', '', 149, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/jeffrey_myers.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2015-04-30 19:31:35', '2015-04-30 19:31:35', 'Darren is a partner in the Personal Injury department, he specialises in both claimant and defendant personal injury.\r\n\r\nDarren is a member of the Association of Personal Injury Lawyers.\r\n\r\nDarren has a wealth of experience spanning a wide range of personal injury cases which include:\r\n\r\n• Road Traffic Accidents - including credit hire, uninsured loss recovery, and Motor Insurers’ Bureau cases.\r\n• Employers Liability - manual handling, defective work equipment, workplace stress, work related upper limb disorders.\r\n• Occupiers Liability & defective premises.\r\n• Highways Act cases.\r\n• Criminal Injuries.\r\n• Multi-Track Litigation - brain and serious orthopaedic injuries.\r\n• Costs litigation.\r\n\r\nA couple of Darren’s recent successes are: \r\n\r\n• Re Mr X - client suffered a catastrophic brain injury in a road traffic accident and was awarded £6 million.\r\n• Mr M awarded a six figure sum at trial after suffering from stress at work and bullying.\r\n• Defended numerous brain injury claims valued in excess of £1 million.', 'Darren Brown', '', 'publish', 'closed', 'closed', '', 'darren-brown', '', '', '2015-04-30 19:31:51', '2015-04-30 19:31:51', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=151', 5, 'cpt_team', '', 0),
(152, 1, '2015-04-30 19:31:47', '2015-04-30 19:31:47', '', 'darren_brown', '', 'inherit', 'open', 'open', '', 'darren_brown', '', '', '2015-04-30 19:31:47', '2015-04-30 19:31:47', '', 151, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/darren_brown.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2015-04-30 19:34:03', '2015-04-30 19:34:03', 'Nia is a Partner within the firm’s Professional Indemnity department and works within the coverage and pre-action team. Nia has experience of advising on coverage issues and policy matters generally and in particular professional negligence claims against solicitors. She also has a wealth of experience of working within a Criminal Defence practice and VHCC fraud team.\r\n\r\nNia has worked as a volunteer mentor with the Youth Offending Service.\r\n\r\nNotable cases that Nia can disclose include:\r\n\r\n• SFO v Raven - engaged in the defence of one of five men charged with a £250m “Ponzi” investment fund fraud involving over 130 companies spread over 66 countries: there were more than one million papers in the case. Eventually having taken numerous points re disclosure, the prosecution offered no evidence against Raven and he was acquitted of all charges.\r\n• R v Davies - Successful defence of a South Wales business man who was charged with importation of 30 million pounds worth of cocaine.', 'Nia Planchant', '', 'publish', 'closed', 'closed', '', 'nia-planchant', '', '', '2015-04-30 19:34:03', '2015-04-30 19:34:03', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=153', 6, 'cpt_team', '', 0),
(154, 1, '2015-04-30 19:34:00', '2015-04-30 19:34:00', '', 'nia_planchant', '', 'inherit', 'open', 'open', '', 'nia_planchant', '', '', '2015-04-30 19:34:00', '2015-04-30 19:34:00', '', 153, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/nia_planchant.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2015-04-30 19:35:54', '2015-04-30 19:35:54', 'Alice joined the firm in October 2009. \r\n\r\nAlice heads the Disciplinary & Regulatory Department, with a complimentary role as Risk and Compliance Partner.\r\n\r\nAlice’s background in Professional Indemnity and Insurance Coverage litigation, Criminal Litigation and Regulatory review of Law Society/Bar Council decisions makes her uniquely qualified to defend solicitors before the Solicitor’s Disciplinary Tribunal and offer advice to those facing SRA investigation.\r\n\r\nShe is a member of the Oxford University Society and of the Association of Regulatory and Disciplinary Lawyers.', 'Alice Appleton', '', 'publish', 'closed', 'closed', '', 'alice-appleton', '', '', '2015-04-30 19:35:54', '2015-04-30 19:35:54', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=155', 7, 'cpt_team', '', 0),
(156, 1, '2015-04-30 19:35:50', '2015-04-30 19:35:50', '', 'alice_appleton', '', 'inherit', 'open', 'open', '', 'alice_appleton', '', '', '2015-04-30 19:35:50', '2015-04-30 19:35:50', '', 155, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/alice_appleton.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2015-04-30 19:37:46', '2015-04-30 19:37:46', 'Matt is a solicitor in the Residential Property team. He successfully completed his training contract with Levi’s in 2006 and was subsequently offered a full time contract with the firm.\r\n\r\nMatt acts in all aspects of residential property transactions including sale and purchase of freehold and leasehold interests. He has extensive experience in dealing with new build properties and shared ownership Leases.\r\n\r\nMatt’s work covers the full spectrum of the residential property market. He has a wealth of experience in transactions where the value of the property has exceeded one million pounds. He also acts for clients under the Government initiative The Mortgage Rescue Scheme.', 'Matt Rodd', '', 'publish', 'closed', 'closed', '', 'matt-rodd', '', '', '2015-04-30 19:37:46', '2015-04-30 19:37:46', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=157', 8, 'cpt_team', '', 0),
(158, 1, '2015-04-30 19:37:43', '2015-04-30 19:37:43', '', 'matt_rodd', '', 'inherit', 'open', 'open', '', 'matt_rodd', '', '', '2015-04-30 19:37:43', '2015-04-30 19:37:43', '', 157, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/matt_rodd.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2015-04-30 19:41:28', '2015-04-30 19:41:28', 'Gillian returned to Levis in September 2014 as Partner, heading up the New Build Department. \r\n\r\nGillian qualified as a Licensed Conveyancer in 1999 and has over 25 years experience including sales, purchases, remortgages, transfers, separate lender representation and leasehold transactions. \r\n\r\nAs a Licensed Conveyancer Gillian is also authorised to exercise the powers of a Commissioner for Oaths. ', 'Gillian Sandford', '', 'publish', 'closed', 'closed', '', 'gillian-sandford', '', '', '2015-04-30 19:41:28', '2015-04-30 19:41:28', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=159', 9, 'cpt_team', '', 0),
(160, 1, '2015-04-30 19:41:25', '2015-04-30 19:41:25', '', '20140910-151853', '', 'inherit', 'open', 'open', '', '20140910-151853', '', '', '2015-04-30 19:41:25', '2015-04-30 19:41:25', '', 159, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20140910-151853.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2015-04-30 19:43:33', '2015-04-30 19:43:33', 'Ruth is a litigation solicitor with significant experience in property-related disputes relating to both residential and commercial properties, acting for a variety of clients including landlords, tenants, banks, receivers and housing associations. \r\n\r\nRuth has experience in all areas of residential and commercial property litigation, and can assist you in areas including rent arrears recovery, boundary disputes, advising on Compulsory Purchase Orders, disrepair and dilapidations, service charge disputes, anti-social behaviour and possession proceedings. Her practice also involves neighbour disputes, rights of way issues, and professional negligence cases against conveyancers, surveyors, architects and builders.', 'Ruth Spankie', '', 'publish', 'closed', 'closed', '', 'ruth-spankie', '', '', '2015-04-30 19:43:33', '2015-04-30 19:43:33', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=161', 10, 'cpt_team', '', 0),
(162, 1, '2015-04-30 19:43:29', '2015-04-30 19:43:29', '', '20140721-141636', '', 'inherit', 'open', 'open', '', '20140721-141636', '', '', '2015-04-30 19:43:29', '2015-04-30 19:43:29', '', 161, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20140721-141636.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2015-04-30 19:44:23', '2015-04-30 19:44:23', 'Lisa trained at Levi Solicitors and qualified as a Solicitor in July 2012. Lisa currently practices in the Property Department, dealing with all aspects of property law. She has particular expertise in New Build Conveyancing and represents buyers from many of the UK’s largest housebuilders.\r\n\r\nLisa brings a very pro-active and client focussed approach to her work. She approaches all transactions with a commercial mind and has a good eye for problem-solving; always providing cost-effective solutions.\r\n\r\nLisa is very approachable and can advise clients on Shared Equity Schemes and New Buy Schemed, which are aimed at helping people get onto the property ladder.\r\n\r\nLisa is a keen networker and regularly attends events organised by the Leeds Chamber of Commerce and Forward Ladies. ', 'Lisa Wilson', '', 'publish', 'closed', 'closed', '', 'lisa-wilson', '', '', '2015-04-30 19:45:34', '2015-04-30 19:45:34', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=163', 11, 'cpt_team', '', 0),
(164, 1, '2015-04-30 19:45:30', '2015-04-30 19:45:30', '', '20110210-144034', '', 'inherit', 'open', 'open', '', '20110210-144034', '', '', '2015-04-30 19:45:30', '2015-04-30 19:45:30', '', 163, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20110210-144034.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2015-04-30 19:46:55', '2015-04-30 19:46:55', 'Vladimir Mikeljevic is a solicitor and Head of our Immigration Department. He has been practising immigration and asylum law since 1996 and is accredited by the Law Society at the highest level: Level 3(Immigration Law Advanced). There are only 22 firms of solicitors in England and Wales that have a solicitor accredited to Level 3 (as of 6th August 2014).\r\n\r\nVladimir has presented over 600 appeals in Immigration Tribunals and given many interviews to regional and national newspapers, radio stations and television. He is one of the most experienced immigration solicitors in the UK. He is a member of the Immigration Law Practitioners Association and was recognised for “Outstanding legal practice” by the Good Lawyer Guide in 2010 and 2012.\r\n\r\nFor further information about Vladimir, his expertise, experience and success rate, together with client and other reviews, please visit his full profile by clicking on the right hand side menu.', 'Vladimir Mikekjevic', '', 'publish', 'closed', 'closed', '', 'vladimir-mikekjevic', '', '', '2015-04-30 19:47:52', '2015-04-30 19:47:52', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=165', 12, 'cpt_team', '', 0),
(166, 1, '2015-04-30 19:47:49', '2015-04-30 19:47:49', '', '20140722-155544', '', 'inherit', 'open', 'open', '', '20140722-155544', '', '', '2015-04-30 19:47:49', '2015-04-30 19:47:49', '', 165, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20140722-155544.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(167, 1, '2015-04-30 19:48:52', '2015-04-30 19:48:52', 'Fiona is a residential conveyancer. She specialises in the sale and purchase of both registered and unregistered freehold and leasehold properties. \r\n\r\nFiona also has a great deal of experience with new build, remortgages and transfer of equity matters.\r\n\r\nFiona is very professional and has a very friendly approach at all times.', 'Fiona Firth', '', 'publish', 'closed', 'closed', '', 'fiona-firth', '', '', '2015-04-30 19:49:53', '2015-04-30 19:49:53', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=167', 13, 'cpt_team', '', 0),
(168, 1, '2015-04-30 19:49:49', '2015-04-30 19:49:49', '', '20140910-153009', '', 'inherit', 'open', 'open', '', '20140910-153009', '', '', '2015-04-30 19:49:49', '2015-04-30 19:49:49', '', 167, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20140910-153009.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2015-04-30 19:50:52', '2015-04-30 19:50:52', 'Andrew is a solicitor in the Private Client team. \r\n\r\nAndrew has experience in a wide range of areas of private client work including wills and estate planning, probate and estate administration, estate disputes, lasting powers of attorney, court of protection work and issues involving care fees. Andrew is also a member of Solicitors for the Elderly. \r\n\r\nAndrew began working as a private client paralegal in 2007 and qualified as a solicitor in 2010. Prior to this, Andrew was a manager at the Leeds Probate Registry where he worked for 5 years, gaining vast experience in probate matters.\r\n\r\nIn his spare time Andrew enjoys playing football and golf.', 'Andrew Milburn', '', 'publish', 'closed', 'closed', '', 'andrew-milburn', '', '', '2015-04-30 19:52:08', '2015-04-30 19:52:08', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=169', 14, 'cpt_team', '', 0),
(170, 1, '2015-04-30 19:52:05', '2015-04-30 19:52:05', '', '20140722-160940', '', 'inherit', 'open', 'open', '', '20140722-160940', '', '', '2015-04-30 19:52:05', '2015-04-30 19:52:05', '', 169, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20140722-160940.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2015-04-30 19:53:00', '2015-04-30 19:53:00', 'Sue trained and qualified at Levi Solicitors. Sue currently practices in the property department dealing with her own caseload of both Freehold and Leasehold sale and purchase transactions. She also has experience of Transfers of Equity and Remortgage matters. \r\n\r\nSue graduated from the University of Newcastle and gained an LLB (Hons) Law degree. Sue also achieved a distinction on the Legal Practice Course at BPP Law School in Leeds. \r\n\r\nSue volunteers for the charity ‘Contact the Elderly’ which organises tea parties for people over 75, who live with little or no social support, in order to promote inclusion and alleviate loneliness. \r\n\r\nSue is an avid runner and has taken part in events such as the Leeds 10k and the Great North Run. As well as taking part, she also uses these events to raise money for local charities.', 'Sue Stephenson', '', 'publish', 'closed', 'closed', '', '171-2', '', '', '2015-04-30 19:54:19', '2015-04-30 19:54:19', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=171', 15, 'cpt_team', '', 0),
(172, 1, '2015-04-30 19:54:16', '2015-04-30 19:54:16', '', 'Sue-S2-(cropped)', '', 'inherit', 'open', 'open', '', 'sue-s2-cropped', '', '', '2015-04-30 19:54:16', '2015-04-30 19:54:16', '', 171, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/Sue-S2-cropped.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2015-04-30 19:56:06', '2015-04-30 19:56:06', 'Nicola Roughton is a Conveyancing Executive. Nicola has worked in conveyancing for over 20 years,and during this time she has dealt with a wide variety of conveyancing transactions. Nicola has developed specific experience in freehold sale and purchases.\r\n\r\nNicola is an avid triathlete and has taken part in events such as the Outlaw Half and the Rubicon.', 'Nicola Roughton', '', 'publish', 'closed', 'closed', '', 'nicola-roughton', '', '', '2015-04-30 19:56:06', '2015-04-30 19:56:06', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=173', 16, 'cpt_team', '', 0),
(174, 1, '2015-04-30 19:56:03', '2015-04-30 19:56:03', '', '20140721-150901', '', 'inherit', 'open', 'open', '', '20140721-150901', '', '', '2015-04-30 19:56:03', '2015-04-30 19:56:03', '', 173, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20140721-150901.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2015-04-30 19:57:04', '2015-04-30 19:57:04', 'Sean is a Trainee Solicitor at Levi Solicitors LLP. Sean has experience in a broad range of disputes.\r\n\r\nCommercial Litigation\r\n\r\nSean has worked on a number of high value, complex litigation matters. Sean’s commercial litigation work includes contractual claims arising from contracts for services, debt claims, breach of sales and purchase agreements, claims for breach of duty against local government and without notice injunctions relating to breach of trust.\r\n\r\nProperty Litigation\r\n\r\nSean has experience in property disputes and recently attended a four day trial in relation to a pre-contractual deposit in relation to a failed property transaction.\r\n\r\nProfessional Negligence\r\n\r\nSean has acted for a number of clients in professional negligence actions brought against a range of different professionals; including Lawyers, Architects, Builders and Medical Professionals.\r\n\r\nConstruction\r\n\r\nSean has been instructed in relation to a number of construction disputes. Recently having been successful in a high value case in the Manchester Technology and Construction Court following a seven-day trial.\r\n\r\nAlternative Dispute Resolution\r\n\r\nSean is keen to promote alternative dispute resolution as a means to achieve a successful settlement for the firm’s clients. Sean has attended a number of mediations and settlement meetings. \r\n\r\nEducation\r\n\r\nLLM Law; Leeds University\r\nLegal Practice Course; Leeds Law School\r\nBA (Hons) History; Northumbria University\r\n\r\nInterests\r\n\r\nSean is a keen runner, cyclist, footballer and tennis player.', 'Sean McHale', '', 'publish', 'closed', 'closed', '', 'sean-mchale', '', '', '2015-04-30 19:58:14', '2015-04-30 19:58:14', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=175', 17, 'cpt_team', '', 0),
(176, 1, '2015-04-30 19:58:08', '2015-04-30 19:58:08', '', '20140425-154134', '', 'inherit', 'open', 'open', '', '20140425-154134', '', '', '2015-04-30 19:58:08', '2015-04-30 19:58:08', '', 175, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20140425-154134.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2015-04-30 20:00:16', '2015-04-30 20:00:16', 'Gemma is a trainee solicitor within the litigation department at the practice. \r\n\r\nGemma graduated from the Sheffield Hallam University and gained a BA (Hons) Law and Criminology degree. Gemma has also completed the Legal Practice Course at the College of Law in York.\r\n\r\nGemma specialises in debt recovery and general litigation matters. Gemma also has experience in housing law including residential landlord and tenant issues.\r\n\r\nOver the last few years Gemma has completed four half marathons raising money for Yorkshire Cancer Research.', 'Gemma Graham', '', 'publish', 'closed', 'closed', '', 'gemma-graham', '', '', '2015-04-30 20:00:16', '2015-04-30 20:00:16', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=177', 18, 'cpt_team', '', 0),
(178, 1, '2015-04-30 20:00:12', '2015-04-30 20:00:12', '', '20140425-164640', '', 'inherit', 'open', 'open', '', '20140425-164640', '', '', '2015-04-30 20:00:12', '2015-04-30 20:00:12', '', 177, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20140425-164640.jpg', 0, 'attachment', 'image/jpeg', 0),
(179, 1, '2015-04-30 20:00:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-30 20:00:23', '0000-00-00 00:00:00', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&p=179', 0, 'cpt_team', '', 0),
(180, 1, '2015-04-30 20:01:28', '2015-04-30 20:01:28', 'James is a paralegal within the litigation department at the practice.\r\n\r\nJames originally graduated from the University of Sheffield in 2008 with a BA (Hons) History Degree. James took the decision to retrain as a lawyer and gained a Masters in Law from the University of Sheffield. James subsequently completed the Bar Professional Training Course at Nottingham Law School and was called to the bar in 2011.\r\n\r\nJames specialises in general civil and commercial litigation, in particular; Professional Negligence, debt recovery, contractual disputes and trespass/nuisance matters. James also has experience handling residential landlord and tenant disputes. \r\n\r\nIn his spare time James is a keen amateur historian and is also a classically trained violinist.', 'James Gould', '', 'publish', 'closed', 'closed', '', 'james-gould', '', '', '2015-04-30 20:02:29', '2015-04-30 20:02:29', '', 0, 'http://92.60.114.159/~levisolicitorsco/?post_type=cpt_team&#038;p=180', 19, 'cpt_team', '', 0),
(181, 1, '2015-04-30 20:02:27', '2015-04-30 20:02:27', '', '20140721-141724', '', 'inherit', 'open', 'open', '', '20140721-141724', '', '', '2015-04-30 20:02:27', '2015-04-30 20:02:27', '', 180, 'http://92.60.114.159/~levisolicitorsco/wp-content/uploads/2015/04/20140721-141724.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '182', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=182', 2, 'nav_menu_item', '', 0),
(183, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '183', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=183', 7, 'nav_menu_item', '', 0),
(184, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '184', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=184', 8, 'nav_menu_item', '', 0),
(185, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '185', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=185', 9, 'nav_menu_item', '', 0),
(186, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '186', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=186', 10, 'nav_menu_item', '', 0),
(187, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '187', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=187', 11, 'nav_menu_item', '', 0),
(188, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '188', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=188', 12, 'nav_menu_item', '', 0),
(189, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '189', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=189', 13, 'nav_menu_item', '', 0),
(190, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '190', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=190', 14, 'nav_menu_item', '', 0),
(191, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '191', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=191', 15, 'nav_menu_item', '', 0),
(192, 1, '2015-04-30 20:27:09', '2015-04-30 20:27:09', ' ', '', '', 'publish', 'open', 'open', '', '192', '', '', '2015-04-30 20:27:09', '2015-04-30 20:27:09', '', 6, 'http://92.60.114.159/~levisolicitorsco/?p=192', 16, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form`
--

CREATE TABLE `wp_rg_form` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_rg_form`
--

INSERT INTO `wp_rg_form` (`id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'Contact', '2015-04-30 15:37:21', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_meta`
--

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext,
  `entries_grid_meta` longtext,
  `confirmations` longtext,
  `notifications` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_rg_form_meta`
--

INSERT INTO `wp_rg_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{"title":"Contact","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Get in touch","imageUrl":""},"fields":[{"type":"text","id":1,"label":"Name","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Name","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":"","cssClass":"required"},{"type":"email","id":2,"label":"Email","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Email","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":"","cssClass":"required"},{"type":"text","id":3,"label":"Tel","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Tel","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"select","id":4,"label":"Category","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"choices":[{"text":"General Enquiry","value":"General Enquiry","isSelected":false,"price":""},{"text":"Second Choice","value":"Second Choice","isSelected":false,"price":""},{"text":"Third Choice","value":"Third Choice","isSelected":false,"price":""}],"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"conditionalLogic":"","displayOnly":""},{"type":"textarea","id":5,"label":"Enquiry","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Enquiry","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""}],"id":1,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"subLabelPlacement":"below","cssClass":"","enableHoneypot":"","enableAnimation":"","save":{"enabled":"","button":{"type":"link","text":"Save and Continue Later"}},"limitEntries":"","limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":"","scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":"","requireLoginMessage":""}', NULL, '{"55424c3175971":{"id":"55424c3175971","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"55424c3175480":{"id":"55424c3175480","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_view`
--

CREATE TABLE `wp_rg_form_view` (
`id` bigint(20) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_incomplete_submissions`
--

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) NOT NULL,
  `source_url` longtext NOT NULL,
  `submission` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead`
--

CREATE TABLE `wp_rg_lead` (
`id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL,
  `source_url` varchar(200) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `currency` varchar(5) DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail`
--

CREATE TABLE `wp_rg_lead_detail` (
`id` bigint(20) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail_long`
--

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_meta`
--

CREATE TABLE `wp_rg_lead_meta` (
`id` bigint(20) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_notes`
--

CREATE TABLE `wp_rg_lead_notes` (
`id` int(10) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext,
  `note_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer You Menu', 'footer-you-menu', 0),
(4, 'Footer Business Menu', 'footer-business-menu', 0),
(5, 'Footer Team Menu', 'footer-team-menu', 0),
(6, 'Footer About Menu', 'footer-about-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0),
(63, 2, 0),
(64, 2, 0),
(65, 2, 0),
(66, 3, 0),
(67, 3, 0),
(68, 3, 0),
(69, 3, 0),
(70, 3, 0),
(71, 4, 0),
(72, 4, 0),
(73, 4, 0),
(74, 4, 0),
(75, 4, 0),
(76, 6, 0),
(77, 6, 0),
(78, 6, 0),
(79, 6, 0),
(80, 6, 0),
(81, 6, 0),
(82, 6, 0),
(83, 6, 0),
(84, 6, 0),
(87, 2, 0),
(88, 2, 0),
(89, 2, 0),
(90, 2, 0),
(91, 2, 0),
(92, 2, 0),
(93, 2, 0),
(94, 2, 0),
(95, 2, 0),
(96, 2, 0),
(97, 2, 0),
(98, 2, 0),
(99, 2, 0),
(100, 2, 0),
(101, 2, 0),
(102, 2, 0),
(127, 2, 0),
(128, 2, 0),
(129, 2, 0),
(131, 2, 0),
(132, 2, 0),
(133, 2, 0),
(134, 2, 0),
(135, 2, 0),
(136, 2, 0),
(137, 2, 0),
(182, 3, 0),
(183, 3, 0),
(184, 3, 0),
(185, 3, 0),
(186, 3, 0),
(187, 3, 0),
(188, 3, 0),
(189, 3, 0),
(190, 3, 0),
(191, 3, 0),
(192, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 34),
(3, 3, 'nav_menu', '', 0, 16),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'nav_menu', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"beabd4b8af62f92a1096c83acfa53d1479ddc3d876dc8cc0085aa6481140b4da";a:4:{s:10:"expiration";i:1430565090;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36";s:5:"login";i:1430392290;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '3'),
(19, 1, 'edit_page_per_page', '999'),
(20, 1, 'closedpostboxes_cpt_team', 'a:1:{i:0;s:11:"postexcerpt";}'),
(21, 1, 'metaboxhidden_cpt_team', 'a:4:{i:0;s:10:"wpseo_meta";i:1;s:11:"postexcerpt";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(22, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1430421139'),
(24, 1, 'meta-box-order_cpt_team', 'a:4:{s:15:"acf_after_title";s:7:"acf_138";s:4:"side";s:36:"submitdiv,postimagediv,pageparentdiv";s:6:"normal";s:40:"wpseo_meta,postexcerpt,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(25, 1, 'screen_layout_cpt_team', '2'),
(26, 1, 'edit_cpt_team_per_page', '999');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2ePKAZKFSfhf08tfGamNv2VHhuzv41', 'admin', 'accounts@digital-one.co.uk', '', '2015-04-23 11:13:33', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rg_form_meta`
--
ALTER TABLE `wp_rg_form_meta`
 ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
 ADD PRIMARY KEY (`id`), ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_rg_incomplete_submissions`
--
ALTER TABLE `wp_rg_incomplete_submissions`
 ADD PRIMARY KEY (`uuid`), ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
 ADD PRIMARY KEY (`id`), ADD KEY `form_id` (`form_id`), ADD KEY `status` (`status`);

--
-- Indexes for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
 ADD PRIMARY KEY (`id`), ADD KEY `form_id` (`form_id`), ADD KEY `lead_id` (`lead_id`), ADD KEY `lead_field_number` (`lead_id`,`field_number`);

--
-- Indexes for table `wp_rg_lead_detail_long`
--
ALTER TABLE `wp_rg_lead_detail_long`
 ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
 ADD PRIMARY KEY (`id`), ADD KEY `meta_key` (`meta_key`), ADD KEY `lead_id` (`lead_id`), ADD KEY `form_id_meta_key` (`form_id`,`meta_key`);

--
-- Indexes for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `lead_id` (`lead_id`), ADD KEY `lead_user_key` (`lead_id`,`user_id`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=937;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;