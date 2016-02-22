# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.10)
# Database: task_manager
# Generation Time: 2016-02-22 21:08:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attachments`;

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bind_type` varchar(64) NOT NULL DEFAULT '',
  `bind_id` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;

INSERT INTO `attachments` (`id`, `bind_type`, `bind_id`, `file`, `info`)
VALUES
	(11,'tickets',5,'438834-NBS slider.png',''),
	(13,'tasks',32,'130886-NBS slider.png',''),
	(14,'tasks',34,'993107-Surrogacy hompeage sample2 copy.jpg',''),
	(15,'tasks',43,'594400-pink baby soft.jpg',''),
	(16,'tasks',44,'165886-about us banner copy.jpg',''),
	(17,'tasks',44,'686062-intended parents banner copy.jpg',''),
	(18,'tasks',44,'545023-Surrogacy sample copy.jpg',''),
	(19,'comments',19,'365741-pink baby copy.jpg',''),
	(20,'tasks',45,'920005-NHFC_Talks_Nov_12.png',''),
	(21,'comments',33,'682075-search.jpg',''),
	(22,'tickets',11,'956027-Family Cord.jpg',''),
	(23,'tickets',11,'261053-New Life.jpg',''),
	(24,'tickets',11,'150247-Nutrition Coaching.jpg',''),
	(25,'tickets',11,'833896-Resource Banner.jpg',''),
	(26,'comments',38,'351649-search_banner.jpg','Search Banner'),
	(28,'tasks',52,'230211-Egg Freezing.png',''),
	(30,'tasks',55,'364787-kutluk appointmet button copy.png',''),
	(31,'comments',48,'238967-about us banner.jpg','please replace using this'),
	(32,'comments',48,'179937-Surrogacy sample copy.jpg','please replace using this'),
	(33,'comments',48,'753895-intended parents.jpg','please replace using this'),
	(37,'tasks',58,'627031-NHFC-Talks-Web-banner.jpg','The banner for Decembers NHFC-talks '),
	(38,'tasks',64,'183635-Surrogacy sample copy.jpg','please replace with attached banner'),
	(39,'tasks',72,'655283-JARG.jpg',''),
	(40,'comments',69,'358296-cover.tif.jpg',''),
	(42,'tasks',76,'794953-iui catheter usno text.jpg',''),
	(43,'tasks',77,'364381-Website correction.pdf',''),
	(44,'tasks',80,'621516-4cc-reception-night.jpg',''),
	(45,'tasks',80,'152311-labv1-pieces-sized.jpg',''),
	(46,'tasks',80,'672829-4cc-fishtank2.jpg',''),
	(47,'tasks',80,'328350-4cc-night.jpg',''),
	(48,'comments',78,'290206-4cc-fishtank2.jpg',''),
	(49,'comments',78,'505371-4cc-night.jpg',''),
	(50,'comments',78,'522556-4cc-reception-night.jpg',''),
	(51,'comments',78,'945489-labv1-pieces-sized.jpg',''),
	(52,'comments',78,'726316-labv1-pieces-sized (1).jpg',''),
	(53,'tickets',15,'418380-codecanyon-1021095-interactive-svg-usa-map.zip','Interactive Map addon'),
	(54,'comments',93,'919275-ART World Congress Page Content.docx',''),
	(55,'comments',95,'942085-Art-World-Congress-Banner_01.jpg','Art-Worl Congress- Image Banner'),
	(56,'comments',98,'693795-BrowserPreview_tmp.png',''),
	(66,'tickets',18,'403826-donor-ad-top.jpg','background image'),
	(67,'tickets',18,'609242-egg donor page text content.docx','text content'),
	(68,'tickets',18,'144386-donor layout.jpg','layout direction'),
	(69,'tasks',91,'274502-NHFC-talks-Web-Banner-Feb.jpg',''),
	(70,'tasks',92,'369443-atsushi_tanaka.jpg',''),
	(71,'tasks',92,'427218-evelyn_telfer.jpg',''),
	(72,'tasks',92,'535089-hui_liu.jpg',''),
	(73,'tasks',92,'832046-jacques_cohen.jpg',''),
	(74,'tasks',92,'483483-Kato.jpg',''),
	(75,'tasks',92,'205301-milton_eong.jpg',''),
	(76,'tasks',92,'214888-Oktay.jpg',''),
	(77,'tasks',92,'534134-Santiago-Munne.jpg',''),
	(78,'tasks',92,'733480-sumanta_goswami.jpg',''),
	(79,'tasks',92,'650899-twink_allen.jpg',''),
	(80,'tasks',92,'166528-Xiaoyan-liang.jpg',''),
	(81,'tasks',92,'926349-yanPing_kuang.jpg',''),
	(82,'tasks',92,'201264-zaher_merhi.jpg',''),
	(83,'tasks',92,'405487-zeev_shoham.jpg',''),
	(84,'tasks',92,'139940-zhang.jpg',''),
	(85,'tasks',93,'872278-slides-BabySnow-background-wtext',''),
	(86,'tasks',93,'396252-slides-NHFCTalks-background-v2.jpg',''),
	(87,'tasks',94,'540157-Download-handbook-banner.jpg',''),
	(88,'comments',103,'504732-Purchase Order Instructions.pdf',''),
	(89,'comments',104,'773447-add_item.png',''),
	(90,'comments',104,'502376-add_vendor.png',''),
	(91,'comments',104,'577580-login.png',''),
	(92,'comments',104,'634466-menu.png',''),
	(93,'comments',104,'613646-new_po.png',''),
	(94,'comments',104,'822400-pending.png',''),
	(95,'comments',104,'486933-supervisor_approve.png',''),
	(96,'comments',104,'873317-view_po.png',''),
	(97,'tasks',96,'876468-Dr.Oktay-logo.png',''),
	(98,'tasks',96,'112932-IVF-Blog-banner-rollover.jpg',''),
	(99,'tasks',96,'623657-IVF-Blog-banner.jpg',''),
	(100,'tasks',96,'710935-IVF-Zhangsblog-banner-rollover.jpg',''),
	(101,'tasks',96,'830952-IVF-Zhangsblog-banner.jpg',''),
	(102,'tasks',96,'827775-NHFC-Site-Blog-Section-Page.png',''),
	(103,'tasks',97,'222678-News-Buttons-rollover.jpg',''),
	(104,'tasks',97,'930434-NHFC-Site-News-section.png',''),
	(105,'tasks',97,'357504-Published-Buttons-rollover.jpg',''),
	(107,'tasks',100,'813382-News-Buttons-rollover.jpg',''),
	(108,'tasks',100,'550639-Published-Buttons-rollover.jpg',''),
	(109,'tasks',100,'679666-Research-Buttons-rollover.jpg',''),
	(110,'tasks',101,'651634-News-Buttons-rollover.jpg',''),
	(111,'tasks',101,'147341-Published-Buttons-rollover.jpg',''),
	(112,'tasks',101,'945988-Research-Buttons-rollover.jpg',''),
	(113,'tasks',102,'512334-Dr-Chavez.jpg',''),
	(114,'tasks',102,'417512-Dr-Cheang.jpg',''),
	(115,'tasks',102,'447890-Dr-Li.jpg',''),
	(116,'tasks',102,'792910-Dr-Liu.jpg',''),
	(117,'tasks',102,'569309-Dr-Rosen.jpg',''),
	(118,'tasks',102,'457721-Dr-Yang.jpg',''),
	(119,'tasks',102,'994304-Dr-Zhang.jpg',''),
	(120,'tasks',103,'706180-Dr.Oktay-logo-v2.png',''),
	(121,'tasks',112,'367850-Dr-Morgan.jpg',''),
	(122,'tasks',112,'585642-Dr-Oktay.jpg',''),
	(123,'tasks',113,'437944-Dr-Morgan.jpg',''),
	(124,'tasks',114,'152506-slides-AtrWorldCongress2016-background-v2.jpg',''),
	(125,'tasks',114,'387767-slides-BabySnow-background-wtext',''),
	(126,'ticketsComments',40,'141021-slides-free-consultation-banner.jpg',''),
	(127,'ticketsComments',40,'368281-slides-AtrWorldCongress2016-background-v2.jpg',''),
	(128,'ticketsComments',40,'802235-slides-BabySnow-background-wtext',''),
	(129,'comments',127,'115007-slides-Blogs-Banner.jpg',''),
	(130,'tasks',120,'884836-Dr-Zhang.jpg',''),
	(131,'tasks',121,'839963-News-Buttons-rollover.jpg',''),
	(132,'tasks',121,'709346-Published-Buttons-rollover.jpg',''),
	(133,'tasks',121,'269114-Research-Buttons-rollover.jpg',''),
	(134,'comments',143,'982039-News-Buttons-rollover.jpg',''),
	(135,'comments',143,'653898-Published-Buttons-rollover.jpg',''),
	(136,'comments',143,'484764-Research-Buttons-rollover.jpg',''),
	(137,'comments',144,'636432-News-Buttons-rollover.jpg',''),
	(138,'comments',144,'742452-Published-Buttons-rollover.jpg',''),
	(139,'comments',144,'505486-Research-Buttons-rollover.jpg',''),
	(140,'tickets',34,'248872-Dr.Oktay-logo-v3.png',''),
	(141,'tickets',34,'630034-NHFC-logo-bottom.png',''),
	(142,'tickets',35,'114883-IVF-Blog-banner-rollover.jpg',''),
	(143,'tickets',35,'468366-IVF-Blog-banner.jpg',''),
	(144,'tickets',35,'529663-IVF-Zhangsblog-banner-rollover.jpg',''),
	(145,'tickets',35,'741195-IVF-Zhangsblog-banner.jpg',''),
	(146,'ticketsComments',45,'577936-codecanyon-4505016-super-carousel-responsive-wordpress-plugin.zip',''),
	(147,'comments',152,'495431-ask-a-doctor-comps.pdf',''),
	(149,'tasks',127,'238074-egg-freezing_appointmet_banner.jpg',''),
	(150,'comments',163,'156792-egg-freezing_appointmet_banner.jpg',''),
	(151,'comments',167,'950276-Questions-and-Answers-logo.png',''),
	(152,'comments',167,'528066-colors-for-ask-a-doctor.jpg',''),
	(153,'tasks',132,'751239-kutluk_appointmet_button-v2.jpg',''),
	(154,'tasksComments',135,'957216-preservation sample layout copy.jpg',''),
	(156,'tasks',137,'972580-slides-Chinese-New-Year-Banner.jpg',''),
	(157,'tasks',137,'461938-slides-Valentines-baby-Banner.jpg',''),
	(158,'comments',171,'893515-slides-Chinese-New-Year-v2-Banner.jpg',''),
	(159,'tasks',138,'974381-mDNA.jpg',''),
	(161,'comments',187,'744549-slides-Chinese-New-Year-v2-Banner.jpg',''),
	(162,'ticketsComments',58,'626498-Ask a Doctor Comprehensive.docx',''),
	(163,'ticketsComments',58,'640789-Ask a Doctor Updated Questions..docx',''),
	(164,'tasks',157,'158148-IVF-Blog-banner-rollover.jpg',''),
	(165,'tasks',157,'823106-IVF-Blog-banner.jpg',''),
	(166,'tasks',157,'956271-IVF-Zhangsblog-banner-rollover.jpg',''),
	(167,'tasks',157,'735161-IVF-Zhangsblog-banner.jpg',''),
	(168,'tasks',158,'521634-slides-free-consultation-banner.jpg',''),
	(169,'comments',214,'276176-Columbus OBGYN website content.docx','word doc content'),
	(170,'ticketsComments',68,'147022-betheme.zip','Theme'),
	(171,'ticketsComments',68,'228576-betheme-child.zip','Child Theme'),
	(172,'projects',18,'147022-betheme.zip','Theme'),
	(173,'projects',18,'228576-betheme-child.zip','Child Theme'),
	(174,'projects',18,'276176-Columbus OBGYN website content.docx','Site Content'),
	(175,'comments',219,'184898-slides-Blogs-Banner-v2.jpg','');

/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table configuration
# ------------------------------------------------------------

DROP TABLE IF EXISTS `configuration`;

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;

INSERT INTO `configuration` (`id`, `key`, `value`)
VALUES
	(1,'app_administrator_email',''),
	(2,'app_administrator_password',''),
	(3,'app_app_name','New Hope Fertility Task Manager'),
	(4,'app_app_short_name','nhfc'),
	(5,'app_email_label','NHFC Task Manager -'),
	(6,'app_default_skin','WordPress'),
	(7,'sf_default_timezone','America/New_York'),
	(8,'sf_default_culture','en'),
	(9,'app_rows_per_page','50'),
	(10,'app_custom_short_date_format','M d, Y'),
	(11,'app_custom_logn_date_format','M d, Y H:i'),
	(12,'app_allow_adit_task_comments_date','off'),
	(13,'app_show_menu_icons','off'),
	(14,'app_show_footer_links','off'),
	(15,'app_task_fields_task_version','off'),
	(16,'app_task_fields_task_phase','on'),
	(17,'app_task_fields_task_group','off'),
	(18,'app_task_fields_priority','on'),
	(19,'app_task_fields_label','on'),
	(20,'app_task_fields_id','off'),
	(21,'app_task_fields_name','on'),
	(22,'app_task_fields_status','on'),
	(23,'app_task_fields_assigned_to','on'),
	(24,'app_task_fields_created_by','off'),
	(25,'app_task_fields_estimated_time','on'),
	(26,'app_task_fields_start_date','off'),
	(27,'app_task_fields_due_date','on'),
	(28,'app_task_fields_progress','off'),
	(29,'app_task_fields_created_at','off'),
	(30,'app_use_skins','on'),
	(31,'app_use_related_tasks','on'),
	(32,'app_use_public_tickets','on'),
	(33,'app_public_ticket_show_login_link','off'),
	(34,'app_public_ticket_allow_attachments','on'),
	(35,'app_use_project_phases','on'),
	(36,'app_use_project_versions','on'),
	(37,'app_use_project_discussions','on'),
	(38,'app_use_task_groups','on'),
	(39,'app_use_task_timetracker','on'),
	(40,'app_use_fck_editor','on'),
	(41,'app_notify_all_project_team','off'),
	(42,'app_notify_all_customers','off'),
	(43,'app_use_single_email','off'),
	(44,'app_single_email_addres_from','appdev@nhfc.com'),
	(45,'app_single_name_from','New Hope Fertility Center'),
	(46,'app_use_smtp','on'),
	(47,'app_smtp_server','smtp.gmail.com'),
	(48,'app_smtp_port','465'),
	(49,'app_smtp_encryption','ssl'),
	(50,'app_smtp_login','appdev@nhfc.com'),
	(51,'app_smtp_pass','@ppD3v@4cc'),
	(52,'app_use_ldap_login','on'),
	(53,'app_ldap_host',''),
	(54,'app_ldap_port',''),
	(55,'app_ldap_base_dn','dc=nhfchq,dc=com'),
	(56,'app_ldap_version','3'),
	(57,'app_use_email_notification','on'),
	(58,'app_show_user_email','off'),
	(59,'app_show_user_photo','on'),
	(60,'app_task_fields_type','off'),
	(61,'app_login_page_heading','Welcome to New Hope Fertility Task Manager'),
	(62,'app_login_page_content',''),
	(63,'app_new_user_email_subject','Your account has been created in New Hope Fertility Task Manager'),
	(64,'app_new_user_email_body','An account has been created for you at the Task Manager. You can log into the task manager at&nbsp;http://nhfcweb01.nhfchq.com/task_manager/. The login details are below.<div>&nbsp;</div><div>[login_details]&nbsp;</div>'),
	(65,'app_amount_previous_comments','2'),
	(66,'app_rows_limit','250'),
	(67,'app_task_columns_list','TasksPriority,TasksLabels,Name,TasksStatus,TasksTypes,AssignedTo,DueDate,CreatedAt'),
	(68,'app_send_email_to_owner','on'),
	(69,'app_public_ticket_use_antispam','on'),
	(70,'app_app_logo',''),
	(71,'app_use_javascript_dropdown','on'),
	(72,'app_ldap_default_user_group','3'),
	(73,'app_ldap_server','nhfchq.com'),
	(74,'app_ldap_uid','samaccountname'),
	(75,'app_ldap_user_filter',''),
	(76,'app_ldap_email','mail'),
	(77,'app_ldap_user','web_svc'),
	(78,'app_ldap_password','W!thh09e@4cc');

/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table departments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `purchase_limit` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_departments_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;

INSERT INTO `departments` (`id`, `name`, `sort_order`, `active`, `user_id`, `purchase_limit`)
VALUES
	(1,'Accounts Payable',NULL,NULL,0,1.00),
	(2,'Billing',NULL,NULL,0,1.00),
	(3,'Chinese',NULL,NULL,0,1.00),
	(4,'ClinicalTrial',NULL,NULL,0,1.00),
	(5,'Donor',NULL,NULL,0,1.00),
	(6,'Doctor',NULL,NULL,0,1.00),
	(7,'Embryology',NULL,NULL,0,1.00),
	(8,'Front',NULL,NULL,0,1.00),
	(9,'Housekeeping',NULL,NULL,0,1.00),
	(10,'HR',NULL,NULL,0,1.00),
	(11,'IOV',NULL,NULL,0,1.00),
	(12,'IT',NULL,1,70,NULL),
	(13,'Lab',NULL,NULL,0,1.00),
	(14,'MA',NULL,NULL,0,1.00),
	(15,'Macau',NULL,NULL,0,1.00),
	(16,'Marketing',NULL,1,106,NULL),
	(17,'Nurse',NULL,NULL,0,1.00),
	(18,'Sonographer',NULL,NULL,0,1.00),
	(19,'New Beginnings',NULL,NULL,0,1.00),
	(20,'General',NULL,NULL,0,500.00);

/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table discussion_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discussion_comments`;

CREATE TABLE `discussion_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `discussion_status_id` int(11) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_discussion_comments_discussions` (`discussion_id`),
  KEY `fk_discussion_comments_users` (`user_id`),
  KEY `fk_discussion_status_id` (`discussion_status_id`),
  CONSTRAINT `discussion_comments_ibfk_1` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `discussion_comments_ibfk_3` FOREIGN KEY (`discussion_status_id`) REFERENCES `discussion_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `discussion_comments_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table discussion_reports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discussion_reports`;

CREATE TABLE `discussion_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `display_on_home` tinyint(1) DEFAULT NULL,
  `project_id` text,
  `project_type_id` text,
  `project_status_id` text,
  `discussion_status_id` text,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `discussion_reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table discussion_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discussion_status`;

CREATE TABLE `discussion_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `discussion_status` WRITE;
/*!40000 ALTER TABLE `discussion_status` DISABLE KEYS */;

INSERT INTO `discussion_status` (`id`, `name`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'Open',0,1,1),
	(2,'Closed',1,NULL,1);

/*!40000 ALTER TABLE `discussion_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table discussions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discussions`;

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `discussion_status_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `assigned_to` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fk_discussion_projects` (`project_id`),
  KEY `fk_discussion_users` (`user_id`),
  KEY `fk_discussion_discussion_status` (`discussion_status_id`),
  CONSTRAINT `discussion_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `discussion_ibfk_3` FOREIGN KEY (`discussion_status_id`) REFERENCES `discussion_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `discussions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `details` text NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_events_users` (`user_id`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;

INSERT INTO `events` (`id`, `name`, `start_date`, `end_date`, `details`, `user_id`)
VALUES
	(3,'Web Development Meeting','2015-11-06 10:00:00','2015-11-06 11:30:00','Webmeeting',121),
	(4,'Change NHFC Talks','2015-11-12 00:00:00','2015-11-12 00:00:00','Update NHFC Talks at&nbsp;<a href=\"http://newhopefertility.com\" title=\"http://newhopefertility.com\" target=\"\">http://newhopefertility.com</a>',121),
	(5,'Remove Valentines Day Banner from NHFC','2016-02-15 09:00:00','2016-02-15 09:30:00','Remove Valentines Day Banner from NHFC',121),
	(6,'Remove Chinese New Year Banner from NHFC','2016-02-22 09:00:00','2016-02-22 09:30:00','Remove Chinese New Year Banner from NHFC',121);

/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table extra_field_list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `extra_field_list`;

CREATE TABLE `extra_field_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extra_field_id` int(11) NOT NULL DEFAULT '0',
  `bind_id` int(11) NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_extra_field_list_extra_fields` (`extra_field_id`),
  CONSTRAINT `extra_field_list_ibfk_1` FOREIGN KEY (`extra_field_id`) REFERENCES `extra_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `extra_field_list` WRITE;
/*!40000 ALTER TABLE `extra_field_list` DISABLE KEYS */;

INSERT INTO `extra_field_list` (`id`, `extra_field_id`, `bind_id`, `value`)
VALUES
	(95,7,7,'http://www.newhopefertility.com'),
	(96,8,7,'http://staging.nhfctesting.com'),
	(97,1,7,''),
	(98,2,7,''),
	(99,3,7,''),
	(100,4,7,''),
	(101,5,7,''),
	(102,7,8,'http://nbsurrogacy.com'),
	(103,8,8,'http://nhfcweb01.nhfchq.com/wordpress/'),
	(104,1,8,''),
	(105,2,8,''),
	(106,3,8,''),
	(107,4,8,''),
	(108,5,8,''),
	(109,7,9,'http://192.168.193.252:8080/'),
	(110,8,9,'http://go-to-display.dev'),
	(111,1,9,''),
	(112,2,9,''),
	(113,3,9,''),
	(114,4,9,''),
	(115,5,9,''),
	(116,9,7,''),
	(117,7,10,''),
	(118,8,10,''),
	(119,1,10,''),
	(120,2,10,''),
	(121,3,10,''),
	(122,4,10,''),
	(123,5,10,''),
	(124,7,11,''),
	(125,8,11,''),
	(126,1,11,''),
	(127,2,11,''),
	(128,3,11,''),
	(129,4,11,''),
	(130,5,11,''),
	(131,9,8,''),
	(133,9,10,''),
	(134,7,12,''),
	(135,8,12,''),
	(136,1,12,''),
	(137,2,12,''),
	(138,3,12,''),
	(139,4,12,''),
	(140,5,12,''),
	(141,9,3,''),
	(142,7,13,'http://www.artworldcongress.com'),
	(143,8,13,'http://artworld.nhfctesting.com/'),
	(144,1,13,''),
	(145,2,13,''),
	(146,3,13,''),
	(147,4,13,''),
	(148,5,13,''),
	(149,9,11,''),
	(150,7,14,'http://www.uskitazato.com'),
	(151,8,14,''),
	(152,1,14,''),
	(153,2,14,''),
	(154,3,14,''),
	(155,4,14,''),
	(156,5,14,''),
	(157,7,15,'http://newhopefertility.com/staff/'),
	(158,8,15,''),
	(159,1,15,''),
	(160,2,15,''),
	(161,3,15,'2016-01-01'),
	(162,4,15,''),
	(163,5,15,''),
	(164,9,4,''),
	(165,9,5,''),
	(166,7,16,''),
	(167,8,16,''),
	(168,1,16,''),
	(169,2,16,''),
	(170,3,16,''),
	(171,4,16,''),
	(172,5,16,''),
	(173,7,17,''),
	(174,8,17,''),
	(175,1,17,''),
	(176,2,17,''),
	(177,3,17,''),
	(178,4,17,''),
	(179,5,17,''),
	(180,7,18,'http://columbuscircleobgyn.com'),
	(181,8,18,'http://columbuscircle.nhfctesting.com'),
	(182,1,18,''),
	(183,2,18,''),
	(184,3,18,'2016-03-04'),
	(185,4,18,'2016-03-04'),
	(186,5,18,''),
	(187,9,12,''),
	(188,9,13,''),
	(189,9,14,''),
	(190,9,15,'');

/*!40000 ALTER TABLE `extra_field_list` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table extra_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `extra_fields`;

CREATE TABLE `extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `bind_type` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT NULL,
  `display_in_list` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `extra_fields` WRITE;
/*!40000 ALTER TABLE `extra_fields` DISABLE KEYS */;

INSERT INTO `extra_fields` (`id`, `name`, `bind_type`, `type`, `sort_order`, `active`, `display_in_list`)
VALUES
	(1,'Review Brief','projects','date',2,1,NULL),
	(2,'Design','projects','date',3,1,NULL),
	(3,'Development','projects','date',4,1,NULL),
	(4,'Site Test','projects','date',5,1,NULL),
	(5,'UAT','projects','date',6,1,NULL),
	(6,'Go Live','projects','date',7,NULL,1),
	(7,'Live Url','projects','url',0,1,NULL),
	(8,'Test Url','projects','url',1,1,NULL),
	(9,'Phone','users','text',0,1,1);

/*!40000 ALTER TABLE `extra_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table phase_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `phase_status`;

CREATE TABLE `phase_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `phase_status` WRITE;
/*!40000 ALTER TABLE `phase_status` DISABLE KEYS */;

INSERT INTO `phase_status` (`id`, `name`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'Open',0,1,1),
	(2,'Completed',1,NULL,1),
	(3,'On Hold',2,NULL,1),
	(4,'Cancelled',3,NULL,1);

/*!40000 ALTER TABLE `phase_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table phases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `phases`;

CREATE TABLE `phases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `default_values` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `phases` WRITE;
/*!40000 ALTER TABLE `phases` DISABLE KEYS */;

INSERT INTO `phases` (`id`, `name`, `default_values`)
VALUES
	(1,'New Site','Quotes\r\nGraphic Design\r\nDevelopment\r\nSite Test\r\nUser Test\r\nGo Live\r\nWarranty'),
	(2,'Support','Quotes\r\nDefects\r\nChanges\r\n');

/*!40000 ALTER TABLE `phases` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_comments`;

CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_comments_projects` (`project_id`),
  KEY `fk_project_comments_pople` (`user_id`),
  CONSTRAINT `project_comments_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_comments` WRITE;
/*!40000 ALTER TABLE `project_comments` DISABLE KEYS */;

INSERT INTO `project_comments` (`id`, `project_id`, `user_id`, `description`, `created`)
VALUES
	(2,8,121,'Assigned To: Jane Groenendaal','2015-11-02 14:54:08'),
	(3,8,121,'Assigned To: Eva Diep','2015-11-04 13:00:48'),
	(4,7,121,'Assigned To: Eva Diep','2015-11-04 13:01:16'),
	(5,13,106,'Assigned To: Daniel Kang, Nichole Boseman, Emily Kemp, Eva Diep, Geoffrey Hawes, Leonidas Paulino','2015-11-10 15:29:05'),
	(6,8,130,'Assigned To: Annette Chen, Jane Groenendaal','2015-11-13 12:44:13'),
	(7,13,121,'Status: On Hold','2016-02-16 15:33:58'),
	(8,11,121,'Status: On Hold','2016-02-16 15:34:21'),
	(9,9,121,'Status: Closed','2016-02-16 17:11:07');

/*!40000 ALTER TABLE `project_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_phases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_phases`;

CREATE TABLE `project_phases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `phase_status_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_phase_projects` (`project_id`),
  KEY `fk_project_phase_phase_status` (`phase_status_id`),
  CONSTRAINT `project_phase_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_phase_ibfk_2` FOREIGN KEY (`phase_status_id`) REFERENCES `phase_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table project_reports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_reports`;

CREATE TABLE `project_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `display_on_home` tinyint(1) DEFAULT NULL,
  `project_id` text,
  `project_type_id` text,
  `project_status_id` text,
  `in_team` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `display_in_menu` tinyint(1) DEFAULT NULL,
  `visible_on_home` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `project_reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table project_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_status`;

CREATE TABLE `project_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_status` WRITE;
/*!40000 ALTER TABLE `project_status` DISABLE KEYS */;

INSERT INTO `project_status` (`id`, `name`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'Open',0,1,1),
	(2,'On Hold',1,NULL,1),
	(3,'Closed',2,NULL,1),
	(4,'Cancelled',3,NULL,1);

/*!40000 ALTER TABLE `project_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_statuses`;

CREATE TABLE `project_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_statuses` WRITE;
/*!40000 ALTER TABLE `project_statuses` DISABLE KEYS */;

INSERT INTO `project_statuses` (`id`, `name`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'Open',0,1,1),
	(2,'On Hold',1,NULL,1),
	(3,'Closed',2,NULL,1),
	(4,'Cancelled',3,NULL,1);

/*!40000 ALTER TABLE `project_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_types`;

CREATE TABLE `project_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_types` WRITE;
/*!40000 ALTER TABLE `project_types` DISABLE KEYS */;

INSERT INTO `project_types` (`id`, `name`, `sort_order`, `active`)
VALUES
	(2,'New Site',1,1),
	(3,'Support',0,1),
	(4,'Internal',2,1),
	(5,'Maintenance',0,1);

/*!40000 ALTER TABLE `project_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_status_id` int(11) DEFAULT NULL,
  `project_types_id` int(11) DEFAULT NULL,
  `created_by` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `team` text,
  `created` datetime DEFAULT NULL,
  `order_task_by` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_project_status` (`project_status_id`),
  KEY `fk_project_project_types` (`project_types_id`),
  KEY `fk_project_pople` (`created_by`),
  CONSTRAINT `project_ibfk_2` FOREIGN KEY (`project_types_id`) REFERENCES `project_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `project_ibfk_3` FOREIGN KEY (`project_status_id`) REFERENCES `project_status` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;

INSERT INTO `projects` (`id`, `project_status_id`, `project_types_id`, `created_by`, `name`, `description`, `team`, `created`, `order_task_by`)
VALUES
	(7,1,3,121,'New Hope Fertility Center','','70,121,106,130,111,10','2015-11-02 14:21:10',''),
	(8,1,3,121,'New Beginnings','','70,121,11,7,8,6','2015-11-02 14:21:53',''),
	(9,3,3,121,'Go To Display','','70,121','2015-11-02 14:23:41',''),
	(10,1,4,70,'NHFC PO','<p>Scope:&nbsp; Track Purchase Order</p><p>Function:&nbsp; Ability to Approve , Reject</p><p>High Level Requirement:&nbsp; Auditing, Reporting, Reminder</p>','70,121','2015-11-02 15:50:07',''),
	(11,2,3,70,'NHFC Scheduler','','70,121','2015-11-02 15:51:17',''),
	(13,2,3,106,'Art World Congress','','3,4,10,8,6,5','2015-11-10 15:27:40',''),
	(14,1,3,106,'Special Project US.K','','4,8,6,5','2015-11-20 11:30:02',''),
	(15,1,2,121,'New Hope Fertility Staff Site','','70,121','2015-12-04 16:50:01',''),
	(16,1,4,121,'General','','3,4,6,5,8,10,12','2016-02-12 11:17:25',''),
	(18,1,2,121,'Columbus Circle ObGYN','<p>New Site for&nbsp;Columbus Circle ObGYN.&nbsp;</p>\r\n<p>Will be set up as a Wordpress Site. We are looking at using&nbsp;he template&nbsp;<a href=\"http://themes.muffingroup.com/be/science/\" target=\"_blank\">http://themes.muffingroup.com/<wbr>be/<span>science</span>/</a></p>','3,4,8,6,5','2016-02-16 15:32:01','');

/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table task_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `task_comments`;

CREATE TABLE `task_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned DEFAULT NULL,
  `task_status_id` int(11) DEFAULT NULL,
  `task_priority_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `worked_hours` float DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_task_comments_pople` (`created_by`),
  KEY `fk_task_comments_tasks` (`task_id`),
  KEY `fk_task_comments_status` (`task_status_id`),
  KEY `fk_task_comments_priority` (`task_priority_id`),
  CONSTRAINT `task_comments_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `task_comments_ibfk_3` FOREIGN KEY (`task_status_id`) REFERENCES `task_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `task_comments_ibfk_4` FOREIGN KEY (`task_priority_id`) REFERENCES `task_priority` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `task_comments_ibfk_5` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `task_comments` WRITE;
/*!40000 ALTER TABLE `task_comments` DISABLE KEYS */;

INSERT INTO `task_comments` (`id`, `task_id`, `created_by`, `task_status_id`, `task_priority_id`, `due_date`, `worked_hours`, `description`, `created`, `progress`)
VALUES
	(1,23,121,NULL,NULL,NULL,NULL,'Assigned To: Nichole Boseman','2015-11-02 15:05:24',NULL),
	(2,23,121,9,NULL,NULL,NULL,'Where does insurance get updated?&nbsp;','2015-11-02 15:31:06',NULL),
	(3,26,121,7,NULL,NULL,NULL,'fixed prescreening app not emailing&nbsp;','2015-11-02 15:46:03',NULL),
	(4,24,121,7,NULL,NULL,NULL,'extraneous symbol removed','2015-11-02 15:46:43',NULL),
	(5,30,121,9,NULL,NULL,1,'Most of the links have been fixed, but on the page http://www.newhopefertility.com/choose-best-fertility-clinic/  there is a link that reads \"2014 ASRM conference that shows our exemplary success rates.\" Where should this page link to? Originally it was supposed to point to http://www.newhopefertility.com/new-hope-study-tops-ivf-success-rates/','2015-11-04 10:15:57',NULL),
	(6,30,106,NULL,NULL,NULL,NULL,'The link had to be taken down. You can remove that whole sentence.','2015-11-04 10:28:06',NULL),
	(7,30,121,7,NULL,NULL,NULL,'all links have been fixed.','2015-11-04 10:43:44',NULL),
	(8,23,121,7,NULL,NULL,NULL,'Spoke to Annette, updated the page.','2015-11-04 13:02:15',NULL),
	(9,25,121,7,NULL,NULL,0.5,'Font difference has been fixed.','2015-11-04 13:06:50',NULL),
	(10,32,121,7,NULL,NULL,0.5,'Slider has been fixed','2015-11-05 09:30:07',NULL),
	(11,33,121,7,NULL,NULL,NULL,'Has been completed.','2015-11-05 13:42:38',NULL),
	(12,34,121,7,NULL,NULL,0.5,'has been updated','2015-11-06 12:02:26',NULL),
	(13,29,121,7,NULL,NULL,NULL,NULL,'2015-11-06 13:48:26',NULL),
	(14,40,121,NULL,NULL,NULL,NULL,'where should we add search?','2015-11-06 14:17:40',NULL),
	(15,40,106,NULL,NULL,NULL,NULL,'in the footer ?<br>','2015-11-06 14:49:49',NULL),
	(16,43,121,7,NULL,NULL,NULL,NULL,'2015-11-06 15:02:56',NULL),
	(17,40,121,NULL,NULL,NULL,NULL,'footer search goes a bit against conventions, but i can add it there if you want.','2015-11-06 16:39:36',NULL),
	(18,40,106,NULL,NULL,NULL,NULL,'i jsut cant think of any other easy place...<br>','2015-11-06 16:49:32',NULL),
	(19,43,106,1,5,NULL,NULL,'the graphic that i provided to you didn\'t match the background, so I am attaching another here for you to replace the pink baby with on the homepage.<br><br>thanks!<br>','2015-11-06 17:33:28',NULL),
	(20,43,121,9,NULL,NULL,NULL,'I\'ve updated the file but there is still a border around the image. Not sure what is going on.','2015-11-09 09:01:24',NULL),
	(21,43,121,9,NULL,NULL,NULL,'I\'ve updated the file but there is still a border around the image. Not sure what is going on.','2015-11-09 09:01:30',NULL),
	(22,42,121,7,NULL,NULL,0.5,'This has been updated','2015-11-10 09:04:24',NULL),
	(24,38,121,7,NULL,NULL,0.5,'Resized the input fields for the birthday on mobile.','2015-11-10 09:32:59',NULL),
	(25,44,121,7,NULL,NULL,1,'Banners have been updated.','2015-11-10 09:38:47',NULL),
	(29,45,121,7,NULL,NULL,0.5,'Banner was added','2015-11-10 09:40:46',NULL),
	(32,39,121,7,NULL,NULL,NULL,'Display has been fixed for bmi caluclator. Also, the orientation has been changed for mobile devices.','2015-11-10 09:46:01',NULL),
	(33,40,121,NULL,NULL,NULL,NULL,'For search, can i get a banner image that will display on the search page or pages that do not have an image? There is a blank space between the search results page and the results<div><br></div><div>http://www.nbsurrogacy.com/search</div>','2015-11-10 10:41:24',NULL),
	(34,40,121,NULL,NULL,NULL,NULL,'both search and translate have been added, the only thing i need is a banner for the search results page.','2015-11-10 12:03:41',NULL),
	(35,40,121,9,NULL,NULL,NULL,NULL,'2015-11-10 12:04:06',NULL),
	(36,43,121,7,NULL,NULL,NULL,'picture has been updated','2015-11-10 12:36:08',NULL),
	(37,46,121,7,NULL,NULL,1,'Text has been changed and the border color has been fixed.','2015-11-11 08:48:33',NULL),
	(38,40,106,NULL,NULL,NULL,NULL,'','2015-11-11 09:23:00',NULL),
	(39,40,121,7,NULL,NULL,NULL,'banner has been updated for search pages.','2015-11-11 11:44:38',NULL),
	(40,54,121,9,NULL,NULL,NULL,'Emailed Sheldongroup to update the links on the blog.&nbsp;','2015-11-11 12:38:23',NULL),
	(42,53,106,NULL,NULL,NULL,NULL,'this is a banner to be placed on OKTAY\'s site that links back to NHFC<br>','2015-11-11 12:52:31',NULL),
	(43,48,121,9,NULL,NULL,NULL,'I believe all the text is the same across the board. update the banners on the blog, but also looked to see if any text on the pages were different.','2015-11-11 12:52:33',NULL),
	(44,52,121,7,NULL,NULL,NULL,NULL,'2015-11-11 12:56:45',NULL),
	(45,55,121,7,NULL,NULL,0.5,'','2015-11-11 13:10:07',NULL),
	(46,53,106,NULL,NULL,NULL,NULL,'please note that the click here banner should link to the following address:http://fertilitypreservation.org/contact-us<br><br>','2015-11-11 13:53:21',NULL),
	(47,55,106,NULL,NULL,NULL,NULL,'button should link to :<br><br>http://fertilitypreservation.org/contact-us<br><br>','2015-11-11 13:54:21',NULL),
	(48,44,106,NULL,NULL,NULL,NULL,'','2015-11-11 14:34:00',NULL),
	(49,55,106,4,NULL,NULL,NULL,'Replace the image.','2015-11-12 09:08:26',NULL),
	(54,55,121,7,NULL,NULL,NULL,NULL,'2015-11-12 09:23:00',NULL),
	(55,48,121,7,NULL,NULL,NULL,NULL,'2015-11-12 12:05:36',NULL),
	(56,54,121,7,NULL,NULL,NULL,'This has been updated by sheldongroup.&nbsp;','2015-11-12 13:59:48',NULL),
	(57,41,121,7,NULL,NULL,NULL,'Product lookup added. The final step would be to get the products to be added to the database.','2015-11-12 14:34:21',NULL),
	(58,35,121,NULL,NULL,NULL,NULL,'the table is created but I need to get he items to be put in the table so that it can look up projects based from their name.','2015-11-12 14:35:38',NULL),
	(59,58,130,7,NULL,NULL,NULL,'Has been added to the page and linked to&nbsp;<a href=\"https://www.eventbrite.com/e/nhfc-talks-holistic-fertility-treatment-101-tickets-19547000605?aff=es2\" title=\"\" target=\"\">https://www.eventbrite.com/e/nhfc-talks-holistic-fertility-treatment-101-tickets-19547000605?aff=es2</a>','2015-11-13 09:40:32',NULL),
	(60,57,121,NULL,NULL,NULL,NULL,'Allow users to manage vendors, vendor items, and other aspects of the systems though admin.<br>','2015-11-13 17:07:03',NULL),
	(61,60,121,7,NULL,NULL,NULL,NULL,'2015-11-18 12:13:46',NULL),
	(62,35,121,7,NULL,NULL,NULL,NULL,'2015-11-18 12:15:42',NULL),
	(63,63,121,7,NULL,NULL,NULL,'Site has been launched. Spoke with Jed about mx records should be resolved.','2015-11-24 14:23:15',NULL),
	(64,63,121,7,NULL,NULL,NULL,'Site has been launched. Spoke with Jed about mx records should be resolved.','2015-11-24 14:23:20',NULL),
	(65,68,121,NULL,NULL,NULL,NULL,'the plugin doesn\'t allow you to book events but does link out to an event page.&nbsp;','2015-11-24 15:51:38',NULL),
	(66,69,121,NULL,NULL,NULL,NULL,'Can we look into Wordpress plugins that are available? Theres one i saw at&nbsp;<a href=\"http://codecanyon.net/item/interactive-us-map-wordpress-plugin/10359489\" title=\"\" target=\"\">http://codecanyon.net/item/interactive-us-map-wordpress-plugin/10359489</a>&nbsp;that my be what we need.','2015-11-24 16:04:09',NULL),
	(67,62,111,7,NULL,NULL,NULL,NULL,'2015-11-27 14:18:58',NULL),
	(68,64,121,7,NULL,NULL,NULL,NULL,'2015-11-30 10:18:20',NULL),
	(69,72,111,NULL,NULL,NULL,NULL,'<div class=\"cit\" style=\"font-size: 0.8465em; line-height: 1.45em; font-family: arial, helvetica, clean, sans-serif;\"><span role=\"menubar\"><a href=\"http://www.ncbi.nlm.nih.gov/pubmed/25985993#\" title=\"Reproductive biomedicine online.\" abstractlink=\"yes\" alsec=\"jour\" alterm=\"Reprod Biomed Online.\" role=\"menuitem\" aria-expanded=\"false\" aria-haspopup=\"true\" style=\"color: rgb(102, 0, 102); border-bottom-width: 0px; text-decoration: underline;\">Reprod Biomed Online.</a></span>&nbsp;2015 Jul;31(1):71-8. doi: 10.1016/j.rbmo.2015.03.012. Epub 2015 Apr 16.</div><h1 style=\"font-size: 1.231em; margin-top: 0.375em; margin-bottom: 0.375em; line-height: 1.125em; color: rgb(0, 0, 0); font-weight: bold; font-family: arial, helvetica, clean, sans-serif;\">Cytoplasm replacement following germinal vesicle transfer restores meiotic maturation and spindle assembly in meiotically arrested oocytes.</h1><div class=\"auths\" style=\"font-size: 0.923em; font-family: arial, helvetica, clean, sans-serif;\"><br><span style=\"color: rgb(152, 87, 53); font-size: 1.0769em; font-weight: bold; line-height: 1.2857; background-color: initial;\">Abstract</span></div><div class=\"abstr\" style=\"margin: 1em auto auto; font-family: arial, helvetica, clean, sans-serif; font-size: 13px; line-height: 17.9998px;\"><div class=\"\"><p style=\"margin-bottom: 0.5em;\"><abstracttext>Both the cytoplasmic and nuclear compartments are essential for the acquisition of meiotic competence. This study assessed the role of the cytoplasm in meiosis resumption in meiotically arrested oocytes at the germinal vesicle (GV) stage. Mouse oocytes at GV stage were meiotically arrested with 3-isobutyl-1-methylxanthine (IBMX). GV transfer was performed between IBMX-treated and non-treated (control) mouse oocytes, and between control mouse and human GV oocytes. Extrusion of first polar body (PB) was examined as an indication of nuclear maturation. Meiotic spindle assembly and chromosome alignment were examined by immunostaining. Results indicated that oocytes arrested with IBMX for 24 and 48 h exhibited reduced ability for meiotic maturation and for extruding the first PB when compared with controls (P &lt; 0.01). IBMX-treated oocytes reconstituted with cytoplasm, but not GV, of control oocytes restored the assembly of meiotic spindle and meiotic maturation. Mouse oocytes reconstituted with GV of human oocytes underwent meiosis similar to that observed in mice, but not humans. Additionally, human oocytes reconstituted by mouse GV underwent meiosis similar to that observed in humans, but not mice. These findings suggest that cytoplasm replacement by GV transfer could represent a potential therapeutic option for women who do not produce mature oocytes during IVF.</abstracttext></p><p style=\"margin-bottom: 0.5em;\">Copyright © 2015 Reproductive Healthcare Ltd. Published by Elsevier Ltd. All rights reserved.</p></div></div>','2015-12-04 10:53:47',NULL),
	(70,65,121,7,NULL,NULL,NULL,NULL,'2015-12-04 15:51:39',NULL),
	(71,71,121,7,NULL,NULL,NULL,'most of these changes have been updated except for adding the new doctor to the schedule a consultation. i\'m going to close this ticket out and add that to a new task.','2015-12-04 16:43:09',NULL),
	(73,76,111,7,NULL,NULL,NULL,NULL,'2015-12-08 16:08:12',NULL),
	(74,74,111,7,NULL,NULL,NULL,NULL,'2015-12-08 16:08:14',NULL),
	(75,77,111,7,NULL,NULL,NULL,NULL,'2015-12-11 12:53:12',NULL),
	(76,70,111,7,NULL,NULL,NULL,NULL,'2015-12-11 12:53:15',NULL),
	(77,80,111,NULL,NULL,NULL,NULL,'','2015-12-17 10:21:56',NULL),
	(78,80,111,NULL,NULL,NULL,NULL,'','2015-12-17 10:22:00',NULL),
	(79,78,121,7,NULL,NULL,NULL,'these pages have been combined.','2015-12-18 11:22:34',NULL),
	(80,69,121,NULL,NULL,NULL,NULL,'the map has been created on the staging site, although more changes need to be made so that it can be configured from Wordpress. can be viewed at&nbsp;http://nhfcweb01.nhfchq.com/wordpress/map/<div><br></div>','2015-12-18 11:24:14',NULL),
	(81,59,121,7,NULL,NULL,NULL,'Item number and lookup from product table has been added.','2015-12-18 11:25:31',NULL),
	(82,49,121,NULL,NULL,NULL,NULL,'Purchasing the Gather theme and configuring for the site.&nbsp;http://themeforest.net/item/gather-event-conference-wp-landing-page-theme/12799586','2015-12-18 11:26:38',NULL),
	(83,61,121,7,NULL,NULL,NULL,NULL,'2015-12-21 12:20:23',NULL),
	(84,69,121,7,NULL,NULL,NULL,'the map itself has been added. Changes need to be made for colors and content.','2015-12-22 09:41:45',NULL),
	(85,86,121,NULL,NULL,NULL,NULL,'label price as unit price','2015-12-22 17:33:43',NULL),
	(86,73,121,2,NULL,NULL,NULL,NULL,'2015-12-23 09:47:38',NULL),
	(87,36,121,2,NULL,NULL,NULL,NULL,'2015-12-23 09:53:06',NULL),
	(88,82,121,7,NULL,NULL,NULL,'The sites have been changed to show the 404 page from newhope fertility with the custom text.','2015-12-23 15:43:58',NULL),
	(89,87,121,NULL,NULL,NULL,1,'Has been added','2015-12-23 16:01:09',NULL),
	(90,87,121,7,NULL,NULL,NULL,NULL,'2015-12-23 16:01:40',NULL),
	(91,85,121,7,NULL,NULL,4,'Has been added.','2015-12-23 16:02:19',NULL),
	(92,86,121,7,NULL,NULL,1,'added total price column to item lists','2015-12-23 16:02:53',NULL),
	(93,49,121,NULL,NULL,NULL,NULL,'Content for the pages','2015-12-24 10:04:18',NULL),
	(94,49,130,NULL,NULL,NULL,NULL,'','2015-12-29 10:36:16',NULL),
	(95,49,130,NULL,NULL,NULL,NULL,'','2015-12-29 10:36:32',NULL),
	(96,49,130,NULL,2,NULL,NULL,'<div>Nicole - Text size and style</div><div><br></div>The line that says \"A sympossium.....\" is Open Sans - Bold size 45 pts<div><br></div><div>The text below \"\"\"Tehnology Controversy.....\" - Monserrat - Bold size 64 pts</div><div><br></div><div>\"October 13-14th, 2015\" = Open Sans Extra-Bold &nbsp;size 51 pts</div><div style=\"text-align: -webkit-center;\"><br></div><div><br></div><div><br></div>','2015-12-29 10:45:14',NULL),
	(97,49,130,NULL,NULL,NULL,NULL,'2016 Art-World Congress logo<div><br></div><div>- It\'s in PNG form (I know you want GIF) but I think we should try png cause it may look smoother</div>','2015-12-31 10:43:21',NULL),
	(98,49,130,NULL,NULL,NULL,NULL,'2016 Art-World Congress logo<div><br></div><div>- It\'s in PNG form (I know you want GIF) but I think we should try png cause it may look smoother</div>','2015-12-31 10:43:28',NULL),
	(99,89,121,7,NULL,NULL,1,'The tracking code has been added to the website.','2016-01-04 09:56:24',NULL),
	(100,90,121,7,NULL,NULL,NULL,'Has been updated, after a minor text change from Daniel','2016-01-08 13:14:33',NULL),
	(101,91,121,7,NULL,NULL,NULL,'Banner has been updated.','2016-01-08 13:22:46',NULL),
	(102,92,121,7,NULL,NULL,1,'','2016-01-15 10:12:10',NULL),
	(103,95,121,NULL,NULL,NULL,NULL,'Created this document, although it is still in the works. Screenshots were taken','2016-01-19 09:35:23',NULL),
	(104,95,121,NULL,NULL,NULL,NULL,'These are the individual screen shots','2016-01-19 09:36:05',NULL),
	(105,88,121,7,NULL,NULL,NULL,NULL,'2016-01-19 09:44:06',NULL),
	(106,49,121,7,NULL,NULL,NULL,NULL,'2016-01-19 12:48:30',NULL),
	(107,98,121,7,NULL,NULL,NULL,NULL,'2016-01-19 14:36:16',NULL),
	(108,68,121,NULL,NULL,NULL,NULL,'i installed the plugin on the testing site. the events page is at&nbsp;<a href=\"http://nhfctesting.com/about/events/\" title=\"http://nhfctesting.com/about/events/\" target=\"\">http://nhfctesting.com/about/events/</a>','2016-01-20 11:49:51',NULL),
	(109,94,121,7,NULL,NULL,NULL,'This has been updated on the live site by mdconnect','2016-01-20 12:50:02',NULL),
	(110,93,121,7,NULL,NULL,NULL,'these have been updated on the testing site.','2016-01-20 12:54:11',NULL),
	(111,57,121,NULL,NULL,NULL,NULL,'Updated interface, allowed purchasers and users to view products/vendors etc,','2016-01-22 09:25:01',NULL),
	(112,57,121,7,NULL,NULL,NULL,NULL,'2016-01-22 09:25:28',NULL),
	(113,95,121,7,NULL,NULL,NULL,'Document has been completed and approved by Fiona','2016-01-22 09:28:26',NULL),
	(114,97,121,NULL,NULL,NULL,NULL,'I need a slightly smaller image, as the rollover is a bit bigger than the image its replacing','2016-01-22 09:38:56',NULL),
	(115,102,121,7,NULL,NULL,NULL,'doctors have been added to testing site at <a href=\"http://nhfc.nhfctesting.com\" title=\"http://nhfc.nhfctesting.com\" target=\"_blank\">http://nhfc.nhfctesting.com</a>','2016-01-22 15:24:41',NULL),
	(116,105,106,9,4,NULL,NULL,'I already have an email out to MDC to find out the pros and cons of the move.&nbsp; Awaiting an answer.<br>','2016-01-25 09:52:21',NULL),
	(117,112,121,7,NULL,NULL,NULL,'Pics have been updated','2016-01-25 14:11:32',NULL),
	(118,113,121,7,NULL,NULL,NULL,'has been updated','2016-01-25 14:45:19',NULL),
	(119,67,121,NULL,NULL,NULL,NULL,'Assigned To: Eva Diep','2016-01-25 14:56:41',NULL),
	(120,72,121,NULL,NULL,NULL,NULL,'Assigned To: Eva Diep','2016-01-25 14:56:43',NULL),
	(121,80,121,NULL,NULL,NULL,NULL,'Assigned To: Eva Diep','2016-01-25 14:56:44',NULL),
	(122,101,121,NULL,NULL,NULL,NULL,'Assigned To: Eva Diep','2016-01-25 14:56:46',NULL),
	(123,103,121,7,NULL,NULL,NULL,'this has been added to the bottom of the testing site','2016-01-25 15:56:13',NULL),
	(124,114,121,7,NULL,NULL,NULL,'thse images have been updated','2016-01-26 09:08:04',NULL),
	(125,97,130,NULL,NULL,NULL,NULL,'<span style=\"widows: 1;\">Attached are the roll-over images in their proper size 200x400px</span><div style=\"widows: 1;\">Let me know if this works</div>','2016-01-26 09:12:28',NULL),
	(127,118,130,NULL,2,NULL,NULL,'Updated Blog slider-banner','2016-01-26 11:58:20',NULL),
	(128,118,121,7,NULL,NULL,NULL,'this has been updated on the <a href=\"http://newhopefertility.com\" title=\"main site\" target=\"_blank\">main site</a>','2016-01-26 15:36:23',NULL),
	(130,104,121,NULL,NULL,NULL,NULL,'<div style=\"font-family: Calibri, sans-serif; font-size: 14px;\">&lt;form action=\"<a href=\"https://www.paypal.com/cgi-bin/webscr\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">https://www.<span class=\"il\">paypal</span>.<wbr>com/cgi-bin/webscr</a>\" method=\"post\" target=\"_top\"&gt;</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px;\">&lt;input type=\"hidden\" name=\"cmd\" value=\"_s-xclick\"&gt;</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px;\">&lt;input type=\"hidden\" name=\"hosted_button_id\" value=\"78MAJG6RMDKPQ\"&gt;</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px;\">&lt;input type=\"image\" src=\"<a href=\"https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">https://www.<wbr>paypalobjects.com/en_US/i/btn/<wbr>btn_buynowCC_LG.gif</a>\" border=\"0\" name=\"submit\" alt=\"<span class=\"il\">PayPal</span>&nbsp;- The safer, easier way to pay online!\"&gt;</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px;\">&lt;img alt=\"\" border=\"0\" src=\"<a href=\"https://www.paypalobjects.com/en_US/i/scr/pixel.gif\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">https://www.<wbr>paypalobjects.com/en_US/i/scr/<wbr>pixel.gif</a>\" width=\"1\" height=\"1\"&gt;</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px;\">&lt;/form&gt;</div>','2016-01-27 10:11:32',NULL),
	(131,104,121,7,NULL,NULL,11,'Registration form has been added, including link to paypal button. <a href=\"http://artworldcongress.com\" title=\"http://artworldcongress.com\" target=\"_blank\">http://artworldcongress.com</a>','2016-01-27 10:35:05',NULL),
	(132,99,121,NULL,NULL,NULL,NULL,'this page does not currently exist.&nbsp;<div>All pages that mentions hotels are listed at&nbsp;<a href=\"http://www.newhopefertility.com/?s=hotel\" title=\"http://www.newhopefertility.com/?s=hotel\" target=\"\">http://www.newhopefertility.com/?s=hotel</a></div>','2016-01-27 12:50:21',NULL),
	(133,99,121,3,NULL,NULL,NULL,NULL,'2016-01-27 12:53:10',NULL),
	(134,119,121,7,NULL,NULL,0.5,'updated the slider so that the two that go to outside links open up in new pages. all sliders are properly linked, as per our discussion it may have ben an error with you clicking right after the transition.','2016-01-27 12:56:12',NULL),
	(135,117,121,7,NULL,NULL,NULL,'the top banner pic has been updated.','2016-01-27 12:57:35',NULL),
	(136,100,121,3,NULL,NULL,NULL,'the images are switched for reasearch and published. could you update these images to change the text?','2016-01-27 12:58:38',NULL),
	(137,120,121,7,NULL,NULL,0.5,'the image has been updated','2016-01-28 13:27:08',NULL),
	(138,115,121,7,NULL,NULL,0.5,'sorry about that, this has been fixed.','2016-01-28 13:28:00',NULL),
	(139,96,121,NULL,NULL,NULL,NULL,'\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<style>\r\n<!--\r\n /* Font Definitions */\r\n@font-face\r\n	{font-family:\"Cambria Math\";\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\r\n /* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	margin:0in;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:Calibri;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\na:link, span.MsoHyperlink\r\n	{mso-style-priority:99;\r\n	color:#0563C1;\r\n	mso-themecolor:hyperlink;\r\n	text-decoration:underline;\r\n	text-underline:single;}\r\na:visited, span.MsoHyperlinkFollowed\r\n	{mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	color:#954F72;\r\n	mso-themecolor:followedhyperlink;\r\n	text-decoration:underline;\r\n	text-underline:single;}\r\np\r\n	{mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-margin-top-alt:auto;\r\n	margin-right:0in;\r\n	mso-margin-bottom-alt:auto;\r\n	margin-left:0in;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:\"Times New Roman\";\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	font-family:Calibri;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n@page WordSection1\r\n	{size:8.5in 11.0in;\r\n	margin:1.0in 1.0in 1.0in 1.0in;\r\n	mso-header-margin:.5in;\r\n	mso-footer-margin:.5in;\r\n	mso-paper-source:0;}\r\ndiv.WordSection1\r\n	{page:WordSection1;}\r\n-->\r\n</style>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\"><a href=\"http://www.newhopefertility.com/about-us/blog/\">http://www.newhopefertility.com/about-us/blog/</a></p>\r\n\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:18.0pt;color:#7030A0\">FERTILITY BLOGS</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:15.0pt;color:#7030A0\">GET INFORMED.<span style=\"mso-spacerun:yes\">&nbsp; </span>STAY INFORMED.</span></p>\r\n\r\n<p style=\"text-align:justify\">At New Hope Fertility Center in New York City we\r\nbelieve in a 360-degree approach to fertility treatment.<span style=\"mso-spacerun:yes\">&nbsp; </span>While most clinics focus their energy on\r\ngetting you pregnant, we understand that getting pregnant is just one step in\r\nthe overall journey that you are experiencing.<span style=\"mso-spacerun:yes\">&nbsp;\r\n</span>We are with you every step of the way, from understanding and dealing\r\nwith infertility to the first months of having a new baby.<span style=\"mso-spacerun:yes\">&nbsp; <br></span></p><p style=\"text-align:justify\"><span style=\"mso-spacerun:yes\"><br></span></p>\r\n\r\n<p style=\"margin-right:171.0pt;text-align:justify\">The New Hope <u><span style=\"color:#2E75B6;mso-themecolor:accent1;mso-themeshade:191;mso-style-textfill-fill-color:\r\n#2E75B6;mso-style-textfill-fill-themecolor:accent1;mso-style-textfill-fill-alpha:\r\n100.0%;mso-style-textfill-fill-colortransforms:lumm=75000\">IVF Blog</span></u> covers\r\ntrending topics, information, and related stories regarding everything from\r\ntrying to get pregnant to after your family is complete. With tips about\r\nnutrition, health, fitness, shopping and more, this blog covers all the steps\r\nof the fertility process. It is a lifestyle blog for everything related to\r\nfertility, pregnancy, and new parenthood.<span style=\"mso-spacerun:yes\">&nbsp;\r\n</span></p>\r\n\r\n<p style=\"margin-left:184.5pt;text-align:justify\">For a more in-depth\r\nexamination of the field of infertility, join Dr. John Zhang as he writes about\r\nthe medical and technical side of the family building process.<span style=\"mso-spacerun:yes\">&nbsp; </span>With a focus on emerging technologies in the\r\nfield of Assisted Reproductive Medicine, Fertility Treatment explanations, Tips\r\nfor getting pregnant and more,<span style=\"mso-spacerun:yes\">&nbsp; </span>the <u><span style=\"color:#5B9BD5;mso-themecolor:accent1\">Dr. John Zhang Blog</span></u> is your\r\nbest resource.</p>\r\n\r\n<p style=\"text-align:justify\">The New Hope Fertility Video Blog</p>\r\n\r\n<div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.5pt;\r\npadding:0in 0in 1.0pt 0in\">\r\n\r\n<p style=\"text-align:justify;border:none;mso-border-bottom-alt:solid windowtext 1.5pt;\r\npadding:0in;mso-padding-alt:0in 0in 1.0pt 0in\">Watch trending videos about all\r\naspects of fertility and related treatments.<span style=\"mso-spacerun:yes\">&nbsp;\r\n</span>Join New Hope Fertility Doctors as they cover the latest burning common\r\nquestions from patients and colleagues in these short fertility video segments.</p>\r\n\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n','2016-01-28 13:42:05',NULL),
	(140,96,121,NULL,NULL,NULL,NULL,'\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<style>\r\n<!--\r\n /* Font Definitions */\r\n@font-face\r\n	{font-family:\"Cambria Math\";\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\r\n /* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	margin:0in;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:Calibri;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\na:link, span.MsoHyperlink\r\n	{mso-style-priority:99;\r\n	color:#0563C1;\r\n	mso-themecolor:hyperlink;\r\n	text-decoration:underline;\r\n	text-underline:single;}\r\na:visited, span.MsoHyperlinkFollowed\r\n	{mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	color:#954F72;\r\n	mso-themecolor:followedhyperlink;\r\n	text-decoration:underline;\r\n	text-underline:single;}\r\np\r\n	{mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-margin-top-alt:auto;\r\n	margin-right:0in;\r\n	mso-margin-bottom-alt:auto;\r\n	margin-left:0in;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:\"Times New Roman\";\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	font-family:Calibri;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n@page WordSection1\r\n	{size:8.5in 11.0in;\r\n	margin:1.0in 1.0in 1.0in 1.0in;\r\n	mso-header-margin:.5in;\r\n	mso-footer-margin:.5in;\r\n	mso-paper-source:0;}\r\ndiv.WordSection1\r\n	{page:WordSection1;}\r\n-->\r\n</style>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\"><a href=\"http://www.newhopefertility.com/about-us/blog/\">http://www.newhopefertility.com/about-us/blog/</a></p>\r\n\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:18.0pt;color:#7030A0\">FERTILITY BLOGS</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:15.0pt;color:#7030A0\">GET INFORMED.<span style=\"mso-spacerun:yes\">&nbsp; </span>STAY INFORMED.</span></p>\r\n\r\n<p style=\"text-align:justify\">At New Hope Fertility Center in New York City we\r\nbelieve in a 360-degree approach to fertility treatment.<span style=\"mso-spacerun:yes\">&nbsp; </span>While most clinics focus their energy on\r\ngetting you pregnant, we understand that getting pregnant is just one step in\r\nthe overall journey that you are experiencing.<span style=\"mso-spacerun:yes\">&nbsp;\r\n</span>We are with you every step of the way, from understanding and dealing\r\nwith infertility to the first months of having a new baby.<span style=\"mso-spacerun:yes\">&nbsp; <br></span></p><p style=\"text-align:justify\"><span style=\"mso-spacerun:yes\"><br></span></p>\r\n\r\n<p style=\"margin-right:171.0pt;text-align:justify\">The New Hope <u><span style=\"color:#2E75B6;mso-themecolor:accent1;mso-themeshade:191;mso-style-textfill-fill-color:\r\n#2E75B6;mso-style-textfill-fill-themecolor:accent1;mso-style-textfill-fill-alpha:\r\n100.0%;mso-style-textfill-fill-colortransforms:lumm=75000\">IVF Blog</span></u> covers\r\ntrending topics, information, and related stories regarding everything from\r\ntrying to get pregnant to after your family is complete. With tips about\r\nnutrition, health, fitness, shopping and more, this blog covers all the steps\r\nof the fertility process. It is a lifestyle blog for everything related to\r\nfertility, pregnancy, and new parenthood.<span style=\"mso-spacerun:yes\">&nbsp;\r\n</span></p>\r\n\r\n<p style=\"margin-left:184.5pt;text-align:justify\">For a more in-depth\r\nexamination of the field of infertility, join Dr. John Zhang as he writes about\r\nthe medical and technical side of the family building process.<span style=\"mso-spacerun:yes\">&nbsp; </span>With a focus on emerging technologies in the\r\nfield of Assisted Reproductive Medicine, Fertility Treatment explanations, Tips\r\nfor getting pregnant and more,<span style=\"mso-spacerun:yes\">&nbsp; </span>the <u><span style=\"color:#5B9BD5;mso-themecolor:accent1\">Dr. John Zhang Blog</span></u> is your\r\nbest resource.</p>\r\n\r\n<p style=\"text-align:justify\">The New Hope Fertility Video Blog</p>\r\n\r\n<div style=\"mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.5pt;\r\npadding:0in 0in 1.0pt 0in\">\r\n\r\n<p style=\"text-align:justify;border:none;mso-border-bottom-alt:solid windowtext 1.5pt;\r\npadding:0in;mso-padding-alt:0in 0in 1.0pt 0in\">Watch trending videos about all\r\naspects of fertility and related treatments.<span style=\"mso-spacerun:yes\">&nbsp;\r\n</span>Join New Hope Fertility Doctors as they cover the latest burning common\r\nquestions from patients and colleagues in these short fertility video segments.</p>\r\n\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n','2016-01-28 13:42:10',NULL),
	(141,110,121,NULL,NULL,NULL,NULL,'<span style=\"background-color: rgb(255, 255, 255);\">nichole can you please make sure the page says:<br><br>April Murray, RD<br>188 E 17th Street, Suite 201<br>Costa Mesa, CA 92627<br>714-396-7729<br>dietitian@ocnutritioncoaching.com</span>','2016-01-28 13:49:52',NULL),
	(142,110,121,7,NULL,NULL,0.5,'This page has been updated and can be viewed at&nbsp;<a href=\"http://www.nbsurrogacy.com/resources/orange-county-nutritional-coaching/\" title=\"http://www.nbsurrogacy.com/resources/orange-county-nutritional-coaching/\" target=\"\">http://www.nbsurrogacy.com/resources/orange-county-nutritional-coaching/</a>','2016-01-28 13:58:34',NULL),
	(143,101,121,NULL,2,NULL,NULL,'Here are the updated ones.<div><br></div><div><br></div>','2016-01-28 15:54:02',NULL),
	(144,121,121,NULL,NULL,NULL,NULL,'','2016-01-28 15:56:03',NULL),
	(145,121,121,7,NULL,NULL,NULL,'rollover images have been added for the page&nbsp;<a href=\"http://www.newhopefertility.com/about-us/news/\" title=\"http://www.newhopefertility.com/about-us/news/\" target=\"\">http://www.newhopefertility.com/about-us/news/</a>','2016-01-28 16:09:27',NULL),
	(146,97,121,7,NULL,NULL,NULL,NULL,'2016-01-28 16:09:58',NULL),
	(147,100,121,7,NULL,NULL,0.5,'recieved the images, they have been updated&nbsp;<a href=\"http://www.newhopefertility.com/about-us/news/\" title=\"http://www.newhopefertility.com/about-us/news/\" target=\"\">http://www.newhopefertility.com/about-us/news/</a>','2016-01-28 16:11:10',NULL),
	(148,101,121,7,NULL,NULL,0.5,'these have been updated&nbsp;<a href=\"http://www.newhopefertility.com/about-us/news/://\" title=\"http://www.newhopefertility.com/about-us/news/\" target=\"\">http://www.newhopefertility.com/about-us/news/</a>','2016-01-28 16:12:20',NULL),
	(149,96,121,3,NULL,NULL,NULL,'The images have been updated but need content for the video blog section.','2016-01-29 09:13:39',NULL),
	(150,103,121,1,NULL,NULL,NULL,NULL,'2016-02-01 09:25:59',NULL),
	(151,122,121,7,NULL,NULL,0.5,'removed all the links from the checklist as per Daniels request','2016-02-01 09:49:13',NULL),
	(152,123,130,NULL,NULL,NULL,NULL,'Attached are the comps - I think we decide to go for whichever is the easiest to create. ','2016-02-01 09:58:02',NULL),
	(154,123,121,3,NULL,NULL,NULL,'The second looks as though it would be the easiest to do. however, there are a few factors we might want to take into consideration.&nbsp;<div><ol><li>we should probably avoid posting peoples user names in relation to the questions they\'ve asked. it would deter people from asking questions if they didn\'t want to be identified and might open up some hippa violation</li><li>what happens if the question is a paragraph long? the comp looks ok for just a single sentence question, but i would like to see what it would look like if the question is much longer.&nbsp;</li><li>what are the up and down arrows and the 0 on the top of the fold for?</li><li>how does the page that lists all of the questions look?</li><li>are we using a \"generic female image\" for the requestors image? if we use one generic image i think that might be best, as if we use more than one it may deter others from posting, in fear that they could be identified by others or that the picture is somehow associated to their user.</li></ol></div>','2016-02-01 10:05:53',NULL),
	(155,123,121,9,NULL,NULL,4,'i have started to code the template. You can preview the design at&nbsp;<a href=\"http://staging.nhfctesting.com/question/does-acupuncture-really-work-for-infertility/\" title=\"http://staging.nhfctesting.com/question/does-acupuncture-really-work-for-infertility/\" target=\"\">http://staging.nhfctesting.com/question/does-acupuncture-really-work-for-infertility/</a><div><br></div><div>We do need a design for the list of questions at&nbsp;<a href=\"http://staging.nhfctesting.com/about-us/ask-a-doctor/\" title=\"http://staging.nhfctesting.com/about-us/ask-a-doctor/\" target=\"_blank\">http://staging.nhfctesting.com/about-us/ask-a-doctor/</a></div>','2016-02-01 16:54:13',NULL),
	(156,124,121,9,NULL,NULL,0.5,'Added the date which is now showing on the bottom of the page. I configured it to autopublish to facebook, but I am having trouble logging into twitter. Once I have the right credentials for twitter I can post there also.','2016-02-02 10:09:11',NULL),
	(157,124,121,7,NULL,NULL,NULL,'this has been updated. the posts should be auto updating on facebook and twitter, although i am not sure how it works for scheduled posts. when the next post goes out tonight iif it doesn\'t update, i\'ll look into what needs to be done to update this.','2016-02-02 10:37:08',NULL),
	(158,125,121,7,NULL,NULL,0.5,'updated .htaccess to create a 301 redirect. <a href=\"http://newhopefertility.com/egg-donor/surrogacy/prescreening-quiz\" title=\"http://newhopefertility.com/egg-donor/surrogacy/prescreening-quiz\" target=\"\">http://newhopefertility.com/egg-donor/surrogacy/prescreening-quiz</a>&nbsp; will take you to&nbsp;<a href=\"http://www.nbsurrogacy.com/surrogate/prescreening-quiz\" title=\"http://www.nbsurrogacy.com/surrogate/prescreening-quiz\" target=\"\">http://www.nbsurrogacy.com/surrogate/prescreening-quiz</a>','2016-02-02 14:16:14',NULL),
	(159,103,106,NULL,NULL,NULL,NULL,'please have this logo link to www.fertilitypreservation.org, but have it open in a new window.<br><br>thanks!<br><br>','2016-02-03 09:40:00',NULL),
	(160,103,121,7,NULL,NULL,0.5,'link has been updated','2016-02-03 09:43:03',NULL),
	(161,126,121,7,NULL,NULL,0.5,'the link has been added','2016-02-03 09:44:45',NULL),
	(162,127,121,3,NULL,NULL,NULL,'can you send it to me resized to fit what should be showing on the website? if it is going on the fertility preservation page the square image there is 280 pixels wide by 210 pixels?','2016-02-03 12:49:22',NULL),
	(163,127,130,NULL,NULL,NULL,NULL,'Copy that - My fault on that one. Attached is the new one<div><br></div><div><br></div>','2016-02-03 14:01:00',NULL),
	(164,127,121,7,NULL,NULL,0.5,'this has been updated','2016-02-03 14:42:56',NULL),
	(167,123,130,NULL,NULL,NULL,NULL,'Nicole - Attached is the logo for the \"Q&amp;A\" section in PNG in format.<div><br></div><div>Let me know if the dimensions are correct and workable?</div><div><br></div><div>Also attached is a jpg file with all the color codes of that section.</div><div><div><br></div><div>If anything let me know.</div></div><div><br></div><div>-</div>','2016-02-04 10:51:15',NULL),
	(168,133,121,7,NULL,NULL,0.5,'The banner has been removed. I have also removed the button which links to the nhfc talks o the main content of the front page.','2016-02-05 10:47:40',NULL),
	(169,134,121,7,NULL,NULL,0.5,'This has been added, the link to paypal appears once a new registration is made.','2016-02-05 12:44:00',NULL),
	(170,135,121,7,NULL,NULL,1,'this page has been udated.','2016-02-05 14:57:20',NULL),
	(171,137,130,NULL,NULL,NULL,NULL,'new banner attached','2016-02-05 17:12:30',NULL),
	(172,137,121,9,NULL,NULL,0.5,'these have been added, but the chinese new year banner needs to be resized as the text overflows on smaller screens.&nbsp;','2016-02-08 09:47:27',NULL),
	(174,138,121,9,NULL,NULL,NULL,'what text needs to be displayed with this?','2016-02-09 15:15:05',NULL),
	(175,50,121,NULL,NULL,NULL,NULL,'Use the free version first: https://www.metaslider.com/upgrade/<div><ul><li>Need to resize it to the correct dimensions</li><li>Disable auto slide</li></ul></div><div><br></div><div>Video slider on this page:&nbsp;http://www.newhopefertility.com/about-us/success-stories/video-testimonials/</div><div>Video slider on this page:&nbsp;http://www.newhopefertility.com/about-us/blog/</div><div><ul><li>Videos should be dr zhang\'s video blogs</li></ul></div><div>Image slider on this page:&nbsp;http://www.newhopefertility.com/about-us/</div><div><ul><li>Images are of the clinic</li></ul><div><br></div></div>','2016-02-10 10:58:24',NULL),
	(176,50,121,NULL,NULL,NULL,NULL,'added a video slider on&nbsp;http://www.newhopefertility.com/about-us/success-stories/video-testimonials/ but it must be manually updated whenever we want to add a new video.','2016-02-10 12:08:35',NULL),
	(177,143,121,7,NULL,NULL,0.5,'These changes have been made.','2016-02-12 11:47:53',NULL),
	(178,142,121,7,NULL,NULL,0.5,'Accordion has been added to the directions page.','2016-02-12 11:59:55',NULL),
	(179,141,121,7,NULL,NULL,0.75,'The video testimonials have been moved to the success stories pages and all the success stories have been put into an accordion.','2016-02-12 12:21:48',NULL),
	(181,131,121,7,NULL,NULL,4,'This has been added using the <a href=\"https://wordpress.org/plugins/custom-facebook-feed/\" title=\"\" target=\"\">custom faceobook feed</a> plugin&nbsp;','2016-02-12 12:34:11',NULL),
	(182,132,121,7,NULL,NULL,NULL,'this has been updated.','2016-02-12 12:52:57',NULL),
	(183,116,121,7,NULL,NULL,NULL,'this has been updated.','2016-02-12 12:53:19',NULL),
	(184,145,121,NULL,NULL,NULL,NULL,'<ul><li>Updated the link color to <span style=\"color: #00FF45; background-color: #5e3079; padding: 5px\">green (#00FF45) </span>.</li>\r\n<li>changed the line height to 35px</li>\r\n<li>hide the breadcrumbs via css</li>\r\n</ul>\r\n','2016-02-12 14:01:12',NULL),
	(185,145,121,7,NULL,NULL,0.5,'','2016-02-12 14:01:54',NULL),
	(186,147,121,7,NULL,NULL,0.5,'Sidebar has been added with most popular questions.','2016-02-12 14:11:43',NULL),
	(187,137,130,NULL,1,NULL,NULL,'New and updated new years banners','2016-02-12 15:07:11',NULL),
	(188,137,121,7,NULL,NULL,NULL,'The banner has been updated.','2016-02-12 15:28:34',NULL),
	(189,148,121,9,NULL,NULL,1,'<p>The site is taking almost a mintute to load, according to tests done at&nbsp;<a href=\"http://tools.pingdom.com/fpt/#!/doB4V1/http://www.newhopefertility.com/\">http://tools.pingdom.com/fpt/#!/doB4V1/http://www.newhopefertility.com/</a></p>\r\n<p>I ran a test at <a title=\"\" href=\"https://developers.google.com/speed/pagespeed/insights/?url=http%3A%2F%2Fnewhopefertility.com&amp;tab=desktop\" target=\"\">Page Speed Insights</a>&nbsp;and it is giving me a failing score</p>\r\n<div>It lists that we need to</div>\r\n<div>\r\n<ol>\r\n<li>Enable compression</li>\r\n<li>Leverage browser caching</li>\r\n<li>Eliminate render-blocking JavaScript and CSS in above-the-fold content Show how to fix</li>\r\n<li>Optimize images</li>\r\n<li>Minify JavaScript</li>\r\n<li>Reduce server response time</li>\r\n<li>Minify CSS</li>\r\n<li>Prioritize visible content</li>\r\n<li>Minify HTML</li>\r\n</ol>\r\n<div>I will reenable the caching plugin that is installed which will take care of points #2, 5, 7, and 9</div>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>I uploaded a few of the optimized images.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>','2016-02-12 15:40:47',NULL),
	(190,148,121,NULL,NULL,NULL,NULL,'Added javascript to delay the loading of images, which looks to help a bit. also looking to see what else can be done about the speed of the site.','2016-02-12 16:47:01',NULL),
	(191,139,121,7,NULL,'2016-02-15',0.5,'The banner has been taken down.&nbsp;','2016-02-15 09:17:02',NULL),
	(192,123,121,7,NULL,NULL,40,'The design has been incorporated on the staging stie.&nbsp;','2016-02-16 09:33:21',NULL),
	(193,138,121,7,NULL,NULL,0.5,'This has been updated','2016-02-16 09:34:34',NULL),
	(194,96,121,7,NULL,NULL,1.5,'these changes have been made to the page, i just used the videos from the new hope fertility youtube page. when new videos are updated the site will also have to be updated.','2016-02-16 12:34:54',NULL),
	(196,84,130,NULL,NULL,NULL,NULL,'<div>Here are the hex color codes for the map.</div>\r\n<div style=\"color: #d8315b;\">D8315B - \"No go\" (Red)&nbsp;</div>\r\n<div style=\"color: #3e92cc;\">3E92CC - \"Go for it\" (Light Blue)</div>\r\n<div style=\"color: #0a2463;\">0A2463 - \"Okay but....\" (Dark Blue)</div>\r\n<div style=\"color: #66666e;\">66666E - \"Be cautious\" (Grey)</div>','2016-02-16 12:48:40',NULL),
	(198,148,121,7,NULL,NULL,1,'<p>I made a few changes, reenabled the W3C Cache plugin, defered loading of a lot of the javascript, compressed a few of the images. I did a test online and the page is now opening in under 3&nbsp;seconds. The information is contained at the link below.</p>\r\n<p class=\"p1\"><a href=\"http://fpt.pingdom.com#!/d8d4OY/http://www.newhopefertility.com/\">http://fpt.pingdom.com#!/d8d4OY/http://www.newhopefertility.com/</a></p>\r\n<p class=\"p1\">While the page isn\'t the fastest, it is performing much better than my intial tests, which was taking almost half a minute to load.</p>\r\n<p class=\"p1\">The slow down could be caused by a variety of factors. It could be issues with the server, as the staging site did not have as much of a delay to it. The page isn\'t optimized for load time, so deferring javascript from loading should help a bit. There is still a lot of room for improvement, but the site is opening up much faster.</p>','2016-02-16 15:48:34',NULL),
	(199,151,121,NULL,NULL,NULL,NULL,'<p>Created a purchase order for this&nbsp;<a href=\"../../purchase_orders/view/1054\">http://intranet.nhfchq.com/purchase_orders/view/1054</a></p>\r\n<p>&nbsp;</p>','2016-02-17 12:16:31',NULL),
	(200,80,121,NULL,NULL,NULL,NULL,'<p>I temporarly updated the page, but it looks wonky with the images being different sizes. Can we get all images to be the same size, at the size we want users to view them at on the page?</p>','2016-02-17 13:48:22',NULL),
	(201,156,121,7,NULL,NULL,NULL,NULL,'2016-02-17 13:50:33',NULL),
	(202,158,121,7,NULL,NULL,0.5,'<p>This has been updated.</p>','2016-02-17 14:35:49',NULL),
	(203,162,121,NULL,NULL,NULL,NULL,'Assigned To: Nichole Boseman','2016-02-17 16:47:31',NULL),
	(204,162,121,NULL,NULL,NULL,NULL,'<p>Replace text to read&nbsp;</p>\r\n<p class=\"text-justify\">Since one of the best ways to visit the 2016 ASRM meeting is to hub through NYC, we have positioned this symposium as a preface to ASRM.</p>\r\n<p class=\"text-justify\">For all our visiting friends and colleagues, we have arranged preferential rates with accommodations nearby. For more details, check below.</p>','2016-02-17 16:47:47',NULL),
	(205,161,111,7,NULL,NULL,0.5,'<p>Link to the map has been updated to point to the mandarin hotel.</p>','2016-02-17 16:51:55',NULL),
	(206,162,121,7,NULL,NULL,0.5,'<p>Text has been updated to reflect the change</p>','2016-02-17 16:53:03',NULL),
	(207,163,121,10,NULL,NULL,NULL,'<p>The sponsorship level prices need to be updated for this year.&nbsp;</p>','2016-02-17 17:08:36',NULL),
	(208,164,121,7,NULL,NULL,0.75,'<p>Created a google document which lists all the domain names that we own. Working on updating the stats needed</p>\r\n<p><a href=\"https://docs.google.com/spreadsheets/d/1_nPi2bYrpR6u1dfMYLxy83d54ij5cUMEqiqtRpfIqis/edit#gid=0\">https://docs.google.com/spreadsheets/d/1_nPi2bYrpR6u1dfMYLxy83d54ij5cUMEqiqtRpfIqis/edit#gid=0</a></p>\r\n<p>&nbsp;</p>','2016-02-18 09:41:02',NULL),
	(209,153,121,7,NULL,NULL,1,'<p>Staging Site has been created, and can be viewed from&nbsp;<a href=\"http://columbuscircle.nhfctesting.com/\">http://columbuscircle.nhfctesting.com/</a></p>','2016-02-18 15:34:29',NULL),
	(210,154,121,7,NULL,NULL,0.5,'<p>Wordpress has been installed. Default plugins and posts and pages have been removed.</p>','2016-02-18 15:35:36',NULL),
	(211,80,111,7,NULL,NULL,NULL,NULL,'2016-02-19 14:18:47',NULL),
	(212,99,111,7,NULL,NULL,NULL,NULL,'2016-02-19 14:38:06',NULL),
	(213,151,111,7,NULL,NULL,NULL,NULL,'2016-02-19 14:55:50',NULL),
	(214,152,106,7,NULL,NULL,NULL,NULL,'2016-02-22 08:52:39',NULL),
	(215,140,121,7,NULL,NULL,0.5,'<p>Banner has been removed</p>','2016-02-22 09:39:08',NULL),
	(216,165,121,7,NULL,NULL,0.75,'<p>These changes have been made&nbsp;</p>','2016-02-22 10:32:00',NULL),
	(217,167,121,NULL,NULL,NULL,NULL,'<p>is there an image?</p>','2016-02-22 13:17:35',NULL),
	(219,167,130,NULL,NULL,NULL,NULL,'','2016-02-22 13:30:29',NULL);

/*!40000 ALTER TABLE `task_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table task_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `task_groups`;

CREATE TABLE `task_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fk_task_groups_projects` (`project_id`),
  CONSTRAINT `task_groups_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table task_labels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `task_labels`;

CREATE TABLE `task_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `task_labels` WRITE;
/*!40000 ALTER TABLE `task_labels` DISABLE KEYS */;

INSERT INTO `task_labels` (`id`, `name`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'Task',0,1,1),
	(2,'Bug',1,NULL,1),
	(3,'Idea',2,NULL,1),
	(4,'Issue',4,NULL,1),
	(5,'Quote',3,NULL,1),
	(6,'Change',0,NULL,1),
	(7,'PlugIn',0,NULL,1);

/*!40000 ALTER TABLE `task_labels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table task_priority
# ------------------------------------------------------------

DROP TABLE IF EXISTS `task_priority`;

CREATE TABLE `task_priority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(64) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `task_priority` WRITE;
/*!40000 ALTER TABLE `task_priority` DISABLE KEYS */;

INSERT INTO `task_priority` (`id`, `name`, `icon`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'Urgent','prio_1.png',5,NULL,1),
	(2,'High','prio_2.png',4,NULL,1),
	(3,'Low','prio_4.png',1,NULL,1),
	(4,'Unknown',NULL,0,NULL,1),
	(5,'Medum','prio_3.png',2,1,1);

/*!40000 ALTER TABLE `task_priority` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table task_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `task_status`;

CREATE TABLE `task_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `group` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `task_status` WRITE;
/*!40000 ALTER TABLE `task_status` DISABLE KEYS */;

INSERT INTO `task_status` (`id`, `name`, `group`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'Open','open',0,1,1),
	(2,'Suspended','closed',6,NULL,1),
	(3,'Waiting Assessment','open',0,NULL,1),
	(4,'Re-opened','open',2,NULL,1),
	(5,'Done?','done',1,NULL,1),
	(7,'Completed','closed',4,NULL,1),
	(8,'Lost','closed',7,NULL,1),
	(9,'In Progress','open',0,NULL,1),
	(10,'On Hold','open',3,NULL,1);

/*!40000 ALTER TABLE `task_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table task_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `task_types`;

CREATE TABLE `task_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `task_types` WRITE;
/*!40000 ALTER TABLE `task_types` DISABLE KEYS */;

INSERT INTO `task_types` (`id`, `name`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'Priority Change',0,0,1),
	(2,'Change',0,1,1),
	(3,'Defect',0,0,1);

/*!40000 ALTER TABLE `task_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `task_status_id` int(11) DEFAULT NULL,
  `task_priority_id` int(11) DEFAULT NULL,
  `task_type_id` int(11) DEFAULT NULL,
  `task_label_id` int(11) DEFAULT NULL,
  `task_groups_id` int(11) DEFAULT NULL,
  `project_phase_id` int(11) DEFAULT NULL,
  `versions_id` int(11) DEFAULT NULL,
  `created_by` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `assigned_to` varchar(255) DEFAULT NULL,
  `estimated_time` float DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `closed_date` date DEFAULT NULL,
  `discussion_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_task_projects` (`project_id`),
  KEY `fk_task_task_status` (`task_status_id`),
  KEY `fk_task_task_type` (`task_type_id`),
  KEY `fk_task_task_label` (`task_label_id`),
  KEY `fk_task_project_phases` (`project_phase_id`),
  KEY `fk_task_pople` (`created_by`),
  KEY `fk_task_task_groups` (`task_groups_id`),
  KEY `fk_task_versions` (`versions_id`),
  KEY `fk_task_task_priority` (`task_priority_id`),
  KEY `fk_task_tickets` (`ticket_id`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `task_ibfk_10` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `task_ibfk_2` FOREIGN KEY (`task_status_id`) REFERENCES `task_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `task_ibfk_3` FOREIGN KEY (`task_priority_id`) REFERENCES `task_priority` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `task_ibfk_4` FOREIGN KEY (`task_type_id`) REFERENCES `task_types` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `task_ibfk_5` FOREIGN KEY (`task_label_id`) REFERENCES `task_labels` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `task_ibfk_6` FOREIGN KEY (`task_groups_id`) REFERENCES `task_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `task_ibfk_7` FOREIGN KEY (`project_phase_id`) REFERENCES `project_phases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `task_ibfk_8` FOREIGN KEY (`versions_id`) REFERENCES `versions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;

INSERT INTO `tasks` (`id`, `project_id`, `task_status_id`, `task_priority_id`, `task_type_id`, `task_label_id`, `task_groups_id`, `project_phase_id`, `versions_id`, `created_by`, `name`, `description`, `assigned_to`, `estimated_time`, `due_date`, `created`, `ticket_id`, `closed_date`, `discussion_id`, `start_date`, `progress`)
VALUES
	(23,8,7,5,1,1,NULL,NULL,NULL,121,'Intended Parent Tab','<ul><li>Please make sure each sub title is in<strong>&nbsp;bold</strong></li><li>Agency fees: &nbsp;2nd payment change the word \"meeting\" to&nbsp;matching&nbsp;</li><ul><li>(due upon matching with Surrogate)</li></ul><li>Insurance: &nbsp;please add Life Insurance for Surrogate $395 plus sales tax</li></ul>','4',NULL,NULL,'2015-11-02 15:05:05',2,'2015-11-04',NULL,NULL,100),
	(24,8,7,5,2,1,NULL,NULL,NULL,121,'FAQs Tab (surrogate)','Remove &gt; &nbsp;symbol','4',NULL,NULL,'2015-11-02 15:42:08',2,'2015-11-02',NULL,NULL,100),
	(25,8,7,5,2,1,NULL,NULL,NULL,121,'surrogate referral page font change','The font is different in 1st paragraph from the rest of the paragraph.&nbsp; Please make the same.','4',NULL,NULL,'2015-11-02 15:43:37',2,'2015-11-04',NULL,NULL,100),
	(26,8,7,5,2,1,NULL,NULL,NULL,121,'prescreening form not being sent','<div><br></div>Pre-screening application being filled out is not coming to myself or Annette.&nbsp; I have no idea where the application is going.&nbsp; Annette/Geoffrey both filled out application and we did not get it.&nbsp; I have another surrogate who also filled one out 2 hours ago and we did not get it.','4',NULL,NULL,'2015-11-02 15:44:12',2,'2015-11-02',NULL,NULL,100),
	(29,8,7,5,2,1,NULL,NULL,NULL,121,'newbanner heading for blog','find a new image for the blog','6',24,'2015-11-06','2015-11-03 10:02:55',4,'2015-11-06',NULL,'2015-11-03',10),
	(30,7,7,5,2,1,NULL,NULL,NULL,106,'Fix Broken Links','Fix broken links on New Hope Fertility','4',NULL,NULL,'2015-11-04 10:11:30',NULL,'2015-11-04',NULL,NULL,100),
	(32,8,7,5,2,1,NULL,NULL,NULL,121,'Fix slider','Fix the white space showing on the right side of the banner.','4',1,NULL,'2015-11-05 09:19:11',5,'2015-11-05',NULL,NULL,100),
	(33,7,7,5,2,6,NULL,NULL,NULL,106,'BLOG to TOP NAV','Please move LGBT out of top nav to under MALE CARE in the IVF AND PROCEDURES DROP DOWN<br><br>Then<br><br>Please add BLOG to the TOP NAV in the place of lgbt<br><br><br>','4,10,5',NULL,NULL,'2015-11-05 13:20:51',NULL,'2015-11-05',NULL,NULL,100),
	(34,8,7,1,2,1,NULL,NULL,NULL,106,'Homepage Banner change','Please swap out the homepage banner with the new graphic emailed of the baby and hand with the trangular purple corner.<br><br>please make the whole banner clickable for the prescreening quiz link.<br><br>Please remove the light purple prescreening quiz banner<br>','4,6',NULL,NULL,'2015-11-06 11:49:58',NULL,'2015-11-06',NULL,NULL,NULL),
	(35,10,7,5,2,1,NULL,NULL,NULL,121,'Create new database table and model for the items','<span style=\"font-size: 12px;\">Items will need to include&nbsp;</span><div><ol><li><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">vendor name</span></li><li><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">item name</span></li><li><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">item number</span></li><li><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">item price</span></li></ol></div>','4',NULL,'2015-11-06','2015-11-06 13:07:26',7,'2015-11-18',NULL,NULL,NULL),
	(36,8,2,5,2,1,NULL,NULL,NULL,70,'New Template Graphic & Content for Mobile site','<p>Please create a new layout for NB mobile site for Nichole to implement.</p><p><br></p><p>Top banner, Header Banner, Pictures, Content, etc.</p><p><br></p><p><br></p>','8,6,5',NULL,NULL,'2015-11-06 13:08:07',6,'2015-12-23',NULL,NULL,NULL),
	(37,8,1,5,2,1,NULL,NULL,NULL,70,'Mobile issues - compensation','<p>Compensation section is being cutoff on the right column.&nbsp; The text is not visible.&nbsp; This was evident on IOS.</p>','4',NULL,NULL,'2015-11-06 13:10:29',6,NULL,NULL,NULL,NULL),
	(38,8,7,5,2,1,NULL,NULL,NULL,70,'Mobile issues - birthdate dropdown not working','<p style=\"font-size: 12px;\">Birthdate dropdown menu is not functional from&nbsp;mobile&nbsp;site.</p>','4',NULL,NULL,'2015-11-06 13:47:22',6,'2015-11-10',NULL,NULL,NULL),
	(39,8,7,5,2,1,NULL,NULL,NULL,70,'Mobile Issues - bmi calculator','<p style=\"font-size: 12px;\"><span style=\"font-size: 12px;\">BMI Calculator text&nbsp;alignment problem.</span></p>','4',NULL,NULL,'2015-11-06 13:47:50',6,'2015-11-10',NULL,NULL,NULL),
	(40,8,7,5,2,1,NULL,NULL,NULL,106,'add google translate and search','Please add google translate and search functionality<br><br>recommended to have it ether to the left of the social media buttons or the right of the phone number.<br><br>In either case, please ensure that there is enough room for the phone number and buttons to still stand out and be very obvious.<br><br>GH<br>','4,6',NULL,NULL,'2015-11-06 14:04:53',NULL,'2015-11-11',NULL,NULL,100),
	(41,10,7,5,2,1,NULL,NULL,NULL,121,'Product lookup','Add functionality to lookup products from PO system','4',NULL,NULL,'2015-11-06 14:06:07',7,'2015-11-12',NULL,NULL,100),
	(42,8,7,5,2,1,NULL,NULL,NULL,106,'mobile buttons rename','-to get the buttons to appear in one line, can we change the labels to just say:<br><br>surrogate<br>intended parent<br>referral<br><br>but can this also only appear IN MOBILE?<br><br>-The images inside the buttons are offcenter.&nbsp;&nbsp; can we center them please?<br>','4,8,6,5',NULL,NULL,'2015-11-06 14:07:25',NULL,'2015-11-10',NULL,NULL,NULL),
	(43,8,7,5,2,6,NULL,NULL,NULL,106,'Pink baby replacement','Please replace the pink baby on the homepage with the attached graphic.&nbsp; if any corners show, please make them round<br>','4,6',0.5,NULL,'2015-11-06 14:14:45',NULL,'2015-11-10',NULL,NULL,95),
	(44,8,7,5,2,1,NULL,NULL,NULL,106,'Persona Banner Changes','Please update the banners (perhaps on a staging site)<br>with the attached graphics.<br><br>Please remove the color banners and text under each page we updated.<br><br>Ensure proper alt text is in place and name the photos according to the text + image<br><br>for example:&nbsp; intended parents walking couple or about us happy baby<br>','4,6,5',NULL,NULL,'2015-11-06 14:34:31',NULL,'2015-11-10',NULL,NULL,NULL),
	(45,7,7,5,2,1,NULL,NULL,NULL,106,'Add NHFC Talks banner to homepage','Add the NHFC Talks banner to the main page','4',NULL,NULL,'2015-11-09 09:49:00',NULL,'2015-11-10',NULL,NULL,NULL),
	(46,8,7,2,2,1,NULL,NULL,NULL,106,'BMI CALC','1. If possible, we would like the following wording to appear on the BMI chart for anyone whose BMI is above 32.<br>&nbsp;<br>\"Unfortunately, your BMI at this time disqualifies you as a surrogate with our program. Any questions, please contact us at surrogates@nbsurrogacy.com\"<br><br>2. Anyone with a BMI below 32, it should just appear \"Your BMI is (whatever the number is)\"<br><br>3&nbsp; the box around the entry part of the calculator changes colors when you enter your info, but if you delete your info, it doesn\'t change back to the original blue.&nbsp; <br>','4,6',NULL,NULL,'2015-11-10 11:45:20',10,'2015-11-11',NULL,NULL,NULL),
	(48,8,7,1,2,1,NULL,NULL,NULL,106,'PAGE TEXT','Please update all the text, across the board to mirror the style of the text on the blog page.<br><br>this includes, line spacing, height, font, weight, color, and everything else.&nbsp; Thank you so much.<br>','4,6',NULL,NULL,'2015-11-10 12:14:43',NULL,NULL,NULL,NULL,NULL),
	(49,13,7,2,2,6,NULL,NULL,NULL,106,'IMPROVE THE LOOK OF THE THEME','','6',NULL,NULL,'2015-11-10 15:28:11',NULL,'2016-01-19',NULL,NULL,NULL),
	(50,7,1,2,2,1,NULL,NULL,NULL,106,'PHOTO/ video GALLERY','1. Add a \"past events section\"<br>&nbsp;&nbsp;&nbsp;&nbsp; -little blurb about past events and the history and overall mission<br>&nbsp;&nbsp;&nbsp;&nbsp; -gather and post photos of past events, including logos and branding<br>&nbsp;&nbsp;&nbsp;&nbsp; *may be better to host externally in pinterest and use a gallery viewer on the site<br>&nbsp;&nbsp;&nbsp;&nbsp; ***this gallery viewer will have to be mirrored on a NEW, CORRESPONDING PAGE on nhfc.com<br>2 ADD a video gallery that pulls videos from youtube<br>&nbsp;&nbsp;&nbsp;&nbsp; ***this gallery viewer will have to be mirrored on a NEW, CORRESPONDING PAGE on nhfc.com<br>&nbsp;&nbsp;&nbsp;&nbsp; -note, the photos and videos must be packaged and sent to china for separate hosting<br>&nbsp;&nbsp;&nbsp;&nbsp; -all videos must be edited and branded new hope<br>&nbsp;&nbsp;&nbsp;&nbsp; -see eva and daniela and geoff for restricted names of people and topics not to be shown<br>&nbsp; <br>','4,10,8,6,5',NULL,NULL,'2015-11-10 15:33:09',NULL,NULL,NULL,NULL,NULL),
	(52,7,7,5,2,1,NULL,NULL,NULL,111,'Update NHFC Divisiong of Fertility Preservation content','http://www.newhopefertility.com/egg-freezing/division-of-fertility-preservation/<div><br></div><div>Update <b>Elective Oocyte Preservation </b>to <b>Medically Indicated Oocyte Freezing</b></div><div><b><br></b></div><div><b>DO NOT </b>link to NHFC Egg freezing page.&nbsp;</div>','4',NULL,NULL,'2015-11-11 09:38:25',NULL,NULL,NULL,NULL,NULL),
	(53,7,7,1,2,1,NULL,NULL,NULL,111,'Banner/Slider for Dr. Oktay\'s page','Banner/slider creation with the following phrase:<div><br></div><div>Innovation Fertility is now offering Fertility Preservation to New Hope Fertility Center.</div><div><br></div><div>http://fertilitypreservation.org/</div>','6,5',NULL,NULL,'2015-11-11 09:49:06',NULL,'2015-11-12',NULL,NULL,NULL),
	(54,7,7,5,2,1,NULL,NULL,NULL,121,'NHFC Blog nav','<table class=\"contentTable\" style=\"font-size: 12px; width: 2081.11px;\"><tbody><tr><td><div class=\"itemInfo ticketInfo\"><div class=\"itemInfoContainer\"><div class=\"itemDescription\">Nav bar for the blog pages should be the same as the NHFC Site.</div></div></div></td></tr></tbody></table>','',NULL,NULL,'2015-11-11 12:12:18',NULL,'2015-11-12',NULL,NULL,100),
	(55,7,7,2,2,1,NULL,NULL,NULL,106,'APPOINTMENT BUTTON','Please add this button to the fertility preservation division on NHFC main site page please (http://www.newhopefertility.com/egg-freezing/division-of-fertility-preservation/).<br><br>Replace the existing graphic with the attachment.<br><br>Please move text, \"With over a decade of experience, we are the recommended source of \r\nfertility preservation of professionals. There is no better time to \r\nstart freezing than right now! Call to schedule your first consultation \r\ntoday.\" so that it is left justified of the graphic (so that it and the graphic are in two column format)<br><br>Please add this phone number after the text so that it reads:&nbsp; <br><br>\"call to schedule your first consultation \r\ntoday:&nbsp; <span class=\"contact-telephone\" itemprop=\"telephone\">1-877-492-3666\"<br><br>Please have the phone number clickable and auto dialable.&nbsp; <br><br>thanks<br></span>','4,8,6,5',NULL,NULL,'2015-11-11 12:53:15',NULL,'2015-11-12',NULL,NULL,100),
	(57,10,7,3,2,1,NULL,NULL,NULL,121,'Admin Interface','Create an admin interface for administers to update content.','4',NULL,NULL,'2015-11-12 14:44:11',NULL,'2016-01-22',NULL,NULL,100),
	(58,7,7,5,2,1,NULL,NULL,NULL,130,'NHFC-Talks Web Banner','Image to upload as banner on main site&nbsp;','4,10,8,6,5',NULL,NULL,'2015-11-12 15:53:31',NULL,'2015-11-13',NULL,NULL,100),
	(59,10,7,5,2,1,NULL,NULL,NULL,121,'Item Number','Add ability for users to type in item numbers to the purchase order system. <br>','4',NULL,'2015-11-20','2015-11-13 17:06:28',NULL,'2015-12-18',NULL,'2015-11-16',NULL),
	(60,9,7,5,2,1,NULL,NULL,NULL,121,'Sound','this was actually not the problem','4',NULL,NULL,'2015-11-17 09:42:16',NULL,'2015-11-18',NULL,NULL,NULL),
	(61,9,7,5,2,1,NULL,NULL,NULL,121,'Monitor Display','billing was being fed from old go to display port. &nbsp;updated so that any instance opening on port 8080 would be redirected to port 8000','4',1,'2015-11-17','2015-11-17 09:43:00',NULL,'2015-12-21',NULL,'2015-11-17',100),
	(62,7,7,2,2,1,NULL,NULL,NULL,106,'Add link','Please add the following link to the footer for \"career center\" so that people may apply for positions.<br><br>&nbsp;<br>http://newhopefertilitycenter.appone.com&nbsp; (This is the link to our recruitment site)<br><br>Please remove the existing job listings (if any) on the website.<br><br>If there is a place to add this language where it feels appropriate, please add:<br><br>\"Thank you for your interest in New Hope Fertility Center, please visit our Career Center to obtain a list of the current open positons, and submit your resume and application.\"<br><br>thank you <br><br>','8,6',NULL,NULL,'2015-11-20 11:13:37',NULL,'2015-11-27',NULL,NULL,NULL),
	(63,14,7,1,2,1,NULL,NULL,NULL,106,'GO LIVE!','Please coordinate with Jed and GO LIVE for usk. thank you!<br><br>GH<br>','4,8,6',NULL,NULL,'2015-11-20 11:31:09',NULL,'2015-11-24',NULL,NULL,NULL),
	(64,8,7,2,2,1,NULL,NULL,NULL,106,'Surrogacy page Banner change','please replace banner with attachment<br>','4,6',NULL,NULL,'2015-11-20 11:45:15',NULL,'2015-11-30',NULL,NULL,NULL),
	(65,7,7,1,2,1,NULL,NULL,NULL,106,'add address and map','Please add our address to the footer of the site<br><br>please add a google map to both the contact and directions page on our site<br><br>thank you.<br>','4,6',NULL,NULL,'2015-11-20 16:57:30',NULL,'2015-12-04',NULL,NULL,NULL),
	(67,7,1,1,2,1,NULL,NULL,NULL,106,'Site upgrades','Eva please coordinate with nichole before doing this, but please work with me to:<br><br>updating all page titles to include Geo references as needed.&nbsp; i.e. Donor will become Donor NYC<br>note:&nbsp; i dont want the actual displayed title in the dropdown to say nyc, just the url<br><br>Wherever it says a name, like john zhang, we will add dr. in front of it.<br><br>If it already says doctor we will upgrade that to the type of doctor like fertility doctor.&nbsp; Or NYC Fertility Doctors<br>ie, our top nav button<br><br>looking through the meta’s we adding geographical terms and keywords<br><br>alt text and picture titles including geo tags<br><br>all 106 pages as needed.<br><br>thank you<br>','8',NULL,NULL,'2015-11-24 13:26:03',NULL,NULL,NULL,NULL,NULL),
	(68,7,1,5,2,1,NULL,NULL,NULL,106,'Events page','To be nested under resources page<br><br>nyc events<br><br>Nichole you said you had an awesome calendar plugin we can use.&nbsp; We have a list of events and have been building out pinterest galleries that can be embedded showing past successes of events.<br><br>now can people actually book reservations on this plugin as well?&nbsp; we would prefer to not have to use eventbrite anymore.<br><br>thank you.<br><br>GH<br>','4,10,8,6',NULL,NULL,'2015-11-24 14:23:54',NULL,NULL,NULL,NULL,NULL),
	(69,8,7,5,2,1,NULL,NULL,NULL,106,'interactive surrogacy law map','add the interactive surrogacy law map to the surrogacy drop down<br>','4,8,5',NULL,NULL,'2015-11-24 14:29:11',15,'2015-12-22',NULL,NULL,100),
	(70,14,7,5,2,1,NULL,NULL,NULL,111,'Text changes','<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><div lang=\"JA\" link=\"blue\" vlink=\"purple\"><p style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">1.<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">“Kitazato IUI catheter” page<u></u><u></u></span></p><p style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">The picture on the left, showing 3 different types of IUI catheters, we would like you to take the picture at your side and change it. It is because the specifications on the picture do not match the ones 510K cleared. I am so sorry, it was from our website!!<u></u><u></u></span></p><p style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><u></u>&nbsp;<u></u></span></p><p style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">What is FDA approved are 7cm and 10cm catheter are both without stopper while 18cm catheter is with stopper.<u></u><u></u></span></p><p style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">I hope you can take the samples Chisa sent back from ASRM and take a new photo and replace the current picture with the new correct products.<u></u><u></u></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><u></u>&nbsp;<u></u></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><u></u>&nbsp;<u></u></span></p><p style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">2.<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">“Quality” page with subtitle Quality Certification<u></u><u></u></span></p><p style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif; background-color: rgb(255, 255, 0);\">We felt uncomfortable and because ISO auditors are very strict whenever we mention our certification, we should be very precise on information.<u></u><u></u></span></p><p class=\"MsoNormal\" style=\"text-indent: 18pt;\"><span style=\"background-color: rgb(255, 255, 0);\"><span lang=\"EN-US\"><font face=\"Arial,sans-serif\"><span style=\"font-size: 10pt;\">I do not consider you have Kitazato US Inc. has ISO certification, so if not, do not write “US Kitazato” and write below.&nbsp;<u>&nbsp;Please&nbsp;</u></span><u><span style=\"font-size: 13px;\">just</span><span style=\"font-size: 10pt;\">&nbsp;remove the first sentence that talks about ISO. &nbsp;Then remove&nbsp;</span><span style=\"font-size: 13px;\">“</span><span style=\"font-size: 10pt;\">the Total Quality&nbsp;</span></u></font></span>TQM) program. Through this TQM program, we have established a close relationship with” &nbsp;what it should read as is:</span></p></div></span><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"background-color: rgb(255, 255, 0);\"><br></span></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"background-color: rgb(255, 255, 0);\">U.S. Kitazato is committed to our customers to ensure an unbroken chain of products, services, and quality.</span></div><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><div lang=\"JA\" link=\"blue\" vlink=\"purple\"><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px; text-indent: 18pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><u></u>&nbsp;<u></u></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><b><i><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 32, 96);\">Kitazato only provides the highest quality products. Kitazato BioPharma Co., Ltd. and Kitazato Medical Co., Ltd. have certification of Quality Management System by ISO 13485.</span></i></b><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">&nbsp;<span style=\"color: red;\">Also, please delete the rest of the part.<u></u><u></u></span></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif; color: red;\"><u></u>&nbsp;<u></u></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><i><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif; color: red;\">Next paragraph should be deleted completely;</span></i><i><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">&nbsp;U.S. Kitazato is committed to the Total Quality Management (TQM) …</span></i><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif; color: red;\"><u><u></u><u></u></u></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif; color: red;\"><u></u>&nbsp;<u></u></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">The third paragraph can be maintained.<u></u><u></u></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif; color: red;\"><u></u>&nbsp;<u></u></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">Kitazato Cryotop, Needles and Catheters are CE marked according with EU Directive (94/42/EEC).<i><span style=\"color: red;\">&nbsp;</span><b><span style=\"color: rgb(0, 32, 96);\">More products</span></b></i><b><span style=\"color: rgb(0, 32, 96);\">&nbsp;</span></b>are under the CE mark registration procedure.<i><u></u><u></u></i></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14px;\"><i><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: Arial, sans-serif; color: rgb(118, 113, 113);\">Our Quality Assurance staffs says some of our products will be registered for CE marking not as “medical device”, but for “Diagnostic….”, so I advise to make it sound “vague” to please my colleagues.</span></i></p></div></span><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><br></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"background-color: rgb(255, 255, 0);\">Eva for the fourth paragraph of this section please replace the text with the following:</span></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"background-color: rgb(255, 255, 0);\"><br></span></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"background-color: rgb(255, 255, 0);\">Kitazato Cryotop, Needles and Catheters distributed in Europe are CE marked according with EU Directive (94/42/EEC). The most recent products like Pipettes and Media are under the CE mark registration procedure, including the technical files prepared for Class II and Class III medical devices. &nbsp;All products created for North America are FDA approved.</span></div>','8,6',NULL,NULL,'2015-11-30 11:35:48',NULL,'2015-12-11',NULL,NULL,NULL),
	(71,7,7,1,2,1,NULL,NULL,NULL,106,'Oktay Page Update','-Please update the \"click here button\" for the oktay landing page ( http://www.newhopefertility.com/wp-content/uploads/2015/10/kutluk_appointmet_button.png ) to direct to our online appointment form ( http://www.newhopefertility.com/contact/schedule-first-visit/ )<br><br>-Please replace the 877 number on the website with our IOV phone number.<br><br><br>- Please update the schedule an appointment form to have the following fields added:<br><br>&nbsp;&nbsp;&nbsp;&nbsp; Which doctor would&nbsp; you like to see:&nbsp; dr zhang, dr, yang, dr. liu, dr morgan, dr. oktay.<br><br><br>-please replace the first paragraph\'s text with the following :<br><br><p>New Hope Fertility in NYC is dedicated to providing the best, cutting-edge, and reliable \r\nfertility preservation solutions. As one of the first American centers \r\nto offer this process, Dr. John Zhang pioneered egg freezing with \r\nvitrification and has had over 400 live births from frozen embryos.</p><p>Whether\r\n your desire is to delay your fertility until you are ready to start a \r\nfamily or to preserve your fertility in preparation of chemotherapy or \r\nother treatments that may threaten the future of your fertility, our \r\nDivision of Fertility Preservation offers a full-range of options for \r\nyou:</p><br><br>','3,4,8,6',NULL,NULL,'2015-12-02 12:12:33',NULL,'2015-12-04',NULL,NULL,NULL),
	(72,7,1,5,2,1,NULL,NULL,NULL,111,'Add to publication List','JARG:&nbsp;<h1 style=\"font-size: 1.231em; margin-top: 0.375em; margin-bottom: 0.375em; line-height: 1.125em; color: rgb(0, 0, 0); font-weight: bold; font-family: arial, helvetica, clean, sans-serif;\">Revisiting germinal vesicle transfer as a treatment for aneuploidy in infertile women with diminished ovarian reserve.</h1><div class=\"afflist\" style=\"font-family: arial, helvetica, clean, sans-serif; font-size: 13px; line-height: 17.9998px; zoom: 1;\"><div class=\"ui-helper-reset\" aria-live=\"assertive\" style=\"font-size: 13px;\"></div></div><div class=\"abstr\" style=\"margin: 1em auto auto; font-family: arial, helvetica, clean, sans-serif; font-size: 13px; line-height: 17.9998px;\"><h3 style=\"font-size: 1.0769em; line-height: 1.2857; color: rgb(152, 87, 53); font-weight: bold; display: inline;\">Abstract</h3><div class=\"\"><p style=\"margin-bottom: 0.5em;\"><abstracttext>The maturation and meiotic competence of human oocyte requires both healthy cytoplasmic and nuclear compartments. Germinal vesicle (GV) transfer techniques have represented useful tools for studying the interaction between the nucleus and the cytoplasm in oocyte maturation process in mammals. This report summarizes an update on the recent findings on GV transfer pertaining to improving meiotic resumption and ability of immature oocytes to mature. It also addresses mitochondrial DNA heteroplasmy as a challenge in GV transfer technology. Altogether, data to date indicate that GV transfer could improve the quality of human oocytes especially in women with advanced maternal age who usually have high rates of spindle abnormality and chromosomal misalignment. Although experimental, this technique represents a viable therapeutic option for women with diminished ovarian reserve who do not produce mature oocytes or good embryos during IVF treatment.</abstracttext></p><p style=\"margin-bottom: 0.5em;\"><abstracttext><br></abstracttext></p><p style=\"margin-bottom: 0.5em;\"><abstracttext><span role=\"menubar\" style=\"font-size: 11.0045px; line-height: 15.9565px;\"><a href=\"http://www.ncbi.nlm.nih.gov/pubmed/25515532#\" title=\"Journal of assisted reproduction and genetics.\" abstractlink=\"yes\" alsec=\"jour\" alterm=\"J Assist Reprod Genet.\" role=\"menuitem\" aria-expanded=\"false\" aria-haspopup=\"true\" style=\"color: rgb(102, 0, 102); border-bottom-width: 0px; text-decoration: underline;\">J Assist Reprod Genet.</a></span><span style=\"font-size: 11.0045px; line-height: 15.9565px;\">&nbsp;2015 Feb;32(2):313-7. doi: 10.1007/s10815-014-0400-3. Epub 2014 Dec 18.</span></abstracttext></p></div></div>','8',NULL,NULL,'2015-12-04 10:53:10',NULL,NULL,NULL,NULL,NULL),
	(73,7,2,5,2,1,NULL,NULL,NULL,121,'Update Schedule Consultation form','<span style=\"font-size: 12px;\">Add new field to schedule a consultation form:</span><div><span style=\"font-size: 12px;\"><br></span></div><div><span style=\"font-size: 12px;\">Which doctor would&nbsp; you like to see?</span></div><div><span style=\"font-size: 12px;\">Options:</span></div><div><span style=\"font-size: 12px;\">Dr. Zhang</span></div><div><span style=\"font-size: 12px;\">Dr. Yang&nbsp;</span></div><div><span style=\"font-size: 12px;\">Dr. Liu</span></div><div><span style=\"font-size: 12px;\">Dr Morgan</span></div><div><span style=\"font-size: 12px;\">Dr. Oktay</span></div>','',NULL,NULL,'2015-12-04 16:45:43',NULL,'2015-12-23',NULL,NULL,NULL),
	(74,14,7,5,2,1,NULL,NULL,NULL,111,'Update IUI Slider picture','','8,6',NULL,NULL,'2015-12-08 16:04:43',NULL,'2015-12-08',NULL,NULL,NULL),
	(76,14,7,5,2,1,NULL,NULL,NULL,111,'Update IUI Picture Home page','','8,6',NULL,NULL,'2015-12-08 16:05:28',NULL,'2015-12-08',NULL,NULL,NULL),
	(77,14,7,5,2,1,NULL,NULL,NULL,111,'More Text Changes','<div><br></div><div>On the “Quality” page with subtitle Quality Certification</div><div>Please amend as what I wrote in blue. The reason is shown in gray.</div><div>Kitazato Cryotop, Needles and Catheters are CE marked according with EU Directive (94/42/EEC). More products are under the CE mark registration procedure.</div><div><br></div><div>More details in attachment.</div>','8,6',NULL,NULL,'2015-12-11 11:47:19',NULL,'2015-12-11',NULL,NULL,NULL),
	(78,7,7,5,2,1,NULL,NULL,NULL,106,'combine surrogacy pages','Please combine our two surrogacy pages.&nbsp; The screenshot below seems to be a lost page.&nbsp; Can we please move ALL THE CONTENT and put it on the surrogacy page under the header that currently says surrogacy?&nbsp; See Geoff if clarification is needed:<br><img src=\"data:image/png;base64,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','4,8,6',NULL,NULL,'2015-12-14 13:22:56',NULL,'2015-12-18',NULL,NULL,NULL),
	(80,7,7,5,2,1,NULL,NULL,NULL,111,'Add pics to site','<div style=\"font-family: Calibri, sans-serif; font-size: 14px;\">Can we please add these to the \"about nhfc\" page please? &nbsp;I would also like these photos to be relabelled according to what they are and if they need resizing, Eva can assist here. &nbsp;Please ensure proper tagging on the back end. &nbsp;Thank you! Each photo should have new hope IVF in the title. &nbsp;For example: &nbsp;New Hope IVF Center waiting room. &nbsp;New Hope IVF Lab. &nbsp;Etc.</div>\r\n<div>&nbsp;</div>','8',NULL,NULL,'2015-12-17 09:43:20',NULL,'2016-02-19',NULL,NULL,NULL),
	(82,7,7,5,2,1,NULL,NULL,NULL,121,'IVF Clinical Trials','Look up the content for&nbsp;https://www.ivfclinicaltrial.com/ and http://freeivfclinicaltrial.com/ to see where this content is being served from and see the best way to put up a landing page.','4',NULL,NULL,'2015-12-22 09:33:58',NULL,'2015-12-23',NULL,NULL,NULL),
	(83,8,1,5,2,1,NULL,NULL,NULL,121,'Content for map','<p>Please provide text and content for the Surrogacy Map</p>\r\n<div>&nbsp;</div>','4,8,6',NULL,NULL,'2015-12-22 09:47:03',15,NULL,NULL,NULL,NULL),
	(84,8,1,5,2,1,NULL,NULL,NULL,121,'Map design','Please give me direction on the colors that should be used for the different areas of the map.&nbsp;<div><br></div><div>For reference, the map is currently installed at&nbsp;<a href=\"http://nhfcweb01.nhfchq.com/wordpress/map\" title=\"http://nhfcweb01.nhfchq.com/wordpress/map\" target=\"_blank\">http://nhfcweb01.nhfchq.com/wordpress/map</a></div>','5',NULL,NULL,'2015-12-22 09:49:03',15,NULL,NULL,NULL,NULL),
	(85,10,7,5,2,1,NULL,NULL,NULL,121,'Item types','Create system to add type of purchase for PO system. Types include<div><ul><li>Software</li><li>Hardware</li><li>Equipment</li><li>License</li><li>Service</li><li>Supplies</li><li>Furniture</li><li>Travel</li><li>Entertainment</li><li>Meal</li></ul></div>','',NULL,NULL,'2015-12-22 17:29:53',16,'2015-12-23',NULL,NULL,NULL),
	(86,10,7,5,2,1,NULL,NULL,NULL,121,'Subtotal for items','Add column in table to show the quantity * unit price for each individual items in the forms','4',NULL,NULL,'2015-12-22 17:33:07',16,'2015-12-23',NULL,NULL,100),
	(87,10,7,5,2,1,NULL,NULL,NULL,121,'URL for item','Add link to add a URL for each item. Link the item name to the url in the table view.','4',NULL,NULL,'2015-12-22 17:34:31',16,'2015-12-23',NULL,NULL,100),
	(88,10,7,5,2,1,NULL,NULL,NULL,121,'Update look of tables','update the look of the tables. put most important information to the left of the table, remove \"View\" link and allow users to open the purchase order by clicking on the link','4',NULL,NULL,'2015-12-22 17:36:12',16,NULL,NULL,NULL,NULL),
	(89,7,7,2,1,1,NULL,NULL,NULL,106,'mongoose code faster','Hi,<br>&nbsp;<br>I need to have the New Hope site updated. I need the following Mongoose code added in place of the existing Mongoose code. This will allow us to track organic calls. Who can help me with this?<br>&nbsp;<br>&lt;!-- Begin DialogTech Tracking Code --&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;script&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (function(m, o, n, g, j, s){m[\'MongMObject\'] = j; m[j] = m[j] || function(){<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (m[j].q = m[j].q || []).push(arguments)}, d = 1 * new Date(); m[j].l = d; a = o.createElement(n),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b = o.getElementsByTagName(n)[0]; a.async = 1; a.src = g + \'?t=\' + d; b.parentNode.insertBefore(a, b)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; })(window, document, \'script\', \'//www.mongoosemetrics.com/jsfiles/js-correlation/mm-engine.min.js\', \'mm_options\');<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>&nbsp;<br>mm_options(\'default_cc\', \'A51968B617AD5999C83EA44F6C2BA76C\');<br>var organic_number = \'2129697422\';<br>&nbsp;<br>&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mm_options(\'execute\');<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/script&gt;<br>&lt;!-- End DialogTech Tracking Code --&gt;<br>&nbsp;<br><br>','4,8,6',NULL,NULL,'2016-01-04 09:01:47',NULL,'2016-01-04',NULL,NULL,NULL),
	(90,7,7,1,2,1,NULL,NULL,NULL,106,'IMMEDIATE PRICING PAGE UPDATE','With over a decade of experience in assisted reproduction and infertility treatment, New Hope Fertility Center offers compassionate care that is <b>perfectly fit for everyone</b>.&nbsp; We know how difficult the journey to parenthood may be and we are here to help you in whatever way we can. <br>&nbsp;<br>Even with one of the most competitive IVF costs in New York, treatment fees can be confusing and difficult to understand.&nbsp; That is why New Hope Financial Counselors are available to help you navigate the costs associated with treatment, <i>allowing you to focus on what matters most—having a family.</i><br><br><b>New Hope Fertility proudly accepts many insurances.&nbsp; Please call to inquire about your specific eligibility. </b><br>&nbsp;<br>Prior to your initial consultation, we will contact your insurance provider to get a comprehensive understanding of your fertility coverage and discuss it with you during your initial visit.&nbsp; In some cases, your out-of-network benefits may provide coverage and we will inform you of this.<br>&nbsp;<br><b>As an added courtesy to our patients, our counselors will obtain all pre-authorizations required and file all in-network claim paperwork for you.</b><br><br>Since you cannot put a price on family, New Hope Fertility offers financial assistance programs including payment plans to help with fertility treatment costs.&nbsp; Please inquire about program eligibility at the time of your initial visit.<br>&nbsp;','3,4,6',NULL,NULL,'2016-01-08 12:47:17',NULL,'2016-01-08',NULL,NULL,NULL),
	(91,7,7,5,2,1,NULL,NULL,NULL,130,'NHFC Talks Banner','Attached is the updated banner w/ new baby','4,10,8,6,5',NULL,NULL,'2016-01-08 13:03:51',NULL,'2016-01-08',NULL,NULL,NULL),
	(92,13,7,2,2,6,NULL,NULL,NULL,130,'Pictures of Speaker in Color','Change the current black and white pictures to the colored versions','3,4,8,6,5',NULL,NULL,'2016-01-13 14:30:42',NULL,'2016-01-15',NULL,NULL,100),
	(93,7,7,2,2,6,NULL,NULL,NULL,130,'Update Banner slide images','Nicole - attached are 2 updated slides, they\'ve been tweaked &amp; improved a bit for visual purposes.&nbsp;<div><br></div><div>The banners are the \"Snow baby\" w/text and the \"Art-world\" banner.</div><div><br></div><div>Thanks</div><div><br><div><div><br></div><div>&nbsp;</div></div></div>','3,4,8,6,5',NULL,NULL,'2016-01-18 12:14:10',NULL,'2016-01-20',NULL,NULL,NULL),
	(94,7,7,5,2,1,NULL,NULL,NULL,130,'Free Fertility Handbook Banner','Nicole - attached is the new \"Free fertility handbook\" banner - Pop-it in and lets see how it looks&nbsp;<div><br></div><div>Thanks</div>','3,4,8,6,5',NULL,NULL,'2016-01-18 13:06:51',NULL,'2016-01-20',NULL,NULL,NULL),
	(95,10,7,2,2,1,NULL,NULL,NULL,70,'Manual for New Employee','Please create a manual for employee training.&nbsp; Please utilize Arthur or myself as an additional resource for documentation.','3,4',NULL,NULL,'2016-01-18 13:18:40',16,'2016-01-22',NULL,NULL,100),
	(96,7,7,1,2,1,NULL,NULL,NULL,130,'NHFC Site Blog Section ','<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px;\">Nicole -</span><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px;\"><br></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px;\">Attached is the png of how the page should look and each image file.<br></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px;\"><br></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px;\">As for the video carousel, If you could find something perhaps close or similar, I think &nbsp;it would be good enough.</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px;\"><br></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px;\">Pop them in the Testing site and lets see how it comes out and we will take it from there.</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px;\"><br></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px;\">Thanks&nbsp;</div><div><br></div>','3,4,8,6,5',NULL,NULL,'2016-01-19 12:47:01',NULL,'2016-02-16',NULL,NULL,100),
	(97,7,7,2,2,1,NULL,NULL,NULL,130,'NHFC site News section update','Files attached -&nbsp;','3,4,8,6,5',NULL,NULL,'2016-01-19 14:23:23',NULL,NULL,NULL,NULL,NULL),
	(98,13,7,5,2,1,NULL,NULL,NULL,106,'Update tracking code','<div style=\"font-family: Calibri, sans-serif; font-size: 14px;\"><div>&lt;script&gt;</div><div>&nbsp; (function(i,s,o,g,r,a,m){i[\'<wbr>GoogleAnalyticsObject\']=r;i[r]<wbr>=i[r]||function(){</div><div>&nbsp; (i[r].q=i[r].q||[]).push(<wbr>arguments)},i[r].l=1*new Date();a=s.createElement(o),</div><div>&nbsp; m=s.getElementsByTagName(o)[0]<wbr>;a.async=1;a.src=g;m.<wbr>parentNode.insertBefore(a,m)</div><div>&nbsp; })(window,document,\'script\',\'/<wbr>/<a href=\"http://www.google-analytics.com/analytics.js\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">www.google-analytics.com/<wbr>analytics.js</a>\',\'ga\');</div><div><br></div><div>&nbsp; ga(\'create\', \'UA-19226654-15\', \'auto\');</div><div>&nbsp; ga(\'send\', \'pageview\');</div><div><br></div><div>&lt;/script&gt;</div></div><div style=\"font-family: Calibri, sans-serif; font-size: 14px;\"><br></div><div style=\"font-family: Calibri, sans-serif; font-size: 14px;\"><br></div>','4',NULL,NULL,'2016-01-19 14:35:58',NULL,'2016-01-19',NULL,NULL,NULL),
	(99,7,7,5,2,1,NULL,NULL,NULL,106,'Find and update hotel pages','<p>Find and update hotel page to reflect The PLAZA as a signature hotel partner.</p>','4,6',NULL,NULL,'2016-01-21 16:35:48',NULL,'2016-02-19',NULL,NULL,NULL),
	(100,7,7,5,2,1,NULL,NULL,NULL,130,'NHFC News Section Banner Updates','Attached are the roll-over images in their proper size 200x400px<div>Let me know if this works</div><div><br></div>','3,4,6,5',NULL,NULL,'2016-01-22 12:13:08',NULL,NULL,NULL,NULL,NULL),
	(101,7,7,5,2,1,NULL,NULL,NULL,130,'**Updated** News button banner pics','Attached are the updated images<div><br></div>','8',NULL,NULL,'2016-01-22 13:11:00',NULL,NULL,NULL,NULL,NULL),
	(102,7,7,5,2,1,NULL,NULL,NULL,130,'Doctor Pictures for Carrousel ','Attached are images of the doctors','3,4,6,5',NULL,NULL,'2016-01-22 14:49:21',NULL,'2016-01-22',NULL,NULL,NULL),
	(103,7,7,5,2,1,NULL,NULL,NULL,130,'Dr.Oktay Logo for NHFC site','File attached - this will go in the bottom like the mock-ups','3,4,6,5',NULL,NULL,'2016-01-22 14:56:36',17,'2016-01-25',NULL,NULL,NULL),
	(104,13,7,2,2,1,NULL,NULL,NULL,106,'Add paypal button and more','We still need to add a link for registration with a PayPal payment option. Dr. Zhang confirmed he would like the registration fee for the Congress to be $450. Can we add a link for interested participants along with a PayPal button for payment? <br><br>We have a long line of people asking about registration, and I want to get them while they\'re still interested.<br><br>The link to register should require participants to fill in:<br><br>-Title (Mr., Ms., Dr., Prof.)<br><br>-Institute<br><br>-Department<br><br>-Name (First and Last)<br><br>-Full Mailing Address (Street, City, Country, Postal Code)<br><br>-E-mail<br><br>-Telephone Contact Number (allow enough space for international numbers)<br><br><br><br>The page should also state somewhere that:<br><br>Registration fee includes:<br><br>Participation in scientific sessions, Congress bag containing the program and promotional materials, and admission to all coffee breaks and lunches as per the Congress program.<br><br><br><br>Here is an interesting model for a registration page if you need any formatting suggestions: Registration Page<br><br>','3,4,8,6',NULL,NULL,'2016-01-22 16:59:52',NULL,NULL,NULL,NULL,NULL),
	(105,7,9,4,2,5,NULL,NULL,NULL,70,'DrJohnzhang blog','SEO IMPACT - Identify the impact of SEO to import the dr.john zhang.com internally.&nbsp; Identify potential requirements / Action plan.','4,6',NULL,NULL,'2016-01-25 09:47:19',30,NULL,NULL,NULL,NULL),
	(106,7,1,5,2,1,NULL,NULL,NULL,70,'Import Drjohnzhang.com blog','<ul><li>New Design for DrJohnzhang.com blog page</li><li><p dir=\"ltr\">Redesign for main blog page.</p></li><ul><li>Video section (move up)</li><li>Other design changes</li></ul></ul><p dir=\"ltr\"><br></p><p><br></p><p><br></p>','4,6,5',NULL,NULL,'2016-01-25 09:52:37',30,NULL,NULL,NULL,NULL),
	(107,7,1,5,2,1,NULL,NULL,NULL,70,'Import Drjohnzhang.com blog - Content','<li>Content update</li><ul><li>Reword the blog description (actual Blog description)</li><li>H1/H2 Description update</li></ul>','4,8,6',NULL,NULL,'2016-01-25 09:53:09',30,NULL,NULL,NULL,NULL),
	(108,7,1,5,2,1,NULL,NULL,NULL,70,'Import Drjohnzhang.com blog - Implementation','<p>Once the design and content is updated,</p><p><br></p><ul><li>Implement mockup</li><li>Test</li><li>Go Live - Update the page redirects</li><li>Test</li></ul>','4,6,5',NULL,NULL,'2016-01-25 09:54:54',30,NULL,NULL,NULL,NULL),
	(109,7,1,5,2,1,NULL,NULL,NULL,70,'Re-Label and organize the Top Menu','<p>Some of the top menu items are&nbsp;laid out in duplicate category</p><p>Requires reorganization based on top tier categorization.&nbsp; </p><p>Please submit a new proposal for the top menu,</p><ol><li>Logical Grouping based on category of each entity</li><li>Ordering/Listing based on prioritized entity </li><li>User Friendly - Easy to navigate.&nbsp; Easy to get obtain information.&nbsp; Less click.</li></ol>','3,4,10,8,6,5',NULL,NULL,'2016-01-25 10:05:43',NULL,NULL,NULL,NULL,NULL),
	(110,8,7,5,2,1,NULL,NULL,NULL,111,'Resrouce Update','<div class=\"gmail_default\" style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;\">Please remove Michele\'s name, phone number and make the following changes to website.</div><div class=\"gmail_default\" style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;\"><br></div><div class=\"gmail_default\" style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;\">April Murray, RD</div><div class=\"gmail_default\" style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;\">188 E 17th Street, Suite 201</div><div class=\"gmail_default\" style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;\">Costa Mesa, CA 92627</div><div class=\"gmail_default\" style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;\"><a href=\"tel:714-396-7729\" value=\"+17143967729\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">714-396-7729</a></div><div class=\"gmail_default\" style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small;\"><a href=\"mailto:dietitian@ocnutritioncoaching.com\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">dietitian@ocnutritioncoaching.<wbr>com</a></div>','8,5',NULL,NULL,'2016-01-25 13:03:22',NULL,NULL,NULL,NULL,NULL),
	(112,7,7,2,2,1,NULL,NULL,NULL,130,'Dr.Oktay & Dr.Morgan Pictures','Images attached of Dr. Oktay and Dr. Morgan','3,4,8,6,5',NULL,NULL,'2016-01-25 13:40:19',NULL,'2016-01-25',NULL,NULL,NULL),
	(113,7,7,2,2,1,NULL,NULL,NULL,130,'Dr. Allen New Pciture','File attached','3,4,8,6,5',NULL,NULL,'2016-01-25 13:44:54',NULL,'2016-01-25',NULL,NULL,NULL),
	(114,7,7,5,2,1,NULL,NULL,NULL,130,'Art World & Snow-baby updated images','Files attached','3,4,8,6,5',NULL,NULL,'2016-01-25 14:18:18',NULL,'2016-01-26',NULL,NULL,NULL),
	(115,7,7,2,2,1,NULL,NULL,NULL,106,'Center the text on the homepage','Nichole,&nbsp; Can you please center the text under the banner (we treat you....) so that it is centered over the personas?<br><br>Thanks.<br><br><br>','4',NULL,NULL,'2016-01-26 09:23:01',NULL,NULL,NULL,NULL,NULL),
	(116,7,7,2,2,1,NULL,NULL,NULL,106,'Center the text on the homepage','Nichole,&nbsp; Can you please center the text under the banner (we treat you....) so that it is centered over the personas?<br><br>Thanks.<br><br><br>','4',NULL,NULL,'2016-01-26 09:23:04',NULL,'2016-02-12',NULL,NULL,NULL),
	(117,7,7,5,2,1,NULL,NULL,NULL,106,'New Blog Banner Pic','Leo, please revise the dr.&nbsp; john zhang blog banner in the slider to reflect both blogs.<br><br>something exciting.<br><br>thanks<br>','4,5',NULL,NULL,'2016-01-26 09:24:06',NULL,'2016-02-12',NULL,NULL,NULL),
	(118,7,7,2,2,1,NULL,NULL,NULL,106,'New Blog Banner Pic','Leo, please revise the dr.&nbsp; john zhang blog banner in the slider to reflect both blogs.<br><br>something exciting.<br><br>thanks<br>','4,5',NULL,NULL,'2016-01-26 09:24:10',NULL,'2016-01-26',NULL,NULL,NULL),
	(119,7,7,1,2,1,NULL,NULL,NULL,106,'SLIDER','Please make sure every link spawns in a new window, the sliders open in the same window and take people away from the page.<br><br>Also please ensure that each slider goes where it should.&nbsp; NHFC talks i think is going to the blog.<br><br>thanks<br>','4,6',NULL,NULL,'2016-01-26 09:45:14',NULL,NULL,NULL,NULL,NULL),
	(120,7,7,5,2,6,NULL,NULL,NULL,130,'Dr. Zhang picture update ','This picture will replace the picture of Dr. Zhang on the carousel&nbsp;','4,6,5',NULL,NULL,'2016-01-27 15:13:42',20,'2016-01-28',NULL,NULL,100),
	(121,7,7,5,2,6,NULL,NULL,NULL,130,'News Buttons Updates','Attached are the image files updated and ready to go.','4,6,5',NULL,NULL,'2016-01-28 15:48:43',NULL,'2016-01-28',NULL,NULL,NULL),
	(122,7,7,5,2,1,NULL,NULL,NULL,106,'Oktay Page Update','Nichole,<br><br>Please review the links on the oktay page:&nbsp; the checked items are strikethrough.&nbsp; please make them normal.<br><br>','4,6',NULL,NULL,'2016-02-01 09:27:18',NULL,'2016-02-01',NULL,NULL,100),
	(123,7,7,5,2,1,NULL,NULL,NULL,70,'Choose a design for Ask A Doctor Pages','Choose a design for Ask A Doctor Pages and update pages to reflect chosen design.','4,5',NULL,NULL,'2016-02-01 09:54:07',36,'2016-02-16',NULL,NULL,100),
	(124,8,7,5,2,1,NULL,NULL,NULL,70,'Blog update','1. Add published date to blogs<div>2. Add publishing plugin for blogs</div>','4',NULL,NULL,'2016-02-02 09:24:44',NULL,'2016-02-02',NULL,NULL,100),
	(125,7,7,5,2,1,NULL,NULL,NULL,106,'redirect to surrogacy','http://www.newhopefertility.com/egg-donor/surrogacy/prescreening-quiz/<br><br>should redirect to this page:<br><br>http://www.nbsurrogacy.com/surrogate/prescreening-quiz/<br><br><br><br>','4,8,6',NULL,NULL,'2016-02-02 13:53:41',NULL,'2016-02-02',NULL,NULL,100),
	(126,7,7,5,2,1,NULL,NULL,NULL,106,'video testimonials ','please add this page:<br><br>http://www.newhopefertility.com/about-us/success-stories/video-testimonials/<br>to the about us&nbsp; drop down underneath success stories.<br><br><br>','4,8,6',NULL,NULL,'2016-02-02 14:00:52',NULL,'2016-02-03',NULL,NULL,100),
	(127,7,7,5,2,6,NULL,NULL,NULL,106,'Shedule an appointment banner For egg-freezing section','Nicole - This small banner will replace the previous banner which had Dr. Okatay.<div><br></div><div>Its for the egg-freezing section of the site.</div><div><br><div><br></div><div><br></div></div>','4,6,5',NULL,NULL,'2016-02-03 10:48:39',NULL,'2016-02-03',NULL,NULL,100),
	(128,15,1,5,2,1,NULL,NULL,NULL,121,'Configure Restful service for site','','4',NULL,NULL,'2016-02-03 13:44:26',NULL,NULL,NULL,NULL,NULL),
	(129,15,1,5,2,1,NULL,NULL,NULL,121,'Create News section','create a news section for the intranet site.','4',NULL,NULL,'2016-02-03 13:44:58',NULL,NULL,NULL,NULL,NULL),
	(131,7,7,5,2,1,NULL,NULL,NULL,106,'Add Latest Post from facebook onto Newhopefertility','','4',NULL,NULL,'2016-02-04 10:53:04',NULL,'2016-02-12',NULL,NULL,100),
	(132,7,7,5,2,1,NULL,NULL,NULL,106,'Egg freezing banner update','Nicole - Please move the \"Egg-Freezing\" banner to the left and underneath the free handbook banner one. It should be at least 5px of separation between them.<div><br></div><div>I have attached the new image file here with the proper dimensions.&nbsp;</div><div><br></div><div>Pop them in when you can.</div><div><br></div><div>Thanks</div>','4,8,6,5',NULL,NULL,'2016-02-04 16:25:40',NULL,'2016-02-12',NULL,NULL,NULL),
	(133,7,7,5,2,1,NULL,NULL,NULL,106,'Banner Update','Please remove NHFC Talks from the site.<div><br></div>','4',NULL,NULL,'2016-02-05 10:06:31',NULL,'2016-02-05',NULL,NULL,100),
	(134,13,7,5,2,1,NULL,NULL,NULL,106,'Update Paypal button on site','Update the button to make the paypal payment. The new code is&nbsp;<div><br></div><div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">&lt;form action=\"<a href=\"https://www.paypal.com/cgi-bin/webscr\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">https://www.paypal.<wbr>com/cgi-bin/webscr</a>\" method=\"post\" target=\"_top\"&gt;</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">&lt;input type=\"hidden\" name=\"cmd\" value=\"_s-xclick\"&gt;</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">&lt;input type=\"hidden\" name=\"hosted_button_id\" value=\"J4X36XCQQAKVN\"&gt;</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">&lt;input type=\"image\" src=\"<a href=\"https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">https://www.<wbr>paypalobjects.com/en_US/i/btn/<wbr>btn_buynowCC_LG.gif</a>\" border=\"0\" name=\"submit\" alt=\"PayPal - The safer, easier way to pay online!\"&gt;</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">&lt;img alt=\"\" border=\"0\" src=\"<a href=\"https://www.paypalobjects.com/en_US/i/scr/pixel.gif\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">https://www.<wbr>paypalobjects.com/en_US/i/scr/<wbr>pixel.gif</a>\" width=\"1\" height=\"1\"&gt;</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">&lt;/form&gt;</div></div>','4',NULL,NULL,'2016-02-05 12:39:17',NULL,'2016-02-05',NULL,NULL,100),
	(135,7,7,5,2,1,NULL,NULL,NULL,106,'Division of Fertility Preservation layout content update','nichole,&nbsp;<br><br>please update the content to include the following text changes.&nbsp; You may refer to the layout i am providing.&nbsp; update font class and size as needed, color as needed.&nbsp; please use purple for the phone numbers and allow them to be clickable and dial able from a phone.&nbsp;&nbsp;<br><br>Please note the blue button placement on the left.<br><br><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">New Hope Fertility in NYC is dedicated to providing the best, cutting-edge, and reliable fertility preservation solutions. As one of the first American centers to offer this process, Dr. John Zhang pioneered egg freezing with vitrification and has had over 400 live births from frozen embryos.&nbsp;</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">To continue offering the best fertility preservation possible, Dr. John Zhang has partnered with the Director and Founder of FertilityPreservation.org, Dr. Kutluk Oktay.&nbsp;&nbsp;A leader in onco-fertility, Dr. Oktay is one of the world’s leading experts in ovarian tissue freezing, ovarian transplants, as well as ovarian stimulation in breast cancer patients.&nbsp;&nbsp;He is also an expert in fertility preservation in children including those facing cancer and Turner Syndrome.&nbsp;&nbsp;Together we bring you the New Hope Division of Fertility Preservation.</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\"><br></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">&nbsp;(this is that awesome checklist)</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\"><br></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">Whether your desire is to delay your fertility until you are ready to start a family or to preserve your fertility in preparation of chemotherapy or other treatments that may threaten the future of your fertility, our Division of Fertility Preservation offers a full-range of options for you:</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">With over a decade of experience, we are the recommended source for fertility preservation of professionals.&nbsp;&nbsp;There is no better time to start freezing than right now!</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: Calibri;\">Call to schedule your first consultation today:</p>','4',NULL,NULL,'2016-02-04 16:54:11',NULL,'2016-02-05',NULL,NULL,100),
	(137,7,7,1,2,6,NULL,NULL,NULL,130,'Chinese New Year Banner and Valentines Baby Banner','Nicole - Please upload these banners in the home slider.','4,6,5',NULL,NULL,'2016-02-05 16:36:15',NULL,'2016-02-12',NULL,NULL,100),
	(138,7,7,2,2,1,NULL,NULL,NULL,111,'What\'s new at NHFC update','<div>Title:&nbsp;</div><h1 class=\"yt watch-title-container\" style=\"margin-top: 0px; margin-bottom: 13px; padding-bottom: 0px; border: 0px; display: table-cell; vertical-align: top; width: 1250px; word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><span id=\"eow-title\" class=\"watch-title \" dir=\"ltr\" title=\"Dr  Zhang\'s Blog-Mitochondrial DNA Replacement and Nuclear Transfer\" style=\"border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">Dr Zhang\'s Blog-Mitochondrial DNA Replacement and Nuclear Transfer</span></h1><div><br></div>https://www.youtube.com/watch?v=h9AK-76_1AE','4',NULL,NULL,'2016-02-09 12:00:08',NULL,'2016-02-16',NULL,NULL,100),
	(139,16,7,5,2,6,NULL,NULL,NULL,121,'Replace Valentines Day Banner','Replace the valentines day banner on Monday','4,5',NULL,'2016-02-15','2016-02-12 11:35:54',42,'2016-02-15',NULL,'2016-02-15',100),
	(140,16,7,5,2,6,NULL,NULL,NULL,121,'Remove Chinese New Year Banner','Remove or replace the Chinese New Year banner on Monday, February 22, 2016','4,5',NULL,'2016-02-22','2016-02-12 11:38:44',42,'2016-02-22',NULL,'2016-02-22',100),
	(141,16,7,5,2,6,NULL,NULL,NULL,121,'Success Stories','Add Accordion to Success Stories Page<div>Add video testimonials slider to top of success stories</div>','4',NULL,NULL,'2016-02-12 11:39:44',42,'2016-02-12',NULL,NULL,100),
	(142,16,7,5,2,6,NULL,NULL,NULL,121,'Directions','Add Accordion to Directions page ( <a href=\"http://www.newhopefertility.com/contact/directions/\" title=\"http://www.newhopefertility.com/contact/directions/\" target=\"_blank\">http://www.newhopefertility.com/contact/directions/</a>&nbsp;)','4',NULL,NULL,'2016-02-12 11:40:43',42,'2016-02-12',NULL,NULL,100),
	(143,16,7,5,2,6,NULL,NULL,NULL,121,'Dr. Oktay Page','Update text on Dr. Oktays page. Change Non-medical to Egg Freezing and Medical Egg Freezing to Fertility Preservation. Fix the link to schedule the appointment','4',NULL,NULL,'2016-02-12 11:42:06',42,'2016-02-12',NULL,NULL,100),
	(144,16,1,5,2,6,NULL,NULL,NULL,121,'Update News Page','Update News Page to add News from 2015.','8',NULL,NULL,'2016-02-12 11:42:39',42,NULL,NULL,NULL,NULL),
	(145,16,7,5,2,6,NULL,NULL,NULL,121,'Ask A doctor layout','<ul><li>Fix spacing of text on ask a doctor questions</li><li>Change the color of the link on question and answer page</li><li>Remove Breadcrumbs</li></ul>','4',NULL,NULL,'2016-02-12 12:01:32',42,'2016-02-12',NULL,NULL,NULL),
	(146,15,1,5,2,1,NULL,NULL,NULL,121,'Call Log Changes','Add \"Processing\" option to call log as a status between resolved and the others, for when a patient is not finished.','4',2,NULL,'2016-02-12 13:18:46',NULL,NULL,NULL,'2016-02-15',NULL),
	(147,16,7,5,2,1,NULL,NULL,NULL,121,'Create Sidebar for ask a doctor','Create a sidebar for ask a doctor pages. Add most recent questions to this sidebar','4',NULL,NULL,'2016-02-12 14:07:57',NULL,NULL,NULL,NULL,100),
	(148,16,7,5,2,1,NULL,NULL,NULL,121,'Troubleshoot Page Speed ','Troubleshoot the Slow Load Time of <a href=\"http://newhopefertility.com\" title=\"\" target=\"\">http://newhopefertility.com</a>','4',NULL,NULL,'2016-02-12 15:36:36',42,'2016-02-16',NULL,NULL,100),
	(149,16,1,5,2,1,NULL,NULL,NULL,121,'Add Facebook plugin to New Beginnings Site','Add Facebook plugin to New Beginnings Site to post feed from Facebook. Use the same plugin used in New Hope Fertility (<a href=\"https://smashballoon.com/custom-facebook-feed/\" title=\"\" target=\"\">Custom Facebook Feed by Smash Balloon</a>)','4',NULL,NULL,'2016-02-16 12:38:19',NULL,NULL,NULL,NULL,NULL),
	(150,7,1,2,1,1,NULL,NULL,NULL,121,'Add other doctors to Ask a Doctor Plugin','<p>Add</p>\r\n<ul>\r\n<li>Dr Zhang</li>\r\n<li>Dr Yang</li>\r\n<li>Dr Liu</li>\r\n<li>Dr Merhi</li>\r\n<li>Dr Oktay</li>\r\n</ul>\r\n<p>As users to wordpress and update pictures so that questions answered by those drs would show their picture.</p>','4',NULL,NULL,'2016-02-17 11:33:27',36,NULL,NULL,NULL,NULL),
	(151,18,7,5,2,1,NULL,NULL,NULL,121,'Buy Template for Columbus Circle OBGYN','<p>Please purchase the template for the website. The Template can be purchased at&nbsp;<a href=\"http://themeforest.net/item/betheme-responsive-multipurpose-wordpress-theme/7758048?ref=muffingroup\">http://themeforest.net/item/betheme-responsive-multipurpose-wordpress-theme/7758048?ref=muffingroup</a></p>\r\n<p>&nbsp;</p>','3,6',NULL,NULL,'2016-02-17 12:02:31',43,'2016-02-19',NULL,NULL,NULL),
	(152,18,7,5,2,1,NULL,NULL,NULL,121,'Create Content for website','<p>Content needs to be created for the site.</p>','6',NULL,'2016-02-19','2016-02-17 12:12:16',43,NULL,NULL,NULL,NULL),
	(153,18,7,5,2,1,NULL,NULL,NULL,121,'Create Staging site','<p>Create a staging site on NHFC testing for columbus circle obgyn.&nbsp;</p>','4',NULL,'2016-02-19','2016-02-17 12:19:24',43,'2016-02-18',NULL,NULL,100),
	(154,18,7,5,2,1,NULL,NULL,NULL,121,'Install Wordpress for Columbus Circle OBGyn','<p>Install Wordpress on the staging site for columbus circle obgyn.</p>','4',NULL,NULL,'2016-02-17 12:20:50',43,'2016-02-18',NULL,NULL,100),
	(155,18,1,5,2,1,NULL,NULL,NULL,121,'Add Wordpress Plugins to site','<p>Add all necessary wordpress plugins</p>\r\n<p>The plugin list should include</p>\r\n<ul>\r\n<li><a href=\"https://wordpress.org/plugins/wordpress-seo/\">Yoast SEO</a></li>\r\n<li><a href=\"https://wordpress.org/plugins/enable-media-replace/\">Enable Media Replace</a></li>\r\n<li><a href=\"https://wordpress.org/plugins/w3-total-cache/\">W3 Total Cache</a></li>\r\n</ul>\r\n<p>&nbsp;</p>','4',NULL,NULL,'2016-02-17 12:35:02',43,NULL,NULL,NULL,NULL),
	(156,7,7,5,2,1,NULL,NULL,NULL,121,' Division of Fertility Preservation layout','<p>nichole, <br><br>please update the content to include the following text changes.&nbsp; You may refer to the layout i am providing.&nbsp; update font class and size as needed, color as needed.&nbsp; please use purple for the phone numbers and allow them to be clickable and dial able from a phone.&nbsp; <br><br>Please note the blue button placement on the left.<br><br></p>\r\n<p>New Hope Fertility in NYC is dedicated to providing the best, cutting-edge, and reliable fertility preservation solutions. As one of the first American centers to offer this process, Dr. John Zhang pioneered egg freezing with vitrification and has had over 400 live births from frozen embryos.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>To continue offering the best fertility preservation possible, Dr. John Zhang has partnered with the Director and Founder of FertilityPreservation.org, Dr. Kutluk Oktay.&nbsp; A leader in onco-fertility, Dr. Oktay is one of the world’s leading experts in ovarian tissue freezing, ovarian transplants, as well as ovarian stimulation in breast cancer patients.&nbsp; He is also an expert in fertility preservation in children including those facing cancer and Turner Syndrome.&nbsp; Together we bring you the New Hope Division of Fertility Preservation.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;(this is that awesome checklist)</p>\r\n<p>&nbsp;</p>\r\n<p>Whether your desire is to delay your fertility until you are ready to start a family or to preserve your fertility in preparation of chemotherapy or other treatments that may threaten the future of your fertility, our Division of Fertility Preservation offers a full-range of options for you:</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>With over a decade of experience, we are the recommended source for fertility preservation of professionals.&nbsp; There is no better time to start freezing than right now!</p>\r\n<p>&nbsp;</p>\r\n<p>Call to schedule your first consultation today:</p>','4',NULL,NULL,'2016-02-17 13:50:18',41,'2016-02-17',NULL,NULL,NULL),
	(157,7,7,5,2,1,NULL,NULL,NULL,121,'Update the banners','<p>Update the banners on the site. This has already been completed.</p>','4',NULL,NULL,'2016-02-17 13:51:56',35,'2016-02-17',NULL,NULL,NULL),
	(158,7,7,5,2,1,NULL,NULL,NULL,130,'Update Free Consultation Banner on Hame page','File attached \r\n\r\nReplace it with this new and updated one.\r\n','4,8,6,5',NULL,NULL,'2016-02-17 14:09:52',NULL,'2016-02-17',NULL,NULL,100),
	(159,15,1,5,2,1,NULL,NULL,NULL,121,'IOV Logs and Call center','<p>Update the IOV Log and Call Center for the intranet.</p>\r\n<ul>\r\n<li>Talk to Starr to see if the task manager system can be configured for their needs.</li>\r\n</ul>','4',NULL,NULL,'2016-02-17 16:24:51',40,NULL,NULL,'2016-02-22',NULL),
	(160,15,1,5,2,1,NULL,NULL,NULL,121,'Refund Request Form','<p>Create a refund request section to manage refunds.</p>\r\n<ul>\r\n<li>Only Financial Counselors (Renny, Jessica, Anna varges, and Ben Chan) would be able to add refund requests</li>\r\n<li>Only Hong can approve</li>\r\n<li>Only finance can process refund.</li>\r\n<li>Refund requests must log\r\n<ul>\r\n<li>Request Date</li>\r\n<li>Name of the requester</li>\r\n<li>Amount</li>\r\n<li>Patient name or chart number</li>\r\n<li>Service date</li>\r\n<li>forms&nbsp;\r\n<ul>\r\n<li>Lytec Bill</li>\r\n<li>Processed Form</li>\r\n<li>Refund Request Form</li>\r\n</ul>\r\n</li>\r\n<li>refund date</li>\r\n<li>Payment Method\r\n<ul>\r\n<li>Check&nbsp;\r\n<ul>\r\n<li>Number</li>\r\n<li>Date</li>\r\n<li>Amount</li>\r\n</ul>\r\n</li>\r\n<li>Credit Card\r\n<ul>\r\n<li>Last four</li>\r\n</ul>\r\n</li>\r\n<li>Cash</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>Refunds will be made, then should be sent for approve by Hong, and then sent to Fionna or Yvonne for approval.</li>\r\n<li>notifications will be sent for all changes</li>\r\n<li>A history of changes will be kept</li>\r\n</ul>','4',NULL,NULL,'2016-02-17 16:31:07',40,NULL,NULL,NULL,NULL),
	(161,13,7,5,2,1,NULL,NULL,NULL,121,'Update Map on main page','Update the map on artworldcongress to point to the mandarin hotel. The Google embed code for the map is \r\nUpdate Website to reflect correct information.\r\n\r\nChange the map to \r\n\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.6824342401374!2d-73.98519968425296!3d40.769008879325746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c258f61de5cd2f%3A0x510fcbc303f0de9d!2sMandarin+Oriental%2C+New+York!5e0!3m2!1sen!2sus!4v1455744940568\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n\r\n','4',NULL,NULL,'2016-02-17 16:40:35',46,'2016-02-17',NULL,NULL,NULL),
	(162,13,7,5,2,1,NULL,NULL,NULL,121,'Update the transportation text ','<p>Update transporation text to remove verbage that implies that we are providing transporation to ASRM.&nbsp;</p>','4',NULL,NULL,'2016-02-17 16:41:29',46,'2016-02-17',NULL,NULL,100),
	(163,13,10,5,2,1,NULL,NULL,NULL,121,'Add Become a sponsor form to site.','<p>Add become a Sponsor form to site.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>the paypal link used lastyear was&nbsp;</p>\r\n<pre>&lt;label for=\"amount\"&gt;Amount of Sponsorship: *&lt;/label&gt;&lt;select class=\"form-control\" name=\"amount\" required=\"\"&gt;\r\n&lt;option value=\"\"&gt;&lt;/option&gt;\r\n&lt;option value=\"$20,000\"&gt;$20,000&lt;/option&gt;\r\n&lt;option value=\"$10,000\"&gt;$10,000&lt;/option&gt;\r\n&lt;option value=\"$5,000\"&gt;$5,000&lt;/option&gt;\r\n&lt;option value=\"Other\"&gt;Other&lt;/option&gt;<br>&lt;/select&gt;<br>&lt;button class=\"btn btn-default\" type=\"submit\"&gt;Submit&lt;/button&gt;&lt;/pre&gt;\r\n&lt;form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\" target=\"_top\"&gt;&lt;input name=\"cmd\" type=\"hidden\" value=\"_s-xclick\"&gt; &lt;input name=\"hosted_button_id\" type=\"hidden\" value=\"BPVQ7T9KLRG3E\"&gt; &lt;input alt=\"PayPal - The safer, easier way to pay online!\" name=\"submit\" src=\"https://www.paypalobjects.com/en_US/i/btn/btn_paynowCC_LG.gif\" type=\"image\"&gt; &lt;img src=\"https://www.paypalobjects.com/en_US/i/scr/pixel.gif\" alt=\"\" width=\"1\" height=\"1\" border=\"0\"&gt;&lt;/form&gt;</pre>','4',NULL,NULL,'2016-02-17 17:03:10',46,NULL,NULL,NULL,NULL),
	(164,16,7,5,2,1,NULL,NULL,NULL,121,'List of Websites','<p>Provide Daniel with a list of Websites, including where they are hosted, and who manages the sites, the domain names, and all information about the sites.</p>','4',NULL,'2016-02-18','2016-02-17 17:19:40',NULL,'2016-02-18',NULL,NULL,90),
	(165,7,7,5,2,1,NULL,NULL,NULL,121,'Update About us and About NHFC Content','<ol>\r\n<li>Set About Us and About NHFC to have the same content on both pages.</li>\r\n<li>Move the text \"\r\n<h2>CUSTOMIZED FERTILITY CARE</h2>\r\n<p>Patients come first at New Hope. We strive to provide the best fertility care, from maintaining the highest medical, scientific and academic standards, to supporting you through every stage of your journey to parenthood.</p>\r\n<p>One of the most important things to know about New Hope Fertility care is that we custom design our fertility treatments to the individual. Each person’s unique protocol is specially designed to ensure the patient is receiving the highest quality care at the most optimal times for their body. We achieve this through blood testing and constant monitoring.</p>\r\n<p>Our treatments at New Hope offer minimal stimulation and result in a gentler and more physiologically supportive experience. With a Conventional IVF cycle, numerous shots and medications simultaneously shut down the body’s naturally occurring fertility system and create an artificial one, forcing the ovaries to create many eggs. Our&nbsp;<a title=\"Mini-IVF, New Hope Fertility\'s trademarked minimal stimulation IVF protocol\" href=\"http://www.newhopefertility.com/ivf/mini-ivf/\">Mini-IVF™</a>&nbsp;and&nbsp;<a href=\"http://www.newhopefertility.com/ivf/natural/\">Natural Cycle IVF</a>&nbsp;protocols allow us to learn about your body so that we can help you augment and enhance your own, naturally occurring fertility.</p>\r\n<p>New Hope diligently monitors and adjusts treatment protocols to nurture your body’s highest quality eggs, allowing for&nbsp;<a href=\"http://www.newhopefertility.com/about-us/about/high-success-rates/\">high success rates</a>&nbsp;with&nbsp;<a href=\"http://www.newhopefertility.com/about-us/about/single-embryo-transfer/\">Single Embryo Transfer</a>. Our advanced technique for cryopreservation (<a href=\"http://www.newhopefertility.com/egg-freezing/\">vitrification</a>) has over 90% &nbsp;thaw-survival-rate, providing you the option to freeze additional embryos.</p>\r\n<p>If you would like to learn more about our unique care, we have created a&nbsp;<a href=\"http://fertilityhandbook.com/\" target=\"_blank\">step-by-step guide</a>&nbsp;[&nbsp;<a href=\"http://www.newhopefertility.com/documents/FertilityHandbook.pdf\" target=\"_blank\">PDF</a>&nbsp;] to help you understand how to get started and what to expect at every stage of your IVF treatment cycle.</p>\r\n<p><a href=\"http://www.newhopefertility.com/contact/schedule-first-visit/\">Schedule a consultation</a>&nbsp;today to get started with your customized fertility plan.</p>\r\nto under the second paragraph on about us</li>\r\n<li>Add standard menu to the About Us</li>\r\n<li>Update About Us link to read \"About NHFC\"</li>\r\n<li>Move information from <strong>Fertility Information</strong> and down to patient resources</li>\r\n</ol>','',NULL,NULL,'2016-02-22 10:09:19',NULL,'2016-02-22',NULL,NULL,100),
	(166,7,7,5,2,1,NULL,NULL,NULL,121,'Update \"Babies born\" number on front page','<p>Update checkbox on front page to read that <strong>550+ babies</strong> have been born, updated from 400+ babies.</p>','4',NULL,NULL,'2016-02-22 10:34:15',NULL,'2016-02-22',NULL,NULL,NULL),
	(167,7,1,5,2,1,NULL,NULL,NULL,130,'Add New Blog Banner to Slider on Website','Nicole, upload this new and updated Blog banner to out slider on our site\r\n\r\nThanks','4,8,6,5',NULL,NULL,'2016-02-22 12:45:49',NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_comments`;

CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `created` timestamp NULL DEFAULT NULL,
  `ticket_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `ticket_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ticket_comments_tickets` (`ticket_id`),
  KEY `fk_ticket_comments_users` (`user_id`),
  KEY `k_ticket_comments_status` (`ticket_status_id`),
  CONSTRAINT `fk_ticket_comments_tickets` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_comments_ibfk_1` FOREIGN KEY (`ticket_status_id`) REFERENCES `ticket_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `ticket_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_comments` WRITE;
/*!40000 ALTER TABLE `ticket_comments` DISABLE KEYS */;

INSERT INTO `ticket_comments` (`id`, `description`, `created`, `ticket_id`, `user_id`, `ticket_status_id`)
VALUES
	(1,'Where does \"Life Insurance for Surrogate $395 plus sales tax\" get added?','2015-11-02 15:32:11',2,121,NULL),
	(3,'it should be moved under health insurance','2015-11-03 12:04:41',2,7,NULL),
	(21,'This has been updated.&nbsp;','2015-11-05 09:30:44',5,121,8),
	(23,NULL,'2015-11-06 13:10:39',4,121,8),
	(24,'This has been updated. All applicants not get a message that reads&nbsp;<div><br></div><div><div><h2>Your prescreening form has been successfully submitted.</h2></div><div><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span></div><div>You can expect to be contacted by our staff soon. If you have any questions in the meantime, please email <a href=\"mailto:info@nb-surrogacy.com\" title=\"\" target=\"\">info@nb-surrogacy.com</a>, and tell us your phone number, and we will call you back.</div></div>','2015-11-10 09:56:46',9,121,NULL),
	(25,NULL,'2015-11-10 09:57:59',9,121,8),
	(26,'all banners have been updated.','2015-11-10 13:55:13',11,121,8),
	(27,NULL,'2015-11-11 12:43:19',10,121,8),
	(28,'The map has been added to the staging site. It can be reviewed at&nbsp;<span style=\"background-color: rgb(255, 255, 255);\"><span style=\"font-size: 12px;\">&nbsp;</span><a href=\"http://nhfcweb01.nhfchq.com/wordpress/map/\" target=\"_blank\" style=\"font-size: 12px;\">http://nhfcweb01.nhfchq.com/wordpress/map/</a></span>','2015-12-22 09:50:15',15,121,NULL),
	(29,NULL,'2015-12-22 17:26:54',7,121,8),
	(30,'This has been changed as of December 15, 2015. The message that you are disqualified is only shown for bmis above 32.1','2015-12-23 09:28:22',13,121,8),
	(31,NULL,'2015-12-23 09:28:54',14,121,8),
	(32,NULL,'2015-12-23 09:29:26',2,121,8),
	(33,'ON HOLD PENDING MORE INFORMATION<br>','2016-01-07 15:04:02',17,106,NULL),
	(34,NULL,'2016-01-13 14:53:23',23,121,7),
	(35,NULL,'2016-01-15 10:36:34',17,121,3),
	(36,'I have the new resolution saved in the marketing drive labelled : ARTWORLD2015_CLIP1920x1080.mp4<br>','2016-01-18 13:26:42',29,106,5),
	(37,'this has been added to testing site&nbsp;<a href=\"http://nhfc.nhfctesting.com/\" title=\"http://nhfc.nhfctesting.com/\" target=\"_blank\">http://nhfc.nhfctesting.com/</a>','2016-01-18 13:30:02',26,121,NULL),
	(38,'has been removed','2016-01-18 13:54:08',22,121,8),
	(39,'the link has been updated to&nbsp;http://www.newhopefertility.com/about-us/','2016-01-19 12:45:31',19,121,8),
	(40,'Update and add banners.<div><br></div><div>Here are the attached banners. 1 new one 2 updates. Pop them in.<br><div><br></div><div>- Free consultation banner</div><div>-Art world congress updated banner</div><div>-Snow baby banner updated</div></div>','2016-01-25 16:21:28',26,130,NULL),
	(41,'images have been updated.','2016-01-26 09:06:45',26,121,8),
	(42,'The menu has been updated. Under resources there is a link for the employee manual and the directory, puroducts ave been moved to purchase orders, and there is a new link under admin so that admins can see all purchase orders.','2016-01-28 13:31:16',32,121,8),
	(43,'footer has been changed for dr oktay. his logo is now on the bottom of the webpage.&nbsp;','2016-01-28 13:32:31',28,121,8),
	(44,'This has been added using the super carousel plugin','2016-02-01 09:07:48',27,121,8),
	(45,'This has been added using the super carousel plugin','2016-02-01 09:07:56',27,121,8),
	(46,'These logos have been added to the footer.&nbsp;','2016-02-01 09:17:29',34,121,8),
	(50,'sidebar has been added','2016-02-03 09:46:42',39,121,8),
	(51,'Purchase Order system as been launched.','2016-02-03 09:49:11',16,121,8),
	(52,'<div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">I am thinking the intranet will have:</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Calendar for staff events, and other big dates</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Contact list including all the group emails and I mean all</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\"><span style=\"white-space: pre-wrap;\">	</span>Ideally with a search function</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Staff birthdays (on calendar maybe)</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">New hope and industry news (maybe pulling from the same feed as our main website</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Handbook (employee manual)</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Facebook widget- I want staff to start interacting with social media (consider twitter, pinterest)</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Photo gallery</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Ideally important information and update section to alert staff of important things</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Weather?</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">p:/ forms</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Purchase order system</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Newsletter function of some sort whether its posted or email list sent out</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Call log</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Iov screening</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Referral system</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Staff org and flow charts</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Contact information for emergencies</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Staff comment section (like input or complaints)</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">IT ticketing system even if its just emailing your issue and it gets forwarded to IT</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\"><br></div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Would love to have a employee of the month section with some sort of reward system</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\"><br></div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Can we start with this?</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\"><br></div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">Later inventory system</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\"><br></div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\"><br></div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\">I am thinking that most of these will exist on their own pages connected by one mega menu. &nbsp;You showed me one with a greyed out dropdown that had a bunch of links on it to various pages… its kinda like this:</div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\"><img src=\"http://images.sixrevisions.com/2010/07/05-03_b_q_diy.jpg\" alt=\"\" align=\"none\"></div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\"><br></div><div style=\"font-family: Calibri, sans-serif; font-size: 14px; widows: 1;\"><div><p style=\"font-size: 12px; font-family: Helvetica;\">with a basic background as the homepage maybe showing the weather and the news and the employee of the month. &nbsp;This mega menu dropdown should allow separate pages to be added without compromising overall design. &nbsp;AND it should allow us to move to a modular design later if we desire.</p></div><div><br></div></div>','2016-02-03 09:58:26',40,106,NULL),
	(53,NULL,'2016-02-12 12:22:07',42,121,2),
	(55,'The header on the main site has been updated.','2016-02-12 12:47:24',25,121,8),
	(56,'The doctor slider has been added and &nbsp;can be viewed on the main site.','2016-02-12 12:48:23',20,121,8),
	(57,'Captcha was already installed on the staging site. New Users must input captcha to register.','2016-02-12 14:06:47',42,121,NULL),
	(58,'','2016-02-16 16:12:22',36,111,NULL),
	(59,'<p>Doctors to be added:</p>\r\n<p>Dr Zhang</p>\r\n<p>Dr Yang</p>\r\n<p>Dr Liu</p>\r\n<p>Dr Merhi</p>\r\n<p>Dr Oktay</p>','2016-02-16 16:12:42',36,111,NULL),
	(60,'<p>When we push this live, the link will be&nbsp;<a title=\"Surrogacy Law Map\" href=\"http://nbsurrogacy.com/surrogacy-law-map\" target=\"_blank\">http://nbsurrogacy.com/surrogacy-law-map</a></p>','2016-02-17 10:56:22',15,121,NULL),
	(62,'<p>This ticket should have been closed on january 25, 2016 when his logo was added to the footer.</p>','2016-02-17 12:43:37',17,121,8),
	(63,NULL,'2016-02-17 12:43:59',29,121,8),
	(64,NULL,'2016-02-17 12:44:14',23,121,8),
	(65,NULL,'2016-02-17 13:50:48',41,121,8),
	(66,NULL,'2016-02-17 14:42:36',35,121,8),
	(67,NULL,'2016-02-17 14:43:12',30,121,3),
	(68,'','2016-02-22 10:50:55',43,121,NULL);

/*!40000 ALTER TABLE `ticket_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_reports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_reports`;

CREATE TABLE `ticket_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `display_on_home` tinyint(1) DEFAULT NULL,
  `project_id` text,
  `project_type_id` text,
  `project_status_id` text,
  `departments_id` text,
  `ticket_types_id` text,
  `ticket_status_id` text,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ticket_reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_reports` WRITE;
/*!40000 ALTER TABLE `ticket_reports` DISABLE KEYS */;

INSERT INTO `ticket_reports` (`id`, `user_id`, `name`, `display_on_home`, `project_id`, `project_type_id`, `project_status_id`, `departments_id`, `ticket_types_id`, `ticket_status_id`, `sort_order`)
VALUES
	(1,121,'Open Tickets',1,'',NULL,NULL,NULL,NULL,'1,2,4,3',NULL);

/*!40000 ALTER TABLE `ticket_reports` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_status`;

CREATE TABLE `ticket_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `group` varchar(64) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `default_value` int(11) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_status` WRITE;
/*!40000 ALTER TABLE `ticket_status` DISABLE KEYS */;

INSERT INTO `ticket_status` (`id`, `name`, `group`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'New','open',0,1,'1'),
	(2,'Open','open',1,NULL,'1'),
	(3,'Waiting Assessment','open',3,NULL,'1'),
	(4,'Re-opened','open',2,NULL,'1'),
	(5,'Resolved','closed',4,NULL,'1'),
	(6,'Canceled','closed',7,NULL,'1'),
	(7,'Fixed','closed',6,NULL,'1'),
	(8,'Closed','closed',5,NULL,'1');

/*!40000 ALTER TABLE `ticket_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_statuses`;

CREATE TABLE `ticket_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `group` varchar(64) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `default_value` int(11) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_statuses` WRITE;
/*!40000 ALTER TABLE `ticket_statuses` DISABLE KEYS */;

INSERT INTO `ticket_statuses` (`id`, `name`, `group`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'New','open',0,1,'1'),
	(2,'Open','open',1,NULL,'1'),
	(3,'Waiting Assessment','open',3,NULL,'1'),
	(4,'Re-opened','open',2,NULL,'1'),
	(5,'Resolved','closed',4,NULL,'1'),
	(6,'Canceled','closed',7,NULL,'1'),
	(7,'Fixed','closed',6,NULL,'1'),
	(8,'Closed','closed',5,NULL,'1'),
	(9,'Gathering Requirements','open',2,NULL,'1');

/*!40000 ALTER TABLE `ticket_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_types`;

CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket_types` WRITE;
/*!40000 ALTER TABLE `ticket_types` DISABLE KEYS */;

INSERT INTO `ticket_types` (`id`, `name`, `sort_order`, `active`)
VALUES
	(1,'Report a Bug',1,'1'),
	(2,'Request a Change',0,'1'),
	(3,'Raise an Issue',3,'1'),
	(4,'Ask a Question',2,'1');

/*!40000 ALTER TABLE `ticket_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tickets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `ticket_type_id` int(11) DEFAULT NULL,
  `ticket_status_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ticket_users` (`user_id`),
  KEY `fk_ticket_ticket_status` (`ticket_status_id`),
  KEY `fk_ticket_ticket_types` (`ticket_type_id`),
  KEY `fk_ticket_projects` (`project_id`),
  KEY `fk_ticket_departments` (`department_id`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`ticket_type_id`) REFERENCES `task_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`ticket_status_id`) REFERENCES `task_status` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tickets_ibfk_5` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;

INSERT INTO `tickets` (`id`, `department_id`, `ticket_type_id`, `ticket_status_id`, `name`, `description`, `user_id`, `project_id`, `created`, `modified`)
VALUES
	(2,12,2,8,'Text Change','<div>Just a few minor adjustments need to be made to website, please.</div><div><br></div><div></div><div><strong>Intended Parent Tab: &nbsp;Estimated expenses</strong></div><div></div><div><ul><li>​Please make sure each sub title is in<strong>&nbsp;bold​</strong></li><li>Please change the following -&nbsp;</li></ul><blockquote>Agency fees: &nbsp;2nd payment change the word \"meeting\" to&nbsp;matching&nbsp;<br>*Second installment agency fee<br>(due upon meeting with Surrogate)</blockquote></div><div></div><div><ul><li>Insurance: &nbsp;please add Life Insurance for Surrogate $395 plus sales tax</li></ul></div><div><div><b>Surrogate Tab</b></div><div></div><div><ul><li>Please bold the title below</li><ul><li>Surrogate Benefit Package</li></ul></ul></div><div><table></table></div><div><b>​FAQs Tab (surrogate)</b></div><div><b><br></b></div><div><ul><li>Will I get to keep my OB?</li><ul><li>Please remove this symbol at the end of the final sentence &nbsp;(&gt;)</li></ul></ul></div><div><b>Referral (surrogate)</b></div><div><ul><li>The font is different in 1st paragraph from the rest of the paragraph.&nbsp; Please make the same.</li><li>Pre-screening application being filled out is not coming to myself or Annette.&nbsp; I have no idea where the application is going.&nbsp; Annette/Geoffrey both filled out application and we did not get it.&nbsp; I have another surrogate who also filled one out 2 hours ago and we did not get it.</li><li>Mobile view: &nbsp;you are not able to access the website via mobile if you have iphone 6??&nbsp; It looks different on my phone iphone 6plus than Annette\'s iphone 6</li></ul></div></div>',41,8,'2015-11-02 15:02:12',NULL),
	(4,12,2,8,'blog redesign','this will be backdate photos for blog posts.<div>&nbsp;</div><div>-new banner heading for blog</div><div>&nbsp;</div><div>-title for blog</div>',121,8,'2015-11-03 09:58:53',NULL),
	(5,12,2,8,'Slider issue','There\'s white space between the right side of the banner and the right border. See image attached.<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>',111,8,'2015-11-05 09:15:19',NULL),
	(6,12,2,1,'Mobile Issues','<ul><li>New Template for Mobile Version (Header and Banner layout)</li><li>Compensation cuts-off&nbsp;</li><li>BMI Calculator glitch&nbsp;</li><ul><li>fix text padding</li></ul><li>Birthdate glitch under Surrogate page</li></ul>',70,8,'2015-11-06 10:38:46',NULL),
	(7,12,2,8,'Add Items to Purchase Order System','Add system to track items to be added to the Purchase order system<div><br></div><div><br></div>',121,10,'2015-11-06 13:05:46',NULL),
	(9,12,2,8,'GC Prescreening App','Temporarily stop rejection emails being sent to potential surrogates.',111,8,'2015-11-10 09:08:11',NULL),
	(10,12,2,8,'Update BMI Calculator','<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">1. If possible, we would like the following wording to appear on the BMI chart for anyone whose BMI is above 32.</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">&nbsp;</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">\"Unfortunately, your BMI at this time disqualifies you as a surrogate with our program. Any questions, please contact us at&nbsp;<a href=\"mailto:surrogates@nbsurrogacy.com\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">surrogates@nbsurrogacy.com</a>\"</div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><br></div><div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">2. Anyone with a BMI below 32, it should just appear \"Your BMI is (whatever the number is)\"</div><div><br></div>',111,8,'2015-11-10 11:26:10',NULL),
	(11,12,2,8,'Update Resource banners','Update banners according to file name.<div><br></div><div>See attached.</div>',111,8,'2015-11-10 12:39:48',NULL),
	(13,12,2,8,'BMI Chart for website','<div>Please note: &nbsp;This problem is located on the surrogate tab and the very bottom of the page where it says&nbsp;</div><div><span style=\"font-style: inherit; line-height: 30px;\">BMI chart below see if you qualify.</span></div><div><span style=\"font-style: inherit; line-height: 30px;\">Hopefully this makes sense??</span></div><div><span style=\"font-style: inherit; line-height: 30px;\">Nichole,</span></div><div>Please change BMI message ASAP on website.</div><div><br></div><div>It states if your BMI is equal or over 30 then you are disqualified. &nbsp;It needs to be if over 32.</div><div><br></div><div>Please let me know when change has been made.</div><div><br></div><div>jane</div><div><br></div><div><h3 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 26px; margin-bottom: 5px; font-size: 1.2em; border: 0px; outline: 0px; padding-top: 0px; padding-bottom: 0px; vertical-align: baseline; clear: both; text-align: center;\">Your BMI is 31.8 KG/M<span style=\"box-sizing: border-box; position: relative; font-size: 12.6px; line-height: 0; vertical-align: baseline; top: -0.5em; border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; outline: 0px; height: 0px; bottom: 1ex;\">2</span></h3><br style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; font-size: 14px; line-height: 14px; text-align: center;\"><span style=\"font-family: \'Open Sans\', sans-serif; font-size: 14px; line-height: 14px; text-align: center; background-color: rgb(39, 151, 186);\">Unfortunately, your BMI at this time disqualifies you as a surrogate with our program. Any questions, please contact us at&nbsp;</span><a href=\"mailto:surrogates@nbsurrogacy.com\" style=\"box-sizing: border-box; color: rgb(94, 48, 121); border: 0px; font-family: \'Open Sans\', sans-serif; font-weight: bold; outline: 0px; vertical-align: baseline; line-height: 30px; font-size: 14px; text-align: center; background-color: transparent;\">surrogates@nbsurrogacy.com</a></div>',41,8,'2015-11-13 11:11:28',NULL),
	(14,12,3,8,'Pre-screening BMI caluculator ','Nichole,<div><br></div><div>We found another issue.</div><div><br></div><div>When you take pre-screening quiz online, when you input height and weight there is no BMI message at all. &nbsp;Does not give a number.</div><div><br></div><div>Jane</div>',41,8,'2015-11-13 11:56:12',NULL),
	(15,12,2,1,'NB Surrogacy Map','<div class=\"itemInfo taskInfo\" style=\"font-size: 12px;\"><div class=\"itemInfoContainer\"><div class=\"itemDescription\">Please add the interactive surrogacy law map to the surrogacy drop down<br><br>content will come from jane<br><br>geoffrey bought the plugin and already passed it over<br><br>Leo to have color design direction<br><br>Eva to assist as needed<br><br>Once up, we should test it.<br><br>Please add a note that states:&nbsp; the information enclosed on this map is not endorsed as legal advice.&nbsp; Please consult an attorney for the most up to date regulations in your area for Gestational Surrogacy.<br><br>Once up, please add a snapshot link of it to the empty space on the homepage under the pink baby.<br><br>thank you<br></div><div><br></div><div id=\"extraFieldsInDescription\"></div><div></div></div></div>',121,8,'2015-12-22 09:38:42',NULL),
	(16,12,2,8,'Purchase Order system','ticket for purchase order changes',121,10,'2015-12-22 17:27:54',NULL),
	(17,12,2,8,'REmove Oktay from homepage','Please remove the dr oktay banner from the homepage<br><br>will provide replacement holder in future (possibly ivf sure)<br><br>please revise all internal links from the preservation page so that everything directs to the appropriate tab under our services list (where appropriate) and not fertilitypreservation.org<br><br><br>',106,7,'2016-01-05 15:37:08',NULL),
	(18,12,2,1,'Donor Page Update','Please create a custom side navigation bar in the donor drop down that has a link for:<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \"Become a Donor\" that links to the donor pre-screening form<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \"Become a Surrogate\" that links (in a new window) to the surrogacy pre-screening form.<br><br>Please add the attached graphic to the donor page:&nbsp; http://www.newhopefertility.com/egg-donor/<br><br>The image should be full page width and centered (but can we see how it looks first before going live please?<br><br>In the purple bar under the photo, the text should read as the donor ad that you have been provided so that it can be crawled by search engines.&nbsp; Please make sure the image is appropriately tagged and image named.<br><br>Please make the A B C collapsible so they take up less space.<br><br><br>have this be both the top level donor page as well as in the drop down.&nbsp; Remove the : http://www.newhopefertility.com/egg-donor/program/&nbsp; page please have the \"for donors\" menu item redirect to this new consolidated page.<br><br><br>',106,7,'2016-01-07 12:57:06',NULL),
	(19,12,2,8,'Top Navigation Change','Please change \"resources\" to&nbsp; \"about us\"<br><br>Please ensure propper tagging and page naming conventions.<br><br>About us when clicked should link directly to :<br>http://www.newhopefertility.com/resources/about/<br><br>or people can still click the button on the normal drop down.<br><br>Please remove BLOG from the resources drop down.<br><br><br><br>NOTE I would like to strategize how to re-highligh our philosophy pages.<br><br>thanks!<br><br><br><br>',106,7,'2016-01-07 15:23:06',NULL),
	(20,12,2,8,'Add doctor slider and reorganize home page','Please reorganize the home page and add the doctor slider.<br><br>Doctor slider should be full page width, ABOVE changing lives every day, with dr zhang in the middle and yang and liu on the sides, with affiliates outside of that.&nbsp; the slider should only move when clicked and please title it Doctors and Affiliates.<br><br>Below that and centered please have the section with dr zhang and preview of his bio.<br><br>all pictures should link to the doctor pages.&nbsp; Please include affiliates like dr rosen, dr chen, dr merhi, dr morgan, dr oktay.<br><br><br>Please tighten up the spaces in the news section so that the bottom is flush with the bottom of the advanced treatment compassionate care section.<br><br>Thank you<br>',106,7,'2016-01-08 16:39:36',NULL),
	(22,12,2,8,'remove graphic','Please remove the graphic of day 3 8-cell biopsy please:<br><br>http://www.newhopefertility.com/genetic-testing/genetic-screening/<br><br>',106,7,'2016-01-11 10:28:38',NULL),
	(23,12,2,8,'Typo','<p>Correction: Milton Leong</p>',3,13,'2016-01-13 14:50:15',NULL),
	(25,12,2,8,'Re-Size the Top header Size','Please reduce the overall top header size by at least 25%',70,7,'2016-01-18 13:07:30',NULL),
	(26,12,2,8,'Sliding Top Banner','Please re-instate the sliding banner.&nbsp; Please utilize the four sliding options provided by Marketing.',70,7,'2016-01-18 13:08:27',NULL),
	(27,12,2,8,'Doctors & Affiliates','Please implement the Doctor &amp; Affiliates section per marketing and design team.&nbsp; ',70,7,'2016-01-18 13:09:43',NULL),
	(28,12,2,8,'Dr. Octate Footer','Please design the new footer to&nbsp;indicate Dr. Octate practice.&nbsp; ',70,7,'2016-01-18 13:13:01',NULL),
	(29,12,2,8,'Video for Artworld','<p>The video for artworld is being cutoff at certain resolution.&nbsp; Please utilize the most popular dimension as baseline.&nbsp; If possible, investigate possible solution for theme auto centering to match the current content.&nbsp; If not, make new content based on baseline dimension.</p>',3,13,'2016-01-18 13:17:12',NULL),
	(30,12,2,3,'Importing DrJohnzhang.com blog to NHFC.com','<p>1.&nbsp; SEO Impact&nbsp;</p>\r\n<p>2.&nbsp; New Design - Video Layout</p>\r\n<p>3.&nbsp; Content - H1, H2, Description,</p>\r\n<p>3.&nbsp; Implementation</p>\r\n<p>4.&nbsp; Testing</p>\r\n<p>&nbsp;</p>',3,7,'2016-01-25 09:44:53',NULL),
	(31,12,2,1,'Update the News Section','Update the News Section',70,7,'2016-01-25 09:56:00',NULL),
	(32,12,2,8,'Intranet layout','<p>Please reorganize the menu for PO.&nbsp; Submenu to incorporate add item (purchaser)</p><p>Please add new menu for Resources - File System</p>',70,15,'2016-01-25 10:19:58',NULL),
	(33,12,2,1,'Donor Page','Identify the requirements and action&nbsp;plan to&nbsp;incorporate the Donor page to internal intranet site.&nbsp; ',70,15,'2016-01-25 10:20:52',NULL),
	(34,12,2,8,'Dr.Octay footer logo & NHFC footer logo','<div>Nicole - As discussed in the meeting - these are the footer logo\'s changes&nbsp;</div><div><br></div>Attached are both logo\'s smaller by 50%&nbsp;<div><br></div><div>They\'ll be side by side [octay logo] then [nhfc logo]</div><div><br></div><div>Let me know if anything.</div><div><br></div><div><br></div><div><br></div><div>**PS. I tried to do octay logo in purple but it came out looking horrendous due in part \"the little globe\"&nbsp;</div><div><br></div><div><br></div>',130,7,'2016-01-29 11:49:44',NULL),
	(35,12,2,8,'Blog banner updates','<p>Nicole -</p>\r\n<div>&nbsp;</div>\r\n<div>Attached are the updated blog banners with their rollover state version to go along with.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;\r\n<div>&nbsp;</div>\r\n</div>',70,7,'2016-01-29 14:59:45',NULL),
	(36,12,2,1,'Ask A Doctor','<div>Build out, finalize and go live with Ask A Dr.\r\n<ul class=\"fa-ul\">\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Content Review and edits- pending one more review</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Update existing content</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Confirm final Design Layout&nbsp;</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Update page to reflect new Design</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Add other NHFC Dr so they can answer</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Install Captcha</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Check email alerts for accurate flow</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Test site</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Determine proper workflow of answering questions using nurse and medical assistant power and lab power</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Inform needed parties how to answer</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Push live</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Market the heck out of it\r\n<ul class=\"fa-ul\">\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> PRESS RELEASE, press</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>',70,7,'2016-02-01 09:40:25',NULL),
	(39,12,2,8,'add side nav menu','this page:<br><br>http://www.newhopefertility.com/egg-donor/surrogacy/<br><br>needs the side nav from this page:<br>http://www.newhopefertility.com/egg-donor/recipient/<br><br>thanks!<br>',106,7,'2016-02-02 13:49:24',NULL),
	(40,12,2,2,'Intranet Site','Work on implementing an intranet site to take over the tasks of the staff site.',70,15,'2016-02-03 09:56:32',NULL),
	(41,12,2,8,'Division of Fertility Preservation layout content update','<p>nichole, <br><br>please update the content to include the following text changes.&nbsp; You may refer to the layout i am providing.&nbsp; update font class and size as needed, color as needed.&nbsp; please use purple for the phone numbers and allow them to be clickable and dial able from a phone.&nbsp; <br><br>Please note the blue button placement on the left.<br><br></p>\r\n<p class=\"MsoNormal\">New Hope Fertility in NYC is dedicated to providing the best, cutting-edge, and reliable fertility preservation solutions. As one of the first American centers to offer this process, Dr. John Zhang pioneered egg freezing with vitrification and has had over 400 live births from frozen embryos.<span>&nbsp; </span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">To continue offering the best fertility preservation possible, Dr. John Zhang has partnered with the Director and Founder of FertilityPreservation.org, Dr. Kutluk Oktay.<span>&nbsp; </span>A leader in onco-fertility, Dr. Oktay is one of the world’s leading experts in ovarian tissue freezing, ovarian transplants, as well as ovarian stimulation in breast cancer patients.<span>&nbsp; </span>He is also an expert in fertility preservation in children including those facing cancer and Turner Syndrome.<span>&nbsp; </span>Together we bring you the New Hope Division of Fertility Preservation.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;(this is that awesome checklist)</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Whether your desire is to delay your fertility until you are ready to start a family or to preserve your fertility in preparation of chemotherapy or other treatments that may threaten the future of your fertility, our Division of Fertility Preservation offers a full-range of options for you:</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">With over a decade of experience, we are the recommended source for fertility preservation of professionals.<span>&nbsp; </span>There is no better time to start freezing than right now!</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Call to schedule your first consultation today:</p>\r\n<p>&nbsp;</p>',70,7,'2016-02-04 16:54:11',NULL),
	(42,12,2,2,'Web Meeting - February 12, 2016','<h1>Web Meeting February 12, 2016</h1>\r\n<h2>New Hope Fertility</h2>\r\n<p>&nbsp;</p>\r\n<ul class=\"fa-ul\">\r\n<li><span class=\"fa fa-check-square-o mceNonEditable\"></span> Run Speed tests on sites since the site is loading slow for Geoffrey</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Take Valentines Banner Down Monday, February 15, 2016&nbsp;</li>\r\n<li><em class=\"fa f fa-check-square-o mceNonEditable\"></em> Take Chinese New Year Banner Down February 22, 2016</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Add accordion to Success Stories Page&nbsp;</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Add accordion to directions page</li>\r\n<li><em class=\"fa  fa-check-square-o mceNonEditable\"></em> Add plaza hotel information to website</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Update News section</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Fix link to schedule an Appointment on Dr. Oktays Page</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Update Dr. Oktay\'s page change Non-Medical to Egg Freezing</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Update Dr. Oktay\'s page change Medical Egg Frezing to Fertility Preservation</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2>Ask A Doctor</h2>\r\n<p>&nbsp;</p>\r\n<ul class=\"fa-ul\">\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Adjust Spacing on Questions</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Add Captcha to register page</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Ask Most asked questions to sidebar</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Update text of questions</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Hide breadcrumbs on answer pages</li>\r\n<li><em class=\"fa fa-check-square-o mceNonEditable\"></em> Change link color within questions</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2>New Beginnings</h2>\r\n<ul class=\"fa-ul\">\r\n<li><em class=\"fa fa-circle mceNonEditable\"></em>Surrogacy Map\r\n<ul class=\"fa-ul\">\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Update colors based on other maps</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> Add states information to map</li>\r\n</ul>\r\n</li>\r\n<li><em class=\"fa fa-square-o mceNonEditable\"></em> <span><span>Add Facebook plugin to new beginnings (same plugin that is on the side of New Hope fertility)</span> -&nbsp;</span><span>on hold until after the surrogacy map is added</span></li>\r\n</ul>',121,16,'2016-02-12 11:27:28',NULL),
	(43,12,2,1,'Create New Site for Columbus Circle OBGYN','<p>Create New site for Columbus Circle OBGYN.</p>\r\n<ul class=\"fa-ul\">\r\n<li><span class=\"fa fa-check-square-o\">&nbsp;</span>Buy domain name ( <a href=\"http://columbuscircleobgyn.com\">http://columbuscircleobgyn.com</a>&nbsp;)</li>\r\n<li><span class=\"fa fa-check-square-o\">&nbsp;</span>Buy Template for website (<a href=\"http://themeforest.net/item/betheme-responsive-multipurpose-wordpress-theme/7758048?ref=muffingroup\">Theme Forest Page</a>&nbsp;)</li>\r\n<li><span class=\"fa fa-check-square-o\">&nbsp;</span>Create Content for the site</li>\r\n<li><span class=\"fa fa-check-square-o\">&nbsp;</span>Create Staging Site at <a href=\"http://cc.nhfctesting.com\">http://columbuscircle.nhfctesting.com</a></li>\r\n<li><span class=\"fa fa-check-square-o\"> Install Wordpress</span></li>\r\n<li><span class=\"fa fa-check-square-o\">&nbsp;</span>Add Template</li>\r\n<li><span class=\"fa fa-square-o\">&nbsp;</span>Add Content</li>\r\n<li><span class=\"fa fa-square-o\">&nbsp;</span>Add any necessary plugins</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',121,18,'2016-02-17 12:01:24',NULL),
	(46,12,2,1,'ART World Update','<ol>\r\n<li>Location on map - update to 80 Columbus Circle</li>\r\n<li>Accomodation section:</li>\r\n</ol>\r\n<h6 class=\"benefit-title\">Accomodation</h6>\r\n<p class=\"text-justify\">Since one of the best ways to visit the 2016 ASRM meeting is to hub through NYC, we have positioned this symposium as a preface to ASRM.</p>\r\n<p class=\"text-justify\">For all our visiting friends and colleagues, we have arranged preferential rates with accommodations nearby. For more details, check below.</p>\r\n<p class=\"text-justify\">3. Become a Sponsor section:</p>\r\n<p class=\"text-justify\">&nbsp;</p>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<h2 class=\"text-center\">BECOME A SPONSOR</h2>\r\n</div>\r\n</div>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p class=\"text-justify\">The ART World Congress’s past successes has always been due, in part, to our professional sponsorships. For various levels of contributions and more information, please fill out the form below!</p>\r\n</div>\r\n</div>',111,13,'2016-02-17 16:43:23',NULL);

/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_groups`;

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `allow_view_all` tinyint(1) DEFAULT NULL,
  `allow_manage_projects` tinyint(1) DEFAULT NULL,
  `allow_manage_tasks` tinyint(1) DEFAULT NULL,
  `allow_manage_tickets` tinyint(1) DEFAULT NULL,
  `allow_manage_users` tinyint(1) DEFAULT NULL,
  `allow_manage_configuration` tinyint(1) DEFAULT NULL,
  `allow_manage_task_viewonly` tinyint(1) DEFAULT NULL,
  `allow_manage_discussions` tinyint(1) DEFAULT NULL,
  `allow_manage_discussion_viewonly` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;

INSERT INTO `user_groups` (`id`, `name`, `allow_view_all`, `allow_manage_projects`, `allow_manage_tasks`, `allow_manage_tickets`, `allow_manage_users`, `allow_manage_configuration`, `allow_manage_task_viewonly`, `allow_manage_discussions`, `allow_manage_discussion_viewonly`)
VALUES
	(1,'Admin',1,1,1,1,1,1,NULL,1,NULL),
	(2,'Developer',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'Client',NULL,3,NULL,4,NULL,NULL,NULL,NULL,NULL),
	(4,'Manager',1,1,1,1,1,NULL,NULL,NULL,NULL),
	(5,'Designer',NULL,NULL,1,NULL,NULL,NULL,1,NULL,NULL);

/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_reports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_reports`;

CREATE TABLE `user_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `display_on_home` tinyint(1) DEFAULT NULL,
  `project_id` text,
  `project_type_id` text,
  `project_status_id` text,
  `assigned_to` text,
  `task_status_id` text,
  `task_type_id` text,
  `task_label_id` text,
  `due_date_from` date DEFAULT NULL,
  `due_date_to` date DEFAULT NULL,
  `created_from` date DEFAULT NULL,
  `created_to` date DEFAULT NULL,
  `closed_from` date DEFAULT NULL,
  `closed_to` date DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_reports_users` (`user_id`),
  CONSTRAINT `user_reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_reports` WRITE;
/*!40000 ALTER TABLE `user_reports` DISABLE KEYS */;

INSERT INTO `user_reports` (`id`, `user_id`, `name`, `display_on_home`, `project_id`, `project_type_id`, `project_status_id`, `assigned_to`, `task_status_id`, `task_type_id`, `task_label_id`, `due_date_from`, `due_date_to`, `created_from`, `created_to`, `closed_from`, `closed_to`, `sort_order`)
VALUES
	(3,121,'Open Tasks',1,'',NULL,NULL,NULL,'9,1,3,4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,121,'Completed Tasks',0,'',NULL,NULL,'4','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `user_reports` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `first` varchar(255) DEFAULT NULL,
  `last` varchar(255) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `supervisor_id` int(11) unsigned DEFAULT NULL,
  `role_id` int(11) unsigned DEFAULT NULL,
  `department_id` int(11) unsigned DEFAULT NULL,
  `user_group_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  KEY `users_fk_department` (`department_id`),
  KEY `users_fk_roles` (`role_id`),
  KEY `users_fk_supervisor` (`supervisor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first`, `last`, `telephone`, `attributes`, `supervisor_id`, `role_id`, `department_id`, `user_group_id`)
VALUES
	(1,'amieb','amie.becker@nhfc.com','$2y$10$G97dxbfxU1VduFbOGfyvdOkmm.eb4W36zeChW0GrtVfXQ8fcekHv6','Amie','Becker','',NULL,34,1,7,NULL),
	(2,'chisay','chisa.yamanobe@nhfc.com','$2y$10$MioMguwWgz7xPwj3R2GZwudhMxENjLwlb6zSud.rTvn7W8c7Xksfq','Chisa','Yamanobe','','',34,1,7,NULL),
	(3,'herminioc','herminio.carrao@nhfc.com','$2y$10$bPLT.0fqHA5QRuE/aWXp4.zd//QQXhLtVPK47Vdg77ZzauQBzlorO','Herminio','Carrao','(212) 400-9624','',25,4,13,NULL),
	(4,'hongz','hong.zheng@nhfc.com','$2y$10$lWX4mbCiXueTlzvfd/Qg7O7sNjIkuIeTGCL33vVbnP2vvC/.zWS9m','Hong','Zheng','(212) 400-9629','',142,5,2,NULL),
	(5,'huil','hui.liu@nhfc.com','$2y$10$9tkgpaiFvyHvjOB6oFbJhOvj5axHfwbrD4BT6OLFb/gfQc5KIUJt2','Hui','Liu','',NULL,34,1,7,NULL),
	(6,'jeanniel','jeannie.li@nhfc.com','$2y$10$zWcUYSOEGZWXsA3D3hTz/.hwrzXXckW/yUMeOPTEFLQfntLdTha3O','Jeannie','Li','(212) 400-7409','',25,1,13,NULL),
	(7,'jennad','jenna.deluca@nhfc.com','$2y$10$HmDfl9mG065XbJ0Yh.vBc.SZ7FXq5HxCo15I0WiLp/LQItWEmvh8S','Jenna','Deluca','',NULL,128,1,18,NULL),
	(8,'jiajiaw','jiajia.wei@nhfc.com','$2y$10$SkFABT6.Bsfatx3yNRgbVO0i/UtCIEjLjiNXIEUeMyXHse4tuQklq','Jia Jia','Wei','(212) 400-7415','',18,1,3,NULL),
	(9,'ekemp','Emily.Kemp@nhfc.com','$2y$10$bjEAhqC620L4nimsinkIAOt9pW5a2/Uv3EPJxT59LVfZ6KZFIv9ci','Emily ','Kemp','(212) 400-9633','',106,1,16,4),
	(10,'joannat','joanna.tudisco@nhfc.com','$2y$10$9ky6CINlnSGlpMQwIsZIQudtnyc3hQvYUniHgrFLRJYDMryvDG9be','Joanna','Tudisco','(212) 400-7411','',128,1,17,NULL),
	(11,'johnz','john.zhang@nhfc.com','$2y$10$kRs5vFtOyvFBVQHDEFL.3eCePj.EEDgnmVpB6Gor4lQDq9TPqRvWm','John','Zhang','(212) 400-7478','',128,1,6,NULL),
	(12,'karenb','karen.bracero@nhfc.com','$2y$10$VLyVyQt.c0I5Df8rojAAc.xccuNiTJTwem.fW1CSjXAUsMSu/WvAC','Karen','Bracero','(212) 400-7410','',87,1,8,NULL),
	(13,'katiey','katie.ye@nhfc.com','$2y$10$GgcmEGXcvuJ1.dWZqyzj7evmHjNnWnaUDCVpzLBVCS/f6k25ByDMe','Katie','Ye','','{\"Language\": [\"Chinese\"]}',10,1,17,NULL),
	(14,'lingg','ling.gao@nhfc.com','$2y$10$gfui8Iy7F5L87f7vIY4XS.O.gDleTcPxxoXJc5PV/n2ODJeP4Qv6y','Ling','Gao','','',22,5,7,NULL),
	(15,'lyndonc','lyndon.chang@nhfc.com','$2y$10$/LQojLqxopMjBNDsposWdewwA29HJd1iOd1dRBtPxGzGrET775IQ6','Lyndon','Chang','',NULL,128,1,6,NULL),
	(16,'mayal','maya.ljesljanin@nhfc.com','$2y$10$vUSMGRc3UuH2zN7TF1Wt6uEWQ6KdHIDB9BEW7lgZ/Cslf7blWRzsi','Maya','Ljesljanin','',NULL,27,1,14,NULL),
	(17,'mingy','ming.yang@nhfc.com','$2y$10$pHH9mvQuEsKSdQzU36NLDOtW8Qm/XNLbeC2kQRHHfYFpdfQGX4GDK','Mingxue','Yang','(212) 400-7426','',128,1,6,NULL),
	(18,'nadinec','nadine.carrasco@nhfc.com','$2y$10$DSbBqc.FEJBoJgq8E/olyOTRYrZKiqB5x82IrvBWdnU9TgwDtIfUa','Nadine','Carrasco','(212) 400-7491','',128,4,5,NULL),
	(19,'nanq','nan.qin@nhfc.com','$2y$10$SQ/neH.02m2I8XtVMoiEku7.fpr9P7eo7qWXntivxFuVAeMQrmq1u','Nan','Qin','',NULL,27,1,14,NULL),
	(20,'nonnaa','nonna.anokhina@nhfc.com','$2y$10$0USDXdBC1j9agqzr1JnkLO3VCSwDFnDQz2z.7DTzVrqn4AEgHFmhC','Nonna','Anokhina','',NULL,128,1,18,NULL),
	(21,'oksanam','oksana.marchuk@nhfc.com','$2y$10$NJVYtbeZ1icUfz0nA.Dixeiw5fEp53EAT/L1ygXHqi4Gvu5KEnpzq','Oksana','Marchuk','',NULL,10,1,17,NULL),
	(22,'peggyc','peggy.cai@nhfc.com','$2y$10$Xj0JsfB1MfqD6nhl8/3LZu466rrLMrA7MgDVERqSUnRwrFn8GpsHS','Peggy','Cai','(212) 400-7477',NULL,150,2,10,NULL),
	(23,'peterfd','peter.fuzesi@nhfc.com','$2y$10$PS7Ehd8J549tlqMMC52RfODTD.UW5vh4OjnmjJsnJue9fgw3IvZyS','Peter','Fuzesi','',NULL,25,1,13,NULL),
	(24,'stazewell','shaquana.tazewell@nhfc.com','$2y$10$PzOAc3QXJYDWDSS8avYa6uD2HinqovtyGOkZCM8BGzFOjWV9.pL16','Shaquana','Tazewell','(212) 400-9621','',87,1,8,NULL),
	(25,'taniav','tania.vivas@nhfc.com','$2y$10$R4JQz0S61/ARG1aYvivuwOiWHT2Zk9e2iRgCgiVVJVxVZf.8NWzb6','Tania','Vivas','(212) 400-7475','',70,1,13,NULL),
	(26,'tiffanyn','tiffany.ng@nhfc.com','$2y$10$rW8ToejrCavrI.A1lMnjwOj399o3IuttuodGyaqFHO/NKgtmXpCW.','Tiffany','Ng','(212) 400-7424','',87,1,8,NULL),
	(27,'weir','wei.ramos@nhfc.com','$2y$10$tdLUWvjr0P0P5ag1uWbFbug3YoXuSg32z.Bk2hAb6/GflxC/KzuqS','Wei','Ramos','',NULL,128,1,14,NULL),
	(28,'wenlingp','wenling.peng@nhfc.com','$2y$10$BUFE/0/I0O6kErNV56l/aOC38YlGxkSKWgA3bG/DUdo9U.a7qVidO','Wenling','Peng','',NULL,34,1,7,NULL),
	(29,'yvonnec','yvonne.chen@nhfc.com','$2y$10$e2LhoNWgXeiMIskptS0tXOKI5V/j7YH.flV/PkDUwZs.2d3/wFA5i','Yvonne','Chen','(212) 400-9616',NULL,22,1,1,NULL),
	(31,'zhuol','zhuo.lu@nhfc.com','$2y$10$RK1p8C.K9lfVLf0JZAVu1.20ygjCKYxyGsw0NDqB4NBL1Vr2f8HWO','Zhuo','Lu','',NULL,34,1,7,NULL),
	(32,'andrewv','andrew.villavicencio@nhfc.com','$2y$10$bzPaL5r9vtO1bej2ftPYlOn5GNtdSDzO4zta9WnbLMNQ73jdd14IG','Andrew','Villavicencio','(212) 400-7472','',70,1,12,NULL),
	(33,'meil','mei.li@nhfc.com','$2y$10$BpxXPxU9YwtoNI9B89D6z.YWZjCerVTqB02.cyZaEXLd4Eo2Yigt2','Mei','Li','',NULL,34,1,7,NULL),
	(34,'heatherm','heather.marks@nhfc.com','$2y$10$9aTYycEGTXKGNnCnbwoTmOdGlGkPPDh/2V7LII3e4wMLmPrjopsQC','Heather','Marks','',NULL,14,1,7,NULL),
	(35,'wendys','wendyshannhfc@gmail.com','$2y$10$OpAerHzzUUe5kiQOdfU9i.RSk3/0kPJSpDsu7aFggLJMddEynQIsq','Wendy','Shan','',NULL,29,1,9,NULL),
	(36,'elizay','yipeliza@yahoo.com','$2y$10$i9s0im7qcNrcUcMHe1aLzuF0AFy1qH8ZTrUQk/3aeajlpnkWlLo.i','Eliza','Yip','',NULL,29,1,9,NULL),
	(37,'karal','kara.levin@nhfc.com','$2y$10$RVQLerXONUmV/k0WE.FdKOJMqTE3lqGcX43kiGxdoQQVg5uP4/rNq','Kara','Levin','',NULL,22,1,NULL,NULL),
	(38,'zhenl','zhen.lin@nhfc.com','$2y$10$sNvCtLn1DZSh5klPOXOwQORArvHpZsu93GShsZZkh0XFCwxwS0FHi','Zhen','Lin','','{\"Language\": [\"Chinese\"]}',10,1,17,NULL),
	(39,'melany','melany.yuen@nhfc.com','$2y$10$iVc4uipSbtV72icbcHJ5KuBq9U4t84Dr/ebYJU07V8PzsjRUWI.8O','Melany','Yuen','',NULL,10,1,17,NULL),
	(40,'magdielc','magdiel.castillo@nhfc.com','$2y$10$NNr7G9srSkY/1mSOvmlBJecB0np0OD2K99yt38.MZAsdW97qWxHzK','Magdiel','Castillo','',NULL,34,1,7,NULL),
	(41,'janeg','jane.groenendaal@nhfc.com','$2y$10$XYpm7KgWvLa7HwzSeNPGgOn9PlSHriCgq30HtkSM203jJqP/fxaUC','Jane','Groenendaal','(212) 400-9648','',18,1,5,NULL),
	(42,'shanshanz','shanshan.zhang@nhfc.com','$2y$10$E5Twh8aogkealJIFlX1QLe7eniDM9JrTkbfu3upbwucVxAJ8mCHo.','Shanshan','Zhang','',NULL,34,1,7,NULL),
	(43,'verar','vera.reinoso@nhfc.com','$2y$10$gMscAiAhwNlr1mzG.RvBJOeOpftyrRlWSJsgBp.Mzy5D8wRvrn5lO','Vera','Reinoso','',NULL,27,1,14,NULL),
	(44,'latoyag','latoya.gould@nhfc.com','$2y$10$d5OEGli4g3l9YNV2SHDr6uIurUuRA29CWWuPAJEIguupknXspGHuW','Latoya','Gould','(212) 400-7422','',87,1,8,NULL),
	(45,'denisel','denise.lamonica@nhfc.com','$2y$10$JwRRT7UN9PN8OIt5lkuem.7gAmS1as4NikaALrQP29fEYLqdpQMey','Denise','LaMonica','',NULL,150,5,10,NULL),
	(46,'jiem','ma.jie.maggie62@gmail.com','$2y$10$4lWbCgXE6btkGJTBYu4hDuc0Pm1FIpJ2eQTR3tFWOKftBkMRcDIWm','Jie','Ma','',NULL,29,1,9,NULL),
	(47,'karinaa','karina.alas@nhfc.com','$2y$10$sWULLb9Kx91KgFkT69va4.HjLeMOXJEoJ12UMoXO.AQ4GbmTLxJ2q','Karina','Alas','',NULL,10,1,17,NULL),
	(48,'victora','victor.avila@nhfc.com','$2y$10$YQ7oE/hkXo1NwG1iBfPq0Oku5PI663pR2cC1TrZ4bS7jkd4FgfKVy','Victor','Avila','(212) 400-7429','',27,1,14,NULL),
	(49,'myrag','myra.guevarez@nhfc.com','$2y$10$Xgkx3G/GfZsYlv6LdAebRen93VzikMC8cps2TRSlL2GJbeRyVGEh.','Myra','Guevarez','',NULL,128,1,18,NULL),
	(50,'yanf','yanlingfong63@gmail.com','$2y$10$ejZKM8hfj0BA9EeUTvvAz.n58QgULrNQR5XIEhNIWDoDZsNIRrH9e','Yan','Fong','',NULL,29,1,9,NULL),
	(51,'imanez','imane.zari@nhfc.com','$2y$10$WPSbotAZHn31TQr9fdS9leY/bYFT/RfkA5Ow6o2lzfWHByzHHqOcy','Imane','Zari','',NULL,22,6,NULL,NULL),
	(52,'cassandrai','cassandra.ingrassia@nhfc.com','$2y$10$DkBoDg7DF39UjjkN0e7kQevViGAawUfCulmTQqaRmiDanjQ09BWQe','Cassandra','Ingrassia','',NULL,106,1,16,NULL),
	(53,'vanessaf','vanessa.flores@nhfc.com','$2y$10$VyCBW6luJIsCZbHjlGNyiulGJllhPLH.pxrAmttkcD/7uXhjaCXSe','Vanessa','Flores','',NULL,27,1,14,NULL),
	(54,'juliak','julia.kane@nhfc.com','$2y$10$KLCDi5QZBbI68yn3M8snd.1GUR3turvJjmLhxv9SZ7Kz.uTZYCnv.','Julia','Kane','',NULL,10,1,17,NULL),
	(55,'viviann','vivian.nguyen@nhfc.com','$2y$10$96rDlk2vhnkG5TGjNmGYR.JL3Wxt5C2igZ8Z3xAvRnO/Gv72gq3SG','Vivian','Nguyen','',NULL,34,1,7,NULL),
	(56,'rennyr','renny.ramnarine@nhfc.com','$2y$10$fuNuPVxURvffiWIgm4Se4.u2BYXTH1AOnhtq0qQBil2ILoor4fHIK','Renny','Ramnarine','(212) 400-7423','',142,1,2,NULL),
	(57,'nadiar','nadia.rodriguez@nhfc.com','$2y$10$jcoenmyoXfgK0Y.MtH/PI.IwMi2gIWp0XlekUc70Tm13ROW7yAC.u','Nadia','Rodriguez','',NULL,27,1,14,NULL),
	(59,'sueleec','suelee.cheong@nhfc.com','$2y$10$2JF3VI5cJ3OVjkqB06v/te2C.4bHGOgK/c7tbTLvkZV6.tHI/fewe','Suelee','Cheong','(212) 400-9634','',18,1,5,NULL),
	(60,'aho','alex.ho@nhfc.com','$2y$10$rIXIk0Bh1FceZ46Jh82yZ.GpQnBiwd9bsmdFeO2Laaf9ARc1dgGnK','Alex','Ho ','',NULL,22,1,NULL,NULL),
	(61,'cverni','Cheryl.Verni@nhfc.com','$2y$10$J2NCCrb4i5ZT.JinUS3Cq.UBqTlHovNA53fGLF8iOTJpxDztPWUUS','Cheryl','Verni','',NULL,87,1,8,NULL),
	(62,'jhartfield','jennifer.hartfield@nhfc.com','$2y$10$lkiig8RhX5hjulGL1OUhyewUngZFiE1RS9icwqmuxK8Doqp4GfkRm','Jennifer','Hartfield','',NULL,87,1,8,NULL),
	(63,'cynthiab','cynthia.babilonia@nhfc.com','$2y$10$z6ukUVw1mrkZCBf.XWr1LeZ6ty0YuDS.ynCcJptFqn/6kZHNJWKM6','Cynthia','Babilonia','',NULL,128,1,18,NULL),
	(64,'fabianao','fabiana.ojeda@nhfc.com','$2y$10$0vyMeALpdV1CLaLlBYF6qOU3T1smlMkGici0fywxOtj/j0LP5VPA6','Fabiana','Ojeda','',NULL,106,1,16,NULL),
	(65,'danas','dana.stewart@nhfc.com','$2y$10$p2rph0St8fDiJsEkoUiCXe1g0xxyXRMHRumYrmUK8XysyeG1v8EsW','Dana','Stewart','',NULL,142,1,2,NULL),
	(66,'ryanf','ryan.fu@nhfc.com','$2y$10$JHKvH9uPf/liEmSvi2lXZeiLIT6BaIJBkPv2S5zWzcFIMgamvd.fm','Ryan','Fu','',NULL,34,1,7,NULL),
	(67,'simonc','simon.choo@nhfc.com','$2y$10$fQEJRhXKTxOHHkgB5xbyBuLOFt..FWFnkUmhbv5V2PvDCa4Ovw1L2','Simon','Choo','',NULL,25,1,13,NULL),
	(68,'ginag','gina.gray@nhfc.com','$2y$10$MdFhwxw4hmC7I2mvvuzAWebg9xSY7s3YXJ7NrRvw7SThMealPkTQq','Gina ','Gray','(212) 400-7494','',87,1,8,NULL),
	(69,'jenniferm','jennifer.medina@nhfc.com','$2y$10$oLt/lhan4tDlMuN2OGMLj.p78aYRj2Gi5DRKayFdM03.MxD0VgdNy','Jennifer','Medina','',NULL,18,1,5,NULL),
	(70,'dkang','daniel.kang@nhfc.com','$2y$10$riVFdRAOn/CrXWtsjXGGvesxLUccK/8/w23B1sc/wPMdgmDnQGf0e','Daniel','Kang','(212) 400-7474','',22,3,12,1),
	(71,'amandar','amanda.ruiz@nhfc.com','$2y$10$p14QVF3RJDpD4wwi4ejAK.PxMfadQGN4rDjJFjZ3bjHtXFSahQ.w6','Amanda','Ruiz','',NULL,27,1,14,NULL),
	(72,'andrologia','andrologia@nhfc.mx','$2y$10$2gmzHGvDDLqhec6BrQUVtOzQV6Gled2IZP0N9KvwOq2HZ6atCoVqi','Andrologia','Department','',NULL,18,1,5,NULL),
	(74,'daniellar','daniella.rotolo@nhfc.com','$2y$10$8WpQrR8z9XBEgRXlaro0JOrogZC0a.e9KzDH2ty0myoco2J.1s226','Daniella','Rotolo','',NULL,10,1,17,NULL),
	(75,'emilyk','emily.kheluram@nhfc.com','$2y$10$e2grn.Px6XsMWvJ26WJ.z.SnDJ3Q93Eqwaf6vpMJWTH3rMzkY0Mo.','Emily','Kheluram','',NULL,10,1,17,NULL),
	(76,'xiaol','xiao.li@nhfc.com','$2y$10$jD66rG55KYqVMJvos2Sc/euaNPiCWLxqgVZ50f3XfFcPvLjQ6zZ6S','Xiao','Li','',NULL,18,1,3,NULL),
	(77,'alexandrap','alexandra.pospelova@nhfc.com','$2y$10$aaKJ/9zqMyOSO3kXodF/HOPKMNHwtvsGt4iA8S0bu8uabT.XmoRnu','Alexandra','Pospelova','',NULL,10,1,17,NULL),
	(78,'ivannak','ivanna.kudlachyk@nhfc.com','$2y$10$asNwkXI271708QlNNndAA.7shOBIykYllD3GnFCihlt9La0ssunKK','Ivanna','Kudlachyk','',NULL,10,1,17,NULL),
	(79,'hannak','hanna.kim@nhfc.com','$2y$10$/6qMClS5qa5Yf5xBapJhP.vfiIilEbNxbcfAwgxk89Kofcfhu9pUW','Hanna','Kim','',NULL,10,1,17,NULL),
	(80,'candon','cristina.andon@nhfc.com','$2y$10$iAiopKXRLv0ZCA3E10qMbeO8hSFpyg.c2yPb3FOrDazf.G60JKQXK','Cristina','Andon','',NULL,10,1,17,NULL),
	(81,'mandys','mandy.sze.nhfc@gmail.com','$2y$10$uZq812NW4xZoRZtGYepvbu5/wRaSOeih4bevY6cEL8HbsmVsnzfPC','Mandy','Sze','',NULL,29,1,9,NULL),
	(82,'amyt','amy.tang@nhfc.com','$2y$10$3sqrmmEi3P1hLc.KjWC.juYoovAqibIgseuoa4xjc3AsDtYJSzdfW','Amy','Tang','',NULL,18,1,5,NULL),
	(83,'annar','anna.rawska@nhfc.com','$2y$10$qPvjRTWjrQBa8R6p8HaBc.vl3cI82CowVUeq3WlgvNNIErbKPvqsa','Anna','Rawska','',NULL,25,1,13,NULL),
	(84,'vanessap','vanessa.perez@nhfc.com','$2y$10$nf/6K61hHsT/0UR3V369qu315cbZFzpKuuYp5.F/A0O9hjs.YdcCe','Vanessa','Perez','',NULL,22,1,NULL,NULL),
	(85,'michelleg','michelle.grigoresco@nhfc.com','$2y$10$Fs/E62kkyTfetTVhxQJBUOUGK9jTICTf20V3GNX1KpdkMI2YJ9YlO','Michelle','Grigoresco','(212) 400-7407','',142,1,2,NULL),
	(86,'anastasiaa','anastasia.awad@nhfc.com','$2y$10$HArUUiUIHTPd87of33xiEOIcxGP76/LVkTop8lvDhr8d.VQK.ZQ0m','Anastasia','Awad','',NULL,27,1,14,NULL),
	(87,'taliam','talia.mcclain@nhfc.com','$2y$10$Hs7VSqXKlFA0nurUkbV4A.fWsVdLclngpwOu6oeh58C7nY84Mx9pS','Talia','McClain','(212) 400-7413','',70,2,8,NULL),
	(88,'starrw','starr.weisenberg@nhfc.com','$2y$10$rCgi92AD8EJLlpRM/StRueJjrt3WfxEI8tyhGHfhfDUXQ2bhjWXfG','Starr','Weisenberg','(212) 400-9614','',87,1,8,NULL),
	(89,'michaels','michael.santisteban@nhfc.com','$2y$10$XlTNgb4EMwFu5dQrNI5XFeFZAD5LyiK7IWWC8VxE9tWngOYrhbGm2','Michael','Santisteban','',NULL,70,1,12,NULL),
	(90,'arthurm','arthur.miezgiel@nhfc.com','$2y$10$.XooBOrVjWdVF5xTndxeV.02JHZcBN69uRbIn7db3rlJeV4Xak/Tm','Arthur','Miezgiel','(212) 400-7470','',70,1,12,NULL),
	(91,'nicolef','nicole.fiorello@nhfc.com','$2y$10$XZo0z0mY/oz4vAWr4oomoO/DuQFapzoT/qPUKn8ekoD/BNCglPpAe','Nicole','Fiorello','',NULL,27,1,14,NULL),
	(92,'rosalinem','rosaline.ma@nhfc.com','$2y$10$7CcEQ86MQGSDBEYoDu69k.BVvGLpTUXf6jc8ZhsoW9rrUv15E3N.2','Rosaline','Ma','',NULL,87,1,8,NULL),
	(93,'lauriea','laurie.anderson@nhfc.com','$2y$10$SEP0YXCV7B/6MwDSl3ricuvrybgFWfOj/LmqTYMGQCcR09EnakW1W','Laurie','Anderson','',NULL,27,1,14,NULL),
	(94,'tanyas','tanya.sotomayor@nhfc.com','$2y$10$TIzAttqDW21fuAtIJ6.gCeyaR5dnzQ0Ajvgn1L/j1dNk9ESOSNe6i','Tanya','Sotomayor','(212) 400-9612',NULL,87,1,8,NULL),
	(95,'fzeng','fanny.zeng@nhfc.com','$2y$10$/YcUGBj4ZefzspS8Dyzdn.HIrWm6YYmee9/yv597GLsNwxwLplf4e','Fanny','Zeng','',NULL,87,1,8,NULL),
	(96,'meilingc','meiling.chen@nhfc.com','$2y$10$HlXp2v2FyWnVCWjY11dXQuqh4AJswzDGwgTLfD/RRph9sKY.Kvp0S','Mei Ling','Chen','(212) 400-7471','',142,1,2,NULL),
	(97,'jolivares','jessica.olivares@nhfc.com','$2y$10$I2FFAyGQj19gYT.paMPfeO0EUdPB0qCeiPlaaQBDjqkKcg696.85G','Jessica','Olivares','(212) 400-9625','',142,1,2,NULL),
	(98,'stephaniet','stephanie.tse@nhfc.com','$2y$10$Onc0WX13NXFdzMQAcqw2NeCoXN6PMfDfoQqi47ItMxOT9DPRT8WpW','Stephanie','Tse','',NULL,25,1,13,NULL),
	(99,'jennyl','jenny.liang@nhfc.com','$2y$10$0WifffYugUf3cpiJiEIbReRjTdg.MSiANnKp4WkWyGBLd4WG6RrLK','Jenny','Liang','','{\"Language\": [\"Chinese\"]}',10,1,17,NULL),
	(100,'Melissa','melissa.ip@nhfc.com','$2y$10$oNQUKB4MOjVmPhQU/2uGBOEW8RoZ4Jc7fCl9bULf/MqcVzgs2M1HS','Melissa','Ip','',NULL,10,1,17,NULL),
	(101,'trinityd','trinity.dalessio@nhfc.com','$2y$10$suUAYHKur9VYXStIAAhGTO6aOVnGnKTM3mbMxlXRxm8cgpSrkN0GW','Trinity','DAlessio','',NULL,10,1,17,NULL),
	(102,'katarzynak','katarzyna.karus@nhfc.com','$2y$10$ZA8z.r9cDiT.6Rxk0hgp2.hnOXG90zOTL0bS9ILVTtdndokEPSZ6u','katarzyna','karus','(212) 400-7489','',142,1,2,NULL),
	(103,'dianer','diane.reyes@nhfc.com','$2y$10$ag6Jb3QXRpxRb1.D3pOuWugCn5LBAFYqYUKoxvftB0zkCuuNVwB6m','Diane','Reyes','',NULL,10,1,17,NULL),
	(104,'ahua','amy.hua@nhfc.com','$2y$10$Hkrq9p5wI6Yy8fIqyolhPeZpHMYKySgZOSB1BfjWS/CuRP8M5MG4m','Amy','Hua','',NULL,10,1,17,NULL),
	(105,'cswyers','clara.swyers@nhfc.com','$2y$10$6Mxb9eC5IYlOOH2k.6Lfd.Ic0ZrP2fiFalEaLfDxA.UXJx40E8qCG','Clara','Swyers','',NULL,10,1,17,NULL),
	(106,'ghawes','Geoffrey.Hawes@nhfc.com','$2y$10$6RMgolQ5i4d/3Pp0Yr9tauY5gTOKAemyEc4PAxOCCrqCaZdUEXWBu','Geoffrey ','Hawes','(212) 400-9642','',70,2,16,4),
	(107,'shansen','Sophia.Hansen@nhfc.com','$2y$10$hguzj0zlRVrR7SAt/V5T..oF1LlsLSQLhc8vMIdnCwILaBHUTTZdK','Sophia','Hansen','',NULL,142,1,2,NULL),
	(108,'Fli','Fiona.li@nhfc.com','$2y$10$zrFoYkaFADVysQhgH9ckD.zYOYF4ik7fgnimqAkyIS0.3Og5vZo52','Fiona','Li','(212) 400-7419',NULL,29,1,1,NULL),
	(109,'moconnor','Maragret.Oconnor@nhfc.com','$2y$10$S7zon8CsIFAEuGn.xiF16.wqahb9GFLY9bz368vjChJwaFDsAsRpW','Maragret','OConnor','',NULL,10,1,17,NULL),
	(110,'agu','annie.gu@nhfc.com','$2y$10$cg4.2SMxaiBELi4lYFPchueGvAaGCuICUPjmk/XOa7d06UHk5gvMq','Annie','Gu','',NULL,10,1,17,NULL),
	(111,'adiep','eva.diep@NHFC.COM','$2y$10$Q8zdwSZLJmXMpAzpTxAmcuS68Y1HWtypELKDO3d4EWwqZRobVLAAO','Eva','Diep','(212) 400-9632','',106,1,16,4),
	(112,'ymena','yulissa.mena@nhfc.com','$2y$10$.W5nGzuMBPShO5dJ0/JIkug33UcGdQL4UlRbfnMqaUJkJhBvBERI.','Yulissa','Mena','',NULL,87,1,8,NULL),
	(113,'dcarrasco','desiree.carrasco@nhfc.com','$2y$10$QlfTNgKwMoUue6GD0kXFG.B.tf3mmksFiHPgluLnCxl7XZfPb/B0q','Desiree','Carrasco','',NULL,87,1,8,NULL),
	(114,'jrosario','Justine.Rosario@nhfc.com','$2y$10$GUitHHb62ayk9uacd0TUu.UhOaB4lW1zx93hlJnI5Kknp1YXNR9Ya','Justine','Rosario','(212) 400-9622','',87,1,8,NULL),
	(115,'vsignorile','victoria.signorile@nhfc.com','$2y$10$MzNlWMrlhx180/Nf09Qty.pZryvCrZyWEfwVIKSvAQb5KZW//WhGK','Victoria ','Signorile','',NULL,142,1,2,NULL),
	(116,'cgoggin','courtney.goggin@nhfc.com','$2y$10$ZAqKf4tv.QbsGwy/ZXuKUepb0VFqCKqLTX2bj4P5ApUcyT6O95ED.','Courtney','Goggin','',NULL,87,1,8,NULL),
	(117,'davidk','david.kwiatkowski@nhfc.com','$2y$10$F9cCcbNgI7MoZXctJVgmyOefpYyNSxDWjCurQNYVnDBZ8odnoXqRO','David','Kwiatkowski','',NULL,34,1,7,NULL),
	(118,'nbaig','nida.baig@nhfc.com','$2y$10$h1AJ3hqkQtad.rzOp41IUO79coW3aa9pXAHg//GKrTVeJpHy6lQCW','Nida','Baig','',NULL,142,1,2,NULL),
	(119,'cho','christine.ho@nhfc.com','$2y$10$uIFTOP3JCrVUWE4P1BaSbeDWBYk4mrIBnDZa.tIlrWtCtV5lTsB06','Christine','Ho','',NULL,34,1,7,NULL),
	(120,'mzhong','minru.zhong@nhfc.com','$2y$10$vpPFZns3vgdfPT0z/nFEbuLRzlWUKehoL1qnLHYSBuJStEiBHmzEK','MinRu','Zhong','',NULL,18,1,3,NULL),
	(121,'nboseman','brandi.boseman@nhfc.com','$2y$10$njHTe0eOCFaDDjfcofvXwOZvDstK6GeqArXNxc9TwNP2mkT18jfNS','Nichole','Boseman','(212) 400-7469','',70,3,12,1),
	(122,'kathyc','kathy.cui@nhfc.com','$2y$10$ckOVrmOu8WHecXMI4JcA5ehAW/f7vmptZ9Vy3Gc1E8NJ6NEhAz4Nu','Kathy','Cui','(212) 400-9641','',18,1,5,NULL),
	(123,'dhess','Daneila.Hess@nhfc.com','$2y$10$zVtWeF5Vrja.snobhoItbePMPqrPXKhG1rP/NJDPmSz3dumH9Lc7W','Daneila','Hess','(212) 400-7487',NULL,10,5,17,NULL),
	(124,'spinskiy','Svetlana.Pinskiy@nhfc.com','$2y$10$Nhv4qtagl8CSC.epOWAalecSTwOIAY8TLlcitga37RNZLY4Vy0.pK','Svetlana','Pinskiy','',NULL,10,1,17,NULL),
	(125,'aroman','Anna.Roman@nhfc.com','$2y$10$O/y3SrBi9JEE/PktyzNS/e6c8InxN5/KX38hD5xXQ5AcUNG2OUBBC','Anna','Roman','',NULL,10,1,17,NULL),
	(126,'mberliss','Margaux.Berliss@nhfc.com','$2y$10$j/c9HBhWJCYxv6PrC08mhum8tK8bG3Jo17SqGHOgsVICajndDPd.O','Margaux','Berliss','',NULL,10,1,17,NULL),
	(127,'kli','Kathy.Li@nhfc.com','$2y$10$WYMibWkfy1YiU.HkvcHxduAKMudymPRcG86oPdpa7EEAL0SxiWr9C','Kathy','Li','',NULL,142,1,2,NULL),
	(128,'emeyer','erica.meyer@nhfc.com','$2y$10$SZnN4k2/P2LNkNycHEHcV.pETxvZQGFZFd442am1clwqQwHxOCYBa','Erica','Meyer','',NULL,10,5,17,NULL),
	(129,'jhwu','jiahui.wu@nhfc.com','$2y$10$Ki5iYSZ88aaaXTSphyqrfO/ameVhDuDb87H3WAvruF7Zq8cHgQudu','Jia Hui','Wu','',NULL,18,1,3,NULL),
	(130,'lpaulino','leonidas.paulino@nhfc.com','$2y$10$clA2QwN8.d6eAhIA2kHEEuIgTnUNCldyX5r1PSeaG6fhxNHZqkLJO','Leonidas','Paulino','(212) 400-9643','',106,1,16,4),
	(131,'adumalsen','Alfredo.Dumalsen@nhfc.com','$2y$10$0fKIxKeBL/sTtcyYnKxInuDYMOZq.SiPAnlXPNpNEpBkLftLSUW2W','Alfredo','Dumalsen','',NULL,22,1,NULL,NULL),
	(132,'dhernandez','dagoberto.hernandez@nhfc.com','$2y$10$7XVZAyGEC68ydH04NCAsTuI.kSGaEAzCjXY/BpDnJQYluPpyQ108G','Dagoberto','Hernandez','(212) 400-7480','',70,1,12,NULL),
	(133,'ssoberanis','Stephanie.soberanis@nhfc.com','$2y$10$hRrYnNs9pw61GjqLsblwR.tj5YWk2VmZiqpQHAlrhk8JMK14VcKJS','Stephanie','Soberanis','',NULL,10,1,17,NULL),
	(134,'jramdat','Janeta.Ramdat@nhfc.com','$2y$10$EUR8oQ20haa7QGWcXS5JUORutt4lXgthED7Yo3akZNt.2jEiSbE9O','Janeta','Ramdat','',NULL,10,1,17,NULL),
	(135,'JTran','jessica.tran@nhfc.com','$2y$10$pzG5Zm9MJwfR6kdvMxt7vOI/5Wh1LTLHT0uT6krEroGPMw4kRL0A6','Jessica','Tran','(212) 400-9626','',18,1,5,NULL),
	(136,'rhollander','Rachel.Hollander@nhfc.com','$2y$10$U.lee65Y3mQoNW38hZsZAOmbBUjG/FpQww6sP1QAGtN9J3Ltz2YNa','Rachel','Hollander','',NULL,22,1,NULL,NULL),
	(137,'pkwan','Pei.Kwan@nhfc.com','$2y$10$os1iBBlMCauPI/GcQ1rV4u/35NbdKFh2X810XmZi6LzHCVKH82gwS','Pei','Kwan','',NULL,22,1,NULL,NULL),
	(142,'lwein','larry.wien@nhfc.com','$2y$10$E1H4rianS6a52xvwjnmeZOizWqu4qS55QWgBvJ1KEgzjct38eK15C','Larry','Wein','','',22,6,2,NULL),
	(145,'tren','tianshu.ren@nhfc.com','$2y$10$k/LFh1V0B98rOs9NsM96gultqNmQhSPIo8l7RJdfhj1N5M8.04Cra','Tianshu','Ren','','',87,1,8,NULL),
	(146,'selenas','selena.su@nhfc.com','$2y$10$7EKARGp7z6sgyY3DwVqdtu8aKmfH9k.J/JRrU39WYvjiVeZUl1/xy','Selena','Su','(212) 400-7436','',34,1,2,NULL),
	(147,'cgarcia','cyndle.garcia@nhfc.com','$2y$10$KAD0B/h/4OFosI9EBsY8COV4ZQtJQCoNT2sZ7YNjAkFVyUfwygAKC','Cyndle','Garcia','',NULL,128,1,14,NULL),
	(148,'jliu','zhe.liu@nhfc.com','$2y$10$kmJHvR2Y3nsbYU5pwW.FYuvAUiHobL6a9g5wElpnapioCmbMJqU2a','Jessie','Liu','',NULL,87,1,8,NULL),
	(149,'jyeo','jacklyn.yeo@nhfc.com','$2y$10$NzclgXaT7hSbJdrDpSZqAe.kQ8KekmAPV8Jf8TXBgOZZeF2zDAoIa','Jacklyn','Yeo','',NULL,10,1,17,NULL),
	(150,'lfuentes','leticia.fuentes@nhfc.com','$2y$10$lYR84qgnRB73JmduD95zeeTd9QE4qwu3bDzNHYkTLPhFKUf12lfqW','Leticia','Fuentes','(212) 400-7428','',22,1,10,NULL),
	(151,'arielw','ariel.watson@nhfc.com','$2y$10$2ggADaFSeFdRe25Xo04ClOhQ1DYCoHqFyCs0NCbi9qLOWwB4hCJHG','Ariel','Watson','','',1,1,8,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `versions`;

CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `versions_status_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_versions_versions_status` (`versions_status_id`),
  KEY `fk_versions_projects` (`project_id`),
  CONSTRAINT `versions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `versions_ibfk_2` FOREIGN KEY (`versions_status_id`) REFERENCES `versions_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table versions_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `versions_status`;

CREATE TABLE `versions_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `versions_status` WRITE;
/*!40000 ALTER TABLE `versions_status` DISABLE KEYS */;

INSERT INTO `versions_status` (`id`, `name`, `sort_order`, `default_value`, `active`)
VALUES
	(1,'Open',0,1,1),
	(2,'Done',0,NULL,1);

/*!40000 ALTER TABLE `versions_status` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
