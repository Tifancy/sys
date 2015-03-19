/*
SQLyog Ultimate v8.32 
MySQL - 5.6.16 : Database - spring
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spring` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `spring`;

/*Table structure for table `s_resource` */

DROP TABLE IF EXISTS `s_resource`;

CREATE TABLE `s_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKAE0EC65AA53C12D3` (`created_by`),
  KEY `FKAE0EC65A41FBFC20` (`updated_by`),
  KEY `FKAE0EC65A113065D8` (`parent_id`),
  CONSTRAINT `FKAE0EC65A113065D8` FOREIGN KEY (`parent_id`) REFERENCES `s_resource` (`id`),
  CONSTRAINT `FKAE0EC65A41FBFC20` FOREIGN KEY (`updated_by`) REFERENCES `s_user` (`id`),
  CONSTRAINT `FKAE0EC65AA53C12D3` FOREIGN KEY (`created_by`) REFERENCES `s_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `s_resource` */

insert  into `s_resource`(`id`,`name`,`state`,`url`,`icon`,`description`,`permission`,`type`,`target`,`created_on`,`updated_on`,`parent_id`,`created_by`,`updated_by`) values (1,'系统管理',0,'/admin/index.do',NULL,NULL,'admin:systemManager',1,NULL,'2015-01-01 11:11:11','2015-01-01 11:11:11',NULL,1,1),(2,'用户管理',0,'/admin/user/index.action',NULL,NULL,'admin:user:index',1,NULL,'2015-01-01 11:11:11','2015-01-01 11:11:11',1,1,1),(3,'角色管理',0,'/admin/role/index.do',NULL,NULL,'admin:role:index',1,NULL,'2015-01-01 11:11:11','2015-01-01 11:11:11',1,1,1),(4,'权限资源管理',0,'/admin/resource/index.do',NULL,NULL,'admin:resource:index',1,NULL,'2015-01-01 11:11:11','2015-01-01 11:11:11',1,1,1);

/*Table structure for table `s_role` */

DROP TABLE IF EXISTS `s_role`;

CREATE TABLE `s_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC9AD88C2A53C12D3` (`created_by`),
  KEY `FKC9AD88C241FBFC20` (`updated_by`),
  CONSTRAINT `FKC9AD88C241FBFC20` FOREIGN KEY (`updated_by`) REFERENCES `s_user` (`id`),
  CONSTRAINT `FKC9AD88C2A53C12D3` FOREIGN KEY (`created_by`) REFERENCES `s_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `s_role` */

insert  into `s_role`(`id`,`name`,`description`,`state`,`created_on`,`updated_on`,`created_by`,`updated_by`) values (1,'超级管理员',NULL,0,'2015-01-01 11:11:11','2015-01-01 11:11:11',1,1),(2,'管理员',NULL,0,'2015-01-01 11:11:11','2015-01-01 11:11:11',1,1);

/*Table structure for table `s_role_resource` */

DROP TABLE IF EXISTS `s_role_resource`;

CREATE TABLE `s_role_resource` (
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  KEY `FKDDC426EBA5A893F4` (`role_id`),
  KEY `FKDDC426EBDF5F3FF4` (`resource_id`),
  CONSTRAINT `FKDDC426EBA5A893F4` FOREIGN KEY (`role_id`) REFERENCES `s_role` (`id`),
  CONSTRAINT `FKDDC426EBDF5F3FF4` FOREIGN KEY (`resource_id`) REFERENCES `s_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `s_role_resource` */

insert  into `s_role_resource`(`role_id`,`resource_id`) values (1,1),(1,2),(1,3),(1,4);

/*Table structure for table `s_user` */

DROP TABLE IF EXISTS `s_user`;

CREATE TABLE `s_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC9AEF417A53C12D3` (`created_by`),
  KEY `FKC9AEF41741FBFC20` (`updated_by`),
  CONSTRAINT `FKC9AEF41741FBFC20` FOREIGN KEY (`updated_by`) REFERENCES `s_user` (`id`),
  CONSTRAINT `FKC9AEF417A53C12D3` FOREIGN KEY (`created_by`) REFERENCES `s_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `s_user` */

insert  into `s_user`(`id`,`name`,`first_name`,`last_name`,`password`,`state`,`created_on`,`updated_on`,`created_by`,`updated_by`,`nick_name`) values (1,'admin','admin','admin','123456',0,'2015-01-01 11:11:11','2015-01-01 11:11:11',1,1,NULL),(2,'guest','guest','guest','123456',0,'2015-01-01 11:11:11','2015-01-01 11:11:11',1,1,NULL);

/*Table structure for table `s_user_role` */

DROP TABLE IF EXISTS `s_user_role`;

CREATE TABLE `s_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `FK9E393B9EA5A893F4` (`role_id`),
  KEY `FK9E393B9E4AD357D4` (`user_id`),
  CONSTRAINT `FK9E393B9E4AD357D4` FOREIGN KEY (`user_id`) REFERENCES `s_user` (`id`),
  CONSTRAINT `FK9E393B9EA5A893F4` FOREIGN KEY (`role_id`) REFERENCES `s_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `s_user_role` */

insert  into `s_user_role`(`user_id`,`role_id`) values (1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
