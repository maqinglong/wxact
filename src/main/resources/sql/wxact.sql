/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : wxact

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-03-22 15:07:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for actives
-- ----------------------------
DROP TABLE IF EXISTS `actives`;
CREATE TABLE `actives` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `act_No` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `act_Name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `organizer` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `create_Time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_Time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of actives
-- ----------------------------

-- ----------------------------
-- Table structure for act_applicants
-- ----------------------------
DROP TABLE IF EXISTS `act_applicants`;
CREATE TABLE `act_applicants` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `act_No` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `applicant` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '报名参加人编码',
  `create_Time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_Time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_applicants
-- ----------------------------

-- ----------------------------
-- Table structure for act_resoures
-- ----------------------------
DROP TABLE IF EXISTS `act_resoures`;
CREATE TABLE `act_resoures` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `act_No` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `resource_Type` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `resource_Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `statment1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_Time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_Time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_resoures
-- ----------------------------

-- ----------------------------
-- Table structure for act_users
-- ----------------------------
DROP TABLE IF EXISTS `act_users`;
CREATE TABLE `act_users` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_No` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '身份证号码',
  `user_Name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名字',
  `nick_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `mobile` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '手机号码',
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `Id_Type` varchar(2) COLLATE utf8_bin NOT NULL,
  `Id_No` varchar(20) COLLATE utf8_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8_bin NOT NULL COMMENT '性别',
  `reg_Time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '登录日期',
  `company` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '单位名称',
  `tzq_level` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '对所参训项目的了解程度（0基础，有见过，有操作过，熟练操作，可以当老师）',
  `create_Time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_Time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`,`user_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_users
-- ----------------------------

-- ----------------------------
-- Table structure for wxch_user
-- ----------------------------
DROP TABLE IF EXISTS `wxch_user`;
CREATE TABLE `wxch_user` (
  `uid` int(7) NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `language` varchar(50) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(10) unsigned NOT NULL,
  `localimgurl` varchar(200) NOT NULL,
  `setp` smallint(2) unsigned NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  `affiliate` int(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_user
-- ----------------------------
