/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaochengxgongkaoxuexipingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaochengxgongkaoxuexipingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaochengxgongkaoxuexipingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-02-22 19:59:50'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-02-22 19:59:50'),(3,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-02-22 19:59:50'),(4,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-02-22 19:59:50'),(5,'kemu_types','科目',1,'语文',NULL,NULL,'2023-02-22 19:59:50'),(6,'kemu_types','科目',2,'数学',NULL,NULL,'2023-02-22 19:59:50'),(7,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-02-22 19:59:50'),(8,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-02-22 19:59:50'),(9,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-02-22 19:59:50'),(10,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-02-22 19:59:50'),(11,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-02-22 19:59:50'),(12,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-02-22 19:59:50'),(13,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-02-22 19:59:51'),(14,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-02-22 19:59:51'),(15,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-02-22 19:59:51'),(16,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-02-22 19:59:51'),(17,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-02-22 19:59:51'),(18,'shipin_types','备课类型',1,'备课类型1',NULL,NULL,'2023-02-22 19:59:51'),(19,'shipin_types','备课类型',2,'备课类型2',NULL,NULL,'2023-02-22 19:59:51'),(20,'shipin_types','备课类型',3,'备课类型3',NULL,NULL,'2023-02-22 19:59:51'),(21,'xuexizuji_types','学习状态',1,'学习中',NULL,NULL,'2023-02-22 19:59:51'),(22,'xuexizuji_types','学习状态',2,'异常结束',NULL,NULL,'2023-02-22 19:59:51'),(23,'xuexizuji_types','学习状态',3,'正常结束',NULL,NULL,'2023-02-22 19:59:51');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`kemu_types`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (3,'测试试卷1',60,230,2,1,2,1,'2023-02-22 19:59:50'),(4,'测试试卷2',180,120,2,1,1,1,'2023-02-22 19:59:50');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (51,3,24,7,'2023-02-22 21:42:14'),(52,3,23,2,'2023-02-22 21:42:15'),(53,3,22,10,'2023-02-22 21:42:15'),(54,3,21,111,'2023-02-22 21:42:16'),(55,4,23,10,'2023-02-22 21:43:19'),(56,4,24,10,'2023-02-22 21:43:19'),(57,4,17,10,'2023-02-22 21:43:19'),(58,4,14,10,'2023-02-22 21:43:19'),(59,4,19,10,'2023-02-22 21:43:19'),(60,4,13,10,'2023-02-22 21:43:19'),(61,4,21,10,'2023-02-22 21:43:19'),(62,4,18,10,'2023-02-22 21:43:19'),(63,4,15,10,'2023-02-22 21:43:19'),(64,4,20,30,'2023-02-22 21:43:19');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`kemu_types`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (13,'1-1=1',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','1-1=0',3,1,'2023-02-22 19:59:50'),(14,'1+1=？',2,'[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','B','1+1=2',1,2,'2023-02-22 19:59:50'),(15,'1+1-1=?',2,'[]','1','1+1-1=1',4,3,'2023-02-22 19:59:50'),(16,'2+2=?',2,'[]','4','2+2=4',4,4,'2023-02-22 19:59:50'),(17,'1-1-1+6=?',2,'[{\"text\":\"4\",\"code\":\"A\"},{\"text\":\"5\",\"code\":\"B\"},{\"text\":\"6\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]','B','1-1-1+6=5',1,5,'2023-02-22 19:59:50'),(18,'3+3=9',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','3+3=6',3,6,'2023-02-22 19:59:50'),(19,'试题名称1',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A,B,C','答案解析1',2,7,'2023-02-22 19:59:50'),(20,'试题名称2',2,'[]','正确答案2','答案解析2',4,8,'2023-02-22 19:59:50'),(21,'试题名称3',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','答案解析3',3,9,'2023-02-22 19:59:50'),(22,'试题名称4',2,'[]','正确答案4','答案解析4',4,10,'2023-02-22 19:59:50'),(23,'试题名称5',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','B','答案解析5',1,11,'2023-02-22 19:59:50'),(24,'试题名称6',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A','答案解析6',1,12,'2023-02-22 19:59:50');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1677072945099',1,4,30,'2023-02-22 21:35:45','2023-02-22 21:35:45'),(2,'1677073227412',1,4,30,'2023-02-22 21:40:27','2023-02-22 21:40:27');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1677072945099',1,16,'51',0,'2023-02-22 21:35:45'),(2,'1677072945099',1,13,'B',30,'2023-02-22 21:35:45'),(3,'1677072945099',1,19,'A,B',0,'2023-02-22 21:35:45'),(4,'1677072945099',1,24,'B',0,'2023-02-22 21:35:45'),(5,'1677073227412',1,16,'1',0,'2023-02-22 21:40:27'),(6,'1677073227412',1,13,'B',30,'2023-02-22 21:40:27'),(7,'1677073227412',1,19,'B,C',0,'2023-02-22 21:40:27'),(8,'1677073227412',1,24,'C',0,'2023-02-22 21:40:27');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,4,16,'51','2023-02-22 21:35:45','2023-02-22 21:35:45'),(2,1,4,19,'A,B','2023-02-22 21:35:45','2023-02-22 21:35:45'),(3,1,4,24,'B','2023-02-22 21:35:45','2023-02-22 21:35:45'),(4,1,4,16,'1','2023-02-22 21:40:27','2023-02-22 21:40:27'),(5,1,4,19,'B,C','2023-02-22 21:40:27','2023-02-22 21:40:27'),(6,1,4,24,'C','2023-02-22 21:40:27','2023-02-22 21:40:27');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',325,1,'2023-02-22 20:00:05','2023-02-22 20:00:05','2023-02-22 20:00:05'),(2,'帖子标题2',1,NULL,'发布内容2',37,1,'2023-02-22 20:00:05','2023-02-22 20:00:05','2023-02-22 20:00:05'),(3,'帖子标题3',1,NULL,'发布内容3',77,1,'2023-02-22 20:00:05','2023-02-22 20:00:05','2023-02-22 20:00:05'),(4,'帖子标题4',2,NULL,'发布内容4',376,1,'2023-02-22 20:00:05','2023-02-22 20:00:05','2023-02-22 20:00:05'),(5,'帖子标题5',3,NULL,'发布内容5',77,1,'2023-02-22 20:00:05','2023-02-22 20:00:05','2023-02-22 20:00:05'),(6,NULL,1,NULL,'123',5,2,'2023-02-22 21:41:01',NULL,'2023-02-22 21:41:01'),(7,NULL,NULL,1,'123123',5,2,'2023-02-22 21:41:29',NULL,'2023-02-22 21:41:29');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告信息标题1',1,'upload/news1.jpg','2023-02-22 20:00:05','公告信息详情1','2023-02-22 20:00:05'),(2,'公告信息标题2',1,'upload/news2.jpg','2023-02-22 20:00:05','公告信息详情2','2023-02-22 20:00:05'),(3,'公告信息标题3',1,'upload/news3.jpg','2023-02-22 20:00:05','公告信息详情3','2023-02-22 20:00:05'),(4,'公告信息标题4',1,'upload/news4.jpg','2023-02-22 20:00:05','公告信息详情4','2023-02-22 20:00:05'),(5,'公告信息标题5',1,'upload/news5.jpg','2023-02-22 20:00:05','公告信息详情5','2023-02-22 20:00:05');

/*Table structure for table `shipin` */

DROP TABLE IF EXISTS `shipin`;

CREATE TABLE `shipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_name` varchar(200) DEFAULT NULL COMMENT '视频标题 Search111',
  `shipin_photo` varchar(200) DEFAULT NULL COMMENT '视频照片',
  `shipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `shipin_types` int(11) DEFAULT NULL COMMENT '视频类型 Search111',
  `shipin_content` text COMMENT '备课详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `shipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='视频信息';

/*Data for the table `shipin` */

insert  into `shipin`(`id`,`shipin_name`,`shipin_photo`,`shipin_video`,`shipin_types`,`shipin_content`,`insert_time`,`shipin_delete`,`create_time`) values (1,'视频标题1','upload/shipin1.jpg','upload/video.mp4',3,'备课详情1','2023-02-22 20:00:05',1,'2023-02-22 20:00:05'),(2,'视频标题2','upload/shipin2.jpg','upload/video.mp4',3,'备课详情2','2023-02-22 20:00:05',1,'2023-02-22 20:00:05'),(3,'视频标题3','upload/shipin3.jpg','upload/video.mp4',1,'备课详情3','2023-02-22 20:00:05',1,'2023-02-22 20:00:05'),(4,'视频标题4','upload/shipin4.jpg','upload/video.mp4',3,'备课详情4','2023-02-22 20:00:05',1,'2023-02-22 20:00:05'),(5,'视频标题5','upload/shipin5.jpg','upload/video.mp4',2,'备课详情5','2023-02-22 20:00:05',1,'2023-02-22 20:00:05');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','ewy1m9v4u875toqizont11rcc5slt0kk','2023-02-22 20:26:38','2023-02-22 22:36:43'),(2,1,'admin','users','管理员','xnkzz4llvjo0vayepyr7xs3m9zhwamad','2023-02-22 21:31:37','2023-02-22 22:41:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xuexizuji` */

DROP TABLE IF EXISTS `xuexizuji`;

CREATE TABLE `xuexizuji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_id` int(11) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xuexizuji_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `xuexizuji_types` int(11) DEFAULT NULL COMMENT '学习状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学习足迹';

/*Data for the table `xuexizuji` */

insert  into `xuexizuji`(`id`,`shipin_id`,`yonghu_id`,`xuexizuji_time`,`xuexizuji_types`,`insert_time`,`create_time`) values (1,1,3,'2023-02-22 20:00:05',2,'2023-02-22 20:00:05','2023-02-22 20:00:05'),(2,2,2,'2023-02-22 20:00:05',2,'2023-02-22 20:00:05','2023-02-22 20:00:05'),(3,3,1,'2023-02-22 20:00:05',3,'2023-02-22 20:00:05','2023-02-22 20:00:05'),(4,4,3,'2023-02-22 20:00:05',1,'2023-02-22 20:00:05','2023-02-22 20:00:05');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `xuexi_number` int(11) DEFAULT NULL COMMENT '学习时长',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`xuexi_number`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,1383,'1@qq.com','2023-02-22 20:00:05'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,0,'2@qq.com','2023-02-22 20:00:05'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,0,'3@qq.com','2023-02-22 20:00:05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
