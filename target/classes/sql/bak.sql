
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jantent` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jantent`;

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` char(5) DEFAULT NULL,
  `name` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`) values ('1','张三'),('2','李四'),('3','老李');

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

/*Data for the table `t_attach` */

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

/*Data for the table `t_contents` */

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
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8;

/*Data for the table `t_logs` */

insert  into `t_logs`(`id`,`action`,`data`,`author_id`,`ip`,`created`) values (61,'删除附件','/upload/2019/07/7q7i840qd6hj5qmtmps1g0u3r3.png',1,'127.0.0.1',1563113058),(71,'删除附件','/upload/2019/07/oke4poevhugl4qq8o4e31qpbhd.png',1,'127.0.0.1',1563113062),(81,'登录后台',NULL,1,'127.0.0.1',1563113894),(91,'登录后台',NULL,1,'127.0.0.1',1563116215),(101,'登录后台',NULL,1,'127.0.0.1',1563116444),(111,'登录后台',NULL,1,'127.0.0.1',1563116687),(121,'登录后台',NULL,1,'127.0.0.1',1563117287),(131,'登录后台',NULL,1,'127.0.0.1',1563117469),(141,'登录后台',NULL,1,'127.0.0.1',1563117602),(151,'登录后台',NULL,1,'127.0.0.1',1563118226),(161,'登录后台',NULL,1,'127.0.0.1',1563118294),(171,'登录后台',NULL,1,'127.0.0.1',1563118972),(181,'登录后台',NULL,1,'127.0.0.1',1563119118),(191,'登录后台',NULL,1,'127.0.0.1',1563119375),(281,'修改个人信息','{\"uid\":1,\"email\":\"test.com\",\"screenName\":\"admin\"}',1,'127.0.0.1',1563161588),(401,'登录后台',NULL,1,'127.0.0.1',1563171358),(411,'保存系统设置','{\"site_record\":\"这是测试\",\"allow_install\":\"\"}',1,'127.0.0.1',1563171376),(421,'登录后台',NULL,1,'127.0.0.1',1563171595),(431,'保存系统设置','{\"site_record\":\"这是测试\",\"site_description\":\"这是测试\",\"site_title\":\"thisTest\",\"site_theme\":\"default\",\"allow_install\":\"\"}',1,'127.0.0.1',1563171638),(501,'删除附件','/upload/2019/07/1h4537ksuegkkq5e64b3iqg1i9.jpg',1,'127.0.0.1',1563172587),(511,'删除附件','/upload/2019/07/uh6oen75d2g1kqemj1229urp37.png',1,'127.0.0.1',1563172591),(521,'删除附件','/upload/2019/07/qicb63i01gih2ordrdlbbriu0m.png',1,'127.0.0.1',1563172593),(531,'删除附件','/upload/2019/07/qanv7kn066i97othce1cq5nu5g.jpg',1,'127.0.0.1',1563172596),(541,'删除附件','/upload/2019/07/6coejiiepci63psir3r1kg27eq.jpg',1,'127.0.0.1',1563172599),(551,'登录后台',NULL,1,'127.0.0.1',1563172952);

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

insert  into `t_metas`(`mid`,`name`,`slug`,`type`,`description`,`sort`,`parent`) values (1,'文章',NULL,'category',NULL,0,0),(41,'默认分类','默认分类','category',NULL,0,0);

/*Table structure for table `t_options` */

DROP TABLE IF EXISTS `t_options`;

CREATE TABLE `t_options` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_options` */

insert  into `t_options`(`name`,`value`,`description`) values ('allow_install','',NULL),('site_block_ips','',NULL),('site_description','这是测试',NULL),('site_record','这是测试',NULL),('site_theme','jantent',NULL),('site_title','thisTest',NULL);

/*Table structure for table `t_relationships` */

DROP TABLE IF EXISTS `t_relationships`;

CREATE TABLE `t_relationships` (
  `cid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_relationships` */

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

insert  into `t_users`(`uid`,`username`,`password`,`email`,`home_url`,`screen_name`,`created`,`activated`,`logged`,`group_name`) values (1,'admin','a66abb5684c45962d887564f08346e8d','test.com',NULL,'admin',1490756162,0,0,'visitor');

/*Table structure for table `u_user` */

DROP TABLE IF EXISTS `u_user`;

CREATE TABLE `u_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(50) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `u_user` */

insert  into `u_user`(`id`,`nick`,`phone`,`address`,`email`) values (7,'nick300','13900000000','北京海淀中关村','quetyj@163.com'),(8,'zhangsanfeng001','1370000000','13e124','127490808@qq.com'),(9,'zhangsanfeng001','1370000000','13e124','127490808@qq.com'),(10,'zhangsanfeng001','1370000000','13e124','127490808@qq.com'),(11,'zhangsanfeng001','1370000000','13e124','127490808@qq.com'),(21,'张三','1231322321','上海','444@qq.com'),(31,'121','1321313','1231','13213');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
