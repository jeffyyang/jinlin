/*
Navicat MySQL Data Transfer

Source Server         : 59.60.30.99_mysqldb
Source Server Version : 50040
Source Host           : 59.60.30.99:3306
Source Database       : mobilecms

Target Server Type    : MYSQL
Target Server Version : 50040
File Encoding         : 65001

Date: 2015-01-30 14:08:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_access
-- ----------------------------
DROP TABLE IF EXISTS `cms_access`;
CREATE TABLE `cms_access` (
  `role_id` int(5) NOT NULL,
  `node_id` int(5) NOT NULL,
  KEY `role_id` (`role_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_access
-- ----------------------------

-- ----------------------------
-- Table structure for cms_ad
-- ----------------------------
DROP TABLE IF EXISTS `cms_ad`;
CREATE TABLE `cms_ad` (
  `id` smallint(5) NOT NULL auto_increment,
  `board_id` smallint(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL default '0',
  `add_time` int(10) NOT NULL,
  `ordid` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `board_id` (`board_id`,`start_time`,`end_time`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_ad
-- ----------------------------
INSERT INTO `cms_ad` VALUES ('6', '6', 'code', 'phonegap中文网', 'http://www.phonegap100.com', '<script type=\\\"text/javascript\\\">alimama_pid=\\\"mm_30949159_3378420_11349182\\\";alimama_width=950;alimama_height=90;</script><script src=\\\"http://a.alimama.cn/inf.js\\\" type=\\\"text/javascript\\\"></script>', '1333595088', '1365217491', '104', '1333681516', '1', '1');
INSERT INTO `cms_ad` VALUES ('7', '5', 'image', '凡客', '', '512ad36e181c5.png', '1333683143', '1365219146', '11', '1333683151', '2', '0');
INSERT INTO `cms_ad` VALUES ('9', '5', 'text', '测试', 'http://192.168.1.51/wegou_news/uc_client', '测试广告', '1360598400', '1361462400', '0', '1361773236', '0', '1');
INSERT INTO `cms_ad` VALUES ('11', '4', 'text', '掌龙游戏', 'http://www.zlgame.cn', '', '1398096000', '1398268800', '0', '1398235089', '0', '1');

-- ----------------------------
-- Table structure for cms_adboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_adboard`;
CREATE TABLE `cms_adboard` (
  `id` smallint(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_adboard
-- ----------------------------
INSERT INTO `cms_adboard` VALUES ('4', '详细页横幅', 'banner', '950', '100', '', '1');
INSERT INTO `cms_adboard` VALUES ('5', '详细页右侧', 'banner', '226', '226', '', '1');
INSERT INTO `cms_adboard` VALUES ('6', '首页下方横幅', 'banner', '960', '100', '', '1');

-- ----------------------------
-- Table structure for cms_admin
-- ----------------------------
DROP TABLE IF EXISTS `cms_admin`;
CREATE TABLE `cms_admin` (
  `id` int(10) NOT NULL auto_increment,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `add_time` int(10) default NULL,
  `last_time` int(10) default NULL,
  `status` tinyint(1) unsigned NOT NULL default '1',
  `role_id` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_admin
-- ----------------------------
INSERT INTO `cms_admin` VALUES ('1', 'admin', '0192023a7bbd73250516f069df18b500', '1398066705', null, '1', '1');

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `cate_id` tinyint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `orig` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `abst` varchar(255) NOT NULL,
  `info` mediumtext NOT NULL,
  `add_time` datetime NOT NULL,
  `ordid` tinyint(4) NOT NULL,
  `is_hot` tinyint(1) NOT NULL default '0',
  `is_best` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0' COMMENT '0-待审核 1-已审核',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `is_best` (`is_best`),
  KEY `add_time` (`add_time`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '12', '父母双方或母亲一方是昆明市常住户口，婚后所生婴儿落户', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	<strong>办事指南</strong> \r\n</p>\r\n<p class=\"p0\">\r\n	新出生的婴儿可在父亲或母亲常住户口所在地的户口登记机关申报常住户口。并准备下列手续：\r\n</p>\r\n<span style=\"line-height:1.5;\">1</span><span style=\"line-height:1.5;\">、医院出具的《出生医学证明》。</span><br />\r\n<span style=\"line-height:1.5;\">2</span><span style=\"line-height:1.5;\">、计划生育部门出具的《计划生育服务手册》；属计划外生育的，持婴儿母亲所在镇或镇级以上计划生育部门出具的证明材料。</span><br />\r\n<span style=\"line-height:1.5;\">3</span><span style=\"line-height:1.5;\">、婴儿父或母的集体户口簿或家庭户口簿。</span><br />\r\n<span style=\"line-height:1.5;\">4</span><span style=\"line-height:1.5;\">、其他相关材料。</span><br />\r\n<span style=\"line-height:1.5;\">5</span><span style=\"line-height:1.5;\">、属跨年度出生未落常住户口的，应持上述材料到派出所申请，报市局审批。</span><br />\r\n<p class=\"p0\">\r\n	6<span>、对出国人员（留学、经商、务工）在国外出生子女的落户问题，应本着简化手续的原则，凭国外出生子女的出生证明，父母及子女回国使用的护照或《中华人民共和国旅行证》，可在其父或母、祖父母、外祖父母或其他抚养人处落户。拟居住地的选择按以下顺序：</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>1</span><span>）其父亲或母亲在国内的，在父亲或母亲处，其父母都在国外的，在其父或母原户口所在地抚养人处。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>2</span><span>）没有上一项条件的，可在其祖父母、外祖父母处。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>3</span><span>）没有上项条件的，可在其他抚养人处。</span> \r\n</p>\r\n<br />', '2014-04-21 11:29:58', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('2', '12', '父母双方或母亲一方是昆明市常住户口，未婚所生婴儿落户', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	<strong>办事指南</strong> \r\n</p>\r\n<p class=\"p0\">\r\n	新出生的婴儿可在父亲或母亲常住户口所在地的户口登记机关申报常住户口。并准备下列手续：&nbsp;　<br />\r\n1<span>、医院出具的《出生医学证明》。</span><br />\r\n2<span>、计划生育部门出具的《计划生育服务手册》；属计划外生育的，持婴儿母亲所在镇或镇级以上计划生育部门出具的证明材料。</span><br />\r\n3<span>、婴儿父或母的集体户口簿或家庭户口簿。</span><br />\r\n4<span>、其他相关材料。</span> \r\n</p>\r\n<p class=\"p0\">\r\n	<span> </span> \r\n</p>\r\n<p class=\"p0\">\r\n	5<span>、属跨年度出生未落常住户口的，应持上述材料到派出所申请，报市局审批。</span><br />\r\n6<span>、对出国人员（留学、经商、务工）在国外出生子女的落户问题，应本着简化手续的原则，凭国外出生子女的出生证明，父母及子女回国使用的护照或《中华人民共和国旅行证》，可在其父或母、祖父母、外祖父母或其他抚养人处落户。拟居住地的选择按以下顺序：</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>1</span><span>）其父亲或母亲在国内的，在父亲或母亲处，其父母都在国外的，在其父或母原户口所在地抚养人处。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>2</span><span>）没有上一项条件的，可在其祖父母、外祖父母处。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>3</span><span>）没有上项条件的，可在其他抚养人处。</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>', '2014-04-21 11:33:18', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('3', '12', '父亲为常住户口、母亲为外省市户口，婚后所生婴儿随父落户', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	<strong>办事指南</strong> \r\n</p>\r\n<p class=\"p0\">\r\n	新出生的婴儿可在父亲或母亲常住户口所在地的户口登记机关申报常住户口。并准备下列手续：&nbsp;　<br />\r\n1<span>、医院出具的《出生医学证明》。</span><br />\r\n2<span>、计划生育部门出具的《计划生育服务手册》；属计划外生育的，持婴儿母亲所在镇或镇级以上计划生育部门出具的证明材料。</span><br />\r\n3<span>、婴儿父或母的集体户口簿或家庭户口簿。</span><br />\r\n4<span>、其他相关材料。</span><br />\r\n5<span>、属跨年度出生未落常住户口的，应持上述材料到派出所申请，报市局审批。</span><br />\r\n6<span>、对出国人员（留学、经商、务工）在国外出生子女的落户问题，应本着简化手续的原则，凭国外出生子女的出生证明，父母及子女回国使用的护照或《中华人民共和国旅行证》，可在其父或母、祖父母、外祖父母或其他抚养人处落户。拟居住地的选择按以下顺序：</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>1</span><span>）其父亲或母亲在国内的，在父亲或母亲处，其父母都在国外的，在其父或母原户口所在地抚养人处。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>2</span><span>）没有上一项条件的，可在其祖父母、外祖父母处。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>3</span><span>）没有上项条件的，可在其他抚养人处。</span> \r\n</p>', '2014-04-21 11:34:31', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('4', '12', '父亲为常住户口、母亲为外省市户口，未婚所生婴儿随父落户', '', '', '', '', '<p class=\"p0\">\r\n	<strong>办事指南</strong> \r\n</p>\r\n<p class=\"p0\">\r\n	新出生的婴儿可在父亲或母亲常住户口所在地的户口登记机关申报常住户口。并准备下列手续：&nbsp;　\r\n</p>\r\n<span style=\"line-height:1.5;\">1</span><span style=\"line-height:1.5;\">、医院出具的《出生医学证明》。</span><br />\r\n<span style=\"line-height:1.5;\">2</span><span style=\"line-height:1.5;\">、计划生育部门出具的《计划生育服务手册》；属计划外生育的，持婴儿母亲所在镇或镇级以上计划生育部门出具的证明材料。</span><br />\r\n<span style=\"line-height:1.5;\">3</span><span style=\"line-height:1.5;\">、婴儿父或母的集体户口簿或家庭户口簿。</span><br />\r\n<span style=\"line-height:1.5;\">4</span><span style=\"line-height:1.5;\">、其他相关材料。</span><br />\r\n<span style=\"line-height:1.5;\">5</span><span style=\"line-height:1.5;\">、属跨年度出生未落常住户口的，应持上述材料到派出所申请，报市局审批。</span><br />\r\n<p class=\"p0\">\r\n	6<span>、对出国人员（留学、经商、务工）在国外出生子女的落户问题，应本着简化手续的原则，凭国外出生子女的出生证明，父母及子女回国使用的护照或《中华人民共和国旅行证》，可在其父或母、祖父母、外祖父母或其他抚养人处落户。拟居住地的选择按以下顺序：</span> \r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>1</span><span>）其父亲或母亲在国内的，在父亲或母亲处，其父母都在国外的，在其父或母原户口所在地抚养人处。</span> \r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>2</span><span>）没有上一项条件的，可在其祖父母、外祖父母处。</span> \r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>3</span><span>）没有上项条件的，可在其他抚养人处。</span> \r\n</p>', '2014-04-21 12:08:36', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('5', '12', '父母为本市区县人才中心、单位集体户口、在校研究生，婚后所生婴儿落户', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	<strong>办事指南</strong> \r\n</p>\r\n<p class=\"p0\">\r\n	新出生的婴儿可在父亲或母亲常住户口所在地的户口登记机关申报常住户口。并准备下列手续：&nbsp;　<br />\r\n1<span>、医院出具的《出生医学证明》。</span><br />\r\n2<span>、计划生育部门出具的《计划生育服务手册》；属计划外生育的，持婴儿母亲所在镇或镇级以上计划生育部门出具的证明材料。</span><br />\r\n3<span>、婴儿父或母的集体户口簿或家庭户口簿。</span><br />\r\n4<span>、其他相关材料。</span><br />\r\n5<span>、属跨年度出生未落常住户口的，应持上述材料到派出所申请，报市局审批。</span><br />\r\n6<span>、对出国人员（留学、经商、务工）在国外出生子女的落户问题，应本着简化手续的原则，凭国外出生子女的出生证明，父母及子女回国使用的护照或《中华人民共和国旅行证》，可在其父或母、祖父母、外祖父母或其他抚养人处落户。拟居住地的选择按以下顺序：</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>1</span><span>）其父亲或母亲在国内的，在父亲或母亲处，其父母都在国外的，在其父或母原户口所在地抚养人处。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>2</span><span>）没有上一项条件的，可在其祖父母、外祖父母处。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	<span>（</span><span>3</span><span>）没有上项条件的，可在其他抚养人处。</span> \r\n</p>', '2014-04-21 12:09:21', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('6', '12', '死亡人员户口注销', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	<strong>办事指南</strong>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	户口登记机关\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	《中华人民共和国户口登记条例》第八条和公安部三局关于执行户口登记条例的初步意见第六条的规定\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（<span>1</span><span>）卫生部门、街道、乡镇保健部门开具的死亡证明书或公安部门签发的非正常死亡证明</span><span>;</span><br />\r\n（<span>2</span><span>）死者的居民户口簿和居民身份证。</span> \r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\">\r\n	公民死亡，城市在葬前，农村在一个月以内，由户主、亲属、监护人、邻居持相关证明，向户口登记机关申报死亡登记，注销户口\r\n</p>', '2014-04-21 12:10:37', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('7', '12', '出国定居或移民户口注销', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	<strong>办事指南</strong>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\">\r\n	因入伍、出国、逮捕、劳教、失踪等需注销户口的<span>,</span><span>应持相应的证明</span><span>,</span><span>到其户口所在地派出所办理。</span> \r\n</p>', '2014-04-21 12:11:18', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('8', '12', '被国家征集服兵役人员户口注销', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	<strong>办事指南</strong>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\">\r\n	因入伍、出国、逮捕、劳教、失踪等需注销户口的<span>,</span><span>应持相应的证明</span><span>,</span><span>到其户口所在地派出所办理。</span> \r\n</p>', '2014-04-21 12:13:09', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('9', '12', '本市区县内农业户口婚迁', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	<strong>办事指南</strong>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（<span>1</span><span>）迁入人的居民户口簿、居民身份证及市内户口迁移证</span><span>;</span><br />\r\n（<span>2</span><span>）迁入户的居民户口簿</span><span>;</span><br />\r\n（<span>3</span><span>）新立户的要有房管部门出具的住房证明或房屋产权证明</span><span>;</span><br />\r\n（<span>4</span><span>）迁入人符合申领、换领居民身份证条件的</span><span>,</span><span>每人交本人近期正面免冠一寸光纸黑白大头照片两张</span><span>,</span><span>已满</span><span>16</span><span>周岁</span><span>,</span><span>已领取居民身份证的</span><span>,</span><span>每人交照片一张</span><span>;</span><br />\r\n（<span>5</span><span>）因结婚迁入的要持结婚证</span><span>;</span><br />\r\n（<span>6</span><span>）迁入农村地区的农业人口要有迁入地乡镇政府和村委会同意迁入的证明</span><span>;</span><br />\r\n（<span>7</span><span>）迁入非直系亲属户内的</span><span>,</span><span>应征得迁入地派出所同意后</span><span>,</span><span>再办理户口迁移手续。</span> \r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\">\r\n	办理市内户口迁入<span>,</span><span>应持相关证明证件到其户口迁入地派出所办理</span> \r\n</p>', '2014-04-21 12:13:50', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('10', '12', '公民民族变更', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	<strong>公民民族变更</strong>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	市公安局及各分局户籍科\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	周一至周五：上午<span>9</span><span>：</span><span>00——11</span><span>：</span><span>30</span><span>；下午</span><span>14</span><span>：</span><span>30——17</span><span>：</span><span>00</span> \r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	根据《市民族宗教事务委员会关于印发〈民族成份更改的条件和程序〉的通知》（市民宗发<span>[2001]31</span><span>号）规定：　　</span><span>1</span><span>、未满</span><span>18</span><span>周岁，父母（或养父母）双方民族成份不相同，父母（或养父母）要求其从原依据父或母改为依据另一方的；　　</span><span>2</span><span>、年满</span><span>18</span><span>周岁，未满</span><span>20</span><span>周岁，父母（或养父母）双方的民族成份不相同，本人要求从原依据父或母改为依据另一方的；　　</span><span>3</span><span>、不同民族的公民再婚双方原子女，</span><span>18</span><span>周岁以前（注：已满</span><span>18</span><span>周岁不能变更）经由母和继父、继母和父商定，要求更改为现母和继父、继母和父一方的；　　</span><span>4</span><span>、父母双方的民族同是少数民族，本人的民族成份因特殊原因填为汉族的，现愿意依据父母的。</span> \r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（<span>1</span><span>）书面申请；（</span><span>2</span><span>）未满</span><span>18</span><span>周岁由父母、养父母、继母和父、母和继父写出书面协议；（</span><span>3</span><span>）《户口簿》。</span> \r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	　<span>1</span><span>、由区（县）民族工作部门初审，填写申请表后上报市民宗委；　　</span><span>2</span><span>、市民宗委审核，加盖市民族成份更改专用章上报省民宗委；　　</span><span>3</span><span>、省民宗委同意后发给《证明书》；</span><span>4</span><span>、申请人持省民宗委发给的《证明书》在本人户口所在地公安派出所户籍室办理更改民族成份。</span> \r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	20<span>个工作日内</span> \r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	不收费\r\n</p>', '2014-04-21 12:14:26', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('11', '12', '公民姓名变更', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	公民姓名变更\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	市公安局及各分局户籍科\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	周一至周五：上午<span>9</span><span>：</span><span>00——11</span><span>：</span><span>30</span><span>；下午</span><span>14</span><span>：</span><span>30——17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	根据《中华人民共和国户口登记条例》第十八条和公安部三局关于执行户口登记条例的初步意见第九条的规定，公民申请更改姓名按如下规定办理：<br />\r\n<br />\r\n　　（<span>1</span><span>）凡因户口登记部门工作失误造成公民姓名差错的，由造成差错的派出所出具证明，经现户口登记地派出所所长批准后，给予更正。</span><br />\r\n<br />\r\n　　（<span>2</span><span>）未满十八周岁的公民，要求变更姓名的，由本人或监护人写出书面申请，在校学生由学校出具证明，经派出所所长批准后，给予变更。被收养或被认领的的人，年龄较大的需征得本人同意。</span><br />\r\n<br />\r\n　　（<span>3</span><span>）原冠夫姓的妇女申请去掉夫姓，或称氏改为姓名的，以及僧、道、尼由法名改为俗名的，经派出所所长批准后，给予变更。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	20<span>个工作日内</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	不收费\r\n</p>', '2014-04-21 12:14:58', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('12', '12', '公民出生日期变更', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	公民更正出生日期\r\n</p>\r\n<p class=\"p0\">\r\n	1.<span>本人书面申请；</span><br />\r\n2.<span>原始户籍档案；</span><br />\r\n3.<span>居民身份证编码本；</span><br />\r\n4.<span>机关、事业、企业单位工作人员或离、退休人员，提供第一份人事档案，无工作单位的成年公民，提供学籍档案。</span><br />\r\n已在我市户政部门申请过更正年龄，再次提出更正申请的，需附原始审批档案，因在我市办理户籍业务过程中年龄登记错误，且误差超过半岁的，需附经办民警情况说明。\r\n</p>', '2014-04-21 12:15:26', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('13', '12', '分户、立户', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	分户立户变更\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	户籍科\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	周一至周五：上午<span>9</span><span>：</span><span>00——11</span><span>：</span><span>30</span><span>；下午</span><span>14</span><span>：</span><span>30——17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	分户指公民因生活或居住条件发生变化，由一户分为数户的户口登记。分户的基本条件是实际住房有两个以上自然间，且单独生活。单元楼房的分户仅限于离婚分户，筒子楼的分户按平房分户办理。自建房等违章建筑不予分户。<span>1</span><span>、已在房屋管理部门办理了房契分户手续的；&nbsp;</span><span>2</span><span>、已办理了私房析产、赠予以及继承手续的；</span><span>3</span><span>、经法院判决或调解的离婚当事人或房产纠纷当事人有房屋居住权，且确实在此居住的；</span><span>4</span><span>、平房住户因结婚单独居住，不在一起生活的；</span><span>5</span><span>、夫妻离婚后要求分户或迁出的，如一方当事人不愿交出《居民户口簿》，经派出所动员说服无效后，由派出所按法院判决书或调解书直接办理分户或迁出手续，为迁出人单独打印《居民户口簿》</span><span>,</span><span>加盖迁出章，并在《常住户口登记表》上注明迁出或分户原因和日期。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	1<span>、公房分户。提供分户书面申请、《结婚证》或《离婚判决书》、房屋租赁契约以及房屋承租人同意分户的证明等证件证明；</span><span>2</span><span>、私房分户。提供分户书面申请、法院判决书或公证书、私房房契等证件证明材料；农村地区分户提供村委会同意分户证明。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	提出申请<span>——</span><span>受理</span><span>——</span><span>审核</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	20<span>个工作日内</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	不收费\r\n</p>', '2014-04-21 12:15:53', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('14', '12', '集体户口设立', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	集体户口设立\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	落户基本条件<br />\r\n已落实非国有就业单位和暂未落实就业单位的本科（含本科）以上学历，且获取学士（含学士）以上学位的高校毕业生。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	落户所需材料<br />\r\n单位代理<br />\r\n1<span>、本人的毕业证、学士学位证、毕业生就业协议书、就业报到证、户口迁移证、身份证（原件及复印件一份）、一寸免冠黑白照片一张；</span><br />\r\n2<span>、接收单位证明信；</span><br />\r\n3<span>、本人与单位签订的聘用合同；</span><br />\r\n4<span>、实际居住地派出所和接受单位所属派出所出具的不具备落户条件证明信；</span><br />\r\n5<span>、签订《人事代理协议书》。</span><br />\r\n<br />\r\n个人代理<br />\r\n1<span>、本人的毕业证、学士学位证、毕业生就业协议书、就业报到证、户口迁移证、身份证（原件及复印件各一份）、一寸免冠黑白照片一张；</span><br />\r\n2<span>、本人与人才交流服务中心签订的《委托人事代理协议书》。</span><br />\r\n3<span>、签订《人事代理协议书》。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\">\r\n	1<span>、符合落户条件的高校毕业生需完备相关手续向人才交流中心提出申请；</span><br />\r\n2<span>、人才交流中心负责考察审核相关手续及证件，同意后填写《入户审批表》并签属意见，加盖公章后，装订粘贴</span><span>“</span><span>户口审批材料</span><span>”</span><span>卷皮，上报公安局审批；</span><br />\r\n3<span>、公安局审核批准后，分局、派出所依据审批件办理准迁落户手续，市人才交流服务中心按有关规定建立</span><span>“</span><span>集体户口</span><span>”</span><span>相关薄、卡。</span>\r\n</p>', '2014-04-21 12:16:29', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('15', '12', '公民居民申领、换领第二代身份证', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	公民居民申领、换领第二代身份证\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	市公安局\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	周一至周五：上午<span>9</span><span>：</span><span>00——11</span><span>：</span><span>30</span><span>；下午</span><span>14</span><span>：</span><span>30——17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	全市各公安派出所户籍室\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	《中华人民共和国居民身份证法》《中华人民共和国临时居民身份证管理办法》\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	年满十六周岁的公民、持第一代居民身份证首次申领第二代居民身份证的公民可携带户口簿到常住户口所在地的公安机关申请领取第二代居民身份证\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	1<span>、第一代居民身份证</span><span>2</span><span>、户口簿</span><span>3</span><span>、《居民身份证申领登记表》</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	年满十六周岁的公民、持第一代居民身份证首次申领第二代居民身份证的公民可携带户口簿到常住户口所在地的公安机关申请领取第二代居民身份证，填写《居民身份证申领登记表》，由公安机关采集人像，合成人像信息后传至上一级公安机关；未满十六周岁的公民，若本人自愿申领第二代居民身份证的，可由监护人代为申请领取。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	公安机关应当自公民提交《居民身份证申领登记表》之日起六十日内发放第二代居民身份证；交通不便的地区，办理时间可以适当延长，但延长时间不得超过三十日。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	公民首次申领第二代居民身份证应当交纳制证工本费，标准为<span>20</span><span>元</span><span>/</span><span>证</span>。\r\n</p>', '2014-04-21 12:17:02', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('16', '12', '办理丢失补领、损坏换领《居民身份证》', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办理丢失补领、损坏换领《居民身份证》\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	市公安局\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	周一至周五：上午<span>9</span><span>：</span><span>00——11</span><span>：</span><span>30</span><span>；下午</span><span>14</span><span>：</span><span>30——17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	全市各公安派出所户籍室\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	《中华人民共和国居民身份证法》《中华人民共和国临时居民身份证管理办法》\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	居民身份证有效期满、公民信息主项变更或者证件严重损坏不能辨认的，应当申请换领新证；居民身份证登记项目出现错误的，公安机关应当及时更正，换发新证；领取新证时，必须交回原证。居民身份证丢失的，应当申请补领；未满十六周岁公民的居民身份证有前款情形的，可以申请换领、换发或者补领新证。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	申请表、原证件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	直接到所属派出所办理\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	公安机关应当自公民提交申请之日起六十日内发放第二代居民身份证；交通不便的地区，办理时间可以适当延长，但延长时间不得超过三十日。居民可到市公安局身份证科、派出所查询证件办理情况。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	居民身份证有效期满，公民换领第二代居民身份证交纳<span>20</span><span>元</span><span>/</span><span>证工本费；公民信息主项变更、证件严重损坏不能辨认需换领新证的以及证件丢失需补领新证的，交费标准为</span><span>40</span><span>元</span><span>/</span><span>证；由于公安机关失误导致居民身份证登记项目出现错误的，公安机关应当及时予以更正，并免费换发新证。</span>\r\n</p>', '2014-04-21 12:17:36', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('17', '12', '公民临时居民身份证办理', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	临时居民身份证办理\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	市公安局\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	周一至周五：上午<span>9</span><span>：</span><span>00——11</span><span>：</span><span>30</span><span>；下午</span><span>14</span><span>：</span><span>30——17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	全市各公安派出所户籍室\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	电话\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	见备注\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	《中华人民共和国居民身份证法》《中华人民共和国临时居民身份证管理办法》\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	公民在申请领取、换领、补领第二代居民身份证后，证件发放前如急需使用身份证的，可以持户口所在地公安派出所开具的办理临时居民身份证报告单、户口簿、一寸黑白免冠近照到户口所在地公安分、县局申请领取新版的临时居民身份证。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	户口所在地公安派出所开具的办理临时居民身份证报告单、户口簿\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	公民在申请领取、换领、补领第二代居民身份证后，证件发放前如急需使用身份证的，可以持户口所在地公安派出所开具的办理临时居民身份证报告单、户口簿、一寸黑白免冠近照到户口所在地公安分、县局申请领取新版的临时居民身份证。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	三个工作日\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	公民申请领取临时居民身份证需交纳工本费，标准为<span>10</span><span>元</span><span>/</span><span>证</span>。\r\n</p>', '2014-04-21 12:18:09', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('18', '12', '办理《暂住证》', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办理《暂住证》\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\">\r\n	暂住证是公民离开常住户口所在地的市区或者乡、镇，在其他地区暂住的证明。<br />\r\n(<span>一</span><span>)</span><span>离开常住户口所在地，拟在暂住地居住一个月以上年满</span><span>16</span><span>周岁的下列人员，应主动到暂住地辖区公安派出所或指定地点申办暂住证：</span><br />\r\n1<span>．机关、团体、企业、事业单位的雇用人员；</span><br />\r\n2<span>．从事工业、手工业、运输业的人员；</span><br />\r\n3<span>．从事商业、饮食业、修理业、服务业的人员；</span><br />\r\n4<span>．从事种植业、养殖业的人员；</span><br />\r\n5<span>．其他需要申领暂住证的人员；</span><br />\r\n<br />\r\n(<span>二</span><span>)</span><span>申领暂住证应当持暂住人的居民身份证，及近期正面免冠</span><span>1</span><span>寸照片</span><span>3</span><span>张，并按以下规定办理：</span><br />\r\n1<span>．暂住在居民家中的，由本人携带户主的户口簿到暂住地公安派出所或者其委托的管理站申领暂住证；</span><br />\r\n2<span>．暂住在机关、团体、部队、企业、事业单位内部或者工地、工场的，由单位或者雇主将暂住人员登记造册，到暂住地公安派出所申领暂住证；</span><br />\r\n3<span>．暂住在出租房屋的，由房主携带租赁合同，带领其到暂住地公安派出所申领暂住证。</span><br />\r\n(<span>三</span><span>)</span><span>暂住人在暂住地办理劳务许可证，工商营业执照等证照时应当出示居民身份证和暂住证。</span><br />\r\n(<span>四</span><span>)</span><span>暂住人遇有查验暂住证时，应当主动出示，不得拒绝；离开暂住地时，应当到当地公安派出所办理注销暂住手续，交回暂住证。</span><br />\r\n(<span>五</span><span>)</span><span>暂住证的合法权益受法律保护，除公安机关依照规定可以收缴或者吊销暂住证以外，任何单位和个人不得扣押公民的暂住证和其他身份证明。</span><br />\r\n(<span>六</span><span>)</span><span>暂住人口管理规定</span><br />\r\n1<span>．不按规定申报暂住户口登记、申领暂住证，经公安机关通知拒不改正的，对直接责任人或者暂住人处以</span><span>50</span><span>元以下罚款或者警告；</span><br />\r\n2<span>．骗取、冒领、转借、转让、买卖、伪造、变造暂住证的，收缴暂住证，处以</span><span>500</span><span>元以下罚款或者警告，行为人有非法所得的，除没收非法所得外，处以非法所得</span><span>1</span><span>至</span><span>3</span><span>倍的罚款；</span><br />\r\n3<span>．雇用无暂住证人员或者扣押暂住证和其他身份证件的，对法定代表人或者直接责任人处以</span><span>1000</span><span>元以下罚款或者警告。</span>\r\n</p>', '2014-04-21 12:18:54', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('19', '12', '办理《暂住证》变更与延期', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办理《暂住证》变更与延期\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\">\r\n	在《暂行证》的效期间，暂住人需要继续暂住的，须在期满前三日内到原登记机关办理延期手续或换领新证。\r\n</p>', '2014-04-21 12:19:18', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('20', '12', '居留许可证办理', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	居留许可证办理\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	可以申请办理居留许可人员：<br />\r\n（一）持驻外使馆、领馆和香港、澳门公署签发的<span>Z</span><span>、</span><span>X</span><span>、</span><span>J-1</span><span>字签证的外国人。</span><br />\r\n（二）根据互免签证协议免办签证来华，需超过协议规定的免签停留期的外国人，但不包括各国驻外使馆或者领馆、各国际组织驻华机构代表机构人员的随任子女、父母、岳父母、同居者、经外交部礼宾司同意的非直系亲属以及执行联合国援华项目或者根据两国间协议来华长期工作的联合国官员、政府公务员及其随任眷属以及其他因公来华人员。<br />\r\n（三）持<span>L</span><span>、</span><span>F</span><span>、</span><span>J-2</span><span>签证入境，持有相关材料申请居留许可的外国人。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）有效国际旅行证件原件及复印件，包括外交、公务（官员、特别）、因公普通、普通护照等证件。<br />\r\n（二）填写《外国人签证、居留许可申请表》。<br />\r\n（三）一张近期二寸半身正面免冠照片。<br />\r\n（四）临时住宿登记证明原件和复印件（饭店住宿证明或派出所临时户口凭单）<br />\r\n（五）首次申请<span>1</span><span>年以上有效期的居留许可，须提供境外人员健康证明（</span><span>18</span><span>周岁以下未成年人免办），健康证明须由云南省出入境检验检疫局出具。</span><br />\r\n(<span>六</span><span>)</span><span>与申请居留许可相关的证明材料。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	外国人入境，应向中国的外交代表机关、领事机关或者外交部授权的其他驻外机关申请办理签证。在特殊情况下，外国人也可以向中国政府主管机关指定口岸的签证机关申请办理签证。<br />\r\n外国人入境后应在签证有效期内离开中国。如果欲延长在华停留期，应在签证期满前向当地公安机关出入境管理部门申请签证，经批准后方可继续在中国停留。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\">\r\n	公安机关出入境管理部门审批同意后，受理申请后的<span>5</span><span>个工作日内，外国人得到相应的签证或者居留许可。</span>\r\n</p>', '2014-04-21 12:19:58', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('21', '12', '首次申请', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	首次申请\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	外国人申请在中国永久居留应当遵守中国法律，身体健康，无犯罪记录，并符合下列条件之一：<br />\r\n(<span>一</span><span>)</span><span>在中国直接投资、连续三年投资情况稳定且纳税记录良好的；</span><br />\r\n其在中国投资实际缴付的注册资本金应当符合下列条件之一：<br />\r\n1<span>、在国家颁布的《外商投资产业指导目录》鼓励类产业投资合计</span><span>50</span><span>万美元以上；</span><br />\r\n2<span>、在我省国家扶贫开发工作重点县投资合计</span><span>50</span><span>万美元以上；</span><br />\r\n3<span>、在中国投资合计</span><span>200</span><span>万美元以上。</span><br />\r\n（二）在中国担任副总经理、副厂长等职务以上或者具有副教授、副研究员等副高级职称以上以及享受同等待遇，已连续任职满四年、四年内在中国居留累计不少于三年且纳税记录良好的；<br />\r\n其任职单位应当符合下列条件之一：<br />\r\n1<span>、国务院各部门或者省级人民政府所属的机构；</span><br />\r\n2<span>、重点高等学校；</span><br />\r\n3<span>、执行国家重点工程项目或者重大科研项目的企业、事业单位；</span><br />\r\n4<span>、高新技术企业、鼓励类外商投资企业、外商投资先进技术企业或者外商投资产品出口企业。</span><br />\r\n（三）对中国有重大、突出贡献以及国家特别需要的；<br />\r\n（四）本款第一项、第二项、第三项所指人员的配偶及其未满<span>18</span><span>周岁的未婚子女；</span><br />\r\n（五）中国公民或者在中国获得永久居留资格的外国人的配偶，姻关系存续满五年、已在中国连续居留满五年、每年在中国居留不少于九个月且有稳定生活保障和住所的；<br />\r\n（六）未满<span>18</span><span>周岁未婚子女投靠父母的；</span><br />\r\n（七）在境外无直系亲属，投靠境内直系亲属，且年满六十周岁、已在中国连续居留满五年、每年在中国居留不少于九个月并有稳定生活保障和住所的。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	外国人申请在中国永久居留，需如实填写《外国人在中国永久居留申请表》，并提交下列材料：<br />\r\n(<span>一</span><span>)</span><span>有效的外国护照或者能够代替护照的证件；</span><br />\r\n(<span>二</span><span>)</span><span>中国政府指定的卫生检疫部门出具的或者经中国驻外使、领馆认证的外国卫生医疗机构签发的健康证明书；</span><br />\r\n(<span>三</span><span>)</span><span>经中国驻外使、领馆认证的国外无犯罪记录证明；</span><br />\r\n(<span>四</span><span>)</span><span>四张二英寸近期正面免冠彩色照片；</span><br />\r\n(<span>五</span><span>)</span><span>《外国人在中国永久居留审批管理办法》规定的其他有关材料。</span><br />\r\n1<span>、在中国直接投资、连续三年投资情况稳定且纳税记录良好的外国人申请时，还需提交外商投资企业批准证明书、登记证明以及联合年检证明、验资报告、个人完税证明。鼓励类外商投资企业还应当提交国家鼓励发展的外商投资项目确认书。</span><br />\r\n2<span>、在中国担任副总经理、副厂长等职务以上或者具有副教授、副研究员等副高级职称以上以及享受同等待遇的外国人申请时，还需提交下列材料：</span><br />\r\n（<span>1</span><span>）任职单位出具的本人职务或者职称证明；</span><br />\r\n（<span>2</span><span>）《外国专家证》或者《外国人就业证》；</span><br />\r\n（<span>3</span><span>）任职单位的登记证明以及年检证明、个人完税证明；任职单位是外商投资企业的，还需提交外商投资企业批准证书和联合年检证明；</span><br />\r\n（<span>4</span><span>）在执行国家重点工程项目或者重大科研项目的企业、事业单位中任职的人员需提交省、部级政府主管部门出具的项目证明文件；在高新技术企业中任职的人员需提交高新技术企业证书；在鼓励类外商投资企业、外商投资先进技术企业或者外商投资产品出口企业中任职的人员需提交国家鼓励发展的外商投资项目确认书或者外商投资先进技术企业确认书或者外商投资产品出口企业确认书。</span><br />\r\n3<span>、对中国有重大、突出贡献以及国家特别需要的外国人申请时，还需提交中国政府主管部门出具的推荐函及有关证明。</span><br />\r\n4<span>、上述所指人员的配偶及其未满</span><span>18</span><span>周岁的未婚子女申请时，属于配偶的，还需提交婚姻证明；属于未满</span><span>18</span><span>周岁未婚子女的，还需提交本人出生证明或者亲子关系证明；属于收养关系的，还需提交收养证明。外国有关机构出具的上述证明需经中国驻该国使、领馆认证。</span><br />\r\n5<span>、中国公民或者在中国获得永久居留资格的外国人的配偶申请时，还需提交其中国配偶的常住户籍证明或者其外国籍配偶的《外国人永久居留证》、婚姻证明、经公证的生活保障证明及房屋租赁或者产权证明。外国有关机构出具的上述证明需经中国驻该国使、领馆认证。</span><br />\r\n6<span>、未满</span><span>18</span><span>周岁未婚子女投靠父母的，还需提交其中国籍父母的常住户籍证明或者外国籍父母的《永久居留证》、本人出生证明或者亲子关系证明；属于收养关系的，还需提交收养证明。外国有关机构出具的上述证明需经中国驻该国使、领馆认证。</span><br />\r\n7<span>、在境外无直系亲属，投靠境内直系亲属，且年满六十周岁的，还需提交被投靠的中国公民常住户籍证明或者外国人的《永久居留证》、经公证的亲属关系证明以及投靠人国外无直系亲属关系证明、经公证的投靠人经济来源证明或者被投靠人经济担保证明、经公证的投靠人或者被投靠人的房屋租赁或者产权证明。外国有关机构出具的上述证明需经中国驻该国使、领馆认证。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\">\r\n	外国人申请在中国永久居留，由本人或者未满<span>18</span><span>周岁未婚子女的父母或者被委托人向其在我省的主要投资地或者长期居留地的州、市公安局出入境管理部门提出申请。</span>\r\n</p>', '2014-04-21 12:20:44', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('22', '12', '换、补发申请', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	换，补发申请\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\">\r\n	持有《外国人永久居留证》的外国人应当在证件有效期满前一个月以内申请换发；证件内容变更的，应当在情况变更后一个月以内申请换发；证件损坏或者遗失的，应当及时申请换发或者补发。\r\n</p>', '2014-04-21 12:21:16', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('23', '12', '委托申请', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	委托申请\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\">\r\n	由被委托人代为申请的，需提交申请人出具的委托书。申请人在国外出具的委托书，需经中国驻该国使、领馆认证。\r\n</p>', '2014-04-21 12:21:39', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('24', '12', '台湾居民申请大陆定居', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	台湾居民申请大陆定居\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	台湾居民来大陆须持有效的《台湾居民来往大陆通行证》。该证件为<span>5</span><span>年有效和一次有效两种。签注分为来往大陆签注和居留签注两类。</span><br />\r\n（一）书面申请。委托亲属代办的，还须提交委托书。<br />\r\n（二）填写完整、准确、真实的《台湾居民来大陆定居申请表》一式三份。<br />\r\n（三）二寸正面免冠近照二张（规格为<span>48×33mm</span><span>）。</span><br />\r\n（四）交验有效的《台湾居民来往大陆通行证》或其他旅行证件，并提交复印件。<br />\r\n（五）交验有效的台湾居民身份证，并提交复印件，无原件的，需提交经台湾公证部门公证的台湾居民身份证件（正、反面）和复印件。<br />\r\n（六）提交由大陆出入境检疫部门出具或确认的<span>6</span><span>个月以上有效的身体健康证明。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\">\r\n	（一）在台孤身一人，无人赡养，且在大陆拟定居地有父母、配偶（此种情形须符合下述第二项的规定）、子女等直系亲属，该亲属有能力赡养并保证赡养，本人的生活费用及住房等能够自理。<br />\r\n（二）与大陆居民结婚<span>3</span><span>年以上（含</span><span>3</span><span>年）的台湾居民及其未成年子女。</span><br />\r\n（三）在滇投资经济效益好或投资金额在<span>80</span><span>万美元（实际）投资者及其配偶、未成年子女。</span><br />\r\n（四）国家急需的科技、教育、文化、医学、农业等领域的人才及其配偶、未成年子女。\r\n</p>', '2014-04-21 12:22:49', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('25', '12', '台湾居民申请签注', '', '', '', '', '<p class=\"p0\">\r\n	台湾居民申请签注或一次有效台胞证\r\n</p>\r\n<p class=\"p0\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\">\r\n	台湾居民来大陆须持有效的《台湾居民来往大陆通行证》。该证件为<span>5</span><span>年有效和一次有效两种。签注分为来往大陆签注和居留签注两类。</span><br />\r\n（一）持有效台胞证的，应提交其台胞证；未持有效台胞证或需补发台胞证的，应另行提交本人近期正面彩色免冠照片一张，未持有效台胞证的，还需交验本人台湾居民身份证，并提交复印件。<br />\r\n（二）填写完整并贴有本人近期正面免冠彩色照片（规格：<span>33mmX48mm</span><span>）的《台湾居民往来大陆通行证、签注申请》。</span><br />\r\n（三）首次申请居留签注的，提交出入境检验、检疫部门或者公安机关认可的其他卫生医疗机构出具的健康证明。<br />\r\n（四）交验与申请有关的证明材料原件，并提交复印件。<br />\r\n（五）因遗失、被盗原因申请补发台胞证的，应提交刊登作废声明的报纸。\r\n</p>', '2014-04-21 12:23:21', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('26', '12', '港澳居民内地定居', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	港澳居民内地定居\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	云南省人民政府侨务办公室&nbsp;国内处\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	电话\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	0871-63331905\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	要求来我省定居的港澳同胞，须向香港中国旅行社或澳门中国旅行社提出申请，报省侨务办公室商有关部门后予以审批。获准定居的，由省公安厅出具证明，当地公安部门凭有关证明办理落户手续。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\">\r\n	申请人把须交到省侨办的材料提交完备后，省侨办国内处于<span>5-10</span><span>个工作日内转交到相关单位办理。</span>\r\n</p>', '2014-04-21 12:23:48', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('27', '12', '港澳居民内地申报户口登记', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	港澳居民内地申报户口登记\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\">\r\n	港澳居民回内地须持《港澳同胞回乡证》或《港澳居民来往内地通行证》。此证由香港、澳门中国旅行社受理申请，广东省公安厅签发。<br />\r\n在宾馆、饭店、旅店、招持所、学校等企事业单位或机关、团体及其它机构内住宿的，应填写临时住宿登记表；住亲友家的，由本人或亲友在<span>24</span><span>小时内（农村</span><span>72</span><span>小时）到当地公安派出所或户籍办公室办理暂住登记。</span>\r\n</p>', '2014-04-21 12:25:01', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('28', '13', '初次申领驾照(本地人)', '', '', '', '', '<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶证核发\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00~17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	电话\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	7267863\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶证核发\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	（一）《道路交通安全法》第十九条；<br />\r\n（二）《道路交通安全法实施条例》第十九条至二十八条；<br />\r\n（三）《机动车驾驶证申领和使用规定》第十一条至三十四条；<br />\r\n（四）《机动车驾驶证业务工作规范》第四条至第十一条。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	（一）机动车驾驶证申请人申领驾驶证必须符合规定的申领年龄、身体条件。初次申领机动车驾驶证的，可以申请准驾车型为城市公交车、大型货车、小型汽车、小型自动挡汽车、低速载货汽车、三轮汽车、普通三轮摩托车、普通二轮摩托车、轻便摩托车、轮式自行机械车、无轨电车、有轨电车的机动车驾驶证。（二）在暂住地初次申领机动车驾驶证的，可以申请准驾车型为小型汽车、小型自动挡汽车、低速载货汽车、三轮汽车的机动车驾驶证。（三）在户籍地居住的，应当在户籍地提出申请；在暂住地居住的，可以在暂住地提出申请。（四）年龄条件：<span>1</span><span>、申请小型汽车、小型自动挡汽车、轻便摩托车准驾车型的，应当在</span><span>18</span><span>周岁以上，</span><span>70</span><span>周岁以下；</span><span>2</span><span>、申请低速载货汽车、三轮汽车、普通三轮摩托车、普通二轮摩托车或者轮式自行机械车准驾车型的，应当在</span><span>18</span><span>周岁以上，</span><span>60</span><span>周岁以下；&nbsp;</span><span>3</span><span>、申请城市公交车、中型客车、大型货车、无轨电车或者有轨电车准驾车型的，应当在</span><span>21</span><span>周岁以上，</span><span>50</span><span>周岁以下；&nbsp;</span><span>4</span><span>、申请牵引车准驾车型的，应当在</span><span>24</span><span>周岁以上，</span><span>50</span><span>周岁以下；</span><span>5</span><span>、申请大型客车准驾车型的，应当在</span><span>26</span><span>周岁以上，</span><span>50</span><span>周岁以下。（五）身体条件：</span><span>1</span><span>、身高：申请大型客车、牵引车、城市公交车、大型货车、无轨电车准驾车型的，身高为</span><span>155</span><span>厘米以上。申请中型客车准驾车型的，身高为</span><span>150</span><span>厘米以上；</span><span>2</span><span>、视力：申请大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车或者有轨电车准驾车型的，两眼裸视力或者矫正视力达到对数视力表</span><span>5.0</span><span>以上。申请其他准驾车型的，两眼裸视力或者矫正视力达到对数视力表</span><span>4.9</span><span>以上；</span><span>3</span><span>、辨色力：无红绿色盲；</span><span>4</span><span>、听力：两耳分别距音叉</span><span>50</span><span>厘米能辨别声源方向；</span><span>5</span><span>、上肢：双手拇指健全，每只手其他手指必须有三指健全，肢体和手指运动功能正常；</span><span>6</span><span>、下肢：运动功能正常。申请驾驶手动挡汽车，下肢不等长度不得大于</span><span>5</span><span>厘米。申请驾驶自动挡汽车，右下肢应当健全；</span><span>7</span><span>、躯干、颈部：无运动功能障碍。</span><span>(</span><span>六</span><span>)</span><span>有下列情形之一的，不得申请机动车驾驶证</span><span>:1.</span><span>有器质性心脏病、癫痫病、美尼尔氏症、眩晕症、癔病、震颤麻痹、精神病、痴呆以及影响肢体活动的神经系统疾病等妨碍安全驾驶疾病的；</span><span>2.</span><span>吸食、注射毒品、长期服用依赖性精神药品成瘾尚未戒除的；</span><span>3.</span><span>吊销机动车驾驶证未满二年的；</span><span>4.</span><span>造成交通事故后逃逸被吊销机动车驾驶证的；　　</span><span>5.</span><span>驾驶许可依法被撤销未满三年的；</span><span>6.</span><span>法律、行政法规规定其他情形的。</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	（一）《机动车驾驶证申请表》（代理人申请办理机动车驾驶证业务时，应当提交机动车驾驶人与代理人共同签字的《机动车驾驶证申请表》）；（二）申请人及代理人身份证明原件及复印件；（三）县级或者部队团级以上医疗机构出具的有关身体条件证明；（四）驾驶人近期免冠、白色背景、头部占长度的三分之二的彩色正面照（近视者须戴眼镜）<span>4</span><span>张；（五）经驾校培训的，还需提交驾校出具的培训记录。</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	审核材料<span>→</span><span>预约考试</span><span>→</span><span>科目一考试合格后核发《准考证明》</span><span>→</span><span>科目二、三考试</span><span>→</span><span>考试合格后核发驾驶证</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	审核材料<span>→</span><span>预约考试</span><span>→</span><span>科目一考试合格后核发《准考证明》</span><span>→</span><span>科目二、三考试</span><span>→</span><span>考试合格后核发驾驶证</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	执行国务院价格主管部门核定的收费标准，依法收取机动车牌证工本费。法律依据：《道路交通安全法》第八十一条。\r\n</p>', '2014-04-21 14:00:39', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('29', '13', '初次申领驾照(外地人)', '', '', '', '', '<p class=\"p0\">\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		机动车驾驶证核发\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		受理机构\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		昆明市公安局车辆管理所及外设便民服务点\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		受理时间\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		工作日<span>9</span><span>：</span><span>00~17</span><span>：</span><span>00</span>\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		受理地点\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		昆明市公安局车辆管理所及外设便民服务点\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		电话\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		7267863\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		服务内容概述\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		机动车驾驶证核发\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		政策法规依据\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		（一）《道路交通安全法》第十九条；<br />\r\n（二）《道路交通安全法实施条例》第十九条至二十八条；<br />\r\n（三）《机动车驾驶证申领和使用规定》第十一条至三十四条；<br />\r\n（四）《机动车驾驶证业务工作规范》第四条至第十一条。\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		事项申办条件\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		（一）机动车驾驶证申请人申领驾驶证必须符合规定的申领年龄、身体条件。初次申领机动车驾驶证的，可以申请准驾车型为城市公交车、大型货车、小型汽车、小型自动挡汽车、低速载货汽车、三轮汽车、普通三轮摩托车、普通二轮摩托车、轻便摩托车、轮式自行机械车、无轨电车、有轨电车的机动车驾驶证。（二）在暂住地初次申领机动车驾驶证的，可以申请准驾车型为小型汽车、小型自动挡汽车、低速载货汽车、三轮汽车的机动车驾驶证。（三）在户籍地居住的，应当在户籍地提出申请；在暂住地居住的，可以在暂住地提出申请。（四）年龄条件：<span>1</span><span>、申请小型汽车、小型自动挡汽车、轻便摩托车准驾车型的，应当在</span><span>18</span><span>周岁以上，</span><span>70</span><span>周岁以下；</span><span>2</span><span>、申请低速载货汽车、三轮汽车、普通三轮摩托车、普通二轮摩托车或者轮式自行机械车准驾车型的，应当在</span><span>18</span><span>周岁以上，</span><span>60</span><span>周岁以下；&nbsp;</span><span>3</span><span>、申请城市公交车、中型客车、大型货车、无轨电车或者有轨电车准驾车型的，应当在</span><span>21</span><span>周岁以上，</span><span>50</span><span>周岁以下；&nbsp;</span><span>4</span><span>、申请牵引车准驾车型的，应当在</span><span>24</span><span>周岁以上，</span><span>50</span><span>周岁以下；</span><span>5</span><span>、申请大型客车准驾车型的，应当在</span><span>26</span><span>周岁以上，</span><span>50</span><span>周岁以下。（五）身体条件：</span><span>1</span><span>、身高：申请大型客车、牵引车、城市公交车、大型货车、无轨电车准驾车型的，身高为</span><span>155</span><span>厘米以上。申请中型客车准驾车型的，身高为</span><span>150</span><span>厘米以上；</span><span>2</span><span>、视力：申请大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车或者有轨电车准驾车型的，两眼裸视力或者矫正视力达到对数视力表</span><span>5.0</span><span>以上。申请其他准驾车型的，两眼裸视力或者矫正视力达到对数视力表</span><span>4.9</span><span>以上；</span><span>3</span><span>、辨色力：无红绿色盲；</span><span>4</span><span>、听力：两耳分别距音叉</span><span>50</span><span>厘米能辨别声源方向；</span><span>5</span><span>、上肢：双手拇指健全，每只手其他手指必须有三指健全，肢体和手指运动功能正常；</span><span>6</span><span>、下肢：运动功能正常。申请驾驶手动挡汽车，下肢不等长度不得大于</span><span>5</span><span>厘米。申请驾驶自动挡汽车，右下肢应当健全；</span><span>7</span><span>、躯干、颈部：无运动功能障碍。</span><span>(</span><span>六</span><span>)</span><span>有下列情形之一的，不得申请机动车驾驶证</span><span>:1.</span><span>有器质性心脏病、癫痫病、美尼尔氏症、眩晕症、癔病、震颤麻痹、精神病、痴呆以及影响肢体活动的神经系统疾病等妨碍安全驾驶疾病的；</span><span>2.</span><span>吸食、注射毒品、长期服用依赖性精神药品成瘾尚未戒除的；</span><span>3.</span><span>吊销机动车驾驶证未满二年的；</span><span>4.</span><span>造成交通事故后逃逸被吊销机动车驾驶证的；　　</span><span>5.</span><span>驾驶许可依法被撤销未满三年的；</span><span>6.</span><span>法律、行政法规规定其他情形的。</span>\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		需要提交的材料\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		（一）《机动车驾驶证申请表》（代理人申请办理机动车驾驶证业务时，应当提交机动车驾驶人与代理人共同签字的《机动车驾驶证申请表》）；（二）申请人及代理人身份证明原件及复印件；（三）县级或者部队团级以上医疗机构出具的有关身体条件证明；（四）驾驶人近期免冠、白色背景、头部占长度的三分之二的彩色正面照（近视者须戴眼镜）<span>4</span><span>张；（五）经驾校培训的，还需提交驾校出具的培训记录。</span>\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		办事处理流程\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		审核材料<span>→</span><span>预约考试</span><span>→</span><span>科目一考试合格后核发《准考证明》</span><span>→</span><span>科目二、三考试</span><span>→</span><span>考试合格后核发驾驶证</span>\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		服务办理时限\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		审核材料<span>→</span><span>预约考试</span><span>→</span><span>科目一考试合格后核发《准考证明》</span><span>→</span><span>科目二、三考试</span><span>→</span><span>考试合格后核发驾驶证</span>\r\n	</p>\r\n	<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n		收费标准\r\n	</p>\r\n	<p class=\"p0\">\r\n		执行国务院价格主管部门核定的收费标准，依法收取机动车牌证工本费。法律依据：《道路交通安全法》第八十一条。\r\n	</p>\r\n</p>', '2014-04-21 14:02:22', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('30', '13', '持军队、武装警察部队驾驶证申请机动车驾驶证', '', '', '', '', '<p class=\"p0\" style=\"text-indent:20.6000pt;\">\r\n	一、法律法规依据：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（一）《道路交通安全法》第十九条；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（二）《道路交通安全法实施条例》第十九条至二十八条；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（三）《机动车驾驶证申领和使用规定》；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（四）《机动车驾驶证业务工作规范》。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:20.6000pt;\">\r\n	二、办理条件及注意事项：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	持军队、武装警察部队机动车驾驶证的人申请大型客车、牵引车、中型客车、大型货车准驾车型机动车驾驶证的，应当考试科目一和科目三；申请其他准驾车型机动车驾驶证的，免予考试核发机动车驾驶证。持军队、武装警察部队机动车驾驶证申请机动车驾驶证的，应当自受理之日起三年内完成科目考试。属于复员、转业、退伍的，应当收回军队、武装警察部队机动车驾驶证。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:20.6000pt;\">\r\n	三、提供材料：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:20.6000pt;\">\r\n	（一）《机动车驾驶证申请表》；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（二）申请人的身份证明及复印件。现役军人（含武警）的身份证明，是《居民身份证》或者《临时居民身份证》。在未办理《居民身份证》前，是军队有关部门核发的《军官证》、《文职干部证》、《士兵证》、《离休证》、《退休证》等有效军人身份证件，以及其所在的团级以上单位出具的本人住所证明；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（三）军队、武装警察部队机动车驾驶证及复印件；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（四）县级或者部队团级以上医疗机构出具的有关身体条件的证明；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（五）属于复员、转业、退伍的人员，还应当提交军队、武装警察部队核发的复员、转业、退伍证明及复印件；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（六）驾驶人近期免冠、白色背景、头部占长度的三分之二的彩色正面照4张。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:20.6000pt;\">\r\n	四、办理程序：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	审核材料→预约考试→考试合格后符合大型客车、牵引车、中型客车、大型货车申请条件的，应当接受不少于半小时的交通安全文明驾驶常识和交通事故案例警示教育，并参加领证宣誓仪式核发驾驶证。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	五、办理时限：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	考试合格后在申请人参加领证宣誓仪式的当日核发机动车驾驶证。申请其它准驾车型的，直接核发机动车驾驶证。\r\n</p>', '2014-04-21 14:03:11', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('31', '13', '机动车驾驶证换证', '', '', '', '', '<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	一、法律法规依据：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（一）《道路交通安全法》第十九条；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（二）《道路交通安全法实施条例》第二十六条；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（三）《机动车驾驶证申领和使用规定》；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（四）《机动车驾驶证业务工作规范》。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	二、办理条件及注意事项：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:20.8pt;\">\r\n	（一）机动车驾驶人在机动车驾驶证的六年有效期内，每个记分周期均未记满12分的，换发十年有效期的机动车驾驶证；在机动车驾驶证的十年有效期内，每个记分周期均未记满12分的，换发长期有效的机动车驾驶证；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（二）机动车驾驶人应当在驾驶证有效期满前九十日内，向机动车驾驶证核发地车辆管理所申请换证；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（三）机动车驾驶人户籍迁出原车辆管理所管辖区的，应当向迁入地车辆管理所申请换证；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（四）机动车驾驶人在核发地车辆管理所管辖区以外居住的，可以向居住地车辆管理所申请换证；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（五）年龄在60周岁以上的，不得驾驶大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车和有轨电车；持有大型客车、牵引车、城市公交车、中型客车、大型货车驾驶证的，应当到机动车驾驶证核发地车辆管理所换领准驾车型为小型汽车或者小型自动挡汽车的机动车驾驶证；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（六）年龄在70周岁以上的，不得驾驶低速载货汽车、三轮汽车、普通三轮摩托车、普通二轮摩托车和轮式自行机械车；持有普通三轮摩托车、普通二轮摩托车驾驶证的，应当到机动车驾驶证核发地车辆管理所换领准驾车型为轻便摩托车的机动车驾驶证；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（七）机动车驾驶人自愿降低准驾车型；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（八）具有下列情形之一的，机动车驾驶人应当在三十日内到机动车驾驶证核发地车辆管理所申请换证：<br />\r\n　&nbsp;&nbsp;&nbsp;1、在车辆管理所管辖区域内，机动车驾驶证记载的机动车驾驶人信息发生变化的；<br />\r\n　&nbsp;&nbsp;2.机动车驾驶证损毁无法辨认的。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（九）机动车驾驶人身体条件发生变化，不符合所持机动车驾驶证准驾车型的条件，但符合准予驾驶的其他准驾车型条件的，应当在三十日内到机动车驾驶证核发地车辆管理所申请降低准驾车型。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:20.6000pt;\">\r\n	三、提供材料：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（一）《机动车驾驶证申请表》（代理人申请机动车驾驶证业务时，应当提交代理人的身份证明和机动车驾驶人与代理人共同签字的《机动车驾驶证申请表》或者身体条件证明）；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（二）申请人及委托代理人身份证明原件及复印件；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（三）机动车驾驶证；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（四）县级或者部队团级以上医疗机构出具的有关身体条件的证明。属于申请驾驶残疾人专用小型自动挡载客汽车的，应当提交经省级卫生主管部门指定的专门医疗机构出具的有关身体条件的证明（自愿降低准驾车型的除外）；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（五）驾驶人近期免冠、白色背景、头部占长度的三分之二的彩色正面照4张。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	四、办理程序：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	审核材料→换发驾驶证\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	五、办理时限：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	符合换发驾驶证条件的，应当在一日内换发机动车驾驶证。\r\n</p>', '2014-04-21 14:03:50', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('32', '13', '申请增加准驾车型换证办理', '', '', '', '', '<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	一、法律法规依据：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（一）《道路交通安全法》第十九条；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（二）《道路交通安全法实施条例》第十九条至二十八条；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（三）《机动车驾驶证申领和使用规定》；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（四）《机动车驾驶证业务工作规范》。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	二、办理条件及注意事项：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	已持有机动车驾驶证，申请增加准驾车型的，应当在本记分周期和申请前最近一个记分周期内没有记满12分记录。申请增加中型客车、牵引车、大型客车准驾车型的，还应当符合下列规定：<br />\r\n　　（一）申请增加中型客车准驾车型的，已取得驾驶城市公交车、大型货车、小型汽车、小型自动挡汽车、低速载货汽车或者三轮汽车准驾车型资格三年以上，并在申请前最近连续三个记分周期内没有记满12分记录；<br />\r\n　　（二）申请增加牵引车准驾车型的，已取得驾驶中型客车或者大型货车准驾车型资格三年以上，或者取得驾驶大型客车准驾车型资格一年以上，并在申请前最近连续三个记分周期内没有记满12分记录；<br />\r\n　　（三）申请增加大型客车准驾车型的，已取得驾驶中型客车或者大型货车准驾车型资格五年以上，或者取得驾驶牵引车准驾车型资格二年以上，并在申请前最近连续五个记分周期内没有记满12分记录。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	有下列情形之一的，不得申请大型客车、牵引车、中型客车、大型货车准驾车型：<br />\r\n　　（一）发生交通事故造成人员死亡，承担同等以上责任的；<br />\r\n　　（二）醉酒后驾驶机动车的；<br />\r\n　　（三）被吊销或者撤销机动车驾驶证未满十年的。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	在暂住地可以申请增加的准驾车型为小型汽车、小型自动挡汽车、低速载货汽车、三轮汽车、普通三轮摩托车、普通二轮摩托车、轻便摩托车。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	申领机动车驾驶证的人，按照下列规定向车辆管理所提出申请：<br />\r\n　　（一）在户籍所在地居住的，应当在户籍所在地提出申请；<br />\r\n　　（二）在暂住地居住的，可以在暂住地提出申请；<br />\r\n　　（三）现役军人（含武警），应当在居住地提出申请；<br />\r\n　　（四）境外人员，应当在居留地或者居住地提出申请；<br />\r\n　　（五）申请增加准驾车型的，应当在所持机动车驾驶证核发地提出申请。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:20.6000pt;\">\r\n	三、提供材料：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（一）申请人提交所持机动车驾驶证；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（二）《机动车驾驶证申请表》（代理人申请机动车驾驶证业务时，应当提交代理人的身份证明和机动车驾驶人与代理人共同签字的《机动车驾驶证申请表》或者身体条件证明）；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（三）申请人及代理人身份证明原件及复印件&nbsp;；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（四）县级或者部队团级以上医疗机构出具的有关身体条件的证明。属于申请残疾人专用小型自动挡载客汽车的，应当提交经省级卫生主管部门指定的专门医疗机构出具的有关身体条件的证明。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21pt;\">\r\n	（五）驾驶人近期免冠、白色背景、头部占长度的三分之二的彩色正面照8张；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（六）经驾校培训的，还需提交驾校出具的培训记录。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	（七）考试合格后应交回原机动车驾驶证。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	四、办理程序：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	审核材料→预约考试→科目一考试合格后核发《准考证明》→科目二、三考试合格后应当接受不少于半小时的交通安全文明驾驶常识和交通事故案例警示教育，并参加领证宣誓仪式核发驾驶证。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:21.0000pt;\">\r\n	五、办理时限：\r\n</p>\r\n<p class=\"p0\">\r\n	申请人考试合格后，车辆管理所应当在申请人参加领证宣誓仪式的当日核发机动车驾驶证。\r\n</p>', '2014-04-21 14:04:31', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('33', '13', '换领、补领机动车驾驶证办理', '', '', '', '', '<p class=\"p15\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	一、&nbsp;内容\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	补领、换领机动车登记证书\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	二、&nbsp;法律依据\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:13.5000pt;text-align:justify;vertical-align:;\">\r\n	（一）《道路交通安全法》第八至十八条;\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:13.5000pt;text-align:justify;vertical-align:;\">\r\n	（二）《道路交通安全法实施条例》第四至十八条;\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:13.5000pt;text-align:justify;vertical-align:;\">\r\n	（三）《机动车登记规定》第四十三条。\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	三、&nbsp;数量及方式\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	无数量限制，符合条件即予许可\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	四、&nbsp;条件\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	机动车登记证书灭失、丢失或者损毁的，机动车所有人应当向登记地车辆管理所申请补领、换领。启用机动车登记证书前已注册登记的机动车未申领机动车登记证书的，机动车所有人可以向登记地车辆管理所申领机动车登记证书。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	申请补领机动车登记证书不得委托代理人办理。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	法律依据：《机动车登记规定》第四十三条。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	五、申请材料\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	补领、换领机动车登记证书，机动车所有人应当填写申请表并提交以下证明、凭证：\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	（一）身份证明；\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	（二）属于补领机动车登记证书的，还应当交验机动车。　\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	属于机动车所有人申请变更、转移或者抵押登记的，应当在申请前向车辆管理所申领机动车登记证书。申请时，机动车所有人应当填写申请表，交验机动车并提交身份证明。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;法律依据：《机动车登记规定》第四十三条。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	六、申请表格及申请书\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	申请人需填写《机动车牌证申请表》。该表格可在昆明市公安局车辆管理所及便民服务点领取，或在网上（昆明市政府便民服务中心www.kmbmb.gov.cn）免费下载。\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	七、&nbsp;申请受理机关\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	昆明市公安局车辆管理所（便民服务点）\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	八、&nbsp;申请决定机关\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	昆明市公安局车辆管理所\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	九、&nbsp;程序\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:13.5000pt;text-align:justify;vertical-align:;\">\r\n	（一）补领登记证书\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	确认车辆、审核资料→录入信息→查档→交费→领取登记证书\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:13.5000pt;text-align:justify;vertical-align:;\">\r\n	（二）换领登记证书\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	审核资料、录入信息→交费→领取登记证书\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:32.2500pt;text-align:justify;vertical-align:;\">\r\n	十、办理时限\r\n</p>\r\n<p class=\"p0\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	补领、换领机动车登记证书，车辆管理所应当自受理之日起一日内，确认机动车，审查提交的证明、凭证，补发、换发机动车登记证书。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;属于机动车所有人申请变更、转移或者抵押登记的，车辆管理所应当自受理之日起五日内，确认机动车，核对车辆识别代号拓印膜，审查提交的证明、凭证，核发机动车登记证书。<br />\r\n&nbsp;&nbsp;&nbsp;法律依据：《机动车登记规定》第四十三条。\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:17.6400pt;text-align:justify;vertical-align:;\">\r\n	十一、&nbsp;证件及有效期限\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:32.2500pt;text-align:justify;vertical-align:;\">\r\n	重新核发的《机动车登记证书》。\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:18.0000pt;text-align:justify;vertical-align:;\">\r\n	符合机动车使用年限内有效。\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:32.2500pt;text-align:justify;vertical-align:;\">\r\n	法律依据：《道路交通安全法》第八条。\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:32.2500pt;text-align:justify;vertical-align:;\">\r\n	十二、&nbsp;法律效力\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:32.2500pt;text-align:justify;vertical-align:;\">\r\n	机动车经公安机关交通管理部门登记后，方可上道路行驶。\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:32.2500pt;text-align:justify;vertical-align:;\">\r\n	十三、&nbsp;收费\r\n</p>\r\n<p class=\"p15\" style=\"text-indent:32.2500pt;text-align:justify;vertical-align:;\">\r\n	执行国务院价格主管部门核定的收费标准，依法收取机动车牌证工本费。\r\n</p>\r\n<p class=\"p0\">\r\n	法律依据：《道路交通安全法》第八十一条。\r\n</p>', '2014-04-21 14:05:05', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('34', '13', '驾照注销(本地人)', '', '', '', '', '<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶证注销\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00~17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	电话\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	7267863\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶证注销\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	（一）《道路交通安全法》第十九条；<br />\r\n（二）《道路交通安全法实施条例》第十九至二十八条；<br />\r\n（三）《机动车驾驶证申领和使用规定》第四十二条；<br />\r\n（四）《机动车驾驶证业务工作规范》第三十六条。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶人具有下列情形之一的，车辆管理所注销其机动车驾驶证<span>:</span><span>（一）死亡的；&nbsp;（二）身体条件不适合驾驶机动车的；&nbsp;（三）提出注销申请的；（四）丧失民事行为能力，监护人提出注销申请的；（五）超过机动车驾驶证有效期一年以上未换证的；（六）年龄在</span><span>60</span><span>周岁以上或者持有大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车、有轨电车准驾车型的，在一个记分周期结束后，一年内未提交身体条件证明的；（七）年龄在</span><span>60</span><span>周岁以上，所持机动车驾驶证只具有无轨电车或者有轨电车准驾车型，或者年龄在</span><span>70</span><span>周岁以上，所持机动车驾驶证只具有低速载货汽车、三轮汽车、轮式自行机械车准驾车型的；（八）机动车驾驶证依法被吊销或者驾驶许可依法被撤销的。（九）属于其他符合注销条件而未办理注销机动车驾驶证的，车管所直接签注意见。未收回驾驶证的，依法公告驾驶证作废。</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	（一）《机动车驾驶证申请表》；<br />\r\n（二）申请人及监护人身份证明原件及复印件；<br />\r\n（三）机动车驾驶证。法律依据：《机动车驾驶证业务工作规范》第三十六至三十八条。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	审核材料<span>→</span><span>注销驾驶证</span><span>→</span><span>打印注销凭证</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	属于申请注销，符合条件的受理申请一日内办理。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	无\r\n</p>', '2014-04-21 14:07:49', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('35', '13', '驾照注销(外地人)', '', '', '', '', '<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶证注销\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00~17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	电话\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	7267863\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶证注销\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	（一）《道路交通安全法》第十九条；<br />\r\n（二）《道路交通安全法实施条例》第十九至二十八条；<br />\r\n（三）《机动车驾驶证申领和使用规定》第四十二条；<br />\r\n（四）《机动车驾驶证业务工作规范》第三十六条。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶人具有下列情形之一的，车辆管理所注销其机动车驾驶证<span>:</span><span>（一）死亡的；&nbsp;（二）身体条件不适合驾驶机动车的；&nbsp;（三）提出注销申请的；（四）丧失民事行为能力，监护人提出注销申请的；（五）超过机动车驾驶证有效期一年以上未换证的；（六）年龄在</span><span>60</span><span>周岁以上或者持有大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车、有轨电车准驾车型的，在一个记分周期结束后，一年内未提交身体条件证明的；（七）年龄在</span><span>60</span><span>周岁以上，所持机动车驾驶证只具有无轨电车或者有轨电车准驾车型，或者年龄在</span><span>70</span><span>周岁以上，所持机动车驾驶证只具有低速载货汽车、三轮汽车、轮式自行机械车准驾车型的；（八）机动车驾驶证依法被吊销或者驾驶许可依法被撤销的。（九）属于其他符合注销条件而未办理注销机动车驾驶证的，车管所直接签注意见。未收回驾驶证的，依法公告驾驶证作废。</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	（一）《机动车驾驶证申请表》；<br />\r\n（二）申请人及监护人身份证明原件及复印件；<br />\r\n（三）机动车驾驶证。法律依据：《机动车驾驶证业务工作规范》第三十六至三十八条。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	审核材料<span>→</span><span>注销驾驶证</span><span>→</span><span>打印注销凭证</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	属于申请注销，符合条件的受理申请一日内办理。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	无\r\n</p>', '2014-04-21 14:08:36', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('36', '13', '驾照注销(外国人)', '', '', '', '', '<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶证注销\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00~17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	电话\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	7267863\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶证注销\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	（一）《道路交通安全法》第十九条；<br />\r\n（二）《道路交通安全法实施条例》第十九至二十八条；<br />\r\n（三）《机动车驾驶证申领和使用规定》第四十二条；<br />\r\n（四）《机动车驾驶证业务工作规范》第三十六条。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	机动车驾驶人具有下列情形之一的，车辆管理所注销其机动车驾驶证<span>:</span><span>（一）死亡的；&nbsp;（二）身体条件不适合驾驶机动车的；&nbsp;（三）提出注销申请的；（四）丧失民事行为能力，监护人提出注销申请的；（五）超过机动车驾驶证有效期一年以上未换证的；（六）年龄在</span><span>60</span><span>周岁以上或者持有大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车、有轨电车准驾车型的，在一个记分周期结束后，一年内未提交身体条件证明的；（七）年龄在</span><span>60</span><span>周岁以上，所持机动车驾驶证只具有无轨电车或者有轨电车准驾车型，或者年龄在</span><span>70</span><span>周岁以上，所持机动车驾驶证只具有低速载货汽车、三轮汽车、轮式自行机械车准驾车型的；（八）机动车驾驶证依法被吊销或者驾驶许可依法被撤销的。（九）属于其他符合注销条件而未办理注销机动车驾驶证的，车管所直接签注意见。未收回驾驶证的，依法公告驾驶证作废。</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	（一）《机动车驾驶证申请表》；<br />\r\n（二）申请人及监护人身份证明原件及复印件；<br />\r\n（三）机动车驾驶证。法律依据：《机动车驾驶证业务工作规范》第三十六至三十八条。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	审核材料<span>→</span><span>注销驾驶证</span><span>→</span><span>打印注销凭证</span>\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	属于申请注销，符合条件的受理申请一日内办理。\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;background:#FFFFFF;\">\r\n	无\r\n</p>', '2014-04-21 14:09:29', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('37', '13', '机动车注册登记/转入', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车注册\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及下设各便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00—17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及下设各便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	拓印车架号，核发机动车牌证，安装机动车号牌\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	《中华人民共和国道路交通安全法》，《机动车登记规定》\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	符合《中华人民共和国道路交通安全法》第九、十条的规定\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车所有人的身份证明，机动车来历证明，机动车整车出厂合格证明或者进口凭证，车辆购置税的完税凭证或者免税证明，法律、行政法规规定应当提交的其他证明、凭证。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	拓号<span>-</span><span>查验车辆</span><span>-</span><span>查询《公告》</span><span>-</span><span>录入信息</span><span>-</span><span>编号</span><span>-</span><span>打印（核发）证照</span><span>-</span><span>安装号牌。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	两个工作日\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	号牌费<span>100</span><span>元，行驶证费</span><span>15</span><span>元，登记证书</span><span>10</span><span>元，临时号牌</span><span>5</span><span>元</span>\r\n</p>', '2014-04-21 14:09:57', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('38', '13', '申请机动车临时号牌', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	核发机动车临时行驶号牌\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及下设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00</span><span>－</span><span>17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及下设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	电话\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	7267863\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	核发临时行驶车号牌\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第三十六条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车具有未销售的，购买、调拨、赠予等方式获得机动车后尚未注册登记的，进行科研、定型试验的，因轴荷、总质量、外廓尺寸超出国家标准不予办理注册登记的特型机动车等情形之一的，需要临时上道路行驶的，机动车所有人应当向车辆管理所申领临时行驶车号牌。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车所有人申领临时行驶车号牌应当提交以下证明、凭证：<br />\r\n　　（一）机动车所有人的身份证明；<br />\r\n　　（二）机动车交通事故责任强制保险凭证；<br />\r\n　　（三）属于未销售的，因轴荷、总质量、外廓尺寸超出国家标准不予办理注册登记的特型机动车的，还应当提交机动车整车出厂合格证明或者进口机动车进口凭证；<br />\r\n　　（四）属于购买、调拨、赠予等方式获得机动车后尚未注册登记的，还应当提交机动车来历证明，以及机动车整车出厂合格证明或者进口机动车进口凭证；<br />\r\n　　（五）属于进行科研、定型试验的，还应当提交书面申请和机动车安全技术检验合格证明。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	审核资料、录入信息<span>→</span><span>交费</span><span>→</span><span>核发临时行驶车号牌</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	车辆管理所应当自受理之日起一日内，核发机动车临时行驶车号牌。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	执行国务院价格主管部门核定的收费标准，依法收取机动车牌证工本费。\r\n</p>', '2014-04-21 14:10:37', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('39', '13', '机动车变更登记', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	更换发动机\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及下设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00——17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	变更登记（更换发动机）\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第十至十七条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	更换发动机的，机动车所有人应当于变更后十日内向车辆管理部门申请变更登记。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	申请变更登记的，机动车所有人应当填写申请表，交验机动车，并提交以下证明、凭证：<br />\r\n　　（一）机动车所有人的身份证明；<br />\r\n　　（二）机动车登记证书；<br />\r\n　　（三）机动车行驶证；<br />\r\n　　（四）提交机动车安全技术检验合格证明；\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	确认车辆、审核资料<span>→</span><span>录入变更后信息</span><span>→</span><span>交费</span><span>→</span><span>摄影</span><span>→</span><span>领取登记证书和行驶证</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	车辆管理所应当自受理之日起一日内，确认机动车，审查提交的证明、凭证，在机动车登记证书上签注变更事项，收回行驶证，重新核发行驶证。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	执行国务院价格主管部门核定的收费标准，依法收取机动车牌证工本费。\r\n</p>', '2014-04-21 14:11:08', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('40', '13', '机动车转移登记', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车转移\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00—17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理地点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所，昆明市二手车交易市场，前卫二手车交易市场，云南省二手车交易市场，锦大二手车交易市场\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	电话\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	7267863<span>（车管所）</span><span>4593789</span><span>（市市场）</span><span>4592528</span><span>（前卫）</span><span>8412272</span><span>（省市场）</span><span>8245228</span><span>（锦大）</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车辖区内转移，机动车辖区外转移\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第十八至二十一条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	已注册登记的机动车所有权发生转移的，现机动车所有人应当自机动车交付之日起三十日内向登记地车辆管理所申请转移登记。机动车所有人申请转移登记前，应当将涉及该车的道路交通安全违法行为和交通事故处理完毕。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	申请转移登记的，现机动车所有人应当填写申请表，交验机动车，并提交以下证明、凭证：<br />\r\n　　（一）现机动车所有人的身份证明；<br />\r\n　　（二）机动车所有权转移的证明、凭证；<br />\r\n　　（三）机动车登记证书；<br />\r\n　　（四）机动车行驶证；<br />\r\n　　（五）属于海关监管的机动车，还应当提交《中华人民共和国海关监管车辆解除监管证明书》或者海关批准的转让证明；<br />\r\n　　（六）属于超过检验有效期的机动车，还应当提交机动车安全技术检验合格证明和交通事责任强制保险凭证。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）管理区域内：确认车辆、审核资料<span>→</span><span>录入信息</span><span>→</span><span>查档</span><span>→</span><span>交费</span><span>→</span><span>摄影</span><span>→</span><span>领取登记证书、行驶证。&nbsp;（二）管理区域外：确认车辆、审核资料</span><span>→</span><span>录入信息</span><span>→</span><span>查档</span><span>→</span><span>交费</span><span>→</span><span>交回号牌、行驶证</span><span>→</span><span>签注登记证书、发放档案、临时号牌。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	现机动车所有人住所在车辆管理所管辖区域内的，车辆管理所应当自受理申请之日起一日内办理。&nbsp;现机动车所有人住所不在车辆管理所管辖区域内的，车辆管理所应当自受理申请之日起三日内办理。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	执行国务院价格主管部门核定的收费标准，依法收取机动车牌证工本费。\r\n</p>', '2014-04-21 14:11:39', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('41', '13', '机动车抵押／注销抵押登记', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车抵押、注销抵押\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00——17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车抵押、注销抵押\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第二十二至二十六条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车所有人将机动车作为抵押物抵押的，应当向登记地车辆管理所申请抵押登记；抵押权消灭的，应当向登记地车辆管理所申请解除抵押登记。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	申请抵押登记的，机动车所有人应当填写申请表，由机动车所有人和抵押权人共同申请，并提交下列证明、凭证：<br />\r\n　　（一）机动车所有人和抵押权人的身份证明；<br />\r\n　　（二）机动车登记证书；<br />\r\n　　（三）机动车所有人和抵押权人依法订立的主合同和抵押合同。<br />\r\n　&nbsp;申请解除抵押登记的，机动车所有人应当填写申请表，由机动车所有人和抵押权人共同申请，并提交下列证明、凭证：<br />\r\n　　（一）机动车所有人和抵押权人的身份证明；<br />\r\n　　（二）机动车登记证书。<br />\r\n　　人民法院调解、裁定、判决解除抵押的，机动车所有人或者抵押权人应当填写申请表，提交机动车登记证书、人民法院出具的已经生效的《调解书》、《裁定书》或者《判决书》，以及相应的《协助执行通知书》。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）抵押登记<br />\r\n审核资料、录入信息<span>→</span><span>交费</span><span>→</span><span>签注登记证书</span><br />\r\n（二）注销抵押登记<br />\r\n录入信息<span>→</span><span>交费</span><span>→</span><span>签注登记证书</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	申请抵押登记的，车辆管理所应当自受理之日起一日内，审查提交的证明、凭证，在机动车登记证书上签注抵押登记的内容和日期。<br />\r\n　&nbsp;申请解除抵押登记的，车辆管理所应当自受理之日起一日内，审查提交的证明、凭证，在机动车登记证书上签注解除抵押登记的内容和日期。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	执行国务院价格主管部门核定的收费标准，依法收取机动车牌证工本费。\r\n</p>', '2014-04-21 14:12:09', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('42', '13', '机动车注销登记', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车注销\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00—17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车注销登记\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第二十七至三十二条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	已达到国家强制报废标准的机动车，机动车灭失、因故不在我国境内使用、因质量问题退车，以及机动车登记被依法撤销的和达到国家强制报废标准的机动车被依法收缴并强制报废的，应当办理注销登记。<br />\r\n报废的大型客、货车及其他营运车辆应当在报废地车辆管理所的监督下解体。<br />\r\n属因故不在我国境内使用、因质量问题退车的，机动车所有人申请注销登记前，应当将涉及该车的道路交通安全违法行为和交通事故处理完毕。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	已达到国家强制报废标准的机动车，机动车所有人向机动车回收企业交售机动车时，应当填写申请表，并提交以下证明、凭证：<br />\r\n（一）机动车登记证书；<br />\r\n（二）机动车号牌；<br />\r\n（三）机动车行驶证；<br />\r\n（四）机动车回收企业确认机动车并解体，向机动车所有人出具的《报废机动车回收证明》；<br />\r\n（五）机动车回收企业应当在机动车解体后七日内将申请表、机动车登记证书、号牌、行驶证和《报废机动车回收证明》副本提交车辆管理所，申请注销登记。<br />\r\n机动车所有人属于机动车灭失、因故不在我国境内使用和因质量问题退车，申请注销登记的，应当填写申请表，并提交以下证明、凭证：<br />\r\n　　（一）机动车登记证书；<br />\r\n　　（二）机动车行驶证；<br />\r\n　　（三）属于机动车灭失的，还应当提交机动车所有人的身份证明和机动车灭失证明；<br />\r\n　　（四）属于机动车因故不在我国境内使用的，还应当提交机动车所有人的身份证明和出境证明，其中属于海关监管的机动车，还应当提交海关出具的《中华人民共和国海关监管车辆进（出）境领（销）牌照通知书》；<br />\r\n　　（五）属于因质量问题退车的，还应当提交机动车所有人的身份证明和机动车制造厂或者经销商出具的退车证明。<br />\r\n　&nbsp;因车辆损坏无法驶回登记地的，机动车所有人可以向车辆所在地机动车回收企业交售报废机动车。交售机动车时应当填写申请表，并提交机动车登记证书、号牌和行驶证。机动车回收企业应当确认机动车并解体，向机动车所有人出具《报废机动车回收证明》。机动车回收企业应当在机动车解体后七日内将申请表、机动车登记证书、号牌、行驶证和《报废机动车回收证明》副本提交报废地车辆管理所，申请注销登记。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	审核资料、录入信息<span>→</span><span>打印注销证明</span><span>→</span><span>交回牌照、行驶证、机动车登记证书</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理注销登记的车辆管理所应当自受理之日起一日内，审查提交的证明、凭证，办理和传递相关注销登记手续。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	无\r\n</p>', '2014-04-21 14:12:38', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('43', '13', '机动车停驶、复驶、更正业务办理', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车注销\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00—17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车注销登记\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第二十七至三十二条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	已达到国家强制报废标准的机动车，机动车灭失、因故不在我国境内使用、因质量问题退车，以及机动车登记被依法撤销的和达到国家强制报废标准的机动车被依法收缴并强制报废的，应当办理注销登记。<br />\r\n报废的大型客、货车及其他营运车辆应当在报废地车辆管理所的监督下解体。<br />\r\n属因故不在我国境内使用、因质量问题退车的，机动车所有人申请注销登记前，应当将涉及该车的道路交通安全违法行为和交通事故处理完毕。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	已达到国家强制报废标准的机动车，机动车所有人向机动车回收企业交售机动车时，应当填写申请表，并提交以下证明、凭证：<br />\r\n（一）机动车登记证书；<br />\r\n（二）机动车号牌；<br />\r\n（三）机动车行驶证；<br />\r\n（四）机动车回收企业确认机动车并解体，向机动车所有人出具的《报废机动车回收证明》；<br />\r\n（五）机动车回收企业应当在机动车解体后七日内将申请表、机动车登记证书、号牌、行驶证和《报废机动车回收证明》副本提交车辆管理所，申请注销登记。<br />\r\n机动车所有人属于机动车灭失、因故不在我国境内使用和因质量问题退车，申请注销登记的，应当填写申请表，并提交以下证明、凭证：<br />\r\n　　（一）机动车登记证书；<br />\r\n　　（二）机动车行驶证；<br />\r\n　　（三）属于机动车灭失的，还应当提交机动车所有人的身份证明和机动车灭失证明；<br />\r\n　　（四）属于机动车因故不在我国境内使用的，还应当提交机动车所有人的身份证明和出境证明，其中属于海关监管的机动车，还应当提交海关出具的《中华人民共和国海关监管车辆进（出）境领（销）牌照通知书》；<br />\r\n　　（五）属于因质量问题退车的，还应当提交机动车所有人的身份证明和机动车制造厂或者经销商出具的退车证明。<br />\r\n　&nbsp;因车辆损坏无法驶回登记地的，机动车所有人可以向车辆所在地机动车回收企业交售报废机动车。交售机动车时应当填写申请表，并提交机动车登记证书、号牌和行驶证。机动车回收企业应当确认机动车并解体，向机动车所有人出具《报废机动车回收证明》。机动车回收企业应当在机动车解体后七日内将申请表、机动车登记证书、号牌、行驶证和《报废机动车回收证明》副本提交报废地车辆管理所，申请注销登记。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	审核资料、录入信息<span>→</span><span>打印注销证明</span><span>→</span><span>交回牌照、行驶证、机动车登记证书</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理注销登记的车辆管理所应当自受理之日起一日内，审查提交的证明、凭证，办理和传递相关注销登记手续。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	无\r\n</p>', '2014-04-21 14:13:24', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('44', '13', '补（换）领机动车号牌、行驶证', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	补领、换领激动车号牌、行驶证\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00—17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	补领、换领机动车号牌、行驶证\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第三十五条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车号牌、行驶证灭失、丢失或者损毁的，机动车所有人应当向登记地车辆管理所申请补领、换领。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	申请时，机动车所有人应当填写申请表并提交身份证明。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）补、换号牌<br />\r\n审核资料、录入信息<span>→</span><span>收回剩余号牌</span><span>→</span><span>交费</span><span>→</span><span>核发临时号牌</span><br />\r\n（二）补、换行驶证<br />\r\n审核资料、录入信息<span>→</span><span>收回污损行驶证</span><span>→</span><span>交费</span><span>→</span><span>核发行驶证</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	车辆管理所自受理之日起一日内补发、换发行驶证，自受理之日起十五日内补发、换发号牌，原机动车号牌号码不变。<br />\r\n　　补发、换发号牌期间应当核发有效期不超过十五日的临时行驶车号牌\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	执行国务院价格主管部门核定的收费标准，依法收取机动车牌证工本费。\r\n</p>', '2014-04-21 14:14:01', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('45', '13', '补（换）领《机动车登记证书》', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	补领、换领机动车登记证书\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00—17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	补领、换领机动车登记证书\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第三十四条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车登记证书灭失、丢失或者损毁的，机动车所有人应当向登记地车辆管理所申请补领、换领。启用机动车登记证书前已注册登记的机动车未申领机动车登记证书的，机动车所有人可以向登记地车辆管理所申领机动车登记证书。<br />\r\n申请补领机动车登记证书不得委托代理人办理。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	补领、换领机动车登记证书，机动车所有人应当填写申请表并提交以下证明、凭证：<br />\r\n（一）身份证明；<br />\r\n（二）属于补领机动车登记证书的，还应当交验机动车。　<br />\r\n属于机动车所有人申请变更、转移或者抵押登记的，应当在申请前向车辆管理所申领机动车登记证书。申请时，机动车所有人应当填写申请表，交验机动车并提交身份证明。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）补领登记证书<br />\r\n确认车辆、审核资料<span>→</span><span>录入信息</span><span>→</span><span>查档</span><span>→</span><span>交费</span><span>→</span><span>领取登记证书</span><br />\r\n（二）换领登记证书<br />\r\n审核资料、录入信息<span>→</span><span>交费</span><span>→</span><span>领取登记证书</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	补领、换领机动车登记证书，车辆管理所应当自受理之日起一日内，确认机动车，审查提交的证明、凭证，补发、换发机动车登记证书。<br />\r\n属于机动车所有人申请变更、转移或者抵押登记的，车辆管理所应当自受理之日起五日内，确认机动车，核对车辆识别代号拓印膜，审查提交的证明、凭证，核发机动车登记证书。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	收费标准\r\n</p>\r\n<p class=\"p0\">\r\n	执行国务院价格主管部门核定的收费标准，依法收取机动车牌证工本费。\r\n</p>', '2014-04-21 14:14:30', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('46', '13', '申请机动车检验合格标志', '', '', '', '', '<p class=\"p0\" style=\"text-align:justify;vertical-align:;\">\r\n	申请人需填写《机动车牌证申请表》。该表格可在昆明市公安局车辆管理所及服务点领取，或在网上（昆明市政府便民服务中心<a href=\"http://jj.km122.cnhttp://www.kmbmb.gov.cn/\">www.kmbmb.gov.cn</a>）免费下载。<br />\r\n受理机关<br />\r\n昆明市公安局车辆管理所及便民服务点、检测站。<br />\r\n行政许可申请决定机关<br />\r\n昆明市公安局车辆管理所<br />\r\n行政许可程序<br />\r\n确认机动车、录入信息<span>→</span><span>核查交通违法和事故处理情况</span><span>→</span><span>机动车安全技术检验</span><span>→</span><span>核发检验合格标志、签注行驶证副证</span><span>→</span><span>收存检验合格证明、保险凭证复印件。</span><br />\r\n办理时限<br />\r\n车辆管理所应当自受理之日起一日内，确认机动车，审查提交的证明、凭证，核发检验合格标志。<br />\r\n法律依据\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;\">\r\n	《机动车登记规定》第四十条。<br />\r\n行政许可证件及有效期限<br />\r\n签注《机动车行驶证》、检验合格标志。<br />\r\n签注的有效期限内。<br />\r\n法律依据\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;\">\r\n	《道路交通安全法》第十三条。<br />\r\n行政许可的法律效力<br />\r\n公安机关交通管理部门核发检验合格标志后，方可上道路行驶。<br />\r\n行政许可收费<br />\r\n机动车检验安全技术检验执行国务院价格主管部门核定的收费标准。核发检验合格标志无收费。<br />\r\n法律依据\r\n</p>\r\n<p class=\"p0\" style=\"text-align:justify;vertical-align:;\">\r\n	《道路交通安全法》第八十一条。<br />\r\n行政许可年审或年检\r\n</p>\r\n<p class=\"p0\">\r\n	签注有效时限内检验。\r\n</p>', '2014-04-21 14:15:01', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('47', '13', '本市机动车委托外地核发检验合格标志', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车异地安全技术检验通知书核发\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00—17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车异地安全技术检验通知书核发\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第四十一条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	除大型载客汽车以外的机动车因故不能在登记地检验的，机动车所有人可以向登记地车辆管理所申请委托核发检验合格标志。申请前，机动车所有人应当将涉及机动车的道路交通安全违法行为和交通事故处理完毕。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）申请委托检验时，应当将涉及机动车的道路交通安全违法行为和交通事故处理完毕，并提交机动车登记证书或者行驶证。<br />\r\n（二）机动车在检验地检验合格后，机动车所有人应当填写申请表并提交机动车行驶证、机动车交通事故责任强制保险凭证、机动车安全技术检验合格证明、以及核发检验合格标志的委托书。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	审核资料<span>→</span><span>发放《委托核发检验合格标志通知书》</span><span>→</span><span>收到对方车管所签发的回执单</span><span>→</span><span>录入检审信息</span><span>→</span><span>存档。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\">\r\n	无\r\n</p>', '2014-04-21 14:15:41', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('48', '13', '外地机动车委托本市核发机动车检验合格标志', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车异地安全技术检验通知书核发\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理机构\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	昆明市公安局车辆管理所及外设便民服务点\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	受理时间\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	工作日<span>9</span><span>：</span><span>00—17</span><span>：</span><span>00</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务内容概述\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	机动车异地安全技术检验通知书核发\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	政策法规依据\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）《道路交通安全法》第八至十八条<span>;</span><br />\r\n（二）《道路交通安全法实施条例》第四至十八条<span>;</span><br />\r\n（三）《机动车登记规定》第四十一条。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	事项申办条件\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	除大型载客汽车以外的机动车因故不能在登记地检验的，机动车所有人可以向登记地车辆管理所申请委托核发检验合格标志。申请前，机动车所有人应当将涉及机动车的道路交通安全违法行为和交通事故处理完毕。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	需要提交的材料\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	（一）申请委托检验时，应当将涉及机动车的道路交通安全违法行为和交通事故处理完毕，并提交机动车登记证书或者行驶证。<br />\r\n（二）机动车在检验地检验合格后，机动车所有人应当填写申请表并提交机动车行驶证、机动车交通事故责任强制保险凭证、机动车安全技术检验合格证明、以及核发检验合格标志的委托书。\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	办事处理流程\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	审核资料<span>→</span><span>发放《委托核发检验合格标志通知书》</span><span>→</span><span>收到对方车管所签发的回执单</span><span>→</span><span>录入检审信息</span><span>→</span><span>存档。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	服务办理时限\r\n</p>\r\n<p class=\"p0\">\r\n	无\r\n</p>', '2014-04-21 14:16:27', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('49', '13', '城区或禁行区车辆通行证核发', '', '', '', '', '<p class=\"p0\">\r\n	一、行政许可内容<br />\r\n&nbsp;　　非行政许可审批事项：城区或禁行区车辆通行证核发<br />\r\n　　二、设定行政许可的法律依据<br />\r\n　　《中华人民共和国道路交通安全法》第三十九条；<br />\r\n　　《昆明市道路交通安全条例》第四十九条一款<br />\r\n　　三、行政许可的数量及方式<br />\r\n　　无数量限制，符合条件即予许可<br />\r\n　　四、行政许可条件<br />\r\n　　因执行公务、运送群众生活必需品、进行市政工程维护、抢修和单位接送职工上下班等需要进入限制通行区域的车辆以及旅游客运车辆。<br />\r\n　　五、申请材料<br />\r\n　　<span>1</span><span>、单位组织机构代码证和营业执照（复印件</span><span>1</span><span>份，验原件，办理汽车年度入城通行证需提供）；</span><br />\r\n　　<span>2</span><span>、市商务局批文（原件</span><span>1</span><span>份，外资企业办理汽车年度入城通行证需提供）；</span><br />\r\n　　<span>3</span><span>、市投资促进局批文（原件</span><span>1</span><span>份，国内在昆投资企业办理汽车年度入城通行证需提供）；</span><br />\r\n　　<span>4</span><span>、车辆行驶证（验原件，收复印件</span><span>1</span><span>份）；</span><br />\r\n　　<span>5</span><span>、单位从事危险化学品道路运输的资质证，驾驶证，车辆、驾驶人和押运员资质证；罐车还需提供罐体检验报告或合格证（申办危险化学品年度和临时通行证需提供）；</span><br />\r\n　　<span>6</span><span>、车主身份证、货物运输合同（私车申办年度货车夜间通行证需提供）</span><br />\r\n　　<span>7</span><span>、《汽车年度通行证申请表》（办理汽车年度入城通行证需提供）</span><br />\r\n　　<span>8</span><span>、书面申请（办理汽车入城通行证需提供）</span><br />\r\n　　<span>9</span><span>、摩托车入城准行证（办理摩托车入城准行证换证需提供）</span><br />\r\n　　<span>10</span><span>、凡涉及旅游、客运车辆办理汽车入城通行证的，需由行业主管部门提出申办意见，并由行业主管部门连同申办材料统一报送</span><br />\r\n　　六、申请表格及申请书<br />\r\n　　《汽车年度通行证申请表》；<br />\r\n　　此表格可在办证窗口领取<br />\r\n　　七、行政许可申请受理机关<br />\r\n　　昆明市公安局交警支队<br />\r\n　　具体受理地点：摩托车入城准行证换证、汽车年度入城通行证新办、过户审批和汽车年度入城通行证超期换证在昆明市人民政府便民服务中心交警支队窗口；汽车年度入城通行证的年度换证在民航路办证点；汽车临时入城通行证在二环路周边的日新中路、黄土坡货运站和小坝东村办证点<br />\r\n　　八．行政许可决定机关<br />\r\n　　昆明市公安局交警支队<br />\r\n　　九、行政许可程序<br />\r\n　　<span>1</span><span>、申报材料交窗口审核；</span><br />\r\n　　<span>2</span><span>、逐级报交警支队相关领导审批；</span><br />\r\n　　<span>3</span><span>、发放许可证件</span><br />\r\n　　十、行政许可办理时限<br />\r\n　　汽车年度入城通行证为五个工作日<br />\r\n　　其他为即办件<br />\r\n　　十一、行政许可证件及有效期<br />\r\n　　《汽车年度入城通行证》：有效期为<span>1</span><span>年；</span><br />\r\n　　《摩托车入城准行证》：有效期为两年<br />\r\n　　《汽车临时入城通行证》；最长<span>1</span><span>个月</span><br />\r\n　　十二、行政许可的法律效力<br />\r\n　　取得城区或禁行区车辆通行许可<br />\r\n　　十三、行政许可收费<br />\r\n　　无<br />\r\n　　十四、行政许可年审或年检<br />\r\n　　无<br />\r\n　　市便民服务中心交警支队窗口电话：<span>3149910</span><span>，</span><span>3149912</span><span>。</span><br />\r\n　　经办民警：杞红，董娟<br />\r\n　　民航路办证点电话：<span>3343526</span><br />\r\n　　日新中路办证点电话：<span>4567360</span><br />\r\n　　经办民警：李路，赵振江<br />\r\n　　黄土坡办证点电话：<span>8322725</span><br />\r\n　　经办民警：吴钢<br />\r\n　　小坝办证点电话：<span>5636529</span><br />\r\n　　经办民警：郭桂华\r\n</p>', '2014-04-21 14:17:04', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('50', '13', '违法停车处理程序', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	当事人交通违法事实，然后填写《道路交通安全违法行为处理通知书》并放置于违法车辆前车窗上，告知其在规定时限内（<span>15</span><span>日）到指定的公安机关交通管理部门（昆明市交警支队直属一至九大队任意大队执法办；如有异议，需到辖区大队执法办）接受处理。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	　　涉及交通违法的机动车车主或者驾驶人、管理人（以下简称当事人）到指定公安机关交通管理部门（以下简称<span>“</span><span>交管部门</span><span>”</span><span>）查看相关交通违法记录资料，并作出陈述和申辩；交管部门依据相关道路交通安全法律法规进行口头告知其违法行为的基本事实、拟作出的行政处罚、依据及其依法享有的权利（在听取陈述和申辩后，若当事人提出的事实、理由或者证据成立的，交管部门将采纳），制作简易程序处罚决定书；告知当事人在</span><span>15</span><span>日内到指定的代收机构缴纳罚款。当事人缴纳罚款后，该违法行为处理完毕。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	　　对处罚有异议的，可依照《中华人民共和国行政复议法》在<span>60</span><span>日内向昆明市交通警察支队申请行政复议，或者依照《中华人民共和国行政诉讼法》在</span><span>3</span><span>个月内向人民法院提起行政诉讼（复议、诉讼期间具体行政行为不停止执行）。</span>\r\n</p>', '2014-04-21 14:17:39', '0', '0', '0', '1', '', '', '');
INSERT INTO `cms_article` VALUES ('51', '13', '“电子眼”违法处理程序', '', '', '', '', '<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	首先通过交通技术监控设备（<span>“</span><span>电子眼</span><span>”</span><span>）记录当事人所驾机动车交通违法行为，然后根据该机动车车主登记信息信函告知违法行为记录，并通知其在规定时限内（</span><span>15</span><span>日）到指定的公安机关交通管理部门（昆明市交警支队直属一至九大队任意大队执法办）接受处理。</span>\r\n</p>\r\n<p class=\"p0\" style=\"background-color:#FFFFFF;\">\r\n	　　涉及交通违法的机动车车主或者驾驶人、管理人（以下简称当事人）到指定公安机关交通管理部门（以下简称<span>“</span><span>交管部门</span><span>”</span><span>）查看相关交通技术监控设备记录资料，并作出陈述和申辩；交管部门依据相关道路交通安全法律法规进行口头&nbsp;告知其违法行为的基本事实、拟作出的行政处罚、依据及其依法享有的权利（在听取陈述和申辩后，若当事人提出的事实、理由或者证据成立的，交管部门将采纳），制作简易程序处罚决定书；告知当事人在</span><span>15</span><span>日内到指定的代收机构缴纳罚款。当事人缴纳罚款后，该违法行为处理完毕。</span>\r\n</p>\r\n<p class=\"p0\">\r\n	　　对<span>“</span><span>电子眼</span><span>”</span><span>记录的违法事实认定有异议的，可先到昆明市交通警察支队科技处复核；对交通违法处罚有异议的，可依照《中华人民共和国行政复议法》在</span><span>60</span><span>日内向昆明市交通警察支队申请行政复议，或者依照《中华人民共和国行政诉讼法》在</span><span>3</span><span>个月内向人民法院提起行政诉讼（复议、诉讼期间具体行政行为不停止执行）。</span>\r\n</p>', '2014-04-21 14:18:09', '0', '0', '0', '1', '', '', '');

-- ----------------------------
-- Table structure for cms_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_cate`;
CREATE TABLE `cms_article_cate` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  `article_nums` int(10) unsigned NOT NULL,
  `sort_order` smallint(4) unsigned NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article_cate
-- ----------------------------
INSERT INTO `cms_article_cate` VALUES ('1', '网站信息', 'sites', '11', '1', '4', '4', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('5', '新手入门', 'rumen', '11', '1', '2', '2', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('17', '昆明风采', 'mien', '0', '1', '0', '0', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('18', '昆明历史', 'history', '17', '1', '0', '0', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('11', '网站帮助', 'sites', '0', '1', '0', '0', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('12', '我要落户', 'household', '0', '1', '26', '6', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('13', '我要驾车', 'driver', '0', '1', '25', '7', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('20', '昆明旅游', 'travel', '17', '1', '0', '0', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('14', '法律法规', 'laws', '0', '1', '0', '0', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('15', '政府公报', 'bulletin', '0', '1', '0', '0', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('16', '政务信息', 'gov', '0', '1', '0', '0', '', '', '');
INSERT INTO `cms_article_cate` VALUES ('19', '昆明文化', 'culture', '17', '1', '0', '0', '', '', '');

-- ----------------------------
-- Table structure for cms_flink
-- ----------------------------
DROP TABLE IF EXISTS `cms_flink`;
CREATE TABLE `cms_flink` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `cate_id` smallint(4) NOT NULL default '1',
  `img` varchar(255) default NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `ordid` smallint(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_flink
-- ----------------------------
INSERT INTO `cms_flink` VALUES ('1', '1', '4f8ceab7e6f6c.jpg', 'phonegap100', 'http://www.phonegap100.com', '1', '1');
INSERT INTO `cms_flink` VALUES ('4', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/1.jpg', '昆明发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=KMfabu', '1', '0');
INSERT INTO `cms_flink` VALUES ('5', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/2.jpg', '昆明市中级人民法院', 'http://m.3g.qq.com/wbread/copage/singleguest?id=yn-kmzy', '1', '0');
INSERT INTO `cms_flink` VALUES ('6', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/3.jpg', '昆明检察', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kunmingjiancha', '1', '0');
INSERT INTO `cms_flink` VALUES ('7', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/4.jpg', '昆明警方', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kunmingpolice', '1', '0');
INSERT INTO `cms_flink` VALUES ('8', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/5.jpg', '昆明国资', 'http://m.3g.qq.com/wbread/copage/singleguest?id=y32089812', '1', '0');
INSERT INTO `cms_flink` VALUES ('9', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/6.jpg', '昆明市交通运输局', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kunmingshijiao', '1', '0');
INSERT INTO `cms_flink` VALUES ('10', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/7.jpg', '共青团昆明市委', 'http://m.3g.qq.com/wbread/copage/singleguest?id=gongqingtuankmsw', '1', '0');
INSERT INTO `cms_flink` VALUES ('11', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/8.jpg', '滇池国家旅度假区', 'http://m.3g.qq.com/wbread/copage/singleguest?id=dianchikm', '1', '0');
INSERT INTO `cms_flink` VALUES ('12', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/9.jpg', '昆明广播电视台', 'http://m.3g.qq.com/wbread/copage/singleguest?id=weibokmbc', '1', '0');
INSERT INTO `cms_flink` VALUES ('13', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/10.png', '昆明食品药品监管', 'http://m.3g.qq.com/wbread/copage/singleguest?id=KMSFDA', '1', '0');
INSERT INTO `cms_flink` VALUES ('14', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/11.jpg', '中国电信昆明客服', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmdx10000', '1', '0');
INSERT INTO `cms_flink` VALUES ('15', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/12.jpg', '昆宣发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmkxfb', '1', '0');
INSERT INTO `cms_flink` VALUES ('16', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/13.png', '昆明五华发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kunmingwuhuafabu', '1', '0');
INSERT INTO `cms_flink` VALUES ('17', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/14.jpg', '盘江微语', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmsplq', '1', '0');
INSERT INTO `cms_flink` VALUES ('18', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/15.jpg', '昆明官渡发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmgdfb', '1', '0');
INSERT INTO `cms_flink` VALUES ('19', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/16.jpg', '昆明西山发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmxsfb2013', '1', '0');
INSERT INTO `cms_flink` VALUES ('20', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/17.jpg', '东川区宣传发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=DCXCB205', '1', '0');
INSERT INTO `cms_flink` VALUES ('21', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/18.jpg', '昆明呈贡发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmcgfb', '1', '0');
INSERT INTO `cms_flink` VALUES ('22', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/19.jpg', '安宁发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=ynanxcb', '1', '0');
INSERT INTO `cms_flink` VALUES ('23', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/20.jpg', '晋宁宣传', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmjnfb1', '1', '0');
INSERT INTO `cms_flink` VALUES ('24', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/21.jpg', '昆明宜良发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmylfb1', '1', '0');
INSERT INTO `cms_flink` VALUES ('25', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/22.jpg', '嵩明宣传发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmsmfb', '1', '0');
INSERT INTO `cms_flink` VALUES ('26', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/23.png', '昆明石林发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmslfb', '1', '0');
INSERT INTO `cms_flink` VALUES ('27', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/24.jpg', '昆明禄劝发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmlqfb1', '1', '0');
INSERT INTO `cms_flink` VALUES ('28', '3', 'http://59.60.30.99:81/imgserv/cms/tqq/25.jpg', '昆明寻甸发布', 'http://m.3g.qq.com/wbread/copage/singleguest?id=kmxdfb', '1', '0');
INSERT INTO `cms_flink` VALUES ('29', '2', '5365b80f06994.jpg', '掌龙在线', 'http://www.zlgame.cn', '1', '99');

-- ----------------------------
-- Table structure for cms_flink_cate
-- ----------------------------
DROP TABLE IF EXISTS `cms_flink_cate`;
CREATE TABLE `cms_flink_cate` (
  `id` smallint(4) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_flink_cate
-- ----------------------------
INSERT INTO `cms_flink_cate` VALUES ('1', '友情链接');
INSERT INTO `cms_flink_cate` VALUES ('2', '合作伙伴');
INSERT INTO `cms_flink_cate` VALUES ('3', '官方微博');

-- ----------------------------
-- Table structure for cms_group
-- ----------------------------
DROP TABLE IF EXISTS `cms_group`;
CREATE TABLE `cms_group` (
  `id` smallint(3) unsigned NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `sort` smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `status` (`status`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_group
-- ----------------------------
INSERT INTO `cms_group` VALUES ('4', 'article', '内容管理', '1222841259', '1222841259', '1', '3');
INSERT INTO `cms_group` VALUES ('1', 'system', '系统设置', '1222841259', '1222841259', '1', '6');
INSERT INTO `cms_group` VALUES ('8', 'member', '会员管理', '0', '0', '1', '4');
INSERT INTO `cms_group` VALUES ('9', 'home', '起始页', '0', '1341386748', '1', '0');
INSERT INTO `cms_group` VALUES ('27', 'seller', '商家管理', '1340586215', '1399185656', '1', '1');

-- ----------------------------
-- Table structure for cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu` (
  `id` int(11) unsigned NOT NULL,
  `parent_id` int(11) default NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(64) default NULL,
  `title` varchar(64) NOT NULL COMMENT '菜单显示名称',
  `level` tinyint(1) NOT NULL default '1',
  `is_has_child` tinyint(1) NOT NULL default '0' COMMENT '0 没有子菜单 1 有子菜单',
  `create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `article_id` int(11) default NULL,
  PRIMARY KEY  (`id`,`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES ('1', '0', '7', '我要落户', '本地居民落户业务办理', '1', '1', '2014-04-25 14:18:40', null);
INSERT INTO `cms_menu` VALUES ('2', '0', '7', '我要落户', '外地居民落户业务办理', '1', '1', '2014-04-25 14:18:47', null);
INSERT INTO `cms_menu` VALUES ('3', '0', '7', '我要落户', '外国居民落户业务办理', '1', '1', '2014-04-18 14:41:06', null);
INSERT INTO `cms_menu` VALUES ('4', '0', '7', '我要落户', '港澳台居民落户业务办理', '1', '1', '2014-04-18 14:41:08', null);
INSERT INTO `cms_menu` VALUES ('11', '1', '7', '我要落户', '本地人户口办理', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('12', '1', '7', '我要落户', '身份证办理', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('111', '11', '7', '我要落户', '新生婴儿出生户口登记', '3', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('112', '11', '7', '我要落户', '户口注销', '3', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('113', '11', '7', '我要落户', '市内户口迁移', '3', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('114', '11', '7', '我要落户', '户口变更', '3', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('115', '11', '7', '我要落户', '集体户口设立', '3', '0', '2014-04-23 16:23:57', '14');
INSERT INTO `cms_menu` VALUES ('121', '12', '7', '我要落户', '公民居民申领、换领第二代身份证', '3', '0', '2014-04-23 16:23:36', '15');
INSERT INTO `cms_menu` VALUES ('122', '12', '7', '我要落户', '办理丢失补领、损坏换领《居民身份证》', '3', '0', '2014-04-23 16:23:10', '16');
INSERT INTO `cms_menu` VALUES ('123', '12', '7', '我要落户', '公民临时居民身份证办理', '3', '0', '2014-04-23 16:22:56', '17');
INSERT INTO `cms_menu` VALUES ('1141', '114', '7', '我要落户', '公民民族变更', '4', '0', '2014-04-23 16:22:31', '10');
INSERT INTO `cms_menu` VALUES ('1142', '114', '7', '我要落户', '公民姓名变更', '4', '0', '2014-04-23 16:22:14', '11');
INSERT INTO `cms_menu` VALUES ('1143', '114', '7', '我要落户', '公民出生日期变更', '4', '0', '2014-04-23 16:21:53', '12');
INSERT INTO `cms_menu` VALUES ('1144', '114', '7', '我要落户', '分户、立户', '4', '0', '2014-04-23 16:21:34', '13');
INSERT INTO `cms_menu` VALUES ('1131', '113', '7', '我要落户', '本市区县内农业户口婚迁', '4', '0', '2014-04-23 16:21:01', '9');
INSERT INTO `cms_menu` VALUES ('1121', '112', '7', '我要落户', '死亡人员户口注销', '4', '0', '2014-04-23 16:20:10', '6');
INSERT INTO `cms_menu` VALUES ('1122', '112', '7', '我要落户', '出国定居或移民户口注销', '4', '0', '2014-04-23 16:28:24', '7');
INSERT INTO `cms_menu` VALUES ('1123', '112', '7', '我要落户', '被国家征集服兵役人员户口注销', '4', '0', '2014-04-23 16:28:10', '8');
INSERT INTO `cms_menu` VALUES ('1111', '111', '7', '我要落户', '父母双方或母亲一方是昆明市常住户口，婚后所生婴儿落户', '4', '0', '2014-04-23 15:55:48', '1');
INSERT INTO `cms_menu` VALUES ('1112', '111', '7', '我要落户', '父母双方或母亲一方是昆明市常住户口，未婚所生婴儿落户', '4', '0', '2014-04-23 15:57:37', '2');
INSERT INTO `cms_menu` VALUES ('1113', '111', '7', '我要落户', '父亲为常住户口、母亲为外省市户口，婚后所生婴儿随父落户', '4', '0', '2014-04-23 15:54:29', '3');
INSERT INTO `cms_menu` VALUES ('1115', '111', '7', '我要落户', '父母为本市区县人才中心、单位集体户口、在校研究生，婚后所生婴儿落户', '4', '0', '2014-04-23 16:16:54', '5');
INSERT INTO `cms_menu` VALUES ('21', '2', '7', '我要落户', '办理《暂住证》', '2', '0', '2014-04-23 16:27:51', '18');
INSERT INTO `cms_menu` VALUES ('22', '2', '7', '我要落户', '办理《暂住证》变更与延期', '2', '0', '2014-04-23 16:27:24', '19');
INSERT INTO `cms_menu` VALUES ('31', '3', '7', '我要落户', '居留许可证办理', '2', '0', '2014-04-23 16:27:06', '20');
INSERT INTO `cms_menu` VALUES ('32', '3', '7', '我要落户', '永久居留申请', '2', '1', '2014-04-17 18:28:05', null);
INSERT INTO `cms_menu` VALUES ('321', '32', '7', '我要落户', '首次申请', '3', '0', '2014-04-23 16:26:50', '21');
INSERT INTO `cms_menu` VALUES ('322', '32', '7', '我要落户', '换、补发申请', '3', '0', '2014-04-23 16:26:24', '22');
INSERT INTO `cms_menu` VALUES ('323', '32', '7', '我要落户', '委托申请', '3', '0', '2014-04-23 16:26:07', '23');
INSERT INTO `cms_menu` VALUES ('41', '4', '7', '我要落户', '台湾居民申请大陆定居', '2', '0', '2014-04-23 16:25:51', '24');
INSERT INTO `cms_menu` VALUES ('42', '4', '7', '我要落户', '台湾居民申请签注', '2', '0', '2014-04-23 16:25:32', '25');
INSERT INTO `cms_menu` VALUES ('43', '4', '7', '我要落户', '港澳居民内地定居', '2', '0', '2014-04-23 16:25:00', '26');
INSERT INTO `cms_menu` VALUES ('44', '4', '7', '我要落户', '港澳居民内地申报户口登记', '2', '0', '2014-04-23 16:25:14', '27');
INSERT INTO `cms_menu` VALUES ('1', '0', '8', '我要驾车', '驾照办理', '1', '1', '2014-04-18 14:41:23', null);
INSERT INTO `cms_menu` VALUES ('2', '0', '8', '我要驾车', '买车养车', '1', '1', '2014-04-18 14:41:24', null);
INSERT INTO `cms_menu` VALUES ('3', '0', '8', '我要驾车', '驾车出行', '1', '1', '2014-04-18 14:41:26', null);
INSERT INTO `cms_menu` VALUES ('11', '1', '8', '我要驾车', '初次申领驾照', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('12', '1', '8', '我要驾车', '换领补领驾照', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('13', '1', '8', '我要驾车', '驾照注销', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('111', '11', '8', '我要驾车', '本地人', '3', '0', '2014-04-23 16:52:19', '28');
INSERT INTO `cms_menu` VALUES ('112', '11', '8', '我要驾车', '外地人', '3', '0', '2014-04-23 16:52:33', '29');
INSERT INTO `cms_menu` VALUES ('121', '12', '8', '我要驾车', '本地人', '3', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('1211', '121', '8', '我要驾车', '持军队、武装警察部队驾驶证申请机动车驾驶证', '4', '0', '2014-04-23 16:40:04', '30');
INSERT INTO `cms_menu` VALUES ('1212', '121', '8', '我要驾车', '机动车驾驶证换证', '4', '0', '2014-04-23 16:39:49', '31');
INSERT INTO `cms_menu` VALUES ('1213', '121', '8', '我要驾车', '申请增加准驾车型换证办理', '4', '0', '2014-04-23 16:38:50', '32');
INSERT INTO `cms_menu` VALUES ('1214', '121', '8', '我要驾车', '换领、补领机动车驾驶证办理', '4', '0', '2014-04-23 16:39:10', '33');
INSERT INTO `cms_menu` VALUES ('131', '13', '8', '我要驾车', '本地人', '3', '0', '2014-04-23 16:58:30', '34');
INSERT INTO `cms_menu` VALUES ('132', '13', '8', '我要驾车', '外地人', '3', '0', '2014-04-23 16:58:33', '35');
INSERT INTO `cms_menu` VALUES ('133', '13', '8', '我要驾车', '外国人', '3', '0', '2014-04-23 16:58:37', '36');
INSERT INTO `cms_menu` VALUES ('21', '2', '8', '我要驾车', '我要买车', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('211', '21', '8', '我要驾车', '车辆登记', '3', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('2111', '211', '8', '我要驾车', '机动车注册登记/转入', '4', '0', '2014-04-23 16:55:19', '37');
INSERT INTO `cms_menu` VALUES ('2112', '211', '8', '我要驾车', '申请机动车临时号牌', '4', '0', '2014-04-23 16:51:00', '38');
INSERT INTO `cms_menu` VALUES ('212', '21', '8', '我要驾车', '其它手续办理', '3', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('2121', '212', '8', '我要驾车', '机动车变更登记', '4', '0', '2014-04-23 16:47:55', '39');
INSERT INTO `cms_menu` VALUES ('2122', '212', '8', '我要驾车', '机动车转移登记', '4', '0', '2014-04-23 17:01:09', '40');
INSERT INTO `cms_menu` VALUES ('2123', '212', '8', '我要驾车', '机动车抵押／注销抵押登记', '4', '0', '2014-04-23 17:01:19', '41');
INSERT INTO `cms_menu` VALUES ('2124', '212', '8', '我要驾车', '机动车注销登记', '4', '0', '2014-04-23 17:01:26', '42');
INSERT INTO `cms_menu` VALUES ('22', '2', '8', '我要驾车', '我要养车', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('221', '22', '8', '我要驾车', '机动车停驶、复驶、更正业务办', '3', '0', '2014-04-23 17:04:32', '43');
INSERT INTO `cms_menu` VALUES ('222', '22', '8', '我要驾车', '补（换）领机动车号牌、行驶证', '3', '0', '2014-04-23 17:04:37', '44');
INSERT INTO `cms_menu` VALUES ('223', '22', '8', '我要驾车', '补（换）领《机动车登记证书》', '3', '0', '2014-04-23 17:04:48', '45');
INSERT INTO `cms_menu` VALUES ('23', '2', '8', '我要驾车', '我要验车', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('231', '23', '8', '我要驾车', '机动车检验', '3', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('2311', '231', '8', '我要驾车', '申请机动车检验合格标志', '4', '0', '2014-04-23 16:47:27', '46');
INSERT INTO `cms_menu` VALUES ('2312', '231', '8', '我要驾车', '本市机动车委托外地核发检验合格标志', '4', '0', '2014-04-23 16:46:25', '47');
INSERT INTO `cms_menu` VALUES ('2313', '231', '8', '我要驾车', '外地机动车委托本市核发机动车检验合格标志', '4', '0', '2014-04-23 16:46:28', '48');
INSERT INTO `cms_menu` VALUES ('31', '3', '8', '我要驾车', '机动车通行证办理', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('311', '31', '8', '我要驾车', '城区或禁行区车辆通行证核发', '3', '0', '2014-04-23 16:49:38', '49');
INSERT INTO `cms_menu` VALUES ('32', '3', '8', '我要驾车', '违法处理', '2', '1', '2014-04-23 17:24:40', null);
INSERT INTO `cms_menu` VALUES ('321', '32', '8', '我要驾车', '违法停车处理程序', '3', '0', '2014-04-23 16:48:57', '50');
INSERT INTO `cms_menu` VALUES ('322', '32', '8', '我要驾车', '“电子眼”违法处理程序', '3', '0', '2014-04-23 16:48:21', '51');
INSERT INTO `cms_menu` VALUES ('1114', '111', '7', '我要落户', '父亲为常住户口、母亲为外省市户口，未婚所生婴儿随父落户', '4', '0', '2014-04-23 15:54:29', '4');

-- ----------------------------
-- Table structure for cms_nav
-- ----------------------------
DROP TABLE IF EXISTS `cms_nav`;
CREATE TABLE `cms_nav` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort_order` smallint(4) NOT NULL,
  `system` tinyint(1) NOT NULL default '0' COMMENT '1-系统 0-自定义',
  `type` tinyint(1) NOT NULL default '1' COMMENT '导航位置1-顶部 2-底部',
  `in_site` tinyint(1) NOT NULL COMMENT '1-本站内 0-站外',
  `is_show` tinyint(1) NOT NULL default '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` text NOT NULL,
  `seo_desc` text NOT NULL,
  `items_cate_id` int(11) default NULL COMMENT '//分类id',
  PRIMARY KEY  (`id`),
  KEY `is_show` (`is_show`),
  KEY `type` (`type`),
  KEY `sort_order` (`sort_order`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_nav
-- ----------------------------
INSERT INTO `cms_nav` VALUES ('1', '发现', 'search', '', '1', '1', '1', '1', '1', '', '', '', '0');
INSERT INTO `cms_nav` VALUES ('2', '母婴', 'album', '', '2', '1', '1', '1', '1', '', '', '', '0');
INSERT INTO `cms_nav` VALUES ('3', '搞笑', 'promo', '', '3', '1', '1', '1', '1', '', '', '', '0');
INSERT INTO `cms_nav` VALUES ('4', '返现商家', 'seller', '', '4', '1', '1', '1', '1', '', '', '', null);
INSERT INTO `cms_nav` VALUES ('5', '视频', 'exchange_goods', '', '5', '1', '1', '1', '0', '', '', '', null);
INSERT INTO `cms_nav` VALUES ('6', '杂谈', 'xiezi', '', '8', '0', '1', '1', '1', '', '', '', '2');
INSERT INTO `cms_nav` VALUES ('7', '帮助中心', 'bangzhu', 'http://bbs.phonegap100.com', '0', '0', '1', '0', '0', '', '', '', '0');

-- ----------------------------
-- Table structure for cms_node
-- ----------------------------
DROP TABLE IF EXISTS `cms_node`;
CREATE TABLE `cms_node` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `module` varchar(255) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `action` varchar(255) NOT NULL,
  `action_name` varchar(50) default NULL,
  `data` varchar(255) default NULL,
  `status` tinyint(1) default '0',
  `remark` varchar(255) default NULL,
  `sort` smallint(6) unsigned NOT NULL default '0',
  `auth_type` tinyint(1) NOT NULL default '0',
  `group_id` tinyint(3) unsigned default '0',
  `often` tinyint(1) NOT NULL default '0' COMMENT '0-不常用 1-常用',
  `is_show` tinyint(1) NOT NULL default '0' COMMENT '0-不常用 1-常用',
  PRIMARY KEY  (`id`),
  KEY `status` (`status`),
  KEY `module` (`module`),
  KEY `auth_type` (`auth_type`),
  KEY `is_show` (`is_show`),
  KEY `group_id` (`group_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_node
-- ----------------------------
INSERT INTO `cms_node` VALUES ('1', 'Node', '菜单管理', '', '', '', '1', '', '0', '0', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('2', 'Node', '菜单管理', 'index', '菜单列表', '', '1', '', '0', '1', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('3', 'Node', '菜单管理', 'add', '添加菜单', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('4', 'Node', '菜单管理', 'edit', '编辑菜单', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('5', 'Node', '菜单管理', 'delete', '删除菜单', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('6', 'Role', '角色管理', '', '', '', '1', '', '370', '0', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('7', 'Role', '角色管理', 'index', '角色管理', '', '1', '', '0', '1', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('8', 'Role', '角色管理', 'add', '添加角色', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('9', 'Role', '角色管理', 'edit', '编辑角色', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('10', 'Role', '角色管理', 'delete', '删除角色', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('11', 'Role', '角色管理', 'auth', '角色授权', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('12', 'Admin', '管理员管理', '', '', '', '1', '', '380', '0', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('13', 'Admin', '管理员管理', 'index', '管理员列表', '', '1', '', '0', '1', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('14', 'Admin', '管理员管理', 'add', '添加管理员', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('15', 'Admin', '管理员管理', 'edit', '编辑管理员', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('16', 'Admin', '管理员管理', 'delete', '删除管理员', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('50', 'Setting', '网站设置', '', '', '', '1', '', '399', '0', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('51', 'Setting', '网站设置', 'index', '网站设置', '', '1', '', '0', '1', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('99', 'Flink', '友情链接', '', '', '', '1', '', '98', '0', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('100', 'Flink', '友情链接', 'index', '友情链接列表', '', '1', '', '0', '1', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('101', 'Article', '资讯管理', '', '', '', '1', '', '100', '0', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('102', 'Article', '资讯管理', 'index', '资讯列表', '', '1', '', '0', '1', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('103', 'Article', '资讯管理', 'add', '添加资讯', '', '1', '', '0', '1', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('104', 'ArticleCate', '资讯分类', '', '', '', '1', '', '99', '0', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('105', 'Article', '资讯管理', 'edit', '编辑资讯', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('106', 'Article', '资讯管理', 'delete', '删除资讯', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('107', 'ArticleCate', '资讯分类', 'index', '分类列表', '', '1', '', '0', '1', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('108', 'ArticleCate', '资讯分类', 'add', '添加分类', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('109', 'ArticleCate', '资讯分类', 'edit', '编辑分类', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('110', 'ArticleCate', '资讯分类', 'delete', '删除分类', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('135', 'SellerCate', '商家分类管理', '', '', '', '1', '', '0', '0', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('136', 'SellerCate', '商家分类管理', 'index', '分类列表', '', '1', '', '0', '1', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('137', 'SellerCate', '商家分类管理', 'add', '增加分类', '', '1', '', '0', '2', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('121', 'Nav', '导航管理', '', '', '', '1', '', '2', '0', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('122', 'Nav', '导航管理', 'index', '导航列表', '', '1', '', '0', '1', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('123', 'Nav', '导航管理', 'add', '添加导航', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('124', 'Nav', '导航管理', 'edit', '编辑导航', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('125', 'Nav', '导航管理', 'delete', '删除导航', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('126', 'Public', '起始页', '', '', '', '1', '', '0', '0', '9', '0', '0');
INSERT INTO `cms_node` VALUES ('127', 'Public', '起始页', 'main', '后台首页', '', '1', '', '0', '1', '9', '0', '0');
INSERT INTO `cms_node` VALUES ('128', 'Group', '菜单分类管理', '', '', '', '1', '菜单分类管理', '10', '0', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('129', 'Group', '菜单分类管理', 'index', '分类列表', '', '1', '', '0', '1', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('130', 'Group', '菜单分类管理', 'add', '增加分类', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('131', 'Group', '菜单分类管理', 'edit', '编辑分类', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('132', 'Group', '菜单分类管理', 'delete', '删除分类', '', '1', '', '0', '2', '1', '0', '0');
INSERT INTO `cms_node` VALUES ('138', 'SellerCate', '商家分类管理', 'edit', '编辑分类', '', '1', '', '0', '2', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('139', 'SellerCate', '商家分类管理', 'delete', '删除分类', '', '1', '', '0', '2', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('140', 'SellerList', '商家管理', '', '', '', '1', '', '0', '0', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('141', 'SellerList', '商家管理', 'index', '商家列表', '', '1', '', '0', '1', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('142', 'SellerList', '商家管理', 'add', '增加商家', '', '1', '', '0', '2', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('143', 'SellerList', '商家管理', 'edit', '编辑商家', '', '1', '', '0', '2', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('144', 'SellerList', '商家管理', 'delete', '删除商家', '', '1', '', '0', '2', '27', '0', '0');
INSERT INTO `cms_node` VALUES ('145', 'Adboard', '广告位置', '', '', '', '1', '', '0', '0', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('146', 'Adboard', '广告位置', 'index', '广告位置', '', '1', '', '0', '1', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('147', 'Adboard', '广告位置', 'add', '添加广告位置', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('148', 'Adboard', '广告位置', 'edit', '编辑广告位置', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('149', 'Adboard', '广告位置', 'delete', '删除广告位置', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('150', 'Ad', '广告管理', '', '', '', '1', '', '0', '0', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('151', 'Ad', '广告管理', 'index', '广告列表', '', '1', '', '0', '1', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('152', 'Ad', '广告位置', 'add', '添加广告', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('153', 'Ad', '广告位置', 'edit', '编辑广告', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('154', 'Ad', '广告位置', 'delete', '删除广告', '', '1', '', '0', '2', '4', '0', '0');
INSERT INTO `cms_node` VALUES ('155', 'User', '会员管理', '', '', '', '1', '', '0', '0', '8', '0', '0');
INSERT INTO `cms_node` VALUES ('156', 'User', '会员管理', 'index', '会员列表', '', '1', '', '0', '1', '8', '0', '0');

-- ----------------------------
-- Table structure for cms_role
-- ----------------------------
DROP TABLE IF EXISTS `cms_role`;
CREATE TABLE `cms_role` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `status` tinyint(1) unsigned default NULL,
  `remark` varchar(255) default NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_role
-- ----------------------------
INSERT INTO `cms_role` VALUES ('1', '管理员', '1', '管理员1', '1208784792', '1254325558');
INSERT INTO `cms_role` VALUES ('2', '编辑', '1', '编辑', '1208784792', '1254325558');

-- ----------------------------
-- Table structure for cms_seller_cate
-- ----------------------------
DROP TABLE IF EXISTS `cms_seller_cate`;
CREATE TABLE `cms_seller_cate` (
  `id` int(8) NOT NULL auto_increment,
  `cid` int(8) NOT NULL,
  `name` varchar(200) NOT NULL,
  `count` int(8) NOT NULL,
  `seller_status` int(1) NOT NULL default '1',
  `status` int(1) NOT NULL,
  `sort` int(6) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cid` (`cid`),
  KEY `index_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_seller_cate
-- ----------------------------
INSERT INTO `cms_seller_cate` VALUES ('122', '22', '食品饮料', '31', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('121', '21', '箱包皮具', '29', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('120', '20', '宠物用品', '1', '0', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('119', '19', '成人保健', '6', '0', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('118', '18', '饰品配饰', '31', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('117', '17', '汽车用品', '7', '0', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('116', '16', '旅游订票', '1', '0', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('115', '15', '钟表眼镜', '17', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('103', '3', '电脑笔记本', '15', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('102', '2', '手机数码', '19', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('114', '14', '药品保健', '8', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('113', '13', '数字卡软件', '2', '0', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('112', '12', '玩具礼品', '6', '0', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('111', '11', '办公用品', '6', '0', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('110', '10', '母婴用品', '14', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('109', '9', '居家生活', '24', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('108', '8', '家用电器', '19', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('107', '7', '户外休闲', '3', '0', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('106', '6', '综合百货', '22', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('105', '5', '化妆美容', '41', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('104', '4', '服装服饰', '85', '1', '1', '10');
INSERT INTO `cms_seller_cate` VALUES ('101', '1', '图书音像', '15', '1', '1', '10');

-- ----------------------------
-- Table structure for cms_seller_list
-- ----------------------------
DROP TABLE IF EXISTS `cms_seller_list`;
CREATE TABLE `cms_seller_list` (
  `id` int(8) NOT NULL auto_increment,
  `sid` int(8) NOT NULL,
  `cate_id` int(8) NOT NULL,
  `name` varchar(200) NOT NULL,
  `site_logo` varchar(200) default NULL,
  `net_logo` varchar(200) NOT NULL,
  `recommend` int(1) NOT NULL,
  `click_url` varchar(400) NOT NULL,
  `sort` int(6) NOT NULL,
  `description` varchar(200) NOT NULL,
  `freeshipment` int(1) NOT NULL,
  `installment` int(1) NOT NULL,
  `has_invoice` int(1) NOT NULL,
  `cash_back_rate` varchar(64) NOT NULL,
  `status` int(1) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `index_status` (`status`),
  KEY `index_recommend` (`recommend`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_seller_list
-- ----------------------------
INSERT INTO `cms_seller_list` VALUES ('41', '1002', '0', '新蛋中国', null, 'http://img.59miao.com/seller/logo/newegg.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1002&a=', '10', '<p>新蛋网是全球最大IT数码购物网站，中国新蛋网依托著名的美国新蛋网而创立。新蛋网是目前国内知名的IT数码购物网站之一，提供最新的电脑配件、数码产品和时尚用品。</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('42', '1003', '0', 'No5时尚广场', null, 'http://img.59miao.com/seller/logo/no5.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1003&a=', '10', '<p>No5时尚广场是中国领先的护肤、香水、健康、电视购物产品及资讯提供商。现经营品牌200多个，5000多种商品在线销售。NO5一直以诚信经营为理念，以用户至上为宗旨，向消费者提供高品质的产品，方便、灵活的订购方式及支付系统，并已在全国开通1875个城市、直辖市的快递货到付款服务。成立7年来，凭借优惠的价格及高效、优质的售后服务，销售额连年递增，赢得了广大消费者的信任与支持，在电子商务领域树立了', '1', '1', '1', '9%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('43', '1004', '0', '趣天麦网', null, 'http://img.59miao.com/seller/logo/m18.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1004&a=', '10', '<p>趣天麦网（麦考林、麦网）是建立在麦考林国际邮购公司长期的目录销售的基础之上的电子商务销售网站，是目前国内知名的女装购物网站。</p> ', '1', '1', '1', '0.7%~7%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('44', '1006', '0', '当当网', null, 'http://img.59miao.com/seller/logo/dangdang.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1006&a=', '10', '<p>当当网是全球最大的中文网上商城。1999年11月正式开通，目前面向全世界网上购物人群提供近百万种商品的在线销售，包括图书、音像、家居、化妆品、数码、饰品等数十精品门类，每天为成千上万的消费者提供安全、方便、快捷的服务，给网上购物者带来极大的方便和实惠。当当网的使命是坚持；更多选择、更多低价；让越来越多的网上购物顾客享购互联网，全球已有1560万的顾客在当当网上选购过自己喜爱的商品。</p> ', '1', '1', '1', '0.4%~6.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('45', '1008', '0', '七彩谷', null, 'http://img.59miao.com/seller/logo/7cv.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1008&a=', '10', '<p>七彩谷网站提供成人用品与保健品。</p> ', '1', '1', '1', '28%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('46', '1010', '0', '东方CJ', null, 'http://img.59miao.com/seller/logo/ocj.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1010&a=', '10', '<p>东方CJ是上海知名电视购物平台。2003年8月28日，上海文广新闻传媒集团与韩国CJ家庭购物株式会社在上海国际会议中心签订了合资合同，双方共同投资成立上海东方希杰商务有限公司，进军家庭购物产业。目前公司通过电视、网络、会刊(商品目录)三大事业领域，共享接单与物流基础设施，开展家庭购物业务，为上海、华东乃至全国广大消费者提供各种在线商品信息，使消费者足不出户就可以获取详细的商品信息，并且可以通', '1', '1', '1', '1.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('47', '1014', '0', '母婴之家', null, 'http://img.59miao.com/seller/logo/muyingzhijia.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1014&a=', '10', '<p>母婴之家是专业的母婴用品专卖网站。提供0-3岁婴幼儿产品、新妈妈、准妈妈用品的专业零售服务。母婴之家经营的产品包括奶粉，辅食，牛初乳，纸尿裤，营养保健，喂哺用品，洗护用品，童车童床，妈妈用品，婴儿服饰，日常生活用品，玩具等等。主要经营品牌包括：惠氏，美赞臣，雅培，美素，好奇，帮宝适，贝亲，安怡，NUK，金奥聪，初乳康乳加力，三洋，六甲村，好孩子，小龙哈彼等等。</p> ', '1', '1', '1', '1%~8%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('48', '1016', '0', '乐友母婴用品网', null, 'http://img.59miao.com/seller/logo/leyou.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1016&a=', '10', '<p> &nbsp; &nbsp;乐友公司是中国领先的孕婴童用品零售连锁企业，主要销售的产品种类包括：孕妇用品、0-6岁婴幼食品、用品、车床、玩具、图书音像以及服装等七大类产品，与我们合作的供应商及厂家达到530家之多，遍布世界23个国家，所销售的产品种类已超过万种。乐友在1999年成立了中国第一家母婴用品电子商务网站。公司自成立以来始终专注于孕婴童行业，不断深化各项服务，引进国际信息化管理，并率', '1', '1', '1', '1.5%~5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('49', '1017', '0', '梦露时尚', null, 'http://img.59miao.com/seller/logo/menglu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1017&a=', '10', '<p>梦露网站是定位于销售女性内衣系列产品的电子商务专业站点，网站创建的宗旨是将传统商业同现代网络技术有机结合，打破传统经营模式，摆脱地域性束缚，使您无需任何投入便可与电子商务接轨，感受网络销售带给您的惊喜。 </p> ', '1', '1', '1', '9%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('50', '1018', '0', '天天网', null, 'http://img.59miao.com/seller/logo/tiantian.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1018&a=', '10', '<p>天天购物网网上商城 , 是目前中国最大的专业香水、化妆品、内衣服饰网上商城 , 作为化妆品、内衣服饰界最具权威性的电子商务网站 , 拥有良好的企业形象及商业信誉。自 1999 创建至今 , 已拥有国际国内知名合作化妆品品牌 400 余个 , 化妆品品牌占有率尽 80%, 国际国内知名合作内衣服饰品牌 100 余个已和众多国际国内知名品牌协手合作 , 成为中国化妆品、内衣服饰界最具权威性的在线', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('51', '1019', '0', '兰缪内衣', null, 'http://img.59miao.com/seller/logo/lamiu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1019&a=', '10', '<p>兰缪内衣，东京时尚内衣，活力，快乐，性感的日本时尚女性品牌。</p> ', '1', '1', '1', '8.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('52', '1020', '0', '名鞋库', null, 'http://img.59miao.com/seller/logo/s.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1020&a=', '10', '<p>打破虚拟疆界，名鞋库的每一位份子陆续与您面对面。</p> ', '1', '1', '1', '3.2%~9.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('53', '1021', '0', '太平鸟', null, 'http://img.59miao.com/seller/logo/pb89.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1021&a=', '10', '<p>太平鸟时尚女装，全场2.8折起，注册就送10元，支持货到付款，无理由退换货服务，让您放心购物。</p> ', '1', '1', '1', '6%~15%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('54', '1023', '0', '99网上书城', null, 'http://img.59miao.com/seller/logo/99read.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1023&a=', '10', '<p>上海九久读书人文化实业有限公司创建于2004年3月29日。公司由人民文学出版社、新华书店总店、对外文化集团、明天出版社等国有资本和著名学者、作家余秋雨、知名财经作家吴晓波、资深出版人黄育海等人出资的民间资本共同组建。公司名誉董事长为余秋雨先生，公司董事长由黄育海先生担任。</p> ', '1', '1', '1', '5%~8%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('55', '1026', '0', '互动出版社', null, 'http://img.59miao.com/seller/logo/china-pub.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1026&a=', '10', '<p>中国互动出版网,网站成立于2000年7月，国内最大的专业技术图书网上书店。目前网站图书品种近120万种，与国内、国外500余家出版社建立了供货关系，中、英文可供图书品种市场覆盖率超过90%。数十家国内、外物流合作商，共同帮助 china-pub 实现国内600余个城市、国际300余个城市的配送服务。网站2005-2007连续三年被评为“国内电子商务网站100强”、“图书音像类综合排名第一位”', '1', '1', '1', '6%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('56', '1028', '0', '桔色', null, 'http://img.59miao.com/seller/logo/x.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1028&a=', '10', '<p>桔色始于1997年，至今已有10年历史，是国内知名的成人用品在线购物网站。</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('57', '1031', '0', '中国图书网', null, 'http://img.59miao.com/seller/logo/bookschina.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1031&a=', '10', '<p>中国图书网创建于1998年，是国内最早的网上图书销售平台之一。</p> ', '1', '1', '1', '4%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('58', '1032', '0', '欧飞数卡', null, 'http://img.59miao.com/seller/logo/ofcard.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1032&a=', '10', '<p>欧飞数卡在线——中国第一数字门户，风险投资背景，海归创业，创立于2005年年初，致力于商品的数字化及所有数字商品和服务的在线销售，商品包括游戏点卡，游戏直冲，电话卡，话费充值，娱乐卡，教育卡，软件序列号等13类商品；欧飞支持中国所有可能存在的支付方式，7×24小时在线支付，实时发货，实时充值，无需等待，并且是7×24小时的在线客户服务，得到了客户的高度认同。</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('59', '1037', '0', 'SEPHORA丝芙兰', null, 'http://img.59miao.com/seller/logo/sephora.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1037&a=', '10', '<p>丝芙兰官方网上商城是Sephora的官方网上商城。丝芙兰的创始人为多米尼克·曼多诺先生，1969年在法国的里摩日开设了自己的第一家化妆品商店。当时，美容用品只在百货公司的内销售，全没有开放式的自由选购。而在曼多诺先生的设计下，他的化妆品专卖店不仅是一个销售场所，更还是一个供顾客参观、漫游和探索美丽的自由乐园。</p> ', '1', '1', '1', '14%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('60', '1043', '0', '中国鲜花专递网', null, 'http://img.59miao.com/seller/logo/cnfse.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1043&a=', '10', '<p>中国鲜花专递网拥有目前国内最强大的配送联盟,拥有以ISO标准化管理理念经营管理生产配送控制流程；拥有国际一流的花艺设计师指导包装设计；建立了从物料采集到配送回访全程信息化服务控制体系。当前，我们在全国发展了11家品牌直营店,3000多家加盟连锁店,分别服务于北京、南京、武汉、广州、重庆、深圳、上海等各大中城市。可提供定点定时送货上门服务,以最高的效率、最优质的服务、最有保证的品质,为客户提供', '1', '1', '1', '13%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('61', '1044', '0', 'DHC中国', null, 'http://img.59miao.com/seller/logo/dhc.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1044&a=', '10', '<p>DHC官方网上商城是最知名的化妆品网上商城之一。1972年，DHC由现任总裁吉田嘉明独自创业。经过30多年努力，现已成为跨化妆品、医药保健食品、医药品、翻译出版、高级美容院、水疗等多个领域的综合性企业，并取得了引人注目的辉煌业绩。</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('62', '1045', '0', '爱之谷', null, 'http://img.59miao.com/seller/logo/aizhigu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1045&a=', '10', '<p>爱之谷商城目前经营的项目有保健品、男女健慰器、情趣内衣、丰胸产品、男性壮阳、避孕测孕等成人用品，共八大类9000多种商品。在广大用户的热心支持下，经过坚定不移的努力，爱之谷商城已成为国内专业的成人用品行业网站。</p> ', '1', '1', '1', '20%~40%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('63', '1048', '0', '麦包包', null, 'http://img.59miao.com/seller/logo/mbaobao.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1048&a=', '10', '<p>麦包包是中国领先的箱包直销网站。自1996年创业以来，凭借10多年的箱包行业经验，为全球客户提供从箱包生产加工、进出口贸易、箱包设计、品牌推广以及在线销售一条龙服务；目前我们代理销售几十个国际和国内知名箱包品牌，其中包括梦特娇、李宁、千百惠、卡丹路、皮尔卡丹、米奇 、菲都狄都、库库、绿点、VEMO、贝朗以及歌莉娅等，我们经销的箱包产品种类丰富，涵盖中高档几千款箱包产品。自开业以来，以强有力的', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('64', '1050', '0', '可得眼镜', null, 'http://img.59miao.com/seller/logo/keede.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1050&a=', '10', '<p>可得网是中国领先的网上眼镜商城。利用强大的眼镜行业集约采购价格优势、专业的电子商务管理服务经验和最先进的互联网技术，可得网供最新最好的隐形眼镜、太阳眼镜及眼镜相关附件产品。可得网拥有一支眼科咨询专家团队，主要成员有二名国内知名医学院毕业的视光学医师及三名拥有丰富验光配镜实战经验的国家高级验光师组成，为可得网用户提供专业的配镜及使用指导服务。</p> ', '1', '1', '1', '2.8%~10%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('65', '1052', '0', '京东商城', null, 'http://img.59miao.com/seller/logo/jd.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1052&a=', '10', '<p>京东商城是中国B2C市场最大的3C网购专业平台，是中国电子商务领域最受消费者欢迎和最具影响力的电子商务网站之一。京东商城秉承以人为本的服务理念，全程为个人用户和企业用户提供人性化的全方位服务，努力为用户创造亲切、轻松和愉悦的购物环境；不断丰富产品结构，以期最大化地满足消费者日趋多样的购物需求。相较于同类电子商务网站，京东商城拥有更为丰富的商品种类，并凭借更具竞争力的价格和逐渐完善的物流配送体', '1', '1', '1', '43元；0.7%~4.2%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('66', '1063', '0', '红孩子', null, 'http://img.59miao.com/seller/logo/redbaby.suning.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1063&a=', '10', '<p>红孩子是知名母婴用品购物网站。红孩子于2004年3月成立，致力于通过目录和互联网为用户提供方便快捷的购物方式和价廉物美的产品。成立两年多以来发展速度迅猛，现在已经拥有母婴用品、化妆品、健康产品、自选礼品，家居产品五条产品线，成为全国规模最大的目录销售企业。红孩子凭借独特的业务模式，良好的发展势头和优秀的核心团队顺利吸引到美国著名风险投资公司NEA和Northern Light的两轮融资。</', '1', '1', '1', '0.8%~2.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('67', '1065', '0', '易迅网', null, 'http://img.59miao.com/seller/logo/yixun.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1065&a=', '10', '<p>易迅网是国内知名的IT数码购物之一，提供家电，电脑，数码产品等。易讯依托著名的IT产品通路商上海易盛网络科技有限公司，是目前国内知名的IT数码类购物网站。易迅网提供电脑配件类、游戏外设类、多媒体设备类、数码设备类、时尚用品类等商品。易迅网合理的价格、便捷的购物方式，为网购用户打造全新的IT数码购物新体验！</p> ', '1', '1', '1', '0.35%~2.8%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('68', '1066', '0', '新华书店', null, 'http://img.59miao.com/seller/logo/winxuan.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1066&a=', '10', '<p>新华书店由四川新华书店集团负责经营。四川新华书店集团旗下四川新华文轩连锁股份有限公司，于2007年5月30日在香港联合交易所主板成功上市，成为国内出版发行业第一家境外上市公司。</p> ', '1', '1', '1', '4%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('69', '2015', '0', '薇娜薇', null, 'http://img.59miao.com/seller/logo/venusveil.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=2015&a=', '10', '<p>薇娜薇是国内首家来自日本，并坚持日本健康美丽理念的女性购物网站。源于日本知名商社成员伊滕先生创立，LOGO的灵感就来自于传说中美神与爱神的化身——维纳斯。薇娜薇所涉产品100%日本企划设计，100%安心日本品质，为各种女性烦恼提供完美解决方案。类别覆盖风靡日本的女性功能性塑身内衣、原装进口的化妆品、健康食品、日常滋润保养佳品、各种精美日用品、世界公认高品质的日本制连裤袜和打底裤、风靡日本的女', '1', '1', '1', '11%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('70', '1070', '0', '卡巴斯基', null, 'http://img.59miao.com/seller/logo/kaba365.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1070&a=', '10', '<p>kaba365是卡巴斯基官方指定的下载升级站，提供卡巴斯基软件的在线购买下载、续费升级服务。本期推广产品为：卡巴斯基7.0系列软件。</p> ', '1', '1', '1', '20%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('71', '1071', '0', '佑一良品', null, 'http://img.59miao.com/seller/logo/uiyi.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1071&a=', '10', '<p>九派服饰创立于2003年，2007年收购日本时尚服饰品牌“佑一良品”，目前在中国地区全力经营以男、女系列时尚包袋为核心的产品系列。佑一良品运用创新化商业模型，目前致力于箱包、手袋、皮革制品的产品研发，通过将现代电子商务模式与传统零售业进行创新性融合，以自有品牌为龙头，兼蓄代理销售国内外原创包袋、服饰品牌产品。团队拥有超过10年的国内外服饰行业的从业经验，以国际化的视角，坚定、务实地服务于国内', '1', '1', '1', '2%~12%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('72', '1074', '0', '梦芭莎内衣', null, 'http://img.59miao.com/seller/logo/moonbasa.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1074&a=', '10', '<p>梦芭莎是一个专业女性内衣多渠道直销品牌，为提供女性自然丰胸美体塑身解决方案，让各年龄段的女性可以轻松美体！自然塑身！</p> ', '1', '1', '1', '5%~40%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('73', '33044', '0', '大朴网', null, 'http://img.59miao.com/seller/logo/dapu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=33044&a=', '10', '<p>大朴是一种生活态度</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('74', '1079', '0', '金象网上药店', null, 'http://img.59miao.com/seller/logo/jxdyf.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1079&a=', '10', '<p>金象大药房网上药店是北京金象大药房医药连锁有限责任公司的官方商务网站，拥有国家食品药品监督管理局颁发的《互联网药品信息服务资格证书》和《互联网药品交易服务资格证书》。是一个集医药产品、健康资讯、专业咨询服务为一体的全新业务平台，并整合各种优秀产品、渠道和资源，为消费者提供全新的健康消费体验。 2007年金象网上线以来，仅用一年时间已居业内首位。</p> ', '1', '1', '1', '10%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('75', '1080', '0', 'JUSTYLE', null, 'http://img.59miao.com/seller/logo/justyle.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1080&a=', '10', '<p>justyle源于英国伦敦的创新品牌，以“让时尚更简单！”为使命，倡导“时尚和世界是和平的”。justyle来源于当今创新和时尚达人常用的两个代表词汇：just和style的结合，不仅为牛津大辞典创新了新的词汇，而且有恰恰代表了现在都市生活的态度。</p> ', '1', '1', '1', '8%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('76', '1084', '0', 'YOHO!有货', null, 'http://img.59miao.com/seller/logo/yoho.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1084&a=', '10', '<p>YOHO！有货网上商城，年轻人的聚集地。</p> ', '1', '1', '1', '4%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('77', '1087', '0', '一号店', null, 'http://img.59miao.com/seller/logo/yhd.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1087&a=', '10', '<p>一号店是知名的综合百货购物网站。一号店由电子商务平台+目录导购手册+独特的会员制组成的崭新销售模式，改变传统的商品营销方式，为顾客和商家创造最大价值。</p> ', '1', '1', '1', '1.5%~3.5', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('78', '1100', '0', '乐蜂网', null, 'http://img.59miao.com/seller/logo/lefeng.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1100&a=', '10', '<p>中国第一档演播室大型时尚节目《美丽俏佳人》合作伙伴。在乐蜂网LAFASO.COM，您可以透过我们的专家群，以及引领时尚趋势潮流的达人们，为您提供各类的流行信息、时尚情报、生活品味以及购物乐趣。在乐蜂网LAFASO.COM，所有满足您需求的解决方案都由专家达人为您量身打造，所有呈现在您眼前的商品都由美丽教练为您严选把关，我们希望能透过我们所提供的服务，满足所有女性内心真正的渴望，让您每一天的生', '1', '1', '1', '1%~12%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('79', '1103', '0', '唯品会', null, 'http://img.59miao.com/seller/logo/vip.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1103&a=', '10', '<p>vipshop名牌时尚折扣网，一个新型的网上购物平台，我们每周为您精选3~4个国际知名品牌，商品折扣低至2折限时限量售卖，商品囊括时装、护肤品、箱包、皮具、配饰、香水等等，琳琅满目。</p> ', '1', '1', '1', '80元；1%~6%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('80', '1107', '0', 'masamaso玛萨玛索', null, 'http://img.59miao.com/seller/logo/masamaso.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1107&a=', '10', '<p>Masa maso是九合尚品公司与西班牙设计师合作设计的男装品牌，由欧洲设计师领衔企划。MasaMaso的产品设计理念源自欧洲经典服装风格，摄取国际流行元素、集结顶级时尚男装品牌经典款式，借鉴国际潮流趋势的同时参考亚洲男士体型特点，精选高档面料贴身制作，力图提供色彩多样的、经典与时尚平衡产品，让用户以中等价位享受奢华品质。我们致力于为用户提供物超所值的产品，打造“男人的网上衣橱”。</p> ', '1', '1', '1', '8%~16%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('81', '1110', '0', '乐淘网', null, 'http://img.59miao.com/seller/logo/letao.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1110&a=', '10', '<p>知名玩具购物网站-乐淘网的姐妹站点。乐淘族由国际知名投资基金投资，您每买一双鞋，乐淘为您向李连杰先生创立的壹基金支付一元人民币。乐淘族凭借雄厚的资金实力和在电子商务业界的诚信积累，与Nike、Adidas、Converse、New &nbsp;Balance等国际大牌深度合作。保证了产品与专卖店同步更新，让您不出家门能最快速度买到当季新款名牌鞋。乐淘族坚持直营，减少中间环节，让利给用户，因此', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('82', '1113', '0', '我买网', null, 'http://img.59miao.com/seller/logo/womai.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1113&a=', '10', '<p>我买网是中粮集团旗下B2C食品网上购物网站。是办公室白领、居家生活和年轻一族的首选食品网络购物网站。商品包括：休闲食品、粮油、冲调品、饼干蛋糕、婴幼食品、果汁饮料、茶叶、调味品、进口食品、方便食品和早餐食品等百种品类。</p> ', '1', '1', '1', '4%~7%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('83', '1121', '0', '趣玩网', null, 'http://img.59miao.com/seller/logo/quwan.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1121&a=', '10', '<p>趣玩网推崇“趣生活，玩有品”，即奇趣生活，玩出品质，玩出品格。我们希望让用户，合作伙伴，员工都成为“玩者”。玩者——意为热爱玩的人士。我们的愿景是—用“趣”、“玩”去影响世界！</p> ', '1', '1', '1', '7.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('84', '1122', '0', 'likeface化妆品商城', null, 'http://img.59miao.com/seller/logo/likeface.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1122&a=', '10', '<p>likeface化妆品商城 - 时尚女性首选香港原装正品化妆品网购商城,为时尚达人提供B2C网购最低折扣价的护肤品、彩妆、香水。likeface化妆品商城更集成潮流美容护肤产品资讯、美容学堂、时尚流行新品推荐、减肥瘦身攻略、美发护理、化妆品体验点评等</p> ', '1', '1', '1', '12%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('85', '1124', '0', '酒美网', null, 'http://img.59miao.com/seller/logo/winenice.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1124&a=', '10', '<p>美日美月集团是目前中国内地市场架构最专业，实力最雄厚的红酒商之一，为消费者提供私人化品酒服务。出售的每一款酒，均由专业品酒师亲赴法国波尔多精心挑选，从品尝，装瓶到运输，贮藏，专业人士全程打理，确保从城堡直达消费者，并且在最佳时机品尝。美日美月推荐的城堡酒，就像欧洲老店的手工巧克力，未必奢侈豪华，却总能带来最个性、最纯正的高品质体验。</p> ', '1', '1', '1', '11%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('86', '1131', '0', '淘鞋网', null, 'http://img.59miao.com/seller/logo/taoxie.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1131&a=', '10', '<p>淘鞋网是专业鞋城网，目前已与阿迪达斯、耐克、匡威、李宁、伊凡妮莎、361度、匹克等二十多知名厂家或一级代理商家签订销售协议。从源头保证销售产品正规渠道来源、放心质量。除此以外，在新品上市更新频率以及产品数量、结构、价格等全面顾及客户利益。同时逐步完善网络技术，为消费者提供更方便的产品查询及订单跟踪功能，更全面的产品介绍，更简洁的客户体验，辅以更优质的客户服务和更快速的物流配送，为满足客户多方', '1', '1', '1', '3.5%~14%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('87', '1144', '0', '视客眼镜网', null, 'http://img.59miao.com/seller/logo/sigo.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1144&a=', '10', '<p>Sigo视客眼镜网，是一家眼镜类产品专业生产及销售的公司，也是国内第一家采用工厂装配模式的眼镜商城。Sigo模式，将传统配镜过程中的“验光、选购、装配”三个流程进行分解并使之更专业化，用户通过sigo服务终端进行专业验光，再通过网络挑选镜架填写个性定制要求，最后由sigo装配中心按照个性订单进行集中装配、检测、配送。</p> ', '1', '1', '1', '35元；2%~21%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('88', '1145', '0', '也买酒', null, 'http://img.59miao.com/seller/logo/yesmywine.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1145&a=', '10', '<p>作为国内首家进口红酒的线上、线下立体销售平台，MY WINE力争为每位消费者找到最适合自己的那瓶酒，并与您共享发现的快乐。无论是广大的红酒爱好者，还是跃跃欲试却无从选择的初饮者，都能在Yesmywine有所发现，有所收获。Yesmywine坚信，红酒没有那么深奥，它是用来凝聚全家温馨、或者朋友小聚中不可缺少的基本元素，也是自己想喝时可以随时来一杯的东西。我们要做的事情就是实现红酒消费的亲民化', '1', '1', '1', '4%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('89', '1148', '0', '和茶网', null, 'http://img.59miao.com/seller/logo/hecha.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1148&a=', '10', '<p>和茶网是国内商品最丰富、销量最大的茶叶网购商城，目前已有注册用户50余万，商品涵盖国内六大类茶、茶具、保健茶、特色茶产品。所有商品均是针对网购用户特别打造，产品性价比高，用户转化率高，和茶网在淘宝、拍拍等平台均有开设分店，销量一路高升，深受广大茶友欢迎，并在福州等地开有线下体验店“和茶汇”，在茶行业具有很高的影响力、及品牌知名度。</p> ', '1', '1', '1', '16%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('90', '1150', '0', '卡当网', null, 'http://img.59miao.com/seller/logo/kadang.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1150&a=', '10', '<p>卡当公司致力于提供个性礼品定制服务，特色是一件起订，全国配送。卡当网凭借自身过硬的服务品质和技术能力，已经成为新浪网、中国雅虎、51网、校内网、51job等著名网站的合作伙伴。卡当网凭借独特的业务模式，良好的发展势头和优秀的核心团队顺利吸引到第一轮超千万级的风险投资。投资者包括国际一流的风险投资基金：NEA、RED POINT等，还有阿里巴巴集团前CTO、搜索引擎之王吴炯先生，Webex的创', '1', '1', '1', '10%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('91', '1151', '0', '苏宁易购', null, 'http://img.59miao.com/seller/logo/suning.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1151&a=', '10', '<p>苏宁易购是苏宁电器的官方网上商城，提供彩电、冰箱、洗衣机、空调、手机,笔记本电脑,数码相机,单反相机,MP3，MP4，厨房家电,厨卫家电,生活小电器,办公家电,家居用品的网上销售，是中国3C家电连锁零售企业领跑者。</p> ', '1', '1', '1', '2%~4%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('92', '33042', '0', '海尔商城', null, 'http://img.59miao.com/seller/logo/ehaier.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=33042&a=', '10', '<p> 海尔公司1984年创立于青岛。创业以来，海尔坚持以用户需求为中心的创新体系驱动企业持续健康发展，从一家资不抵债、濒临倒闭的集体小厂发展成为全球最大的家用电器制造商之一。2011年，海尔集团全球营业额1509亿元，在全球17个国家拥有8万多名员工，海尔的用户遍布世界100多个国家和地区。</p><p><br /></p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('93', '1166', '0', '聚尚网', null, 'http://img.59miao.com/seller/logo/fclub.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1166&a=', '10', '<p>聚尚网是由F GROUP（F GROUP LIMITED）全资控股于2009年7月正式设立，由聚尚电子商务（上海）有限公司全面负责管理运营。利用闪购模式即B2C网站以限时特卖的形式，定期定时推出国际知名品牌的服饰商品，以原价1-5折的价格供专属会员限时抢购，每次特卖时间仅延续5到10天，先到先买，售完即止。</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('94', '1175', '0', '北发图书网', null, 'http://img.59miao.com/seller/logo/beifabook.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1175&a=', '10', '<p>北发图书网是在整合了北京图书大厦、王府井新华书店、中关村图书大厦等7家网络书店资源的基础上，组建的以图书、音像制品及电子出版物销售为主，集网上购物、在线阅读、行业信息发布和多种商品经营功能于一体的国有大型图书类专业网站。</p> ', '1', '1', '1', '4.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('95', '1176', '0', '草莓网', null, 'http://img.59miao.com/seller/logo/strawberrynet.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1176&a=', '10', '<p>草莓网是著名的网上化妆品特价折扣店，为全球顾客提供折扣品牌护肤品、香水及化妆用品。目前草莓网已经为100多个不同国家的顾客提供服务，以丰富的商品，具有竞争力的价格获得了全球各地顾客的青睐。草莓网接受支付宝和其它付款方法，提供免运费优惠。</p> ', '1', '1', '1', '2.5%~14.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('96', '1180', '0', '走秀网', null, 'http://img.59miao.com/seller/logo/xiu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1180&a=', '10', '<p>走秀网购物商城是网上最大的定位于时尚电子商务领域的网上购物中心，为您提供各种网上流行鞋子，护肤品，时尚包包，休闲服饰，韩国服装，时尚家居用品等，是您网购的好选择。</p> ', '1', '1', '1', '0.8%~14%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('97', '1204', '0', '高鸿商城', null, 'http://img.59miao.com/seller/logo/tao3c.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1204&a=', '10', '<p>高鸿商城tao3c.com隶属于大唐集团旗下上市公司大唐高鸿股份（股票代码：000851），拥有国有中央企业的背景和上市公司的公信力。目前定位于自主营销式的B2C电子商务平台，立足成为国内最专业、最优质的3C产品网络零售服务提供商，专注于3C产品，构建轻松购物、放心购物的营销平台，全场商品均为正品行货、提供国家正规机打发票，为顾客打造放心、省心、舒心的购物环境。 </p> ', '1', '1', '1', '1.2元~80元', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('98', '1205', '0', '五谷磨房', null, 'http://img.59miao.com/seller/logo/iwugu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1205&a=', '10', '<p>五谷磨房是中国现磨膳食养生第一品牌，在全国100多个城市开设1000多家专柜和2家网上商城；五谷磨房通过食品安全、有机食品出口认证，精选优质五谷杂粮、药食同源食材，低温烘焙，手工现磨，以高品质赢得200万家庭的喜爱。五谷磨房官方商城的订单均价为220元左右，佣金为实际销售额的18%，在这个越来越注重养生的年代也越来越受大家欢迎，欢迎各位会员合作！</p> ', '1', '1', '1', '10.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('99', '1206', '0', '八百方', null, 'http://img.59miao.com/seller/logo/800pharm.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1206&a=', '10', '<p>八百方通过聚集全国主流医药零售连锁企业（药店），搭建开放式医药及健康领域的电子商务平台。面向广大消费者提供OTC药品、保健品、药膳礼品、母婴用品、美容减肥商品、医疗器械、成人用品等商品在线交易及健康资讯服务。 <br /></p> ', '1', '1', '1', '11.00%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('100', '1207', '0', 'TS欧美时尚女装平台', null, 'http://img.59miao.com/seller/logo/onlyts.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1207&a=', '10', '<p>兰亭集势是中国整合了供应链服务的在线B2C（内部叫做L2C，LightInTheBox 2 Customer），该公司拥有一系列的供应商，并拥有自己的数据仓库和长期的物流合作伙伴，截止到2010年兰亭集势是中国跨境电子商务平台的领头羊。2010年6月，兰亭集势完成对3C电子商务欧酷网的收购。 </p> ', '1', '1', '1', '16%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('101', '1217', '0', '米尚优品', null, 'http://img.59miao.com/seller/logo/misun.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1217&a=', '10', '<p>北京米尚优品科技有限公司为中国服装自主品牌先锋企业，MISUN品牌是公司的旗帜品牌，开创了中国时尚羽绒服的先河，产品以其“版型考究、物超所值”的核心竞争力，赢得了客群的普遍尊敬和青睐，现已发展成为四季化、系列化的零售品牌。2011年，米尚将在中国建立标准终端销售并致力于以电子商务及体验店铺为主的经营模式，成立米尚优品网上商城，实现品牌四季化经营，着力满足消费者追求时尚、自信的审美需求。 <b', '1', '1', '1', '3.5%~20%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('102', '1221', '0', '极限户外商城', null, 'http://img.59miao.com/seller/logo/xoutshop.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1221&a=', '10', '<p>极限户外，一个专业的户外运动用品与装备品牌，源于中国极限户外网极限户外商城，隶属极限网，是由极限网授权，通过第三方专业管理团队独立运营的企业实体，以电子商务B2C的形式，主要销售自主品“XOUT.CN极限户外”的全系列户外运动用品及装备，如户外帐篷、睡袋、冲锋衣、徒步鞋、登山包等。提供100%正品、七天无理由退换货的金牌服务承诺。 <br /></p> ', '1', '1', '1', '0.7%~20%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('103', '33354', '0', '天虹网上商城', null, 'http://img.59miao.com/seller/logo/tianhong.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=33354&a=', '10', '<p>网上天虹是天虹商场股份有限公司创立的一个全新网上购物平台。天虹商场股份有限公司是国有控股的中外合资连锁百货企业，其控股股东是中国航空技术深圳有限公司，系隶属于中国航空工业集团的下属子公司。截至2013年8月底，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等省市开设了57家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞共开设了2家直营分店。公司已连续12年入围中国连锁百', '1', '1', '1', '1.05~3.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('104', '33357', '0', '甲虎网', null, 'http://img.59miao.com/seller/logo/jarhu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=33357&a=', '10', '甲虎网', '1', '1', '1', '3%~8%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('105', '33355', '0', '飞牛网', null, 'http://img.59miao.com/seller/logo/feiniu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=33355&a=', '10', '<p>飞牛网是于2013年6月由高鑫零售成立的网上购物平台，由上海飞牛集达电子商务有限公司负责经营，以自营模式发展电子商务零售业务。飞牛网的母公司为中国大型连锁零售超市大润发。飞牛网上线期初在线销售商品涵盖：手机数码、电脑办公、家用电器、家庭清洁、厨卫清洁、家居家纺、服饰鞋靴、美容化妆、美容化妆、个人护理、饮料、酒水、台湾食品、进口食品、文具图书、母婴玩具、宠物商品等近20万种自营商品。</p> ', '1', '1', '1', '0.4%~4.7%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('106', '33356', '0', '红蜻蜓', null, 'http://img.59miao.com/seller/logo/51hqt.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=33356&a=', '10', '<p>红蜻蜓集团位于“中国十大最具活力城市”之一的浙江温州，创始于1995年，是一家集专业制鞋、皮具、服饰等多元投资的、大型的现代化企业。</p> ', '1', '1', '1', '6%~22%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('107', '1449', '0', '聚美优品', null, 'http://img.59miao.com/seller/logo/jumei.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1449&a=', '10', '<p>聚美优品是第一家也是中国最大的化妆品限时特卖商城。聚美优品由陈欧、戴雨森和刘辉创立于2010年3月，致力于创造简单、有趣、值得信赖的化妆品购物体验。聚美优品首创“化妆品团购”模式：每天在网站推荐十几款热门化妆品，并以吸引人的折扣低价限量出售；同时承诺“百分百正品”，以及“拆封30天无条件退货”。</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('108', '1730', '0', '新华旅行网', null, 'http://img.59miao.com/seller/logo/51you.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1730&a=', '10', '新华旅行网', '1', '1', '1', '1.5%~3.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('109', '1788', '0', '骆驼品牌官方商城', null, 'http://img.59miao.com/seller/logo/camelcn.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1788&a=', '10', '<p>Camel骆驼官方商城，是Camel骆驼旗下唯一的官方网络销售平台，销售Camel骆驼登山鞋、男鞋、女鞋、皮具及服装商品。100%专柜正品，品类齐全，价格优惠。支持货到付款，享受7天无理由退换，周到的售后服务让购买更放心。品牌官方商城，绝对正品保证！ <br /></p> ', '1', '1', '1', '6%~16%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('110', '1789', '0', '央广购物', null, 'http://img.59miao.com/seller/logo/cnrmall.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1789&a=', '10', '<p>央广购物系中央人民广播电台倾力打造的专业居家购物公司，是以电视购物频道为主体，辅助于广播、网络、手机电视、型录的全媒体无店铺购物运营平台。2009年6月，经由国家广电总局审核，央广购物频道获得在全国所有有线电视网络落地覆盖、市场营销的资格。央广购物总部设于北京，首期投入资金过亿，拥有5000平米的办公场地，1000平米的直播影棚，同时配备了当下最先进的呼叫中心和信息管理系统。</p> ', '1', '1', '1', '3.5%~10.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('111', '1866', '0', '国美在线', null, 'http://img.59miao.com/seller/logo/gome.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1866&a=', '10', '<p>国美电器集团坚持“薄利多销，服务当先”的经营理念，依靠准确的市场定位和不断创新的经营策略，引领家电消费潮流，为消费者提供个性化、多样化的服务，国美品牌得到中国广大消费者的青睐。本着“商者无域、相融共生”的企业发展理念，国美电器与全球知名家电制造企业保持紧密、友好、互助的战略合作伙伴关系，成为众多知名家电厂家在中国的最大的经销商。</p> ', '1', '1', '1', '1%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('112', '1935', '0', '家家乐购', null, 'http://img.59miao.com/seller/logo/jjlg.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1935&a=', '10', '<p>家家乐购是国内著名的健康类产品分销商,利用先进的呼叫中心与电子商务平台,通过诚信的服务,满足会员对健康产品与健康生活的种种需要.目前,家家乐购通过与国内外优秀的产品供应商合作,正在让越来越多的中国消费者通过诚信、实惠的价格,享受到优质的健康产品与服务。2007年，家家乐购和中国生命关怀协会联合成立健康服务中心，致力于在全社会宣传普及生命与健康知识，推广各项健康服务，并将逐步设立覆盖中国主要城', '1', '1', '1', '15%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('113', '1937', '0', 'LOVO家居商城', null, 'http://img.59miao.com/seller/logo/lovo.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1937&a=', '10', '<p>LOVO是电子商务领域领先的家居品牌，作为罗莱家纺旗下的直销家居品牌，在业界享有盛名。LOVO是始终坚持一线品质与大众消费的合理价位，提供物超所值、系列丰富和快捷直销的家居产品和服务，给您带来全方位的“e”时尚体验，也让每个中国客户在任何时候、随心所欲，通过LOVO网络、DM目录等渠道直销，获得与全球同步的属于自己的居家产品。</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('114', '1938', '0', '乐健网', null, 'http://img.59miao.com/seller/logo/lejianshop.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1938&a=', '10', '<p>乐健网是由中国医药保健品进出口商会主办，旨在打造中国医药保健品行业最专业、最权威的 &nbsp;电子商务平台。我们将整合中国乃至全球优秀的健康保健品、值得信任的保健品牌以及具备社 &nbsp;会责任感的良心企业来共同保护消费者生命健康权、培养消费者生命健康的消费意识。</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('115', '1940', '0', '达芙妮官方购物网', null, 'http://img.59miao.com/seller/logo/buy.daphne.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1940&a=', '10', '<p>达芙妮国际控股有限公司1990年以自创「达芙妮」品牌进入大陆内销市场，目前『达芙妮』已成为最受女性喜爱的女鞋品牌，连续12年在同类产品市场销量全国第一，不仅如此，集团也是海外进口商及知名OEM客户的主要女鞋类供货商，无论在外销和内销领域，本集团都获得了辉煌的成就。</p> ', '1', '1', '1', '8%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('116', '1942', '0', '凡客V+', null, 'http://img.59miao.com/seller/logo/vjia.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1942&a=', '10', '<p>V+是凡客诚品旗下网站，精选全球时尚品牌，坚持高性价比以及顾客体验至上的运营理念，主要服务于85后网上购物主力人群。</p> ', '1', '1', '1', '0.5%~11%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('117', '1945', '0', '上品折扣网', null, 'http://img.59miao.com/seller/logo/shopin.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1945&a=', '10', '<p>“上品折扣”连锁门店和“上品折扣网”销售网站，是北京市上品商业发展有限责任公司(Beijing &nbsp;Shopin &nbsp;Retail &nbsp;Development &nbsp;Co. &nbsp;Ltd.)旗下专门从事零售百货业中名牌商品折扣价格销售的连锁实体门店和网络销售平台。</p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('118', '1947', '0', '中国零食网', null, 'http://img.59miao.com/seller/logo/lingshi.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1947&a=', '10', '<p>中国零食网是国内首家购买食品安全保险，全年提供24小时客户服务的专业零食网上商城。每天8款零食秒杀，两天一期精品团购，还有限时抢购、免费赠品等各种优惠活动，是办公室、居家生活等人群首选的零食购物网站。</p> ', '1', '1', '1', '4.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('119', '1950', '0', '品尚红酒', null, 'http://img.59miao.com/seller/logo/wine9.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1950&a=', '10', '<p>品尚红酒网（www.pinwine.cn）是华南区最大的进口红酒直购商城是深圳市鑫品卓贸易有限公司旗下品牌之一，专业提供国外原装进口红酒的批发、团购和直销业务。</p> ', '1', '1', '1', '3.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('120', '1953', '0', '优雅100', null, 'http://img.59miao.com/seller/logo/uya100.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1953&a=', '10', '<p>优雅100，高质低价的家纺网上商城，是为追求品质生活的人群而精细打造的高品质家纺和生活用品网上商城。</p> ', '1', '1', '1', '3%~12%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('121', '1958', '0', '爱慕官方商城', null, 'http://img.59miao.com/seller/logo/aimer.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1958&a=', '10', '<p>爱慕集团在北京及苏州拥有两处生产基地，旗下拥有的品牌及产品线包括：“爱慕”（AIMER）、“爱美丽”(imi’s)、“LA &nbsp;CLOVER”、“AIMER &nbsp;men”、“Aimerkids”“ &nbsp;Aimerbody”、“shine &nbsp;love(网络专享)” &nbsp;、Oberson、LISE &nbsp;CHARMEL、其他品牌及家纺系列产品等。另', '1', '1', '1', '5.6%~12%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('122', '1960', '0', '酒仙网', null, 'http://img.59miao.com/seller/logo/jiuxian.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1960&a=', '10', '<p>酒仙网是中国第一个专业电子商务B2C酒水连锁零售网站。公司借助于现代电子商务平台主力从事酒类高档消费品的销售服务，主营进口高档洋酒、红葡萄酒、国产中高档白酒、葡萄酒、花雕酒等。</p> ', '1', '1', '1', '3.5%~12%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('123', '1961', '0', 'NOP时尚品牌官方商城', null, 'http://img.59miao.com/seller/logo/nop.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1961&a=', '10', '<p>NOP选取英文Net &nbsp;Of &nbsp;Pop的单词首字母，将“互联网时尚品牌”浓缩其中，以“为品质而设计”作为品牌理念，为不甘愿平庸的你提供最好的产品。NOP愿成为你生活的一部分，承载你的情感，历久弥新。</p> ', '1', '1', '1', '7%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('124', '1965', '0', '百洋健康网', null, 'http://img.59miao.com/seller/logo/baiyjk.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1965&a=', '10', '<p>百洋健康网是迪巧官方指定网络经销商。目前设有“聪慧宝宝”、“幸孕妈咪” 两个子频道，主要经营产品有药品、孕婴用品、保健品、医疗器械、药妆产品、生活日化等十一大类、近万种产品。</p> ', '1', '1', '1', '3%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('125', '1967', '0', '韩都衣舍', null, 'http://img.59miao.com/seller/logo/handu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=1967&a=', '10', '<p>韩都衣舍，秉承“韩国时尚专家”这一品牌理念，以独有的资源优势，将韩国时尚文化咨询和流行元素第一时间引进国内，为中国女性提供原汁原味的韩国白领生活方式和最时尚的流行女装。</p> ', '1', '1', '1', '17.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('126', '2013', '0', '库巴网', null, 'http://img.59miao.com/seller/logo/coo8.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=2013&a=', '10', '<p>库巴购物网是国内领先的家电产品网购服务提供商，我们一直以低价、便捷、诚信、高速的标准来服务客户。</p> ', '1', '1', '1', '0.5%~4%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('127', '14928', '0', '斯波帝卡', null, 'http://img.59miao.com/seller/logo/sportica.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14928&a=', '10', '<p>SPORTICA(斯波帝卡) &nbsp;的设计师由华尔街迁移至好莱坞，以穿衣指数(INDEX)的概念向男人诠释每个款式的设计内涵。斯波帝卡你的穿衣顾问。</p> ', '1', '1', '1', '6.3%~17.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('128', '2016', '0', '快乐购', null, 'http://img.59miao.com/seller/logo/happigo.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=2016&a=', '10', '<p>“快乐购物有限责任公司”（以下简称“快乐购”）是一家以电视、网络、型录等多媒体通路为销售平台的现代流通企业，专注开拓中国蓬勃发展之新一代家庭购物市场。“快乐购”系由中国内地最具影响力之电视传媒机构之一—湖南卫视与湖南广播影视集团共同注资一亿元人民币，在中国国家工商总局注册成立，公司住所地位于湖南省长沙市。“快乐购”集结电视、网络、型录三大通路向消费者展示精挑细选、琳琅满目的商品信息，让广大消', '1', '1', '1', '1%~3%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('129', '2018', '0', '皙肤泉官方网站', null, 'http://img.59miao.com/seller/logo/xifuquan.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=2018&a=', '10', '<p>全球功效型护肤产品典范。</p> ', '1', '1', '1', '15%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('130', '2023', '0', '博库书城', null, 'http://img.59miao.com/seller/logo/bookuu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=2023&a=', '10', '<p>博库网是国内领先、可供图书品种最多的文化知识平台。2010年博库网销售突破1个亿，注册会员超过85万人，在全国传统书店包括新华书店开办的网上书店中销量位居第一；2011年度，在全国出版发行业网站评选中，博库网被评为新闻出版业网站百强。</p> ', '1', '1', '1', '5%~8%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('131', '15007', '0', '欧酷网络真品行货商城', null, 'http://img.59miao.com/seller/logo/ouku.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=15007&a=', '10', '<p>欧酷网络科技（中国）有限公司，总部设立在上海张江高科技园区。公司作为国内B2C购物网站之一，主营手机及配件、高清数码、电子教育等时尚消费产品。将打造优质的服务作为最重要的使命，力争成为国内网络购物行业中的服务标竿。公司将不断投入及完善，将B2C购物网站的服务水准全面提高！</p> ', '1', '1', '1', '2%~11%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('132', '15002', '0', 'RAX微户外官方商城', null, 'http://img.59miao.com/seller/logo/rax.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=15002&a=', '10', '<p>RAX品牌启发于70至80年代阿尔卑斯山脉RAX山区的新世纪乐活思潮及欧洲经典时尚设计理念，是全球第一家主张轻盈自然生活的户外品牌。RAX产品集时尚 、科技、轻盈于一身，将户外运动融入忙碌都市生活，倡导 “ 微户外 ”健康生活形态，演绎“Live Light — 活出轻盈”的理念！RAX户外聘请国内外顶级设计师组成时尚科技产品研发中心，以专业的国际视野整合最新设计理念，将国际流行时尚元素融入', '1', '1', '1', '15%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('133', '15001', '0', '万表网', null, 'http://img.59miao.com/seller/logo/wbiao.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=15001&a=', '10', '<p>万表网是中国最大的名表商城，专注经营原装正品的中高档世界名表，只有符合我们定位的世界著名的腕表品牌才能进驻万表网，所有腕表均由品牌商或品牌商正式授权的一级代理商直接供货，确保货品的品质，您在万表网买到的手表和您在品牌专卖店看到的是完全一致的，包括随手表一起的保修卡也是盖专卖店的保修章，保证了您到全球任何一家专卖店都可以享受一样的保修服务。</p> ', '1', '1', '1', '0.7%~5.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('134', '14996', '0', '海泰客中国官方商城', null, 'http://img.59miao.com/seller/logo/hi-tec.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14996&a=', '10', '<p>HI-TEC 1974年诞生于英国，历经三十多年的不断发展和全球化进程，已行销100多个国家和地区，成为全球户外鞋销量第一的品牌。HI-TEC.CN是HI-TEC在中国区唯一官方直营商城，主营户外鞋，所有商品的原盒包装、吊牌、条码及其附件均与中国区实体专卖店产品同步 &nbsp;，并提供中国1100城市货到付款，15天无条件退换服务，同时率先在国内推出买户外鞋，送保险卡的体验，为广大户外爱好', '1', '1', '1', '15%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('135', '14988', '0', '魅力惠 ', null, 'http://img.59miao.com/seller/logo/glamour-sales.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14988&a=', '10', '<p>魅力惠是奢侈品会员制购物网站,目前已有会员35万。官方授权的品牌超过350个，包括YSL、John Galliano、Marc Jacobs等等。</p> ', '1', '1', '1', '7%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('136', '14983', '0', '五色鱼', null, 'http://img.59miao.com/seller/logo/wsyu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14983&a=', '10', '<p>五色鱼是深圳市网汇达科技有限公司正规经营的电子商务网站，也是国内领先的饰品网上直销商城，以信誉与口碑赢得市场，致力于为用户提供最优惠的价格同时保障产品的质量和完善的售后服务。五色鱼目前是中国工商银行、招商银行、财付通等多家支付机构的特约合作伙伴；同时与新浪、网易、腾讯、中国移动等多家大型门户网站建立了战略合作关系。产品包括吊坠、耳环、耳钉、项链、毛衣链、手链、手镯、脚链、银条、元宝、工艺品、', '1', '1', '1', '1.4%-14%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('137', '14982', '0', '拍鞋网', null, 'http://img.59miao.com/seller/logo/paixie.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14982&a=', '10', '<p>拍鞋网是全球鞋业第一门户中国鞋网旗下电子商务平台，网站于2007年10月1日正式上线发布、运营。截至目前，拍鞋网注册用户超过100万，页面浏览量超过300万/天, 已成为国内领先的正品品牌鞋B2C网站。拍鞋网计划在未来5年内，打造成为一家数十亿规模的大型正品鞋销售广场。</p> ', '1', '1', '1', '5%~26%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('138', '14981', '0', '左岸女人', null, 'http://img.59miao.com/seller/logo/leftlady.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14981&a=', '10', '<p>关于左岸女人，做一个最能帮助女性解决皮肤问题的网站，让女性得到有效的指导和帮助，在选择产品时不会犯难、用产品时不会犯错，不要因为用错产品而使皮肤受损，真正能够让用户变得更美、更健康。</p> ', '1', '1', '1', '0.7%~3%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('139', '14980', '0', '买茶网', null, 'http://img.59miao.com/seller/logo/maichawang.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14980&a=', '10', '<p>买茶网创立于2007年10月，通过3年多的努力打造，现今已经成为国内茶叶电子商务的领军网站。买茶网主要销售中国十大名茶，供应商皆为国内一线茶叶品牌。合作的品牌有：御牌、漕溪牌、八马牌、徽六牌、猴坑牌、天品国香、吴郡牌、武夷星、骏德牌、千叶牌等等。销售的茗茶有：西湖龙井、黄山毛峰、安溪铁观音、六安瓜片、太平猴魁、祁门红茶、洞庭碧螺春、云南普洱茶、武夷大红袍、台湾高山茶、福鼎白茶、正山小种等等。', '1', '1', '1', '0.8%~11%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('140', '14977', '0', '李宁官方商城', null, 'http://img.59miao.com/seller/logo/e-lining.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14977&a=', '10', '<p>李宁（中国）体育用品有限公司为中国领先的体育品牌企业之一，拥有本身之品牌、研发、设计、制造、经销及零售实力。本集团的产品包括运动及休闲用途之运动鞋、服装及配件，仅出售李宁牌产品。</p> ', '1', '1', '1', '12%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('141', '14976', '0', '秉然生活商城', null, 'http://img.59miao.com/seller/logo/besenz.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14976&a=', '10', '<p>Epiner（E品时尚）是中外合作打造的购物平台，由国内外知名电子商务公司企划。Epiner直销的时尚品牌都是经过精挑细选的中高端欧美时尚品牌，代表着时尚精英的生活品位。代理产品有香港著名床品品牌UJI，英国高端孕装Seraphine和法国波尔多及澳洲名庄精选红酒。</p> ', '1', '1', '1', '15%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('142', '14975', '0', '占姆士服饰官网', null, 'http://img.59miao.com/seller/logo/buyjk.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14975&a=', '10', '<p>占姆士衬衫英国时尚品牌，其面料与整理全部在国家顶级色织布生产基地进行。全球尖端的织造工艺，卓越的免烫整理工艺，以及来自英国、香港等地区的专业设计师团队，为您奉上血统最纯正的英国苏格兰风情的衬衫。占姆士电子商务公司致力于JamesKing品牌浓郁风情文化的传播，立足于中国市场独特的时尚需求，为中国时尚人士提供专业衬衫专家级别的穿着体验建议。占姆士品牌在上海、广州、深圳等主要城市均成立有子公司，', '1', '1', '1', '18%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('143', '14968', '0', '药房网', null, 'http://img.59miao.com/seller/logo/yaofang.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14968&a=', '10', '<p>药房网是中国首家合法网上药店，中国最大的药品零售商城。药房网不仅为您提供药品，还有保健品、美容护肤、减肥瘦身、母婴家居、医疗器械等30大类50000多种高品质的商品，药房网所售商品均按药品标准引进、销售、配送。</p> ', '1', '1', '1', '10%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('144', '14967', '0', '嘀嗒猫', null, 'http://img.59miao.com/seller/logo/didamall.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14967&a=', '10', '<p>嘀嗒猫来了，我们为您捎来了成千上万种美味食品，几千种商品任你挑选。从此，生活更有滋有味。</p> ', '1', '1', '1', '7%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('145', '14963', '0', '波奇网', null, 'http://img.59miao.com/seller/logo/boqii.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14963&a=', '10', '<p>波奇网----全球最大最真实的宠物主题社区。宠物主题交友社区，提供宠物周边产品网上B2C服务。商城所销售的宠物产品均为正品，价格大大低于市面同类产品。</p> ', '1', '1', '1', '8%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('146', '14959', '0', '爱戴眼镜网', null, 'http://img.59miao.com/seller/logo/aidai.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14959&a=', '10', '<p>爱戴网是国内领先的时尚眼镜类电子商城。由上海览易电子商务有限公司提供技术平台并运营管理。爱戴网作为业内敏锐的观察者，在眼镜时装化的进程中，积极引入国际先进的眼镜销售模式、充分利用互联网信息技术，致力于改变现有的眼镜销售模式，以实现“愉快、时尚、专业、快捷、平价”眼镜消费体验。</p> ', '1', '1', '1', '1.4%~14%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('147', '14956', '0', '春水堂情趣用品商城', null, 'http://img.59miao.com/seller/logo/chunshuitang.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14956&a=', '10', '<p>北京春水堂性用品商城为中国性学会性用品销售唯一指定单位,全国1500个城市货到付款.销售进口及国产男女自慰器,两性调情用品,SM虐恋用品,壮阳延时用品,催情用品,情趣内衣,丰胸缩阴产品,同性性玩具。</p> ', '1', '1', '1', '27%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('148', '14953', '0', '邦购网', null, 'http://img.59miao.com/seller/logo/banggo.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14953&a=', '10', '<p>美特斯邦威官方商城。</p> ', '1', '1', '1', '11%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('149', '14954', '0', '蔚蓝网', null, 'http://img.59miao.com/seller/logo/wl.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14954&a=', '10', '<p>专业书。很多其他书店无法找到的图书可以在蔚蓝买到。受众人群：高学历人士，大学师生，以及各行业精英</p> ', '1', '1', '1', '3%~7%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('150', '14942', '0', '红酒客', null, 'http://img.59miao.com/seller/logo/winekee.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14942&a=', '10', '<p>红酒客网站由上海万客易文化传播有限公司于2006年创立，拥有强大互动功能的社区交流平台，并已拥有超过100万的注册会员。目前销售来自法国、意大利、美国、智利、新西兰、南非等新旧世界的6000余款葡萄酒，红酒客不仅酒款多，且包装安全，支付方式多样，限时专人配送，是您的随身酒窖。</p> ', '1', '1', '1', '12%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('151', '14940', '0', '马克华菲官方商城', null, 'http://img.59miao.com/seller/logo/mfplaza.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14940&a=', '10', '<p>马克华菲FAIRWHALE，一个以深海鲸鱼命名的时尚品牌，如同一个奇迹般的慢乐章，宁静而优雅的奏起了令人心荡神驰的中国圆舞曲。 &nbsp;FAIR，喻为优雅，美丽；WHALE，意为深海鲸鱼——FAIRWHALE，携着尊贵与魅力的时尚使者终于深海潜游，浮出了水面，迎着晨光微露的面纱，为期盼已久的追随者们带来了玫瑰色的朝霞与晨辉。自2000年马克华菲诞生以来，深得国际时尚人士青睐，马克华菲旗下', '1', '1', '1', '20%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('152', '33047', '0', '聚风尚', null, 'http://img.59miao.com/seller/logo/jufengshang.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=33047&a=', '10', '<p> 聚风尚全球顶级名表商城专营包括天梭、浪琴、欧米茄、劳力士、爱马仕、卡地亚、帝舵、梅花、依波路、宝玑、积家、伯爵、百达翡丽、江诗丹顿、雅典等100多个世界顶级品牌名表。 所有商品都经过严格把关，通过全球采购、与正规合法品牌商合作引进，拥有 “正品全球联保、无限额免运费、银行分期付款、无障碍退换货、终身免费保养” 五大金牌服务。</p><p><br /></p> ', '1', '1', '1', '', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('153', '14934', '0', '银泰网', null, 'http://img.59miao.com/seller/logo/yintai.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14934&a=', '10', '<p>银泰网是专注于精品时尚百货经营的大型B2C电子商务平台，由国内领先百货连锁集团、香港联交所上市公司银泰百货投资控股。银泰网抱着“为13亿中国人传递新的生活美学“的梦想，把“为用户提供超出想像的满意服务，传播优质品牌影响力”作为使命，致力于让中国时尚消费人群，专享最时尚、最品牌、最品质、最价格的生活品质与潮流购物体验，成为中国最卓越的精品时尚百货购物网站。</p> ', '1', '1', '1', '3.5%~11%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('154', '33046', '0', '柒牌官方商城', null, 'http://img.59miao.com/seller/logo/qipaimall.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=33046&a=', '10', '<p>柒牌商城（官方网站）是以服饰研究、设计和制造为主，集销售为一体的综合性的柒牌男装集团所创建，倡导“立中华时尚，铸一流企业，创世界名牌”的品牌战略，演绎柒牌“比肩世界男装”的品牌形象。<br /></p><p><br /></p> ', '1', '1', '1', '12.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('155', '14930', '0', '御灵珠宝商城', null, 'http://img.59miao.com/seller/logo/cnyu.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=14930&a=', '10', '<p>御灵珠宝是专业经营和田玉、翡翠、水晶、琥珀、碧玺、珍珠、金银钻饰等珠宝玉石饰品的B2C垂直网站，致力于成为时尚的风向标和爱美人士的珠宝专柜。御灵珠宝隶属于御府集团旗下的上海瑾隆工艺品有限公司，与2011年4月正式上线运营。御灵珠宝坚持原料采购、设计、生产、销售一体化的产业链式经营，非常注重生产设计工艺上的技术进步，对产品的要求近乎苛刻，精益求精，每款产品都是货真价实的限量版。御灵珠宝所有产品', '1', '1', '1', '3%~17.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('156', '15025', '0', '联华易购', null, 'http://img.59miao.com/seller/logo/lhmart.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=15025&a=', '10', '<p>联华超市的网上商城。<br /></p> ', '1', '1', '1', '0.8%~6.4%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('157', '15009', '0', '可好了', null, 'http://img.59miao.com/seller/logo/itruelife.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=15009&a=', '10', '<p>网站成立于2011年2月，隶属于真豪网络科技(上海)有限公司，以雄厚的资金和专业的团队领先业内。网站的正式上线，是真豪网络科技(上海)有限公司全面进军中国电子商务界的重要标志。美味七七秉持着“新鲜、健康、专注”的理念，精选全球美食生鲜、高端有机、干货特产、热销零食等多品类商品，24小时新鲜直送，倾力为广大用户打造健康、潮流的优质生活。优质的货源，科学的仓储，专业的物流以及7×14小时全程客服', '1', '1', '1', '3.5%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('158', '15013', '0', '好享购物网上商城', null, 'http://img.59miao.com/seller/logo/hao24.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=15013&a=', '10', '<p>好享购物有限公司（以下简称“好享购物”） 植根于中国内地经济最发达的长江三角洲经济圈，由江苏省广播电视总台（集团）注资5000万元人民币设立，于2008年12月31日正式运营。好享购物定位于新媒体购物，整合电视、互联网、型录、手机等无店铺虚拟通路，为顾客提供多元化的优质商品与服务。2010年3月，经国家广播电影电视总局正式批准，好享购物频道正式升级为江苏省内第一家24小时播出的专业购物频道。', '1', '1', '1', '0.35%~3%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('159', '33353', '0', '美月淘', null, 'http://img.59miao.com/seller/logo/meiyuetao.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=33353&a=', '10', '<p>北京美月淘电子商务有限公司（以下简称美月淘）是国内首家按月预定购产品服务电子商务平台。美月淘具有领先的基于大数据系统的商品价格趋势分析平台，并依托此平台开展电子商务活动服务。美月淘致力于为客户提供优质的社会化电子商务服务、按月预定购服务和高标准的增值运营服务。</p> ', '1', '1', '1', '2.8%', '1', '20140504');
INSERT INTO `cms_seller_list` VALUES ('160', '15018', '0', '美睛网', null, 'http://img.59miao.com/seller/logo/meijing.gif', '0', 'http://r.59miao.com/?pid=103098&e=76ae80a1ce6d41a53ba48fe0414020242fdd0d893d67858d&s=15018&a=', '10', '<p>美睛网是国内领先的专注于眼镜行业的垂直B2C网上眼镜商城，由一群来自中国人民大学的年轻人联合浸润眼镜行业多年的业内人士发起创办。凭借集约采购形成的突出价格优势、领先的平台技术能力、强大的互联网运营推广能力以及完善的电商服务体系，美睛网致力于为用户提供品质可靠、底线价格的眼镜类产品以及“专业、便捷、快速、平价”的消费体验。</p> ', '1', '1', '1', '2.1%~21%', '1', '20140504');

-- ----------------------------
-- Table structure for cms_seller_list_cate
-- ----------------------------
DROP TABLE IF EXISTS `cms_seller_list_cate`;
CREATE TABLE `cms_seller_list_cate` (
  `list_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  KEY `list_id` (`list_id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_seller_list_cate
-- ----------------------------
INSERT INTO `cms_seller_list_cate` VALUES ('41', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('41', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('41', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('42', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('43', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('44', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('45', '119');
INSERT INTO `cms_seller_list_cate` VALUES ('46', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('47', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('47', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('47', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('47', '110');
INSERT INTO `cms_seller_list_cate` VALUES ('47', '112');
INSERT INTO `cms_seller_list_cate` VALUES ('47', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('48', '110');
INSERT INTO `cms_seller_list_cate` VALUES ('49', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('50', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('50', '114');
INSERT INTO `cms_seller_list_cate` VALUES ('50', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('50', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('51', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('52', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('52', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('53', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('54', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('55', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('56', '119');
INSERT INTO `cms_seller_list_cate` VALUES ('57', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('58', '113');
INSERT INTO `cms_seller_list_cate` VALUES ('59', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('60', '112');
INSERT INTO `cms_seller_list_cate` VALUES ('61', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('62', '119');
INSERT INTO `cms_seller_list_cate` VALUES ('63', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('64', '115');
INSERT INTO `cms_seller_list_cate` VALUES ('65', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('65', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('65', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('65', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('65', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('65', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('65', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('66', '110');
INSERT INTO `cms_seller_list_cate` VALUES ('67', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('67', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('67', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('67', '117');
INSERT INTO `cms_seller_list_cate` VALUES ('68', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('69', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('69', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('69', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('70', '113');
INSERT INTO `cms_seller_list_cate` VALUES ('71', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('72', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('73', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('74', '114');
INSERT INTO `cms_seller_list_cate` VALUES ('75', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('76', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('77', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('77', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('77', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('77', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('77', '111');
INSERT INTO `cms_seller_list_cate` VALUES ('77', '112');
INSERT INTO `cms_seller_list_cate` VALUES ('77', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('78', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('79', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('79', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('79', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('79', '110');
INSERT INTO `cms_seller_list_cate` VALUES ('79', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('80', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('81', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('81', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('82', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('83', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('83', '111');
INSERT INTO `cms_seller_list_cate` VALUES ('84', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('85', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('86', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('87', '115');
INSERT INTO `cms_seller_list_cate` VALUES ('88', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('89', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('90', '112');
INSERT INTO `cms_seller_list_cate` VALUES ('91', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('91', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('91', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('91', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('92', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('92', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('92', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('93', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('93', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('94', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('95', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('96', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('96', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('96', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('96', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('96', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('96', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('96', '115');
INSERT INTO `cms_seller_list_cate` VALUES ('96', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('96', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('97', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('97', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('97', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('98', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('99', '114');
INSERT INTO `cms_seller_list_cate` VALUES ('100', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('101', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('102', '107');
INSERT INTO `cms_seller_list_cate` VALUES ('103', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('103', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('103', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('103', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('103', '110');
INSERT INTO `cms_seller_list_cate` VALUES ('103', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('104', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '110');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '111');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '120');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('105', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('106', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('106', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('107', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('107', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('108', '116');
INSERT INTO `cms_seller_list_cate` VALUES ('109', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('109', '115');
INSERT INTO `cms_seller_list_cate` VALUES ('109', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('110', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('110', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('111', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('111', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('111', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('111', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('111', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('111', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('111', '111');
INSERT INTO `cms_seller_list_cate` VALUES ('112', '114');
INSERT INTO `cms_seller_list_cate` VALUES ('112', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('113', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('114', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('115', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('115', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('115', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('116', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('116', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('117', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('117', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('118', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('119', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('120', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('121', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('122', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('123', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('123', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('124', '114');
INSERT INTO `cms_seller_list_cate` VALUES ('124', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('125', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('126', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('126', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('126', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('126', '107');
INSERT INTO `cms_seller_list_cate` VALUES ('126', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('127', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('128', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('129', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('130', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('131', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('131', '103');
INSERT INTO `cms_seller_list_cate` VALUES ('131', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('131', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('132', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('132', '107');
INSERT INTO `cms_seller_list_cate` VALUES ('133', '115');
INSERT INTO `cms_seller_list_cate` VALUES ('134', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('135', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('136', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('137', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('137', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('138', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('139', '114');
INSERT INTO `cms_seller_list_cate` VALUES ('139', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('140', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('141', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('141', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('141', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('142', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('143', '114');
INSERT INTO `cms_seller_list_cate` VALUES ('144', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('145', '120');
INSERT INTO `cms_seller_list_cate` VALUES ('146', '115');
INSERT INTO `cms_seller_list_cate` VALUES ('147', '119');
INSERT INTO `cms_seller_list_cate` VALUES ('148', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('148', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('149', '101');
INSERT INTO `cms_seller_list_cate` VALUES ('150', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('151', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('151', '115');
INSERT INTO `cms_seller_list_cate` VALUES ('151', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('151', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('152', '115');
INSERT INTO `cms_seller_list_cate` VALUES ('153', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('153', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('153', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('153', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('153', '121');
INSERT INTO `cms_seller_list_cate` VALUES ('154', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('155', '118');
INSERT INTO `cms_seller_list_cate` VALUES ('156', '105');
INSERT INTO `cms_seller_list_cate` VALUES ('156', '106');
INSERT INTO `cms_seller_list_cate` VALUES ('156', '108');
INSERT INTO `cms_seller_list_cate` VALUES ('156', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('156', '110');
INSERT INTO `cms_seller_list_cate` VALUES ('156', '111');
INSERT INTO `cms_seller_list_cate` VALUES ('156', '112');
INSERT INTO `cms_seller_list_cate` VALUES ('156', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('157', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('158', '102');
INSERT INTO `cms_seller_list_cate` VALUES ('158', '104');
INSERT INTO `cms_seller_list_cate` VALUES ('158', '109');
INSERT INTO `cms_seller_list_cate` VALUES ('158', '110');
INSERT INTO `cms_seller_list_cate` VALUES ('158', '117');
INSERT INTO `cms_seller_list_cate` VALUES ('158', '122');
INSERT INTO `cms_seller_list_cate` VALUES ('159', '110');
INSERT INTO `cms_seller_list_cate` VALUES ('160', '115');

-- ----------------------------
-- Table structure for cms_setting
-- ----------------------------
DROP TABLE IF EXISTS `cms_setting`;
CREATE TABLE `cms_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_setting
-- ----------------------------
INSERT INTO `cms_setting` VALUES ('site_name', '昆宣微信后台管理系统');
INSERT INTO `cms_setting` VALUES ('site_title', '昆宣微信后台管理系统');
INSERT INTO `cms_setting` VALUES ('site_keyword', '昆宣微信后台管理系统，phonegap100.com');
INSERT INTO `cms_setting` VALUES ('site_description', '昆宣微信后台管理系统是一款微信内容后台管理系统，由掌龙科技提供');
INSERT INTO `cms_setting` VALUES ('site_status', '1');
INSERT INTO `cms_setting` VALUES ('site_icp', '京ICP备88888888号');
INSERT INTO `cms_setting` VALUES ('statistics_code', '');
INSERT INTO `cms_setting` VALUES ('closed_reason', '升级');
INSERT INTO `cms_setting` VALUES ('site_domain', 'http://localhost/wego25');
INSERT INTO `cms_setting` VALUES ('weibo_url', 'http://www.weibo.com');
INSERT INTO `cms_setting` VALUES ('qqzone_url', '');
INSERT INTO `cms_setting` VALUES ('douban_url', '');
INSERT INTO `cms_setting` VALUES ('attachment_size', '3145728');
INSERT INTO `cms_setting` VALUES ('template', 'default');
INSERT INTO `cms_setting` VALUES ('taobao_app_key', '12504724');
INSERT INTO `cms_setting` VALUES ('qq_app_key', '');
INSERT INTO `cms_setting` VALUES ('qq_app_Secret', '');
INSERT INTO `cms_setting` VALUES ('sina_app_key', '100308089');
INSERT INTO `cms_setting` VALUES ('sina_app_Secret', '25ee4d31ca98edea230885985e1cf2e1');
INSERT INTO `cms_setting` VALUES ('taobao_app_secret', '9d6877190386092d4288dcae32811081');
INSERT INTO `cms_setting` VALUES ('url_model', '0');
INSERT INTO `cms_setting` VALUES ('attachment_path', 'data/uploads');
INSERT INTO `cms_setting` VALUES ('client_hash', '');
INSERT INTO `cms_setting` VALUES ('attachment_type', 'jpg,gif,png,jpeg');
INSERT INTO `cms_setting` VALUES ('miao_appkey', '1003336');
INSERT INTO `cms_setting` VALUES ('miao_appsecret', '0847c5008f99150de65fad8e8ec342fa');
INSERT INTO `cms_setting` VALUES ('mail_smtp', 'smtp.163.com');
INSERT INTO `cms_setting` VALUES ('mail_username', 'ho1000003@163.com\r\nho1000004@163.com\r\nho1000005@163.com\r\nhml100000@163.com');
INSERT INTO `cms_setting` VALUES ('mail_password', 'PassWord01!');
INSERT INTO `cms_setting` VALUES ('mail_port', '25');
INSERT INTO `cms_setting` VALUES ('mail_fromname', 'MobileCms');
INSERT INTO `cms_setting` VALUES ('check_code', '1');
INSERT INTO `cms_setting` VALUES ('comment_time', '10');
INSERT INTO `cms_setting` VALUES ('site_share', '<meta property=\\\"qc:admins\\\" content=\\\"271503564761116217636\\\" />');
INSERT INTO `cms_setting` VALUES ('ban_sipder', 'youdaobot|bingbot');
INSERT INTO `cms_setting` VALUES ('ban_ip', '192.168.1.50');
INSERT INTO `cms_setting` VALUES ('site_logo', './data/setting/524a5cbde8499.jpg');
INSERT INTO `cms_setting` VALUES ('article_count', '10');
INSERT INTO `cms_setting` VALUES ('html_suffix', '.html');
INSERT INTO `cms_setting` VALUES ('mail_username', 'ho1000003@163.com\r\nho1000004@163.com\r\nho1000005@163.com\r\nhml100000@163.com');
INSERT INTO `cms_setting` VALUES ('mail_receive_username', '');
INSERT INTO `cms_setting` VALUES ('mail_content', '<body style=\\\"margin: 10px;\\\">\r\n<div align=\\\"center\\\"><img src=\\\"http://www.phonegap100.com/static/image/common/logo.png\\\"></div><br>\r\n<br>\r\n <h3>欢迎使用 树根cms 此系统由phonegap中文网 <a href=\\\"http://www.phonegap100.com\\\" target=\\\"_blank\\\">phonegap100.com</a>提供 </h3>\r\n<br>\r\n\r\n在使用中遇到任何问题，请到phonegap中文网提出，感谢大家对此程序的支持，我们的qq群：295402925\r\n\r\n</body>');
INSERT INTO `cms_setting` VALUES ('mail_title', '欢迎使用树根cms，这是一封感谢信');
