-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Mar 05 Février 2013 à 10:29
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `DBlamotte`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_comments`
--

INSERT INTO `wp_festival_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-14 14:45:38', '2013-01-14 14:45:38', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=214 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~lamotte/festival_cinema', 'yes'),
(2, 'blogname', 'Festival de films LGBT', 'yes'),
(3, 'blogdescription', 'Du 24 ou 26 Septembre au cinéma Les Carmes à Orléans', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'pierre.lamotte@etu.univ-orleans.fr', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/~lamotte/festival_cinema', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:9:"Programme";s:4:"text";s:1204:"<div id="programme">\r\n	<div id="prog-list">\r\n		<div class="prog-item">\r\n			<div class="prog-date">Vendredi 24 septembre : 20h00</div>\r\n			<div class="prog-text">\r\n				Soirée d’ouverture : séance de courts métrages\r\n				Rencontre-débat avec un réalisateur.\r\n			</div>\r\n		</div>\r\n\r\n		<div class="prog-item">\r\n			<div class="prog-date">Samedi 25 septembre : 19h30</div>\r\n			<div class="prog-text">\r\n				Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école)\r\n				Rencontre-débat avec le Groupe Action Gay & Lesbien – Loiret sur les interventions en milieu scolaire.\r\n			</div>\r\n		</div>\r\n\r\n		<div class="prog-item">\r\n			<div class="prog-date">Samedi 25 septembre : 21h45</div>\r\n			<div class="prog-text">\r\n				Fiction : Ander\r\n			</div>\r\n		</div>\r\n\r\n		<div class="prog-item">\r\n			<div class="prog-date">Dimanche 26 septembre : 16h00</div>\r\n			<div class="prog-text">\r\n				Fiction : El niño pez\r\n			</div>\r\n		</div>\r\n\r\n		<div class="prog-item">\r\n			<div class="prog-date">Dimanche 26 septembre : 18h00</div>\r\n			<div class="prog-text">\r\n				Fiction : I can’t think straight\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '63', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:8:"search-2";i:2;s:12:"categories-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1359557142;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1359557214;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1359557654;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1359531164;}', 'yes'),
(102, '_transient_random_seed', '394e296f7bf598c45e9a6fed55641ded', 'yes'),
(103, 'auth_key', '!GwRS9UNCX=bU ]|o*lG?(%dKk_](B4m4_WvDAgU6>}lhB[Ez{UXv4p9+#9P!5JB', 'yes'),
(104, 'auth_salt', '{/R5.Y!Z3|`bNpdPt9+X9Z$Q)PJId{:a*:o^l`QA;2dhnYxswYN~?s#ZA#w^#sZ@', 'yes'),
(105, 'logged_in_key', 'yIF5s9yHdUU/x>2f6Eg#:;kc36rVT<18CkzwvZkvT9an(Q/%yr(9*bcV:M<>4uBq', 'yes'),
(106, 'logged_in_salt', '|96NF*$)!]S9^@O.6D;HfoN4zp6pS>kyBc+je7I{7uA.!RO^W?=%KYtA6[1J9^bP', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359531195;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359539544;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:41:"http://localhost/~lamotte/festival_cinema";s:4:"link";s:117:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~lamotte/festival_cinema/";s:3:"url";s:150:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~lamotte/festival_cinema/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', '>eD.x9&s4PUYcQBZrUI.<<_lL+$`F[TvI~a&h~Fn;id4U)A>M.onaTe$>:q.@|1.', 'yes'),
(113, 'nonce_salt', 'yS2OUyPzc?aW([lhNQTpETr<nIPTHbo*PuMu3|P/V}DbLhw(x&Ck>PSAd1lrtx?t', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(129, 'category_children', 'a:0:{}', 'yes'),
(135, 'theme_mods_twentytwelve', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358344220;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(136, 'current_theme', 'Festival', 'yes'),
(137, 'theme_mods_mytwentytwelve', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358945340;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(171, 'theme_mods_festival', 'a:8:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"background_color";s:6:"e6e6e6";s:16:"background_image";s:78:"http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/fond2.jpg";s:22:"background_image_thumb";s:86:"http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/fond2-150x150.jpg";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:6:"center";s:21:"background_attachment";s:5:"fixed";}', 'yes'),
(196, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1359574734', 'no'),
(197, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(198, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1359574734', 'no'),
(199, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(200, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1359574734', 'no'),
(201, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(202, '_transient_timeout_plugin_slugs', '1359617945', 'no'),
(203, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(204, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1359574745', 'no'),
(205, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(210, '_site_transient_timeout_theme_roots', '1359541344', 'yes'),
(211, '_site_transient_theme_roots', 'a:4:{s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(212, '_site_transient_timeout_wporg_theme_feature_list', '1359550347', 'yes'),
(213, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=260 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1358175376:1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1359536145:1'),
(7, 4, '_wp_trash_meta_status', 'draft'),
(8, 4, '_wp_trash_meta_time', '1358175920'),
(9, 8, '_edit_last', '1'),
(10, 8, '_edit_lock', '1358346041:1'),
(14, 15, '_edit_last', '1'),
(15, 15, '_edit_lock', '1358345193:1'),
(17, 17, '_edit_last', '1'),
(18, 17, '_edit_lock', '1358346024:1'),
(20, 19, '_edit_last', '1'),
(21, 19, '_edit_lock', '1358346006:1'),
(23, 21, '_edit_last', '1'),
(24, 21, '_edit_lock', '1358346261:1'),
(26, 23, '_edit_last', '1'),
(27, 23, '_edit_lock', '1358346227:1'),
(29, 25, '_edit_last', '1'),
(30, 25, '_edit_lock', '1358345937:1'),
(39, 34, '_edit_last', '1'),
(40, 34, '_edit_lock', '1358348237:1'),
(42, 36, '_edit_last', '1'),
(43, 36, '_edit_lock', '1358345872:1'),
(44, 36, 'Réalisateur', 'Lucía Puenzo'),
(45, 36, 'Pays', 'Argentine'),
(46, 36, 'Année', '2008'),
(47, 36, 'Durée', '1h36'),
(48, 36, 'Interprétation', 'Inés Efron, Mariela Vitale, Pep Munne'),
(50, 34, 'Réalisateur', 'Roberto Castón'),
(51, 34, 'Pays', 'Espagne'),
(52, 34, 'Année', '2009'),
(53, 34, 'Durée', '2h08'),
(54, 34, 'Interprétation', 'Josean Bengoetxea, Eriz Alberdi, Christian Esquive'),
(56, 25, 'Réalisateur', 'Debra Chasnoff'),
(57, 25, 'Pays', 'Etats-Unis'),
(58, 25, 'Année', '1996'),
(59, 25, 'Durée', '01h20'),
(61, 23, 'Réalisateur', 'Patricia & Colette'),
(62, 23, 'Pays', 'France'),
(63, 23, 'Année', '2008'),
(64, 23, 'Durée', '4 minutes'),
(66, 21, 'Réalisateur', 'Jean Baptiste Erreca'),
(67, 21, 'Pays', 'France'),
(68, 21, 'Année', '2006'),
(69, 21, 'Durée', '26 minutes'),
(71, 19, 'Réalisateur', 'René Guerra Luiz'),
(72, 19, 'Pays', 'Brésil'),
(73, 19, 'Année', '2008'),
(74, 19, 'Durée', '17 minutes'),
(76, 17, 'Réalisateur', 'Bénédicte Delgéhier'),
(77, 17, 'Pays', 'France'),
(78, 17, 'Année', '2006'),
(79, 17, 'Durée', '10 minutes'),
(81, 15, 'Réalisateur', 'Sébastien Gabriel'),
(82, 15, 'Pays', 'France'),
(83, 15, 'Année', '2009'),
(84, 15, 'Durée', '9 minutes'),
(86, 8, 'Réalisateur', 'Céline Sciamma'),
(87, 8, 'Pays', 'France'),
(88, 8, 'Année', '2009'),
(89, 8, 'Durée', '7 minutes'),
(91, 5, 'Réalisateur', 'Pascal-Alex Vincent'),
(92, 5, 'Pays', 'France'),
(93, 5, 'Année', '2009'),
(94, 5, 'Durée', '8 minutes'),
(96, 51, '_edit_last', '1'),
(97, 51, '_edit_lock', '1358947031:1'),
(98, 51, 'Réalisateur', 'Shamim Sarif'),
(99, 51, 'Pays', 'Grande Bretagne'),
(100, 51, 'Année', '2007'),
(101, 51, 'Durée', '1h20'),
(102, 51, 'Interprétation', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(104, 53, '_edit_last', '1'),
(105, 53, '_edit_lock', '1358178647:1'),
(106, 53, '_wp_page_template', 'default'),
(107, 55, '_edit_last', '1'),
(108, 55, '_edit_lock', '1359538428:1'),
(109, 55, '_wp_page_template', 'default'),
(110, 57, '_edit_last', '1'),
(111, 57, '_edit_lock', '1359538264:1'),
(112, 57, '_wp_page_template', 'default'),
(113, 59, '_edit_last', '1'),
(114, 59, '_edit_lock', '1359538180:1'),
(115, 59, '_wp_page_template', 'default'),
(116, 53, '_wp_trash_meta_status', 'publish'),
(117, 53, '_wp_trash_meta_time', '1358179058'),
(118, 2, '_wp_trash_meta_status', 'publish'),
(119, 2, '_wp_trash_meta_time', '1358344253'),
(120, 63, '_edit_last', '1'),
(121, 63, '_edit_lock', '1359539661:1'),
(122, 63, '_wp_page_template', 'default'),
(123, 66, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(124, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(125, 66, '_wp_attachment_image_alt', 'Image du court-métrage Omar'),
(126, 15, '_thumbnail_id', '66'),
(128, 68, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(129, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(130, 51, '_thumbnail_id', '68'),
(132, 71, '_wp_attached_file', '2013/01/37_it_s_still_elementary.jpg'),
(133, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:584;s:4:"file";s:36:"2013/01/37_it_s_still_elementary.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-624x355.jpg";s:5:"width";i:624;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(134, 72, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(135, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:576;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(136, 73, '_wp_attached_file', '2013/01/COWBOY_FOREVER.jpg'),
(137, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:26:"2013/01/COWBOY_FOREVER.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY_FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY_FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY_FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(138, 74, '_wp_attached_file', '2013/01/EL_NINO_PEZ_1.jpg'),
(139, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:700;s:4:"file";s:25:"2013/01/EL_NINO_PEZ_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL_NINO_PEZ_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL_NINO_PEZ_1-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL_NINO_PEZ_1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(142, 76, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(143, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:768;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"ItsElementaryGBan-300x256.jpg";s:5:"width";i:300;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-624x532.jpg";s:5:"width";i:624;s:6:"height";i:532;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(144, 77, '_wp_attached_file', '2013/01/Odile_.jpg'),
(145, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:693;s:4:"file";s:18:"2013/01/Odile_.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile_-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile_-624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(146, 78, '_wp_attached_file', '2013/01/Os_sapatos_de_Aristeu.jpg'),
(147, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:33:"2013/01/Os_sapatos_de_Aristeu.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Os_sapatos_de_Aristeu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Os_sapatos_de_Aristeu-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"Os_sapatos_de_Aristeu-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(148, 79, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(149, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(150, 71, '_edit_lock', '1358345582:1'),
(151, 71, '_edit_last', '1'),
(152, 80, '_wp_attached_file', '2013/01/ANDER2.jpg'),
(153, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:576;s:4:"file";s:18:"2013/01/ANDER2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER2-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER2-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(154, 81, '_wp_attached_file', '2013/01/EL_NINO_PEZ__2.jpg'),
(155, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:519;s:6:"height";i:768;s:4:"file";s:26:"2013/01/EL_NINO_PEZ__2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"EL_NINO_PEZ__2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"EL_NINO_PEZ__2-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(156, 82, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(157, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:670;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(158, 83, '_wp_attached_file', '2013/01/I_cant_think_straight_2.jpg'),
(159, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:35:"2013/01/I_cant_think_straight_2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"I_cant_think_straight_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"I_cant_think_straight_2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"I_cant_think_straight_2-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(160, 84, '_menu_item_type', 'post_type'),
(161, 84, '_menu_item_menu_item_parent', '0'),
(162, 84, '_menu_item_object_id', '63'),
(163, 84, '_menu_item_object', 'page'),
(164, 84, '_menu_item_target', ''),
(165, 84, '_menu_item_classes', 'a:1:{i:0;s:6:"fg-red";}'),
(166, 84, '_menu_item_xfn', ''),
(167, 84, '_menu_item_url', ''),
(169, 85, '_menu_item_type', 'taxonomy'),
(170, 85, '_menu_item_menu_item_parent', '0'),
(171, 85, '_menu_item_object_id', '3'),
(172, 85, '_menu_item_object', 'category'),
(173, 85, '_menu_item_target', ''),
(174, 85, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-yellow";}'),
(175, 85, '_menu_item_xfn', ''),
(176, 85, '_menu_item_url', ''),
(178, 86, '_menu_item_type', 'taxonomy'),
(179, 86, '_menu_item_menu_item_parent', '0'),
(180, 86, '_menu_item_object_id', '2'),
(181, 86, '_menu_item_object', 'category'),
(182, 86, '_menu_item_target', ''),
(183, 86, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-orange";}'),
(184, 86, '_menu_item_xfn', ''),
(185, 86, '_menu_item_url', ''),
(187, 87, '_menu_item_type', 'post_type'),
(188, 87, '_menu_item_menu_item_parent', '0'),
(189, 87, '_menu_item_object_id', '59'),
(190, 87, '_menu_item_object', 'page'),
(191, 87, '_menu_item_target', ''),
(192, 87, '_menu_item_classes', 'a:1:{i:0;s:12:"fg-blueclair";}'),
(193, 87, '_menu_item_xfn', ''),
(194, 87, '_menu_item_url', ''),
(196, 88, '_menu_item_type', 'post_type'),
(197, 88, '_menu_item_menu_item_parent', '0'),
(198, 88, '_menu_item_object_id', '57'),
(199, 88, '_menu_item_object', 'page'),
(200, 88, '_menu_item_target', ''),
(201, 88, '_menu_item_classes', 'a:1:{i:0;s:12:"fg-bluefonce";}'),
(202, 88, '_menu_item_xfn', ''),
(203, 88, '_menu_item_url', ''),
(205, 89, '_menu_item_type', 'post_type'),
(206, 89, '_menu_item_menu_item_parent', '0'),
(207, 89, '_menu_item_object_id', '55'),
(208, 89, '_menu_item_object', 'page'),
(209, 89, '_menu_item_target', ''),
(210, 89, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-green";}'),
(211, 89, '_menu_item_xfn', ''),
(212, 89, '_menu_item_url', ''),
(214, 36, '_thumbnail_id', '74'),
(216, 34, '_thumbnail_id', '72'),
(218, 25, '_thumbnail_id', '71'),
(220, 19, '_thumbnail_id', '78'),
(222, 17, '_thumbnail_id', '77'),
(224, 8, '_thumbnail_id', '79'),
(226, 5, '_thumbnail_id', '82'),
(228, 1, '_edit_lock', '1358346065:1'),
(229, 1, '_wp_trash_meta_status', 'publish'),
(230, 1, '_wp_trash_meta_time', '1358346182'),
(231, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(232, 98, '_wp_attached_file', '2013/01/American-boy.png'),
(233, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:24:"2013/01/American-boy.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"American-boy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"American-boy-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"American-boy-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(234, 23, '_thumbnail_id', '98'),
(236, 100, '_wp_attached_file', '2013/01/COWBOY_FOREVER1.jpg'),
(237, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:27:"2013/01/COWBOY_FOREVER1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"COWBOY_FOREVER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"COWBOY_FOREVER1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"COWBOY_FOREVER1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(238, 21, '_thumbnail_id', '100'),
(256, 109, '_wp_attached_file', '2013/01/fond2.jpg'),
(257, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1022;s:6:"height";i:531;s:4:"file";s:17:"2013/01/fond2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"fond2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"fond2-300x155.jpg";s:5:"width";i:300;s:6:"height";i:155;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"fond2-624x324.jpg";s:5:"width";i:624;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(258, 109, '_wp_attachment_is_custom_background', 'festival'),
(259, 109, '_edit_lock', '1359536045:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-14 14:45:38', '2013-01-14 14:45:38', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-16 15:23:02', '2013-01-16 14:23:02', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-14 14:45:38', '2013-01-14 14:45:38', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~lamotte/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2013-01-16 14:50:53', '2013-01-16 13:50:53', '', 0, 'http://localhost/~lamotte/festival_cinema/?page_id=2', 0, 'page', '', 0),
(4, 1, '2013-01-14 15:56:15', '2013-01-14 14:56:15', '2009 - 8 minutes\n\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'trash', 'open', 'open', '', 'en-colo-pascal-alex-vincent-france-2', '', '', '2013-01-14 16:05:20', '2013-01-14 15:05:20', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=4', 0, 'post', '', 0),
(5, 1, '2013-01-14 16:04:04', '2013-01-14 15:04:04', 'Synopsis :\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'publish', 'open', 'open', '', 'en-colo-pascal-alex-vincent-france', '', '', '2013-01-16 15:22:48', '2013-01-16 14:22:48', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=5', 0, 'post', '', 0),
(6, 1, '2013-01-14 16:03:54', '2013-01-14 15:03:54', '2009 - 8 minutes\n\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '5-revision', '', '', '2013-01-14 16:03:54', '2013-01-14 15:03:54', '', 5, 'http://localhost/~lamotte/festival_cinema/?p=6', 0, 'revision', '', 0),
(7, 1, '2013-01-14 15:56:15', '2013-01-14 14:56:15', '2009 - 8 minutes\n\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2013-01-14 15:56:15', '2013-01-14 14:56:15', '', 4, 'http://localhost/~lamotte/festival_cinema/?p=7', 0, 'revision', '', 0),
(8, 1, '2013-01-14 16:06:46', '2013-01-14 15:06:46', 'Synopsis :\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'publish', 'open', 'open', '', 'pauline-celine-sciamma-france', '', '', '2013-01-16 15:22:32', '2013-01-16 14:22:32', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=8', 0, 'post', '', 0),
(9, 1, '2013-01-14 16:06:33', '2013-01-14 15:06:33', '2009 - 7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline - Céline Sciamma - France', '', 'inherit', 'open', 'open', '', '8-revision', '', '', '2013-01-14 16:06:33', '2013-01-14 15:06:33', '', 8, 'http://localhost/~lamotte/festival_cinema/?p=9', 0, 'revision', '', 0),
(10, 1, '2013-01-14 16:43:44', '2013-01-14 15:43:44', 'Synopsis :\n\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '8-autosave', '', '', '2013-01-14 16:43:44', '2013-01-14 15:43:44', '', 8, 'http://localhost/~lamotte/festival_cinema/?p=10', 0, 'revision', '', 0),
(12, 1, '2013-01-30 09:56:06', '2013-01-30 08:56:06', 'Synopsis :\n\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '5-autosave', '', '', '2013-01-30 09:56:06', '2013-01-30 08:56:06', '', 5, 'http://localhost/~lamotte/festival_cinema/?p=12', 0, 'revision', '', 0),
(13, 1, '2013-01-14 16:04:04', '2013-01-14 15:04:04', '2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '5-revision-2', '', '', '2013-01-14 16:04:04', '2013-01-14 15:04:04', '', 5, 'http://localhost/~lamotte/festival_cinema/?p=13', 0, 'revision', '', 0),
(14, 1, '2013-01-14 16:06:46', '2013-01-14 15:06:46', '2009 - 7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline - Céline Sciamma - France', '', 'inherit', 'open', 'open', '', '8-revision-2', '', '', '2013-01-14 16:06:46', '2013-01-14 15:06:46', '', 8, 'http://localhost/~lamotte/festival_cinema/?p=14', 0, 'revision', '', 0),
(15, 1, '2013-01-14 16:13:14', '2013-01-14 15:13:14', 'Synopsis :\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'publish', 'open', 'open', '', 'omar', '', '', '2013-01-16 15:08:14', '2013-01-16 14:08:14', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=15', 0, 'post', '', 0),
(16, 1, '2013-01-14 16:12:46', '2013-01-14 15:12:46', 'Synopsis :\n\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\n\nRéalisateur Sébastien Gabriel - France - 2009 - 9 minutes', 'Omar', '', 'inherit', 'open', 'open', '', '15-revision', '', '', '2013-01-14 16:12:46', '2013-01-14 15:12:46', '', 15, 'http://localhost/~lamotte/festival_cinema/?p=16', 0, 'revision', '', 0),
(17, 1, '2013-01-14 16:14:43', '2013-01-14 15:14:43', 'Synopsis :\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'publish', 'open', 'open', '', 'odile', '', '', '2013-01-16 15:22:15', '2013-01-16 14:22:15', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=17', 0, 'post', '', 0),
(18, 1, '2013-01-14 16:14:21', '2013-01-14 15:14:21', 'Synopsis :\n\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...\n\nRéalisateur : Bénédicte Delgéhier\n\nPFrance - 2006- 10 minutes', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision', '', '', '2013-01-14 16:14:21', '2013-01-14 15:14:21', '', 17, 'http://localhost/~lamotte/festival_cinema/?p=18', 0, 'revision', '', 0),
(19, 1, '2013-01-14 16:16:59', '2013-01-14 15:16:59', 'Synopsis :\r\n\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu (Version originale sous-titrée)', '', 'publish', 'open', 'open', '', 'os-sapatos-de-aristeu-version-originale-sous-titree', '', '', '2013-01-16 15:21:58', '2013-01-16 14:21:58', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=19', 0, 'post', '', 0),
(20, 1, '2013-01-14 16:16:48', '2013-01-14 15:16:48', 'Synopsis :\n\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.\n\nRéalisateur : René Guerra Luiz\n\nPays : Brésil\n\nAnnée : 2008\n\nDurée : 17 minutes', 'Os sapatos de Aristeu (Version originale sous-t)', '', 'inherit', 'open', 'open', '', '19-revision', '', '', '2013-01-14 16:16:48', '2013-01-14 15:16:48', '', 19, 'http://localhost/~lamotte/festival_cinema/?p=20', 0, 'revision', '', 0),
(21, 1, '2013-01-14 16:18:49', '2013-01-14 15:18:49', 'Synopsis :\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy forever', '', 'publish', 'open', 'open', '', 'cowboy-forever', '', '', '2013-01-16 15:26:07', '2013-01-16 14:26:07', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=21', 0, 'post', '', 0),
(22, 1, '2013-01-14 16:18:10', '2013-01-14 15:18:10', 'Synopsis :\n\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...\n\nJean Baptiste Erreca - France 2006 - 26 minutes', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision', '', '', '2013-01-14 16:18:10', '2013-01-14 15:18:10', '', 21, 'http://localhost/~lamotte/festival_cinema/?p=22', 0, 'revision', '', 0),
(23, 1, '2013-01-14 16:20:53', '2013-01-14 15:20:53', 'Comment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'publish', 'open', 'open', '', 'american-boy', '', '', '2013-01-16 15:25:38', '2013-01-16 14:25:38', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=23', 0, 'post', '', 0),
(24, 1, '2013-01-14 16:19:58', '2013-01-14 15:19:58', 'Synopsis :\n\nComment jouer du genre en chanson ?\n\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.\n\n&nbsp;', 'American Boy', '', 'inherit', 'open', 'open', '', '23-revision', '', '', '2013-01-14 16:19:58', '2013-01-14 15:19:58', '', 23, 'http://localhost/~lamotte/festival_cinema/?p=24', 0, 'revision', '', 0),
(25, 1, '2013-01-14 16:23:13', '2013-01-14 15:23:13', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'open', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-01-16 15:20:48', '2013-01-16 14:20:48', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=25', 0, 'post', '', 0),
(26, 1, '2013-01-14 16:23:08', '2013-01-14 15:23:08', '(C’est élémentaire - Parler de l’homosexualité à l’école)\n\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\n\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '25-revision', '', '', '2013-01-14 16:23:08', '2013-01-14 15:23:08', '', 25, 'http://localhost/~lamotte/festival_cinema/?p=26', 0, 'revision', '', 0),
(27, 1, '2013-01-14 16:20:53', '2013-01-14 15:20:53', 'Synopsis :\r\n\r\nComment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.\r\n\r\nRéalisateurs : Patricia &amp; Colette\r\n\r\nPays : France\r\n\r\nAnnée : 2008\r\n\r\nDurée : 4 minutes', 'American Boy', '', 'inherit', 'open', 'open', '', '23-revision-2', '', '', '2013-01-14 16:20:53', '2013-01-14 15:20:53', '', 23, 'http://localhost/~lamotte/festival_cinema/?p=27', 0, 'revision', '', 0),
(28, 1, '2013-01-14 16:18:49', '2013-01-14 15:18:49', 'Synopsis :\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...\r\n\r\nRéalisateur : Jean Baptiste Erreca\r\n\r\nPays : France\r\n\r\nAnnée : 2006\r\n\r\nDurée : 26 minutes', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision-2', '', '', '2013-01-14 16:18:49', '2013-01-14 15:18:49', '', 21, 'http://localhost/~lamotte/festival_cinema/?p=28', 0, 'revision', '', 0),
(29, 1, '2013-01-14 16:16:59', '2013-01-14 15:16:59', 'Synopsis :\r\n\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.\r\n\r\nRéalisateur : René Guerra Luiz\r\n\r\nPays : Brésil\r\n\r\nAnnée : 2008\r\n\r\nDurée : 17 minutes', 'Os sapatos de Aristeu (Version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '19-revision-2', '', '', '2013-01-14 16:16:59', '2013-01-14 15:16:59', '', 19, 'http://localhost/~lamotte/festival_cinema/?p=29', 0, 'revision', '', 0),
(30, 1, '2013-01-14 16:14:43', '2013-01-14 15:14:43', 'Synopsis :\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...\r\n\r\nRéalisateur : Bénédicte Delgéhier\r\n\r\nPays : France\r\n\r\nAnnée : 2006\r\n\r\nDurée : 10 minutes', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision-2', '', '', '2013-01-14 16:14:43', '2013-01-14 15:14:43', '', 17, 'http://localhost/~lamotte/festival_cinema/?p=30', 0, 'revision', '', 0),
(31, 1, '2013-01-14 16:13:14', '2013-01-14 15:13:14', 'Synopsis :\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\r\n\r\nRéalisateur : Sébastien Gabriel\r\n\r\nPays : France\r\n\r\nAnnée : 2009\r\n\r\nDurée : 9 minutes', 'Omar', '', 'inherit', 'open', 'open', '', '15-revision-2', '', '', '2013-01-14 16:13:14', '2013-01-14 15:13:14', '', 15, 'http://localhost/~lamotte/festival_cinema/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-01-14 16:11:35', '2013-01-14 15:11:35', 'Synopsis :\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\r\n\r\nRéalisateur : Céline Sciamma\r\n\r\nPays : France\r\n\r\nAnnée : 2009\r\n\r\nDurée : 7 minutes', 'Pauline', '', 'inherit', 'open', 'open', '', '8-revision-3', '', '', '2013-01-14 16:11:35', '2013-01-14 15:11:35', '', 8, 'http://localhost/~lamotte/festival_cinema/?p=32', 0, 'revision', '', 0),
(33, 1, '2013-01-14 16:10:03', '2013-01-14 15:10:03', 'Synopsis :\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\r\n\r\nRéalisateur : Pascal-Alex Vincent\r\n\r\nPays : France\r\n\r\nAnnée : 2009\r\n\r\nDurée : 8 minutes', 'En colo', '', 'inherit', 'open', 'open', '', '5-revision-3', '', '', '2013-01-14 16:10:03', '2013-01-14 15:10:03', '', 5, 'http://localhost/~lamotte/festival_cinema/?p=33', 0, 'revision', '', 0),
(34, 1, '2013-01-14 16:27:12', '2013-01-14 15:27:12', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'Ander (version originale sous-titrée)', '', 'publish', 'open', 'open', '', 'ander', '', '', '2013-01-16 15:20:16', '2013-01-16 14:20:16', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=34', 0, 'post', '', 0),
(35, 1, '2013-01-14 16:26:20', '2013-01-14 15:26:20', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\n\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'Ander', '', 'inherit', 'open', 'open', '', '34-revision', '', '', '2013-01-14 16:26:20', '2013-01-14 15:26:20', '', 34, 'http://localhost/~lamotte/festival_cinema/?p=35', 0, 'revision', '', 0),
(36, 1, '2013-01-14 16:32:02', '2013-01-14 15:32:02', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'El nino pez (version originale sous-titrée)', '', 'publish', 'open', 'open', '', 'el-nino-pez-version-originale-sous-titree', '', '', '2013-01-16 15:19:39', '2013-01-16 14:19:39', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=36', 0, 'post', '', 0),
(37, 1, '2013-01-14 16:31:25', '2013-01-14 15:31:25', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\n\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'El nino pez (version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '36-revision', '', '', '2013-01-14 16:31:25', '2013-01-14 15:31:25', '', 36, 'http://localhost/~lamotte/festival_cinema/?p=37', 0, 'revision', '', 0),
(38, 1, '2013-01-16 15:35:52', '2013-01-16 14:35:52', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\n\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\n\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\n\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\n\nPrix C.I.C.A.E – Festival International de Berlin (2009)\n\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\n\nGrand prix du jury – Festival Cinehorizontes (2009)', 'Ander (version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '34-autosave', '', '', '2013-01-16 15:35:52', '2013-01-16 14:35:52', '', 34, 'http://localhost/~lamotte/festival_cinema/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-01-14 16:27:12', '2013-01-14 15:27:12', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'Ander', '', 'inherit', 'open', 'open', '', '34-revision-2', '', '', '2013-01-14 16:27:12', '2013-01-14 15:27:12', '', 34, 'http://localhost/~lamotte/festival_cinema/?p=39', 0, 'revision', '', 0),
(40, 1, '2013-01-14 16:35:47', '2013-01-14 15:35:47', '(C’est élémentaire - Parler de l’homosexualité à l’école)\n\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\n\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '25-autosave', '', '', '2013-01-14 16:35:47', '2013-01-14 15:35:47', '', 25, 'http://localhost/~lamotte/festival_cinema/?p=40', 0, 'revision', '', 0),
(41, 1, '2013-01-14 16:23:13', '2013-01-14 15:23:13', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '25-revision-2', '', '', '2013-01-14 16:23:13', '2013-01-14 15:23:13', '', 25, 'http://localhost/~lamotte/festival_cinema/?p=41', 0, 'revision', '', 0),
(42, 1, '2013-01-14 16:37:44', '2013-01-14 15:37:44', 'Comment jouer du genre en chanson ?\n\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.\n\nPatricia &amp; Colette - France\n\n===============================================\n\n2008 - 4 minutes', 'American Boy', '', 'inherit', 'open', 'open', '', '23-autosave', '', '', '2013-01-14 16:37:44', '2013-01-14 15:37:44', '', 23, 'http://localhost/~lamotte/festival_cinema/?p=42', 0, 'revision', '', 0),
(43, 1, '2013-01-14 16:23:47', '2013-01-14 15:23:47', 'Comment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'open', 'open', '', '23-revision-3', '', '', '2013-01-14 16:23:47', '2013-01-14 15:23:47', '', 23, 'http://localhost/~lamotte/festival_cinema/?p=43', 0, 'revision', '', 0),
(44, 1, '2013-01-14 16:24:03', '2013-01-14 15:24:03', 'Synopsis :\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision-3', '', '', '2013-01-14 16:24:03', '2013-01-14 15:24:03', '', 21, 'http://localhost/~lamotte/festival_cinema/?p=44', 0, 'revision', '', 0),
(45, 1, '2013-01-14 16:40:20', '2013-01-14 15:40:20', 'Synopsis :\n\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.\n\nRené Guerra Luiz - Brésil - 2008\n\n=============================================================\n\n17 minutes - VOSTF', 'Os sapatos de Aristeu (Version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '19-autosave', '', '', '2013-01-14 16:40:20', '2013-01-14 15:40:20', '', 19, 'http://localhost/~lamotte/festival_cinema/?p=45', 0, 'revision', '', 0),
(46, 1, '2013-01-14 16:24:20', '2013-01-14 15:24:20', 'Synopsis :\r\n\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu (Version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '19-revision-3', '', '', '2013-01-14 16:24:20', '2013-01-14 15:24:20', '', 19, 'http://localhost/~lamotte/festival_cinema/?p=46', 0, 'revision', '', 0),
(47, 1, '2013-01-14 16:24:33', '2013-01-14 15:24:33', 'Synopsis :\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision-3', '', '', '2013-01-14 16:24:33', '2013-01-14 15:24:33', '', 17, 'http://localhost/~lamotte/festival_cinema/?p=47', 0, 'revision', '', 0),
(48, 1, '2013-01-14 16:24:48', '2013-01-14 15:24:48', 'Synopsis :\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '15-revision-3', '', '', '2013-01-14 16:24:48', '2013-01-14 15:24:48', '', 15, 'http://localhost/~lamotte/festival_cinema/?p=48', 0, 'revision', '', 0),
(49, 1, '2013-01-14 16:25:01', '2013-01-14 15:25:01', 'Synopsis :\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '8-revision-4', '', '', '2013-01-14 16:25:01', '2013-01-14 15:25:01', '', 8, 'http://localhost/~lamotte/festival_cinema/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-01-14 16:25:15', '2013-01-14 15:25:15', 'Synopsis :\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '5-revision-4', '', '', '2013-01-14 16:25:15', '2013-01-14 15:25:15', '', 5, 'http://localhost/~lamotte/festival_cinema/?p=50', 0, 'revision', '', 0),
(51, 1, '2013-01-14 16:48:07', '2013-01-14 15:48:07', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'Can''t think straight (version originale sous-titrée)', '', 'publish', 'open', 'open', '', 'cant-think-straight-version-originale-sous-titree', '', '', '2013-01-16 15:11:42', '2013-01-16 14:11:42', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=51', 0, 'post', '', 0),
(52, 1, '2013-01-14 16:47:19', '2013-01-14 15:47:19', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\n\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\n\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\n\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\n\nShamim Sarif\n\nGrande Bretagne - 2007 - 01h20 - Comédie romantique', 'Can''t think straight', '', 'inherit', 'open', 'open', '', '51-revision', '', '', '2013-01-14 16:47:19', '2013-01-14 15:47:19', '', 51, 'http://localhost/~lamotte/festival_cinema/?p=52', 0, 'revision', '', 0),
(53, 1, '2013-01-14 16:51:55', '2013-01-14 15:51:55', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'trash', 'open', 'open', '', 'edito', '', '', '2013-01-14 16:57:38', '2013-01-14 15:57:38', '', 0, 'http://localhost/~lamotte/festival_cinema/?page_id=53', 0, 'page', '', 0),
(54, 1, '2013-01-14 16:51:41', '2013-01-14 15:51:41', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\n\nBon festival !\n\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '53-revision', '', '', '2013-01-14 16:51:41', '2013-01-14 15:51:41', '', 53, 'http://localhost/~lamotte/festival_cinema/?p=54', 0, 'revision', '', 0),
(55, 1, '2013-01-14 16:55:23', '2013-01-14 15:55:23', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n&nbsp;\r\n\r\nTarifs :\r\n<ul>\r\n	<li>Plein tarif : 7,50 €</li>\r\n	<li>Pass Festival : 25 € (5 séances)</li>\r\n	<li>Soirée courts métrages : 6 € (vendredi)</li>\r\n	<li>2 séances consécutives le samedi ou le dimanche : 12 €</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\nCartes &amp; réductions acceptées :\r\n<ul>\r\n	<li>Cartes DECOUVERTE &amp; PASSION</li>\r\n	<li>titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n&nbsp;\r\n\r\nEquipe :\r\n<ul>\r\n	<li>Direction artistique : Christel Guillard (Présidente de Ciné Mundi)</li>\r\n	<li>Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)</li>\r\n	<li>Communication &amp; partenariats : Christel Guillard</li>\r\n	<li>Conception graphique : Yannis Bellair</li>\r\n	<li>Conception du site internet : rccc</li>\r\n	<li>Impression : Prevost Offset</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\nContacts :\r\n<ul>\r\n	<li>festival.dunbordalautre@gmail.com</li>\r\n	<li>www.festivaldunbordalautre.com</li>\r\n</ul>', 'Infos pratiques', '', 'publish', 'closed', 'closed', '', 'informations-pratiques', '', '', '2013-01-30 10:57:01', '2013-01-30 09:57:01', '', 0, 'http://localhost/~lamotte/festival_cinema/?page_id=55', 0, 'page', '', 0),
(56, 1, '2013-01-14 16:54:43', '2013-01-14 15:54:43', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n\n&nbsp;\n\nTarifs :\n\nPlein tarif : 7,50 €\n\nPass Festival : 25 € (5 séances)\n\nSoirée courts métrages : 6 € (vendredi)\n\n2 séances consécutives le samedi ou le dimanche : 12 €\n\n&nbsp;\n\nCartes &amp; réductions acceptées :\n\nCartes DECOUVERTE &amp; PASSION,\n\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\n\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\nEquipe :\n\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\n\nProgrammation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\n\nCommunication &amp; partenariats : Christel Guillard\n\nConception graphique : Yannis Bellair\n\nConception du site internet : rccc\n\nImpression : Prevost Offset\n\nContacts :\n\nfestival.dunbordalautre@gmail.com\n\nwww.festivaldunbordalautre.com', 'Informations pratiques', '', 'inherit', 'open', 'open', '', '55-revision', '', '', '2013-01-14 16:54:43', '2013-01-14 15:54:43', '', 55, 'http://localhost/~lamotte/festival_cinema/?p=56', 0, 'revision', '', 0),
(57, 1, '2013-01-14 16:56:53', '2013-01-14 15:56:53', '<ul>\r\n	<li>La Région Centre</li>\r\n	<li>La Mairie d''Orléans</li>\r\n	<li>Le cinéma des Carmes</li>\r\n	<li>Le Groupe Action Gay &amp; Lesbien</li>\r\n	<li>Loiret</li>\r\n	<li>Citégay</li>\r\n	<li>La dixième Muse</li>\r\n	<li>Têtu</li>\r\n	<li>Yagg.com</li>\r\n	<li>France Bleu Orléans</li>\r\n	<li>Bagdam Espace Lesbien ( Toulouse )</li>\r\n	<li>Cineffable - Le Festival Tous Courts ( Aix en Provence )</li>\r\n	<li>Les VidéObstinées</li>\r\n</ul>', 'Remerciements', '', 'publish', 'closed', 'open', '', 'remerciements', '', '', '2013-01-30 10:57:01', '2013-01-30 09:57:01', '', 0, 'http://localhost/~lamotte/festival_cinema/?page_id=57', 0, 'page', '', 0),
(58, 1, '2013-01-14 16:56:51', '2013-01-14 15:56:51', '- La Région Centre\n\n- La Mairie d''Orléans\n\n- Le cinéma des Carmes\n\n- Le Groupe Action Gay &amp; Lesbien\n\n- Loiret\n\n- Citégay\n\n- La dixième Muse\n\n- Têtu\n\n- Yagg.com\n\n- France Bleu Orléans\n\n- Bagdam Espace Lesbien ( Toulouse )\n\n- Cineffable - Le Festival Tous Courts ( Aix en Provence )\n\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '57-revision', '', '', '2013-01-14 16:56:51', '2013-01-14 15:56:51', '', 57, 'http://localhost/~lamotte/festival_cinema/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-01-14 16:57:33', '2013-01-14 15:57:33', '<ul>\r\n	<li>Région Centre</li>\r\n	<li>Orléans</li>\r\n	<li>Cinéma des Carmes</li>\r\n	<li>GAGL</li>\r\n	<li>Têtu</li>\r\n	<li>La dixième MUSE</li>\r\n	<li>CiteGay</li>\r\n	<li>Yagg.com</li>\r\n	<li>France Bleu</li>\r\n</ul>', 'Partenaires', '', 'publish', 'closed', 'open', '', 'partenaires', '', '', '2013-01-30 10:57:01', '2013-01-30 09:57:01', '', 0, 'http://localhost/~lamotte/festival_cinema/?page_id=59', 0, 'page', '', 0),
(60, 1, '2013-01-14 16:57:09', '2013-01-14 15:57:09', '', 'Partenaires', '', 'inherit', 'open', 'open', '', '59-revision', '', '', '2013-01-14 16:57:09', '2013-01-14 15:57:09', '', 59, 'http://localhost/~lamotte/festival_cinema/?p=60', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(61, 1, '2013-01-14 16:51:55', '2013-01-14 15:51:55', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '53-revision-2', '', '', '2013-01-14 16:51:55', '2013-01-14 15:51:55', '', 53, 'http://localhost/~lamotte/festival_cinema/?p=61', 0, 'revision', '', 0),
(62, 1, '2013-01-14 14:45:38', '2013-01-14 14:45:38', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~lamotte/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-01-14 14:45:38', '2013-01-14 14:45:38', '', 2, 'http://localhost/~lamotte/festival_cinema/?p=62', 0, 'revision', '', 0),
(63, 1, '2013-01-16 14:56:09', '2013-01-16 13:56:09', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'closed', 'open', '', 'edito-2', '', '', '2013-01-30 10:57:00', '2013-01-30 09:57:00', '', 0, 'http://localhost/~lamotte/festival_cinema/?page_id=63', 0, 'page', '', 0),
(64, 1, '2013-01-16 14:55:50', '2013-01-16 13:55:50', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '63-revision', '', '', '2013-01-16 14:55:50', '2013-01-16 13:55:50', '', 63, 'http://localhost/~lamotte/festival_cinema/?p=64', 0, 'revision', '', 0),
(65, 1, '2013-01-16 15:04:32', '2013-01-16 14:04:32', 'Synopsis :\n\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '15-autosave', '', '', '2013-01-16 15:04:32', '2013-01-16 14:04:32', '', 15, 'http://localhost/~lamotte/festival_cinema/?p=65', 0, 'revision', '', 0),
(66, 1, '2013-01-16 15:05:43', '2013-01-16 14:05:43', '', 'Omar', 'Sébastien Gabriel - France - 2009 - 9 minutes', 'inherit', 'open', 'open', '', 'omar_', '', '', '2013-01-16 15:05:43', '2013-01-16 14:05:43', '', 15, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2013-01-14 16:42:36', '2013-01-14 15:42:36', 'Synopsis :\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '15-revision-4', '', '', '2013-01-14 16:42:36', '2013-01-14 15:42:36', '', 15, 'http://localhost/~lamotte/festival_cinema/?p=67', 0, 'revision', '', 0),
(68, 1, '2013-01-16 15:10:51', '2013-01-16 14:10:51', '', 'I cant think straight', 'Réalisé par Shamim Sarif', 'inherit', 'open', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-16 15:10:51', '2013-01-16 14:10:51', '', 51, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2013-01-23 14:13:24', '2013-01-23 13:13:24', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\n\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\n\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\n\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'Can''t think straight (version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '51-autosave', '', '', '2013-01-23 14:13:24', '2013-01-23 13:13:24', '', 51, 'http://localhost/~lamotte/festival_cinema/?p=69', 0, 'revision', '', 0),
(70, 1, '2013-01-14 16:48:07', '2013-01-14 15:48:07', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'Can''t think straight (version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '51-revision-2', '', '', '2013-01-14 16:48:07', '2013-01-14 15:48:07', '', 51, 'http://localhost/~lamotte/festival_cinema/?p=70', 0, 'revision', '', 0),
(71, 1, '2013-01-16 15:12:09', '2013-01-16 14:12:09', '', 'it''s still elementary', 'it''s still elementary, talking about gays issues in school.\n', 'inherit', 'open', 'open', '', '37_it_s_still_elementary', '', '', '2013-01-16 15:12:09', '2013-01-16 14:12:09', '', 25, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/37_it_s_still_elementary.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2013-01-16 15:12:10', '2013-01-16 14:12:10', '', 'ANDER1', '', 'inherit', 'open', 'open', '', 'ander1', '', '', '2013-01-16 15:12:10', '2013-01-16 14:12:10', '', 34, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2013-01-16 15:12:10', '2013-01-16 14:12:10', '', 'COWBOY_FOREVER', '', 'inherit', 'open', 'open', '', 'cowboy_forever', '', '', '2013-01-16 15:12:10', '2013-01-16 14:12:10', '', 21, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/COWBOY_FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2013-01-16 15:12:10', '2013-01-16 14:12:10', '', 'EL_NINO_PEZ_1', '', 'inherit', 'open', 'open', '', 'el_nino_pez_1', '', '', '2013-01-16 15:12:10', '2013-01-16 14:12:10', '', 36, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/EL_NINO_PEZ_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2013-01-16 15:12:11', '2013-01-16 14:12:11', '', 'ItsElementaryGBan', '', 'inherit', 'open', 'open', '', 'itselementarygban', '', '', '2013-01-16 15:12:11', '2013-01-16 14:12:11', '', 25, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2013-01-16 15:12:12', '2013-01-16 14:12:12', '', 'Odile_', '', 'inherit', 'open', 'open', '', 'odile_', '', '', '2013-01-16 15:12:12', '2013-01-16 14:12:12', '', 17, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/Odile_.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2013-01-16 15:12:12', '2013-01-16 14:12:12', '', 'Os_sapatos_de_Aristeu', '', 'inherit', 'open', 'open', '', 'os_sapatos_de_aristeu', '', '', '2013-01-16 15:12:12', '2013-01-16 14:12:12', '', 19, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/Os_sapatos_de_Aristeu.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2013-01-16 15:12:13', '2013-01-16 14:12:13', '', 'PAULINE_1', '', 'inherit', 'open', 'open', '', 'pauline_1', '', '', '2013-01-16 15:12:13', '2013-01-16 14:12:13', '', 8, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2013-01-16 15:15:02', '2013-01-16 14:15:02', '', 'ANDER2', '', 'inherit', 'open', 'open', '', 'ander2', '', '', '2013-01-16 15:15:02', '2013-01-16 14:15:02', '', 34, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/ANDER2.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2013-01-16 15:15:03', '2013-01-16 14:15:03', '', 'EL_NINO_PEZ__2', '', 'inherit', 'open', 'open', '', 'el_nino_pez__2', '', '', '2013-01-16 15:15:03', '2013-01-16 14:15:03', '', 36, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/EL_NINO_PEZ__2.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2013-01-16 15:15:04', '2013-01-16 14:15:04', '', 'EN_COLOricco', '', 'inherit', 'open', 'open', '', 'en_coloricco', '', '', '2013-01-16 15:15:04', '2013-01-16 14:15:04', '', 5, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2013-01-16 15:15:04', '2013-01-16 14:15:04', '', 'I_can''t_think_straight_2', '', 'inherit', 'open', 'open', '', 'i_cant_think_straight_2', '', '', '2013-01-16 15:15:04', '2013-01-16 14:15:04', '', 51, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/I_cant_think_straight_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2013-01-16 15:18:13', '2013-01-16 14:18:13', ' ', '', '', 'publish', 'open', 'open', '', '84', '', '', '2013-01-23 14:38:25', '2013-01-23 13:38:25', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2013-01-16 15:18:14', '2013-01-16 14:18:14', ' ', '', '', 'publish', 'open', 'open', '', '85', '', '', '2013-01-23 14:38:25', '2013-01-23 13:38:25', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=85', 3, 'nav_menu_item', '', 0),
(86, 1, '2013-01-16 15:18:13', '2013-01-16 14:18:13', ' ', '', '', 'publish', 'open', 'open', '', '86', '', '', '2013-01-23 14:38:25', '2013-01-23 13:38:25', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=86', 2, 'nav_menu_item', '', 0),
(87, 1, '2013-01-16 15:18:15', '2013-01-16 14:18:15', ' ', '', '', 'publish', 'open', 'open', '', '87', '', '', '2013-01-23 14:38:25', '2013-01-23 13:38:25', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=87', 5, 'nav_menu_item', '', 0),
(88, 1, '2013-01-16 15:18:15', '2013-01-16 14:18:15', ' ', '', '', 'publish', 'open', 'open', '', '88', '', '', '2013-01-23 14:38:26', '2013-01-23 13:38:26', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=88', 6, 'nav_menu_item', '', 0),
(89, 1, '2013-01-16 15:18:14', '2013-01-16 14:18:14', ' ', '', '', 'publish', 'open', 'open', '', '89', '', '', '2013-01-23 14:38:25', '2013-01-23 13:38:25', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=89', 4, 'nav_menu_item', '', 0),
(90, 1, '2013-01-14 16:32:02', '2013-01-14 15:32:02', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'El nino pez (version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '36-revision-2', '', '', '2013-01-14 16:32:02', '2013-01-14 15:32:02', '', 36, 'http://localhost/~lamotte/festival_cinema/?p=90', 0, 'revision', '', 0),
(91, 1, '2013-01-14 16:34:35', '2013-01-14 15:34:35', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'Ander (version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '34-revision-3', '', '', '2013-01-14 16:34:35', '2013-01-14 15:34:35', '', 34, 'http://localhost/~lamotte/festival_cinema/?p=91', 0, 'revision', '', 0),
(92, 1, '2013-01-14 16:36:26', '2013-01-14 15:36:26', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '25-revision-3', '', '', '2013-01-14 16:36:26', '2013-01-14 15:36:26', '', 25, 'http://localhost/~lamotte/festival_cinema/?p=92', 0, 'revision', '', 0),
(93, 1, '2013-01-14 16:40:29', '2013-01-14 15:40:29', 'Synopsis :\r\n\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu (Version originale sous-titrée)', '', 'inherit', 'open', 'open', '', '19-revision-4', '', '', '2013-01-14 16:40:29', '2013-01-14 15:40:29', '', 19, 'http://localhost/~lamotte/festival_cinema/?p=93', 0, 'revision', '', 0),
(94, 1, '2013-01-14 16:41:35', '2013-01-14 15:41:35', 'Synopsis :\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision-4', '', '', '2013-01-14 16:41:35', '2013-01-14 15:41:35', '', 17, 'http://localhost/~lamotte/festival_cinema/?p=94', 0, 'revision', '', 0),
(95, 1, '2013-01-14 16:43:51', '2013-01-14 15:43:51', 'Synopsis :\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '8-revision-5', '', '', '2013-01-14 16:43:51', '2013-01-14 15:43:51', '', 8, 'http://localhost/~lamotte/festival_cinema/?p=95', 0, 'revision', '', 0),
(96, 1, '2013-01-14 16:44:58', '2013-01-14 15:44:58', 'Synopsis :\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '5-revision-5', '', '', '2013-01-14 16:44:58', '2013-01-14 15:44:58', '', 5, 'http://localhost/~lamotte/festival_cinema/?p=96', 0, 'revision', '', 0),
(97, 1, '2013-01-14 14:45:38', '2013-01-14 14:45:38', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2013-01-14 14:45:38', '2013-01-14 14:45:38', '', 1, 'http://localhost/~lamotte/festival_cinema/?p=97', 0, 'revision', '', 0),
(98, 1, '2013-01-16 15:25:32', '2013-01-16 14:25:32', '', 'American boy', '', 'inherit', 'open', 'open', '', 'american-boy-2', '', '', '2013-01-16 15:25:32', '2013-01-16 14:25:32', '', 23, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/American-boy.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2013-01-14 16:38:06', '2013-01-14 15:38:06', 'Comment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'open', 'open', '', '23-revision-4', '', '', '2013-01-14 16:38:06', '2013-01-14 15:38:06', '', 23, 'http://localhost/~lamotte/festival_cinema/?p=99', 0, 'revision', '', 0),
(100, 1, '2013-01-16 15:26:01', '2013-01-16 14:26:01', '', 'COWBOY_FOREVER', '', 'inherit', 'open', 'open', '', 'cowboy_forever-2', '', '', '2013-01-16 15:26:01', '2013-01-16 14:26:01', '', 21, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/COWBOY_FOREVER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2013-01-14 16:39:12', '2013-01-14 15:39:12', 'Synopsis :\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision-4', '', '', '2013-01-14 16:39:12', '2013-01-14 15:39:12', '', 21, 'http://localhost/~lamotte/festival_cinema/?p=101', 0, 'revision', '', 0),
(102, 1, '2013-01-23 14:32:38', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-23 14:32:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/~lamotte/festival_cinema/?p=102', 0, 'post', '', 0),
(103, 1, '2013-01-14 16:55:23', '2013-01-14 15:55:23', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n&nbsp;\r\n\r\nTarifs :\r\n\r\nPlein tarif : 7,50 €\r\n\r\nPass Festival : 25 € (5 séances)\r\n\r\nSoirée courts métrages : 6 € (vendredi)\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\n&nbsp;\r\n\r\nCartes &amp; réductions acceptées :\r\n\r\nCartes DECOUVERTE &amp; PASSION,\r\n\r\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n&nbsp;\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\nProgrammation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\r\n\r\nCommunication &amp; partenariats : Christel Guillard\r\n\r\nConception graphique : Yannis Bellair\r\n\r\nConception du site internet : rccc\r\n\r\nImpression : Prevost Offset\r\n\r\n&nbsp;\r\n\r\nContacts :\r\n\r\nfestival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com', 'Informations pratiques', '', 'inherit', 'open', 'open', '', '55-revision-2', '', '', '2013-01-14 16:55:23', '2013-01-14 15:55:23', '', 55, 'http://localhost/~lamotte/festival_cinema/?p=103', 0, 'revision', '', 0),
(109, 1, '2013-01-28 16:42:01', '2013-01-28 15:42:01', '', 'fond2', '', 'inherit', 'open', 'open', '', 'fond2', '', '', '2013-01-28 16:42:01', '2013-01-28 15:42:01', '', 0, 'http://localhost/~lamotte/festival_cinema/wp-content/uploads/2013/01/fond2.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2013-01-30 10:30:38', '2013-01-30 09:30:38', '<ul>\n	<li>Région Centre</li>\n	<li>Orléans</li>\nCinéma des Carmes\n\n- GAGL\n\n- Têtu\n\n- La dixième MUSE\n\n- CiteGay\n\n- Yagg.com\n\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '59-autosave', '', '', '2013-01-30 10:30:38', '2013-01-30 09:30:38', '', 59, 'http://localhost/~lamotte/festival_cinema/?p=110', 0, 'revision', '', 0),
(111, 1, '2013-01-14 16:57:33', '2013-01-14 15:57:33', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL\r\n\r\n- Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay\r\n\r\n- Yagg.com\r\n\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '59-revision-2', '', '', '2013-01-14 16:57:33', '2013-01-14 15:57:33', '', 59, 'http://localhost/~lamotte/festival_cinema/?p=111', 0, 'revision', '', 0),
(112, 1, '2013-01-30 10:32:52', '2013-01-30 09:32:52', '<ul>\n	<li>La Région Centre</li>\n	<li>La Mairie d''Orléans</li>\n	<li>Le cinéma des Carmes</li>\n	<li>Le Groupe Action Gay &amp; Lesbien</li>\n	<li>Loiret</li>\n	<li>Citégay</li>\n	<li>La dixième Muse</li>\n	<li>Têtu</li>\n	<li>Yagg.com</li>\n	<li>France Bleu Orléans</li>\n	<li>Bagdam Espace Lesbien ( Toulouse )</li>\n	<li>Cineffable - Le Festival Tous Courts ( Aix en Provence )</li>\n	<li>Les VidéObstinées</li>\n</ul>\n\n', 'Remerciements', '', 'inherit', 'open', 'open', '', '57-autosave', '', '', '2013-01-30 10:32:52', '2013-01-30 09:32:52', '', 57, 'http://localhost/~lamotte/festival_cinema/?p=112', 0, 'revision', '', 0),
(113, 1, '2013-01-14 16:56:53', '2013-01-14 15:56:53', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien\r\n\r\n- Loiret\r\n\r\n- Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable - Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '57-revision-2', '', '', '2013-01-14 16:56:53', '2013-01-14 15:56:53', '', 57, 'http://localhost/~lamotte/festival_cinema/?p=113', 0, 'revision', '', 0),
(114, 1, '2013-01-30 10:35:18', '2013-01-30 09:35:18', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n\n&nbsp;\n\nTarifs :\n<ul>\n	<li>Plein tarif : 7,50 €</li>\n	<li>Pass Festival : 25 € (5 séances)</li>\n	<li>Soirée courts métrages : 6 € (vendredi)</li>\n	<li>2 séances consécutives le samedi ou le dimanche : 12 €</li>\n</ul>\n\n&nbsp;\n\nCartes &amp; réductions acceptées :\n<ul>\n	<li>Cartes DECOUVERTE &amp; PASSION</li>\n	<li>titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…</li>\n</ul>\n\n&nbsp;\n\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\n\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\n&nbsp;\n\nEquipe :\n<ul>\n	<li>Direction artistique : Christel Guillard (Présidente de Ciné Mundi)</li>\n	<li>Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)</li>\n	<li>Communication &amp; partenariats : Christel Guillard</li>\n	<li>Conception graphique : Yannis Bellair</li>\n	<li>Conception du site internet : rccc</li>\n	<li>Impression : Prevost Offset</li>\n&nbsp;\n\nContacts :\n\nfestival.dunbordalautre@gmail.com\n\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '55-autosave', '', '', '2013-01-30 10:35:18', '2013-01-30 09:35:18', '', 55, 'http://localhost/~lamotte/festival_cinema/?p=114', 0, 'revision', '', 0),
(115, 1, '2013-01-28 16:14:46', '2013-01-28 15:14:46', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n&nbsp;\r\n\r\nTarifs :\r\n\r\nPlein tarif : 7,50 €\r\n\r\nPass Festival : 25 € (5 séances)\r\n\r\nSoirée courts métrages : 6 € (vendredi)\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\n&nbsp;\r\n\r\nCartes &amp; réductions acceptées :\r\n\r\nCartes DECOUVERTE &amp; PASSION,\r\n\r\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n&nbsp;\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\nProgrammation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\r\n\r\nCommunication &amp; partenariats : Christel Guillard\r\n\r\nConception graphique : Yannis Bellair\r\n\r\nConception du site internet : rccc\r\n\r\nImpression : Prevost Offset\r\n\r\n&nbsp;\r\n\r\nContacts :\r\n\r\nfestival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '55-revision-3', '', '', '2013-01-28 16:14:46', '2013-01-28 15:14:46', '', 55, 'http://localhost/~lamotte/festival_cinema/?p=115', 0, 'revision', '', 0),
(116, 1, '2013-01-16 14:56:09', '2013-01-16 13:56:09', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '63-revision-2', '', '', '2013-01-16 14:56:09', '2013-01-16 13:56:09', '', 63, 'http://localhost/~lamotte/festival_cinema/?p=116', 0, 'revision', '', 0),
(117, 1, '2013-01-30 10:35:41', '2013-01-30 09:35:41', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n&nbsp;\r\n\r\nTarifs :\r\n<ul>\r\n	<li>Plein tarif : 7,50 €</li>\r\n	<li>Pass Festival : 25 € (5 séances)</li>\r\n	<li>Soirée courts métrages : 6 € (vendredi)</li>\r\n	<li>2 séances consécutives le samedi ou le dimanche : 12 €</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\nCartes &amp; réductions acceptées :\r\n<ul>\r\n	<li>Cartes DECOUVERTE &amp; PASSION</li>\r\n	<li>titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n&nbsp;\r\n\r\nEquipe :\r\n<ul>\r\n	<li>Direction artistique : Christel Guillard (Présidente de Ciné Mundi)</li>\r\n	<li>Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)</li>\r\n	<li>Communication &amp; partenariats : Christel Guillard</li>\r\n	<li>Conception graphique : Yannis Bellair</li>\r\n	<li>Conception du site internet : rccc</li>\r\n	<li>Impression : Prevost Offset</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\nContacts :\r\n<ul>\r\n	<li>festival.dunbordalautre@gmail.com</li>\r\n	<li>www.festivaldunbordalautre.com</li>\r\n</ul>', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '55-revision-4', '', '', '2013-01-30 10:35:41', '2013-01-30 09:35:41', '', 55, 'http://localhost/~lamotte/festival_cinema/?p=117', 0, 'revision', '', 0),
(118, 1, '2013-01-30 10:31:32', '2013-01-30 09:31:32', '<ul>\r\n	<li>Région Centre</li>\r\n	<li>Orléans</li>\r\n	<li>Cinéma des Carmes</li>\r\n	<li>GAGL</li>\r\n	<li>Têtu</li>\r\n	<li>La dixième MUSE</li>\r\n	<li>CiteGay</li>\r\n	<li>Yagg.com</li>\r\n	<li>France Bleu</li>\r\n</ul>', 'Partenaires', '', 'inherit', 'open', 'open', '', '59-revision-3', '', '', '2013-01-30 10:31:32', '2013-01-30 09:31:32', '', 59, 'http://localhost/~lamotte/festival_cinema/?p=118', 0, 'revision', '', 0),
(119, 1, '2013-01-30 10:32:56', '2013-01-30 09:32:56', '<ul>\r\n	<li>La Région Centre</li>\r\n	<li>La Mairie d''Orléans</li>\r\n	<li>Le cinéma des Carmes</li>\r\n	<li>Le Groupe Action Gay &amp; Lesbien</li>\r\n	<li>Loiret</li>\r\n	<li>Citégay</li>\r\n	<li>La dixième Muse</li>\r\n	<li>Têtu</li>\r\n	<li>Yagg.com</li>\r\n	<li>France Bleu Orléans</li>\r\n	<li>Bagdam Espace Lesbien ( Toulouse )</li>\r\n	<li>Cineffable - Le Festival Tous Courts ( Aix en Provence )</li>\r\n	<li>Les VidéObstinées</li>\r\n</ul>', 'Remerciements', '', 'inherit', 'open', 'open', '', '57-revision-3', '', '', '2013-01-30 10:32:56', '2013-01-30 09:32:56', '', 57, 'http://localhost/~lamotte/festival_cinema/?p=119', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'films', 'films', 0),
(3, 'courts-métrages', 'courts-metrages', 0),
(4, 'navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(5, 3, 0),
(8, 3, 0),
(15, 3, 0),
(17, 3, 0),
(19, 3, 0),
(21, 3, 0),
(23, 3, 0),
(25, 2, 0),
(34, 2, 0),
(36, 2, 0),
(51, 2, 0),
(84, 4, 0),
(85, 4, 0),
(86, 4, 0),
(87, 4, 0),
(88, 4, 0),
(89, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'pierre'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '102'),
(15, 1, 'wp_festival_user-settings', 'hidetb=1&libraryContent=browse&imgsize=thumbnail&align=none&urlbutton=post&editor=html'),
(16, 1, 'wp_festival_user-settings-time', '1359538287'),
(17, 1, 'closedpostboxes_post', 'a:0:{}'),
(18, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(21, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'pierre', '$P$BC6t2ooiTIpKV/aqamWYJr8R0E8Rgt1', 'pierre', 'pierre.lamotte@etu.univ-orleans.fr', '', '2013-01-14 14:45:36', '', 0, 'pierre');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
