# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Database: inchbald.dev
# Generation Time: 2017-08-10 14:49:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2017-08-07 15:58:06','2017-08-07 14:58:06','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://inchbald.dev','yes'),
	(2,'home','http://inchbald.dev','yes'),
	(3,'blogname','Inchbald School of Design','yes'),
	(4,'blogdescription','Just another WordPress site','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','support@squie.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','0','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','jS F Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','jS F Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%postname%/','yes'),
	(29,'rewrite_rules','a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"akismet/akismet.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','inchbald','yes'),
	(41,'stylesheet','inchbald','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','38590','yes'),
	(49,'uploads_use_yearmonth_folders','','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','0','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','page','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(81,'uninstall_plugins','a:0:{}','no'),
	(82,'timezone_string','Europe/London','yes'),
	(83,'page_for_posts','0','yes'),
	(84,'page_on_front','2','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'initial_db_version','38590','yes'),
	(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(93,'fresh_site','0','yes'),
	(94,'WPLANG','en_GB','yes'),
	(95,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),
	(101,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(104,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(106,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(107,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(108,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(109,'cron','a:4:{i:1502377086;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1502377096;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1502379717;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(110,'logged_in_key','4Rs#+U`%7}^>_kj_~i`Xf1YlPlpi {HZ;F3DZYCVX_3Va6~`EQ%L}=r#=^3?fJXE','no'),
	(111,'logged_in_salt','3#vdT;W9nQZ>?QBtQCp]cR^|,XU!oflxj{#F?h|K*i5gm(t!SIdb?o.ZHD>tDW+k','no'),
	(122,'auth_key','+;] RA%d#RaaY76w6.r7x7@;}48nlqu3[yX+$_UeRuDbXUXon5x;e}}_j95I&@#m','no'),
	(123,'auth_salt','IYiF#IvhD3]-&4v kb8/fh)[%:aIQhcbswx^m~70<^74d[k]Lxsdr0(G-0@JVM#b','no'),
	(124,'nonce_key',',wX(E)FSqhX0=JNF@PwD!(4-Pjwtl=0/(NM*gG3GAr*KUXdJswr5WvT/m[=}=U.f','no'),
	(125,'nonce_salt','UI09HwW&)^^ZfG`O!2DPjZYn]+X0&tq*G*S@q|wscg:~)q4J.pc5j-Pi@5P%qhGA','no'),
	(126,'_site_transient_timeout_browser_cdf57348dffaa17c6bc7f1847b040f34','1502722696','no'),
	(127,'_site_transient_browser_cdf57348dffaa17c6bc7f1847b040f34','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"59.0.3071.115\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','no'),
	(129,'can_compress_scripts','1','no'),
	(130,'theme_mods_twentyseventeen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1502117911;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),
	(131,'current_theme','Inchbald','yes'),
	(132,'theme_mods_inchbald','a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}}','yes'),
	(133,'theme_switched','','yes'),
	(139,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-4.8.1.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-4.8.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.1\";s:7:\"version\";s:5:\"4.8.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1502361253;s:15:\"version_checked\";s:5:\"4.8.1\";s:12:\"translations\";a:0:{}}','no'),
	(140,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1502361258;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.3.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.3.4.zip\";}}}','no'),
	(141,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1502361260;s:7:\"checked\";a:1:{s:8:\"inchbald\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
	(145,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(170,'_transient_timeout_plugin_slugs','1502315919','no'),
	(171,'_transient_plugin_slugs','a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"akismet/akismet.php\";}','no'),
	(172,'recently_activated','a:0:{}','yes'),
	(183,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(184,'acf_version','5.6.1','yes'),
	(203,'_site_transient_timeout_theme_roots','1502363055','no'),
	(204,'_site_transient_theme_roots','a:1:{s:8:\"inchbald\";s:7:\"/themes\";}','no'),
	(205,'_site_transient_timeout_browser_999435bed2fa11c3d2b9105242e679fd','1502978591','no'),
	(206,'_site_transient_browser_999435bed2fa11c3d2b9105242e679fd','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"60.0.3112.90\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','no'),
	(207,'_site_transient_timeout_available_translations','1502384597','no'),
	(208,'_site_transient_available_translations','a:108:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 10:11:36\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-29 08:49:40\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.5/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-30 18:40:55\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.1/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-09 09:24:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-04 16:58:43\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-08 21:01:45\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 08:46:26\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 14:28:04\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-14 23:24:44\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 06:22:33\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 06:24:08\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.8.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-30 10:51:58\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.8.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-03 16:58:53\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:51:51\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-02 03:57:05\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 10:03:08\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 19:47:01\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:53:43\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 17:31:04\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 10:38:53\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 07:43:08\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-01 04:48:11\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:54:37\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:54:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-30 16:09:17\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 16:37:11\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-30 18:58:36\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-09 15:50:45\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 11:00:29\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 06:42:50\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 09:14:18\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 12:37:07\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 12:45:35\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-07 20:55:07\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-07 17:27:08\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:29:26\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-07-19 08:19:39\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.8/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 12:45:08\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-04 08:42:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-03 23:23:50\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-12 09:20:11\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-07-16 18:44:50\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/4.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:48:16\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 11:02:15\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.5/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-07-05 19:40:47\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.8/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-03-05 09:45:10\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.18\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-02 21:02:39\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-31 08:47:10\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 19:34:18\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-27 16:44:39\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-02-16 13:24:21\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.7.5/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-01 07:32:10\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-02 13:47:38\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-04 20:03:38\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.18\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 21:35:20\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-03 08:14:27\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:26:15\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-10 10:38:14\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-09 13:26:18\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 14:03:23\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-04-24 08:35:30\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.5/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 12:07:44\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-03 22:53:12\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:43\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-31 11:38:12\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 15:23:55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 14:27:29\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-05-13 09:55:38\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 01:27:21\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-04 07:53:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-03 15:43:25\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-29 12:50:42\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}','no');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,2,'_edit_lock','1502361133:1'),
	(3,2,'_edit_last','1'),
	(4,4,'_edit_last','1'),
	(5,4,'_edit_lock','1502120381:1'),
	(6,6,'_edit_last','1'),
	(7,6,'_edit_lock','1502120399:1'),
	(8,8,'_edit_last','1'),
	(9,8,'_edit_lock','1502120405:1'),
	(10,10,'_edit_last','1'),
	(11,10,'_edit_lock','1502120415:1'),
	(12,12,'_edit_last','1'),
	(13,12,'_edit_lock','1502120422:1'),
	(14,14,'_edit_last','1'),
	(15,14,'_edit_lock','1502120432:1'),
	(16,16,'_edit_last','1'),
	(17,16,'_edit_lock','1502120439:1'),
	(18,18,'_edit_last','1'),
	(19,18,'_edit_lock','1502120447:1'),
	(20,20,'_menu_item_type','post_type'),
	(21,20,'_menu_item_menu_item_parent','0'),
	(22,20,'_menu_item_object_id','18'),
	(23,20,'_menu_item_object','page'),
	(24,20,'_menu_item_target',''),
	(25,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(26,20,'_menu_item_xfn',''),
	(27,20,'_menu_item_url',''),
	(29,21,'_menu_item_type','post_type'),
	(30,21,'_menu_item_menu_item_parent','0'),
	(31,21,'_menu_item_object_id','16'),
	(32,21,'_menu_item_object','page'),
	(33,21,'_menu_item_target',''),
	(34,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(35,21,'_menu_item_xfn',''),
	(36,21,'_menu_item_url',''),
	(38,22,'_menu_item_type','post_type'),
	(39,22,'_menu_item_menu_item_parent','0'),
	(40,22,'_menu_item_object_id','14'),
	(41,22,'_menu_item_object','page'),
	(42,22,'_menu_item_target',''),
	(43,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(44,22,'_menu_item_xfn',''),
	(45,22,'_menu_item_url',''),
	(47,23,'_menu_item_type','post_type'),
	(48,23,'_menu_item_menu_item_parent','0'),
	(49,23,'_menu_item_object_id','12'),
	(50,23,'_menu_item_object','page'),
	(51,23,'_menu_item_target',''),
	(52,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(53,23,'_menu_item_xfn',''),
	(54,23,'_menu_item_url',''),
	(56,24,'_menu_item_type','post_type'),
	(57,24,'_menu_item_menu_item_parent','0'),
	(58,24,'_menu_item_object_id','10'),
	(59,24,'_menu_item_object','page'),
	(60,24,'_menu_item_target',''),
	(61,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(62,24,'_menu_item_xfn',''),
	(63,24,'_menu_item_url',''),
	(65,25,'_menu_item_type','post_type'),
	(66,25,'_menu_item_menu_item_parent','0'),
	(67,25,'_menu_item_object_id','8'),
	(68,25,'_menu_item_object','page'),
	(69,25,'_menu_item_target',''),
	(70,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(71,25,'_menu_item_xfn',''),
	(72,25,'_menu_item_url',''),
	(74,26,'_menu_item_type','post_type'),
	(75,26,'_menu_item_menu_item_parent','0'),
	(76,26,'_menu_item_object_id','6'),
	(77,26,'_menu_item_object','page'),
	(78,26,'_menu_item_target',''),
	(79,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(80,26,'_menu_item_xfn',''),
	(81,26,'_menu_item_url',''),
	(83,27,'_menu_item_type','post_type'),
	(84,27,'_menu_item_menu_item_parent','0'),
	(85,27,'_menu_item_object_id','4'),
	(86,27,'_menu_item_object','page'),
	(87,27,'_menu_item_target',''),
	(88,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(89,27,'_menu_item_xfn',''),
	(90,27,'_menu_item_url',''),
	(92,28,'_menu_item_type','post_type'),
	(93,28,'_menu_item_menu_item_parent','0'),
	(94,28,'_menu_item_object_id','2'),
	(95,28,'_menu_item_object','page'),
	(96,28,'_menu_item_target',''),
	(97,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(98,28,'_menu_item_xfn',''),
	(99,28,'_menu_item_url',''),
	(100,28,'_menu_item_orphaned','1502120610'),
	(101,29,'_edit_last','1'),
	(102,29,'_edit_lock','1502308488:1'),
	(105,2,'hero_carousel_0_hero_carousel_title','People'),
	(106,2,'_hero_carousel_0_hero_carousel_title','field_598a4bd518448'),
	(107,2,'hero_carousel_0_hero_carousel_paragraph','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pulvinar nunc risus, eu tincidunt erat ornare nec. Praesent consequat malesuada quam quis mollis.'),
	(108,2,'_hero_carousel_0_hero_carousel_paragraph','field_598a4be618449'),
	(109,2,'hero_carousel_0_hero_carousel_image','36'),
	(110,2,'_hero_carousel_0_hero_carousel_image','field_598a4c1d1844a'),
	(111,2,'hero_carousel','3'),
	(112,2,'_hero_carousel','field_598a4c55755e7'),
	(113,35,'hero_carousel_0_hero_carousel_title','Established'),
	(114,35,'_hero_carousel_0_hero_carousel_title','field_598a4bd518448'),
	(115,35,'hero_carousel_0_hero_carousel_paragraph','You won’t find a better established or more\r\nrenowned interior and garden design\r\nschool than Inchbald.'),
	(116,35,'_hero_carousel_0_hero_carousel_paragraph','field_598a4be618449'),
	(117,35,'hero_carousel_0_hero_carousel_image',''),
	(118,35,'_hero_carousel_0_hero_carousel_image','field_598a4c1d1844a'),
	(119,35,'hero_carousel','1'),
	(120,35,'_hero_carousel','field_598a4c55755e7'),
	(121,36,'_wp_attached_file','GC2F0645.jpg'),
	(122,36,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1600;s:4:\"file\";s:12:\"GC2F0645.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"GC2F0645-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"GC2F0645-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"GC2F0645-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"GC2F0645-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.6\";s:6:\"credit\";s:25:\"Graham Carlow Photography\";s:6:\"camera\";s:4:\"X-T2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1498572208\";s:9:\"copyright\";s:13:\"Graham Carlow\";s:12:\"focal_length\";s:2:\"23\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(123,37,'hero_carousel_0_hero_carousel_title','Established'),
	(124,37,'_hero_carousel_0_hero_carousel_title','field_598a4bd518448'),
	(125,37,'hero_carousel_0_hero_carousel_paragraph','You won’t find a better established or more\r\nrenowned interior and garden design\r\nschool than Inchbald.'),
	(126,37,'_hero_carousel_0_hero_carousel_paragraph','field_598a4be618449'),
	(127,37,'hero_carousel_0_hero_carousel_image','36'),
	(128,37,'_hero_carousel_0_hero_carousel_image','field_598a4c1d1844a'),
	(129,37,'hero_carousel','1'),
	(130,37,'_hero_carousel','field_598a4c55755e7'),
	(131,2,'hero_carousel_1_hero_carousel_title','Places'),
	(132,2,'_hero_carousel_1_hero_carousel_title','field_598a4bd518448'),
	(133,2,'hero_carousel_1_hero_carousel_paragraph','Cras maximus fermentum risus, quis porttitor elit rutrum eleifend.'),
	(134,2,'_hero_carousel_1_hero_carousel_paragraph','field_598a4be618449'),
	(135,2,'hero_carousel_1_hero_carousel_image','50'),
	(136,2,'_hero_carousel_1_hero_carousel_image','field_598a4c1d1844a'),
	(137,2,'hero_carousel_2_hero_carousel_title','Established'),
	(138,2,'_hero_carousel_2_hero_carousel_title','field_598a4bd518448'),
	(139,2,'hero_carousel_2_hero_carousel_paragraph','You won’t find a better established or more\r\nrenowned interior and garden design\r\nschool than Inchbald.'),
	(140,2,'_hero_carousel_2_hero_carousel_paragraph','field_598a4be618449'),
	(141,2,'hero_carousel_2_hero_carousel_image','52'),
	(142,2,'_hero_carousel_2_hero_carousel_image','field_598a4c1d1844a'),
	(143,38,'hero_carousel_0_hero_carousel_title','People'),
	(144,38,'_hero_carousel_0_hero_carousel_title','field_598a4bd518448'),
	(145,38,'hero_carousel_0_hero_carousel_paragraph','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pulvinar nunc risus, eu tincidunt erat ornare nec. Praesent consequat malesuada quam quis mollis.'),
	(146,38,'_hero_carousel_0_hero_carousel_paragraph','field_598a4be618449'),
	(147,38,'hero_carousel_0_hero_carousel_image','36'),
	(148,38,'_hero_carousel_0_hero_carousel_image','field_598a4c1d1844a'),
	(149,38,'hero_carousel','3'),
	(150,38,'_hero_carousel','field_598a4c55755e7'),
	(151,38,'hero_carousel_1_hero_carousel_title','Places'),
	(152,38,'_hero_carousel_1_hero_carousel_title','field_598a4bd518448'),
	(153,38,'hero_carousel_1_hero_carousel_paragraph','Cras maximus fermentum risus, quis porttitor elit rutrum eleifend.'),
	(154,38,'_hero_carousel_1_hero_carousel_paragraph','field_598a4be618449'),
	(155,38,'hero_carousel_1_hero_carousel_image','36'),
	(156,38,'_hero_carousel_1_hero_carousel_image','field_598a4c1d1844a'),
	(157,38,'hero_carousel_2_hero_carousel_title','Established'),
	(158,38,'_hero_carousel_2_hero_carousel_title','field_598a4bd518448'),
	(159,38,'hero_carousel_2_hero_carousel_paragraph','You won’t find a better established or more\r\nrenowned interior and garden design\r\nschool than Inchbald.'),
	(160,38,'_hero_carousel_2_hero_carousel_paragraph','field_598a4be618449'),
	(161,38,'hero_carousel_2_hero_carousel_image','36'),
	(162,38,'_hero_carousel_2_hero_carousel_image','field_598a4c1d1844a'),
	(163,39,'hero_carousel_0_hero_carousel_title','People'),
	(164,39,'_hero_carousel_0_hero_carousel_title','field_598a4bd518448'),
	(165,39,'hero_carousel_0_hero_carousel_paragraph','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pulvinar nunc risus, eu tincidunt erat ornare nec. Praesent consequat malesuada quam quis mollis.'),
	(166,39,'_hero_carousel_0_hero_carousel_paragraph','field_598a4be618449'),
	(167,39,'hero_carousel_0_hero_carousel_image','36'),
	(168,39,'_hero_carousel_0_hero_carousel_image','field_598a4c1d1844a'),
	(169,39,'hero_carousel','3'),
	(170,39,'_hero_carousel','field_598a4c55755e7'),
	(171,39,'hero_carousel_1_hero_carousel_title','Places'),
	(172,39,'_hero_carousel_1_hero_carousel_title','field_598a4bd518448'),
	(173,39,'hero_carousel_1_hero_carousel_paragraph','Cras maximus fermentum risus, quis porttitor elit rutrum eleifend.'),
	(174,39,'_hero_carousel_1_hero_carousel_paragraph','field_598a4be618449'),
	(175,39,'hero_carousel_1_hero_carousel_image','36'),
	(176,39,'_hero_carousel_1_hero_carousel_image','field_598a4c1d1844a'),
	(177,39,'hero_carousel_2_hero_carousel_title','Established'),
	(178,39,'_hero_carousel_2_hero_carousel_title','field_598a4bd518448'),
	(179,39,'hero_carousel_2_hero_carousel_paragraph','You won’t find a better established or more\r\nrenowned interior and garden design\r\nschool than Inchbald.'),
	(180,39,'_hero_carousel_2_hero_carousel_paragraph','field_598a4be618449'),
	(181,39,'hero_carousel_2_hero_carousel_image','36'),
	(182,39,'_hero_carousel_2_hero_carousel_image','field_598a4c1d1844a'),
	(183,40,'_edit_last','1'),
	(184,40,'_edit_lock','1502289143:1'),
	(185,41,'_edit_last','1'),
	(186,41,'_edit_lock','1502308491:1'),
	(187,40,'from_date','20170809'),
	(188,40,'_from_date','field_598b10c28df63'),
	(189,40,'to_date','20170816'),
	(190,40,'_to_date','field_598b10ff8df64'),
	(191,45,'from_date','20170809'),
	(192,45,'_from_date','field_598b10c28df63'),
	(193,45,'to_date','20170816'),
	(194,45,'_to_date','field_598b10ff8df64'),
	(195,46,'_edit_last','1'),
	(196,46,'_edit_lock','1502289156:1'),
	(197,46,'from_date','20170811'),
	(198,46,'_from_date','field_598b10c28df63'),
	(199,46,'to_date','20170826'),
	(200,46,'_to_date','field_598b10ff8df64'),
	(201,47,'from_date','20170811'),
	(202,47,'_from_date','field_598b10c28df63'),
	(203,47,'to_date','20170826'),
	(204,47,'_to_date','field_598b10ff8df64'),
	(205,48,'_edit_last','1'),
	(206,48,'_edit_lock','1502292969:1'),
	(207,48,'from_date','20170826'),
	(208,48,'_from_date','field_598b10c28df63'),
	(209,48,'to_date','20170831'),
	(210,48,'_to_date','field_598b10ff8df64'),
	(211,49,'from_date','20170826'),
	(212,49,'_from_date','field_598b10c28df63'),
	(213,49,'to_date','20170831'),
	(214,49,'_to_date','field_598b10ff8df64'),
	(215,50,'_wp_attached_file','GC2F2037.jpg'),
	(216,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1600;s:4:\"file\";s:12:\"GC2F2037.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"GC2F2037-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"GC2F2037-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"GC2F2037-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"GC2F2037-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:25:\"Graham Carlow Photography\";s:6:\"camera\";s:4:\"X-T2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1498735935\";s:9:\"copyright\";s:13:\"Graham Carlow\";s:12:\"focal_length\";s:2:\"23\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(217,51,'hero_carousel_0_hero_carousel_title','People'),
	(218,51,'_hero_carousel_0_hero_carousel_title','field_598a4bd518448'),
	(219,51,'hero_carousel_0_hero_carousel_paragraph','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pulvinar nunc risus, eu tincidunt erat ornare nec. Praesent consequat malesuada quam quis mollis.'),
	(220,51,'_hero_carousel_0_hero_carousel_paragraph','field_598a4be618449'),
	(221,51,'hero_carousel_0_hero_carousel_image','36'),
	(222,51,'_hero_carousel_0_hero_carousel_image','field_598a4c1d1844a'),
	(223,51,'hero_carousel','3'),
	(224,51,'_hero_carousel','field_598a4c55755e7'),
	(225,51,'hero_carousel_1_hero_carousel_title','Places'),
	(226,51,'_hero_carousel_1_hero_carousel_title','field_598a4bd518448'),
	(227,51,'hero_carousel_1_hero_carousel_paragraph','Cras maximus fermentum risus, quis porttitor elit rutrum eleifend.'),
	(228,51,'_hero_carousel_1_hero_carousel_paragraph','field_598a4be618449'),
	(229,51,'hero_carousel_1_hero_carousel_image','50'),
	(230,51,'_hero_carousel_1_hero_carousel_image','field_598a4c1d1844a'),
	(231,51,'hero_carousel_2_hero_carousel_title','Established'),
	(232,51,'_hero_carousel_2_hero_carousel_title','field_598a4bd518448'),
	(233,51,'hero_carousel_2_hero_carousel_paragraph','You won’t find a better established or more\r\nrenowned interior and garden design\r\nschool than Inchbald.'),
	(234,51,'_hero_carousel_2_hero_carousel_paragraph','field_598a4be618449'),
	(235,51,'hero_carousel_2_hero_carousel_image','36'),
	(236,51,'_hero_carousel_2_hero_carousel_image','field_598a4c1d1844a'),
	(237,52,'_wp_attached_file','GC2F1567.jpg'),
	(238,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1600;s:4:\"file\";s:12:\"GC2F1567.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"GC2F1567-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"GC2F1567-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"GC2F1567-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"GC2F1567-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:25:\"Graham Carlow Photography\";s:6:\"camera\";s:4:\"X-T2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1498582957\";s:9:\"copyright\";s:13:\"Graham Carlow\";s:12:\"focal_length\";s:2:\"56\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(239,53,'hero_carousel_0_hero_carousel_title','People'),
	(240,53,'_hero_carousel_0_hero_carousel_title','field_598a4bd518448'),
	(241,53,'hero_carousel_0_hero_carousel_paragraph','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pulvinar nunc risus, eu tincidunt erat ornare nec. Praesent consequat malesuada quam quis mollis.'),
	(242,53,'_hero_carousel_0_hero_carousel_paragraph','field_598a4be618449'),
	(243,53,'hero_carousel_0_hero_carousel_image','36'),
	(244,53,'_hero_carousel_0_hero_carousel_image','field_598a4c1d1844a'),
	(245,53,'hero_carousel','3'),
	(246,53,'_hero_carousel','field_598a4c55755e7'),
	(247,53,'hero_carousel_1_hero_carousel_title','Places'),
	(248,53,'_hero_carousel_1_hero_carousel_title','field_598a4bd518448'),
	(249,53,'hero_carousel_1_hero_carousel_paragraph','Cras maximus fermentum risus, quis porttitor elit rutrum eleifend.'),
	(250,53,'_hero_carousel_1_hero_carousel_paragraph','field_598a4be618449'),
	(251,53,'hero_carousel_1_hero_carousel_image','50'),
	(252,53,'_hero_carousel_1_hero_carousel_image','field_598a4c1d1844a'),
	(253,53,'hero_carousel_2_hero_carousel_title','Established'),
	(254,53,'_hero_carousel_2_hero_carousel_title','field_598a4bd518448'),
	(255,53,'hero_carousel_2_hero_carousel_paragraph','You won’t find a better established or more\r\nrenowned interior and garden design\r\nschool than Inchbald.'),
	(256,53,'_hero_carousel_2_hero_carousel_paragraph','field_598a4be618449'),
	(257,53,'hero_carousel_2_hero_carousel_image','52'),
	(258,53,'_hero_carousel_2_hero_carousel_image','field_598a4c1d1844a'),
	(259,54,'_edit_last','1'),
	(260,54,'_edit_lock','1502361134:1'),
	(261,2,'home_video','https://vimeo.com/channels/staffpicks/228403977'),
	(262,2,'_home_video','field_598b58504cb40'),
	(263,56,'hero_carousel_0_hero_carousel_title','People'),
	(264,56,'_hero_carousel_0_hero_carousel_title','field_598a4bd518448'),
	(265,56,'hero_carousel_0_hero_carousel_paragraph','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pulvinar nunc risus, eu tincidunt erat ornare nec. Praesent consequat malesuada quam quis mollis.'),
	(266,56,'_hero_carousel_0_hero_carousel_paragraph','field_598a4be618449'),
	(267,56,'hero_carousel_0_hero_carousel_image','36'),
	(268,56,'_hero_carousel_0_hero_carousel_image','field_598a4c1d1844a'),
	(269,56,'hero_carousel','3'),
	(270,56,'_hero_carousel','field_598a4c55755e7'),
	(271,56,'hero_carousel_1_hero_carousel_title','Places'),
	(272,56,'_hero_carousel_1_hero_carousel_title','field_598a4bd518448'),
	(273,56,'hero_carousel_1_hero_carousel_paragraph','Cras maximus fermentum risus, quis porttitor elit rutrum eleifend.'),
	(274,56,'_hero_carousel_1_hero_carousel_paragraph','field_598a4be618449'),
	(275,56,'hero_carousel_1_hero_carousel_image','50'),
	(276,56,'_hero_carousel_1_hero_carousel_image','field_598a4c1d1844a'),
	(277,56,'hero_carousel_2_hero_carousel_title','Established'),
	(278,56,'_hero_carousel_2_hero_carousel_title','field_598a4bd518448'),
	(279,56,'hero_carousel_2_hero_carousel_paragraph','You won’t find a better established or more\r\nrenowned interior and garden design\r\nschool than Inchbald.'),
	(280,56,'_hero_carousel_2_hero_carousel_paragraph','field_598a4be618449'),
	(281,56,'hero_carousel_2_hero_carousel_image','52'),
	(282,56,'_hero_carousel_2_hero_carousel_image','field_598a4c1d1844a'),
	(283,56,'home_video','https://vimeo.com/channels/staffpicks/228403977'),
	(284,56,'_home_video','field_598b58504cb40');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
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
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2017-08-07 15:58:06','2017-08-07 14:58:06','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2017-08-07 15:58:06','2017-08-07 14:58:06','',0,'http://inchbald.dev/?p=1',0,'post','',1),
	(2,1,'2017-08-07 15:58:06','2017-08-07 14:58:06','','Home','','publish','closed','open','','sample-page','','','2017-08-09 20:59:55','2017-08-09 19:59:55','',0,'http://inchbald.dev/?page_id=2',0,'page','',0),
	(3,1,'2017-08-07 16:41:54','2017-08-07 15:41:54','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Leicester City, XYZ employs over 2,000 people and does all kinds of awesome things for the Leicester community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href=\"http://inchbald.dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Home','','inherit','closed','closed','','2-revision-v1','','','2017-08-07 16:41:54','2017-08-07 15:41:54','',2,'http://inchbald.dev/2017/08/07/2-revision-v1/',0,'revision','',0),
	(4,1,'2017-08-07 16:42:03','2017-08-07 15:42:03','','Visit','','publish','closed','closed','','visit','','','2017-08-07 16:42:03','2017-08-07 15:42:03','',0,'http://inchbald.dev/?page_id=4',0,'page','',0),
	(5,1,'2017-08-07 16:42:03','2017-08-07 15:42:03','','Visit','','inherit','closed','closed','','4-revision-v1','','','2017-08-07 16:42:03','2017-08-07 15:42:03','',4,'http://inchbald.dev/2017/08/07/4-revision-v1/',0,'revision','',0),
	(6,1,'2017-08-07 16:42:19','2017-08-07 15:42:19','','Academics','','publish','closed','closed','','academics','','','2017-08-07 16:42:19','2017-08-07 15:42:19','',0,'http://inchbald.dev/?page_id=6',0,'page','',0),
	(7,1,'2017-08-07 16:42:19','2017-08-07 15:42:19','','Academics','','inherit','closed','closed','','6-revision-v1','','','2017-08-07 16:42:19','2017-08-07 15:42:19','',6,'http://inchbald.dev/2017/08/07/6-revision-v1/',0,'revision','',0),
	(8,1,'2017-08-07 16:42:26','2017-08-07 15:42:26','','Admissions','','publish','closed','closed','','admissions','','','2017-08-07 16:42:26','2017-08-07 15:42:26','',0,'http://inchbald.dev/?page_id=8',0,'page','',0),
	(9,1,'2017-08-07 16:42:26','2017-08-07 15:42:26','','Admissions','','inherit','closed','closed','','8-revision-v1','','','2017-08-07 16:42:26','2017-08-07 15:42:26','',8,'http://inchbald.dev/2017/08/07/8-revision-v1/',0,'revision','',0),
	(10,1,'2017-08-07 16:42:32','2017-08-07 15:42:32','','Careers','','publish','closed','closed','','careers','','','2017-08-07 16:42:32','2017-08-07 15:42:32','',0,'http://inchbald.dev/?page_id=10',0,'page','',0),
	(11,1,'2017-08-07 16:42:32','2017-08-07 15:42:32','','Careers','','inherit','closed','closed','','10-revision-v1','','','2017-08-07 16:42:32','2017-08-07 15:42:32','',10,'http://inchbald.dev/2017/08/07/10-revision-v1/',0,'revision','',0),
	(12,1,'2017-08-07 16:42:42','2017-08-07 15:42:42','','Students','','publish','closed','closed','','students','','','2017-08-07 16:42:42','2017-08-07 15:42:42','',0,'http://inchbald.dev/?page_id=12',0,'page','',0),
	(13,1,'2017-08-07 16:42:42','2017-08-07 15:42:42','','Students','','inherit','closed','closed','','12-revision-v1','','','2017-08-07 16:42:42','2017-08-07 15:42:42','',12,'http://inchbald.dev/2017/08/07/12-revision-v1/',0,'revision','',0),
	(14,1,'2017-08-07 16:42:49','2017-08-07 15:42:49','','Alumni','','publish','closed','closed','','alumni','','','2017-08-07 16:42:49','2017-08-07 15:42:49','',0,'http://inchbald.dev/?page_id=14',0,'page','',0),
	(15,1,'2017-08-07 16:42:49','2017-08-07 15:42:49','','Alumni','','inherit','closed','closed','','14-revision-v1','','','2017-08-07 16:42:49','2017-08-07 15:42:49','',14,'http://inchbald.dev/2017/08/07/14-revision-v1/',0,'revision','',0),
	(16,1,'2017-08-07 16:42:59','2017-08-07 15:42:59','','Media','','publish','closed','closed','','media','','','2017-08-07 16:42:59','2017-08-07 15:42:59','',0,'http://inchbald.dev/?page_id=16',0,'page','',0),
	(17,1,'2017-08-07 16:42:59','2017-08-07 15:42:59','','Media','','inherit','closed','closed','','16-revision-v1','','','2017-08-07 16:42:59','2017-08-07 15:42:59','',16,'http://inchbald.dev/2017/08/07/16-revision-v1/',0,'revision','',0),
	(18,1,'2017-08-07 16:43:06','2017-08-07 15:43:06','','Events','','publish','closed','closed','','events','','','2017-08-07 16:43:06','2017-08-07 15:43:06','',0,'http://inchbald.dev/?page_id=18',0,'page','',0),
	(19,1,'2017-08-07 16:43:06','2017-08-07 15:43:06','','Events','','inherit','closed','closed','','18-revision-v1','','','2017-08-07 16:43:06','2017-08-07 15:43:06','',18,'http://inchbald.dev/2017/08/07/18-revision-v1/',0,'revision','',0),
	(20,1,'2017-08-07 16:44:13','2017-08-07 15:44:13',' ','','','publish','closed','closed','','20','','','2017-08-07 16:44:13','2017-08-07 15:44:13','',0,'http://inchbald.dev/?p=20',8,'nav_menu_item','',0),
	(21,1,'2017-08-07 16:44:13','2017-08-07 15:44:13',' ','','','publish','closed','closed','','21','','','2017-08-07 16:44:13','2017-08-07 15:44:13','',0,'http://inchbald.dev/?p=21',7,'nav_menu_item','',0),
	(22,1,'2017-08-07 16:44:13','2017-08-07 15:44:13',' ','','','publish','closed','closed','','22','','','2017-08-07 16:44:13','2017-08-07 15:44:13','',0,'http://inchbald.dev/?p=22',6,'nav_menu_item','',0),
	(23,1,'2017-08-07 16:44:13','2017-08-07 15:44:13',' ','','','publish','closed','closed','','23','','','2017-08-07 16:44:13','2017-08-07 15:44:13','',0,'http://inchbald.dev/?p=23',5,'nav_menu_item','',0),
	(24,1,'2017-08-07 16:44:13','2017-08-07 15:44:13',' ','','','publish','closed','closed','','24','','','2017-08-07 16:44:13','2017-08-07 15:44:13','',0,'http://inchbald.dev/?p=24',4,'nav_menu_item','',0),
	(25,1,'2017-08-07 16:44:13','2017-08-07 15:44:13',' ','','','publish','closed','closed','','25','','','2017-08-07 16:44:13','2017-08-07 15:44:13','',0,'http://inchbald.dev/?p=25',3,'nav_menu_item','',0),
	(26,1,'2017-08-07 16:44:13','2017-08-07 15:44:13',' ','','','publish','closed','closed','','26','','','2017-08-07 16:44:13','2017-08-07 15:44:13','',0,'http://inchbald.dev/?p=26',2,'nav_menu_item','',0),
	(27,1,'2017-08-07 16:44:13','2017-08-07 15:44:13',' ','','','publish','closed','closed','','27','','','2017-08-07 16:44:13','2017-08-07 15:44:13','',0,'http://inchbald.dev/?p=27',1,'nav_menu_item','',0),
	(28,1,'2017-08-07 16:43:30','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-08-07 16:43:30','0000-00-00 00:00:00','',0,'http://inchbald.dev/?p=28',1,'nav_menu_item','',0),
	(29,1,'2017-08-09 00:41:50','2017-08-08 23:41:50','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Hero carousel','hero-carousel','publish','closed','closed','','group_598a3419a6fa0','','','2017-08-09 00:43:40','2017-08-08 23:43:40','',0,'http://inchbald.dev/?post_type=acf-field-group&#038;p=29',0,'acf-field-group','',0),
	(30,1,'2017-08-09 00:41:50','2017-08-08 23:41:50','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Hero carousel title','hero_carousel_title','publish','closed','closed','','field_598a4bd518448','','','2017-08-09 00:43:40','2017-08-08 23:43:40','',33,'http://inchbald.dev/?post_type=acf-field&#038;p=30',0,'acf-field','',0),
	(31,1,'2017-08-09 00:41:50','2017-08-08 23:41:50','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:2:\"br\";}','Hero carousel paragraph','hero_carousel_paragraph','publish','closed','closed','','field_598a4be618449','','','2017-08-09 00:43:40','2017-08-08 23:43:40','',33,'http://inchbald.dev/?post_type=acf-field&#038;p=31',1,'acf-field','',0),
	(32,1,'2017-08-09 00:41:50','2017-08-08 23:41:50','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Hero carousel image','hero_carousel_image','publish','closed','closed','','field_598a4c1d1844a','','','2017-08-09 00:43:40','2017-08-08 23:43:40','',33,'http://inchbald.dev/?post_type=acf-field&#038;p=32',2,'acf-field','',0),
	(33,1,'2017-08-09 00:43:40','2017-08-08 23:43:40','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','Hero carousel','hero_carousel','publish','closed','closed','','field_598a4c55755e7','','','2017-08-09 00:43:40','2017-08-08 23:43:40','',29,'http://inchbald.dev/?post_type=acf-field&p=33',0,'acf-field','',0),
	(35,1,'2017-08-09 00:45:24','2017-08-08 23:45:24','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Leicester City, XYZ employs over 2,000 people and does all kinds of awesome things for the Leicester community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href=\"http://inchbald.dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Home','','inherit','closed','closed','','2-revision-v1','','','2017-08-09 00:45:24','2017-08-08 23:45:24','',2,'http://inchbald.dev/2-revision-v1/',0,'revision','',0),
	(36,1,'2017-08-09 00:46:33','2017-08-08 23:46:33','','GC2F0645','','inherit','open','closed','','gc2f0645','','','2017-08-09 00:47:03','2017-08-08 23:47:03','',2,'http://inchbald.dev/wp-content/uploads/GC2F0645.jpg',0,'attachment','image/jpeg',0),
	(37,1,'2017-08-09 00:46:42','2017-08-08 23:46:42','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Leicester City, XYZ employs over 2,000 people and does all kinds of awesome things for the Leicester community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href=\"http://inchbald.dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Home','','inherit','closed','closed','','2-revision-v1','','','2017-08-09 00:46:42','2017-08-08 23:46:42','',2,'http://inchbald.dev/2-revision-v1/',0,'revision','',0),
	(38,1,'2017-08-09 00:47:54','2017-08-08 23:47:54','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Leicester City, XYZ employs over 2,000 people and does all kinds of awesome things for the Leicester community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href=\"http://inchbald.dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Home','','inherit','closed','closed','','2-revision-v1','','','2017-08-09 00:47:54','2017-08-08 23:47:54','',2,'http://inchbald.dev/2-revision-v1/',0,'revision','',0),
	(39,1,'2017-08-09 13:22:01','2017-08-09 12:22:01','','Home','','inherit','closed','closed','','2-revision-v1','','','2017-08-09 13:22:01','2017-08-09 12:22:01','',2,'http://inchbald.dev/2-revision-v1/',0,'revision','',0),
	(40,1,'2017-08-09 14:41:50','2017-08-09 13:41:50','','Summer Exhibition','','publish','closed','closed','','summer-exhibition','','','2017-08-09 15:27:37','2017-08-09 14:27:37','',0,'http://inchbald.dev/?post_type=events&#038;p=40',0,'events','',0),
	(41,1,'2017-08-09 14:41:43','2017-08-09 13:41:43','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event date','event-date','publish','closed','closed','','group_598b10b554e11','','','2017-08-09 16:02:15','2017-08-09 15:02:15','',0,'http://inchbald.dev/?post_type=acf-field-group&#038;p=41',0,'acf-field-group','',0),
	(42,1,'2017-08-09 14:41:43','2017-08-09 13:41:43','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"j M, Y\";s:13:\"return_format\";s:6:\"j M, Y\";s:9:\"first_day\";i:1;}','From date','from_date','publish','closed','closed','','field_598b10c28df63','','','2017-08-09 16:02:15','2017-08-09 15:02:15','',41,'http://inchbald.dev/?post_type=acf-field&#038;p=42',0,'acf-field','',0),
	(43,1,'2017-08-09 14:41:43','2017-08-09 13:41:43','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"j M, Y\";s:13:\"return_format\";s:6:\"j M, Y\";s:9:\"first_day\";i:1;}','To date','to_date','publish','closed','closed','','field_598b10ff8df64','','','2017-08-09 16:01:59','2017-08-09 15:01:59','',41,'http://inchbald.dev/?post_type=acf-field&#038;p=43',1,'acf-field','',0),
	(44,1,'2017-08-09 14:41:50','2017-08-09 13:41:50','','Summer Exhibition','','inherit','closed','closed','','40-revision-v1','','','2017-08-09 14:41:50','2017-08-09 13:41:50','',40,'http://inchbald.dev/40-revision-v1/',0,'revision','',0),
	(45,1,'2017-08-09 14:42:23','2017-08-09 13:42:23','','Summer Exhibition','','inherit','closed','closed','','40-revision-v1','','','2017-08-09 14:42:23','2017-08-09 13:42:23','',40,'http://inchbald.dev/40-revision-v1/',0,'revision','',0),
	(46,1,'2017-08-09 15:34:58','2017-08-09 14:34:58','','Winter Exhibition','','publish','closed','closed','','winter-exhibition','','','2017-08-09 15:34:58','2017-08-09 14:34:58','',0,'http://inchbald.dev/?post_type=events&#038;p=46',0,'events','',0),
	(47,1,'2017-08-09 15:34:58','2017-08-09 14:34:58','','Winter Exhibition','','inherit','closed','closed','','46-revision-v1','','','2017-08-09 15:34:58','2017-08-09 14:34:58','',46,'http://inchbald.dev/46-revision-v1/',0,'revision','',0),
	(48,1,'2017-08-09 15:35:15','2017-08-09 14:35:15','','Spring Exhibition','','publish','closed','closed','','spring-exhibition','','','2017-08-09 15:35:15','2017-08-09 14:35:15','',0,'http://inchbald.dev/?post_type=events&#038;p=48',0,'events','',0),
	(49,1,'2017-08-09 15:35:15','2017-08-09 14:35:15','','Spring Exhibition','','inherit','closed','closed','','48-revision-v1','','','2017-08-09 15:35:15','2017-08-09 14:35:15','',48,'http://inchbald.dev/48-revision-v1/',0,'revision','',0),
	(50,1,'2017-08-09 16:39:10','2017-08-09 15:39:10','','GC2F2037','','inherit','open','closed','','gc2f2037','','','2017-08-09 16:39:14','2017-08-09 15:39:14','',2,'http://inchbald.dev/wp-content/uploads/GC2F2037.jpg',0,'attachment','image/jpeg',0),
	(51,1,'2017-08-09 16:39:17','2017-08-09 15:39:17','','Home','','inherit','closed','closed','','2-revision-v1','','','2017-08-09 16:39:17','2017-08-09 15:39:17','',2,'http://inchbald.dev/2-revision-v1/',0,'revision','',0),
	(52,1,'2017-08-09 16:40:01','2017-08-09 15:40:01','','GC2F1567','','inherit','open','closed','','gc2f1567','','','2017-08-09 16:40:04','2017-08-09 15:40:04','',2,'http://inchbald.dev/wp-content/uploads/GC2F1567.jpg',0,'attachment','image/jpeg',0),
	(53,1,'2017-08-09 16:40:07','2017-08-09 15:40:07','','Home','','inherit','closed','closed','','2-revision-v1','','','2017-08-09 16:40:07','2017-08-09 15:40:07','',2,'http://inchbald.dev/2-revision-v1/',0,'revision','',0),
	(54,1,'2017-08-09 19:46:17','2017-08-09 18:46:17','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Home video','home-video','publish','closed','closed','','group_598b584364f0a','','','2017-08-09 19:46:17','2017-08-09 18:46:17','',0,'http://inchbald.dev/?post_type=acf-field-group&#038;p=54',0,'acf-field-group','',0),
	(55,1,'2017-08-09 19:46:17','2017-08-09 18:46:17','a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Home video','home_video','publish','closed','closed','','field_598b58504cb40','','','2017-08-09 19:46:17','2017-08-09 18:46:17','',54,'http://inchbald.dev/?post_type=acf-field&p=55',0,'acf-field','',0),
	(56,1,'2017-08-09 20:59:55','2017-08-09 19:59:55','','Home','','inherit','closed','closed','','2-revision-v1','','','2017-08-09 20:59:55','2017-08-09 19:59:55','',2,'http://inchbald.dev/2-revision-v1/',0,'revision','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(20,2,0),
	(21,2,0),
	(22,2,0),
	(23,2,0),
	(24,2,0),
	(25,2,0),
	(26,2,0),
	(27,2,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'nav_menu','',0,8);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorised','uncategorised',0),
	(2,'Primary navigation','primary-navigation',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','sidelsky'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','fresh'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','true'),
	(10,1,'locale',''),
	(11,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(12,1,'wp_user_level','10'),
	(13,1,'dismissed_wp_pointers',''),
	(14,1,'show_welcome_panel','1'),
	(15,1,'session_tokens','a:3:{s:64:\"c2712ef86541086ab5949a7fba4613cff5edcc624fa48f0cf4ec914bd7e63900\";a:4:{s:10:\"expiration\";i:1502463561;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36\";s:5:\"login\";i:1502290761;}s:64:\"f16dfcb1c61af837a6e36c234405d8ecaf2382c65026fc6b4c55ad07f12f7d6e\";a:4:{s:10:\"expiration\";i:1502463610;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36\";s:5:\"login\";i:1502290810;}s:64:\"8fe5e8dfcc754841a831657640ca98b79fc09995cfae5c2847f9fd11a3146b42\";a:4:{s:10:\"expiration\";i:1502546590;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36\";s:5:\"login\";i:1502373790;}}'),
	(16,1,'wp_user-settings','editor=html&libraryContent=browse&post_dfw=off'),
	(17,1,'wp_user-settings-time','1502281317'),
	(18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
	(19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}'),
	(20,1,'acf_user_settings','a:0:{}');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'sidelsky','$P$BqakA0NhdACZSjDIlkfZD3pjPiUojH.','sidelsky','support@squie.com','','2017-08-07 14:58:06','',0,'sidelsky');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
