/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lvyoujingdianguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lvyoujingdianguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lvyoujingdianguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图2','http://localhost:8080/lvyoujingdianguanli/upload/1618407555556.jpg'),(2,'轮播图1','http://localhost:8080/lvyoujingdianguanli/upload/1618407565686.jpg'),(3,'轮播图3','http://localhost:8080/lvyoujingdianguanli/upload/1618451423605.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-14 21:08:39'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-14 21:08:39'),(3,'jingdian_types','景点类型名称',1,'景点类型一',NULL,'2021-04-14 21:08:39'),(4,'jingdian_types','景点类型名称',2,'景点类型二',NULL,'2021-04-14 21:08:39'),(5,'jingdian_types','景点类型名称',3,'景点类型三',NULL,'2021-04-14 21:08:39'),(6,'jingdian_dengji_types','景点等级类型名称',1,'一星景点',NULL,'2021-04-14 21:08:39'),(7,'jingdian_dengji_types','景点等级类型名称',2,'二星景点',NULL,'2021-04-14 21:08:39'),(8,'jingdian_dengji_types','景点等级类型名称',3,'三星景点',NULL,'2021-04-14 21:08:40'),(9,'jingdian_dengji_types','景点等级类型名称',4,'四星景点',NULL,'2021-04-14 21:08:40'),(10,'jingdian_dengji_types','景点等级类型名称',5,'五星景点',NULL,'2021-04-14 21:08:40'),(11,'lvxingshe_types','旅行社星级类型名称',1,'一星旅行社',NULL,'2021-04-14 21:08:40'),(12,'lvxingshe_types','旅行社星级类型名称',2,'二星旅行社',NULL,'2021-04-14 21:08:40'),(13,'lvxingshe_types','旅行社星级类型名称',3,'三星旅行社',NULL,'2021-04-14 21:08:40'),(14,'lvxingshe_types','旅行社星级类型名称',4,'四星旅行社',NULL,'2021-04-14 21:08:40'),(15,'lvxingshe_types','旅行社星级类型名称',5,'五星旅行社',NULL,'2021-04-14 21:08:40'),(16,'news_types','新闻类型名称',1,'新闻类型1',NULL,'2021-04-14 21:08:40'),(17,'news_types','新闻类型名称',2,'新闻类型2',NULL,'2021-04-14 21:08:40'),(18,'news_types','新闻类型名称',3,'新闻类型3',NULL,'2021-04-14 21:08:40'),(19,'jingdian_types','景点类型名称',4,'景点类型4',NULL,'2021-04-15 09:54:08');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名 Search111  ',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型 Search111 ',
  `jingdian_dengji_types` int(11) DEFAULT NULL COMMENT '景点等级 Search111 ',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点缩略图',
  `jingdian_tese` varchar(200) DEFAULT NULL COMMENT '景点特色 Search111 ',
  `jingdian_luxian` varchar(200) DEFAULT NULL COMMENT '景点路线',
  `jingdian_content` text COMMENT '景点详情',
  `jingdian_new_money` int(11) DEFAULT NULL COMMENT '门票参考价格',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_types`,`jingdian_dengji_types`,`jingdian_photo`,`jingdian_tese`,`jingdian_luxian`,`jingdian_content`,`jingdian_new_money`,`create_time`) values (1,'景点1',1,1,'http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618449782264.jpg','景点漂亮','路线1','景点1的详情\r\n',180,'2021-04-15 09:25:03'),(2,'景点2',2,2,'http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618449918937.jfif','景点2的特色','景点2的路线','景点2的详情\r\n',150,'2021-04-15 09:25:40'),(3,'景点3',3,3,'http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618450000830.jpg','景点特色3','景点3的路线','景点3的详情\r\n',160,'2021-04-15 09:26:22'),(4,'景点4',3,4,'http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618451516328.jpg','有山  有水','路线4 的路线','景点4的详情\r\n',144,'2021-04-15 09:52:36');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

insert  into `jingdian_collection`(`id`,`jingdian_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,1,'2021-04-15 09:33:41','2021-04-15 09:33:41'),(2,1,1,'2021-04-15 09:33:46','2021-04-15 09:33:46'),(3,4,2,'2021-04-15 10:03:18','2021-04-15 10:03:18');

/*Table structure for table `jingdian_liuyan` */

DROP TABLE IF EXISTS `jingdian_liuyan`;

CREATE TABLE `jingdian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jingdian_liuyan_content` text COMMENT '评价内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='景点留言';

/*Data for the table `jingdian_liuyan` */

insert  into `jingdian_liuyan`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,4,2,'‍景点4的留言1\r\n','景点4的回复1\r\n','2021-04-15 10:03:31','2021-04-15 10:03:31');

/*Table structure for table `lvxingshe` */

DROP TABLE IF EXISTS `lvxingshe`;

CREATE TABLE `lvxingshe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvxingshe_name` varchar(200) DEFAULT NULL COMMENT '旅行社名称  Search111 ',
  `lvxingshe_types` int(11) DEFAULT NULL COMMENT '旅行社星级  Search111 ',
  `lvxingshe_weizhi` varchar(200) DEFAULT NULL COMMENT '旅行社位置  Search111 ',
  `lvxingshe_photo` varchar(200) DEFAULT NULL COMMENT '旅行社缩略图',
  `lvxingshe_jingdian` varchar(200) DEFAULT NULL COMMENT '附近景点 Search111 ',
  `lvxingshe_new_money` int(11) DEFAULT NULL COMMENT '单价',
  `lvxingshe_content` text COMMENT '旅行社详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='旅行社';

/*Data for the table `lvxingshe` */

insert  into `lvxingshe`(`id`,`lvxingshe_name`,`lvxingshe_types`,`lvxingshe_weizhi`,`lvxingshe_photo`,`lvxingshe_jingdian`,`lvxingshe_new_money`,`lvxingshe_content`,`create_time`) values (1,'旅行社1',1,'旅行社位置1','http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618450212878.jfif','景点1  景点2  景点3',180,'旅行社1的详情\r\n','2021-04-15 09:30:32'),(2,'旅行社2',2,'旅行社2的位置','http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618450293605.jpg','景点1  景点2  ',188,'旅行社2的详情\r\n','2021-04-15 09:31:49'),(3,'旅行社3',3,'旅行社3的位置','http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618451612788.jpg','景点1  景点2  景点3',1809,'旅行社3的详情\r\n','2021-04-15 09:53:44');

/*Table structure for table `lvxingshe_collection` */

DROP TABLE IF EXISTS `lvxingshe_collection`;

CREATE TABLE `lvxingshe_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvxingshe_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='旅行社收藏';

/*Data for the table `lvxingshe_collection` */

insert  into `lvxingshe_collection`(`id`,`lvxingshe_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-15 09:34:02','2021-04-15 09:34:02'),(2,2,2,'2021-04-15 10:08:40','2021-04-15 10:08:40'),(3,1,2,'2021-04-15 10:08:44','2021-04-15 10:08:44');

/*Table structure for table `lvxingshe_liuyan` */

DROP TABLE IF EXISTS `lvxingshe_liuyan`;

CREATE TABLE `lvxingshe_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvxingshe_id` int(11) DEFAULT NULL COMMENT '旅行社id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `lvxingshe_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='旅行社留言';

/*Data for the table `lvxingshe_liuyan` */

insert  into `lvxingshe_liuyan`(`id`,`lvxingshe_id`,`yonghu_id`,`lvxingshe_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,1,1,'‍‍留言1\r\n','wwww787\r\n','2021-04-15 09:34:07','2021-04-15 09:34:07');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻1',3,'http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618407582988.jfif','2021-04-14 21:40:15','新闻1的详情\r\n<img src=\"http://localhost:8080/lvyoujingdianguanli/upload/1618407595688.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyoujingdianguanli/upload/1618407595688.jpg\">\r\n是\r\n<img src=\"http://localhost:8080/lvyoujingdianguanli/upload/1618407610193.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyoujingdianguanli/upload/1618407610193.jpg\">\r\n9999\r\n','2021-04-14 21:40:15'),(2,'新闻2',2,'http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618451458194.jpg','2021-04-15 09:51:05','新闻2的详情\r\n','2021-04-15 09:51:05');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','7t742zw2w37xcbqhwqabwa312pd7g2a3','2021-04-14 21:29:12','2021-04-15 10:48:32'),(2,1,'a1','yonghu','用户','a9p3cfvonwds4d3mt53lzna0dj86q65h','2021-04-15 09:33:11','2021-04-15 11:10:23'),(3,2,'a2','yonghu','用户','6u56rp19qbuy39fkvgz1lbws024bz5v7','2021-04-15 09:55:43','2021-04-15 10:55:43'),(4,4,'a5','yonghu','用户','b08wdvscyjq678rzlj5zvltwqzj95uem','2021-04-15 10:13:28','2021-04-15 11:13:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '游客姓名  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '游客手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '游客身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '游客头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='游客';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1111','17703786901','410224199610232001','http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618407478912.jpg',1,'2021-04-14 21:38:03'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618407504556.jpg',1,'2021-04-14 21:38:27'),(3,'a3','123456','张3','17703786903','410224199610232003','http://localhost:8080/lvyoujingdianguanli/file/download?fileName=1618451345542.jpg',1,'2021-04-15 09:49:42'),(4,'a5','123456','张5','17703786905','410224199610232005','http://localhost:8080/lvyoujingdianguanli/upload/1618452825900.jpg',2,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
