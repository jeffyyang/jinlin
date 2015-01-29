/*
Navicat MySQL Data Transfer

Source Server         : jinlin
Source Server Version : 50610
Source Host           : 61.154.127.132:3306
Source Database       : wxshop

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-01-28 16:43:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(20) DEFAULT NULL,
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text ,
  `nav_list` text ,
  `lang_type` varchar(50) NOT NULL DEFAULT 'zh_CN',
  `agency_id` smallint(5) unsigned NOT NULL,
  `todolist` longtext,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',   
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
