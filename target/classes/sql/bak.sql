/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.71-log : Database - jantent
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jantent` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jantent`;

/*Table structure for table `t_attach` */

DROP TABLE IF EXISTS `t_attach`;

CREATE TABLE `t_attach` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `ftype` varchar(50) DEFAULT '',
  `fkey` varchar(100) NOT NULL DEFAULT '',
  `author_id` int(10) DEFAULT NULL,
  `created` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `t_attach` */

insert  into `t_attach`(`id`,`fname`,`ftype`,`fkey`,`author_id`,`created`) values (1,'新建文本文档.txt','file','/upload/2019/07/sfnr57epn0jiroq20grnthn8a2.txt',1,1562921350),(11,'logo.png','image','/upload/2019/07/oke4poevhugl4qq8o4e31qpbhd.png',1,1562922042),(21,'12312.png','image','/upload/2019/07/7q7i840qd6hj5qmtmps1g0u3r3.png',1,1563027924);

/*Table structure for table `t_comments` */

DROP TABLE IF EXISTS `t_comments`;

CREATE TABLE `t_comments` (
  `coid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `author_id` int(10) unsigned DEFAULT '0',
  `owner_id` int(10) unsigned DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `content` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`coid`),
  KEY `cid` (`cid`),
  KEY `created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_comments` */

insert  into `t_comments`(`coid`,`cid`,`created`,`author`,`author_id`,`owner_id`,`mail`,`url`,`ip`,`agent`,`content`,`type`,`status`,`parent`) values (1,1,1562921950,'热心网友',0,1,'','','127.0.0.1',NULL,'很好！！！！！！','comment','approved',0);

/*Table structure for table `t_contents` */

DROP TABLE IF EXISTS `t_contents`;

CREATE TABLE `t_contents` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `modified` int(10) unsigned DEFAULT '0',
  `content` text COMMENT '内容文字',
  `author_id` int(10) unsigned DEFAULT '0',
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `tags` varchar(200) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `thumbImg` varchar(512) DEFAULT NULL,
  `hits` int(10) unsigned DEFAULT '0',
  `comments_num` int(10) unsigned DEFAULT '0',
  `allow_comment` tinyint(1) DEFAULT '1',
  `allow_ping` tinyint(1) DEFAULT '1',
  `allow_feed` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `slug` (`slug`),
  KEY `created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `t_contents` */

insert  into `t_contents`(`cid`,`title`,`slug`,`created`,`modified`,`content`,`author_id`,`type`,`status`,`tags`,`categories`,`thumbImg`,`hits`,`comments_num`,`allow_comment`,`allow_ping`,`allow_feed`) values (1,'这是测试','my-sdfs-sfs',1562921894,1562921894,'2313123123123131322123131313',1,'post','publish','这是测试','文章','',1,1,1,1,1),(11,'这是测试222','sfdsfsfssfds',1562922055,1562922055,'这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222这是测试222',1,'post','publish','这是测试222','文章','/upload/2019/07/oke4poevhugl4qq8o4e31qpbhd.png',2,0,1,0,0),(21,'测试','34424242423423',1563027952,1563027952,'234234234242423',1,'post','publish','测试','默认分类','/upload/2019/07/7q7i840qd6hj5qmtmps1g0u3r3.png',0,0,1,1,1);

/*Table structure for table `t_logs` */

DROP TABLE IF EXISTS `t_logs`;

CREATE TABLE `t_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(100) DEFAULT NULL,
  `data` varchar(2000) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `t_logs` */

insert  into `t_logs`(`id`,`action`,`data`,`author_id`,`ip`,`created`) values (1,'登录后台',NULL,1,'127.0.0.1',1562921006),(11,'登录后台',NULL,1,'127.0.0.1',1562922249),(21,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1563027820);

/*Table structure for table `t_metas` */

DROP TABLE IF EXISTS `t_metas`;

CREATE TABLE `t_metas` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `t_metas` */

insert  into `t_metas`(`mid`,`name`,`slug`,`type`,`description`,`sort`,`parent`) values (1,'文章',NULL,'category',NULL,0,0),(11,'这是测试','这是测试','tag',NULL,0,0),(21,'这是测试222','这是测试222','tag',NULL,0,0),(31,'测试','测试','tag',NULL,0,0),(41,'默认分类','默认分类','category',NULL,0,0);

/*Table structure for table `t_options` */

DROP TABLE IF EXISTS `t_options`;

CREATE TABLE `t_options` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_options` */

insert  into `t_options`(`name`,`value`,`description`) values ('site_block_ips','123',NULL);

/*Table structure for table `t_relationships` */

DROP TABLE IF EXISTS `t_relationships`;

CREATE TABLE `t_relationships` (
  `cid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_relationships` */

insert  into `t_relationships`(`cid`,`mid`) values (1,1),(1,11),(11,1),(11,21),(21,31),(21,41);

/*Table structure for table `t_users` */

DROP TABLE IF EXISTS `t_users`;

CREATE TABLE `t_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `home_url` varchar(200) DEFAULT NULL,
  `screen_name` varchar(32) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `activated` int(10) unsigned DEFAULT '0',
  `logged` int(10) unsigned DEFAULT '0',
  `group_name` varchar(16) DEFAULT 'visitor',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`username`),
  UNIQUE KEY `mail` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_users` */

insert  into `t_users`(`uid`,`username`,`password`,`email`,`home_url`,`screen_name`,`created`,`activated`,`logged`,`group_name`) values (1,'admin','a66abb5684c45962d887564f08346e8d','jantent@qq.com',NULL,'admin',1490756162,0,0,'visitor');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
