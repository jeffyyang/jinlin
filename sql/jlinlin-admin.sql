/*
Navicat MySQL Data Transfer

Source Server         : 132_wxshop
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
-- Table structure for ecs_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  `shop_id` smallint(5) unsigned DEFAULT '0' COMMENT '商户管理员',
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_user
-- ----------------------------
INSERT INTO `ecs_admin_user` VALUES ('1', 'admin', 'jeffyyang@sina.com', '52b74e9c5358afa02cd1185e24e189ed', '9096', '1399432551', '1421393710', '0.0.0.0', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list', '', '0', '0', null, null, '0');
INSERT INTO `ecs_admin_user` VALUES ('10', 'sh001', 'sh001@sina.com', '76740d3fcc4268314cc470528ed863b2', '7465', '1416465422', '1418724463', '127.0.0.1', 'admin_manage,admin_drop,order_view,order_view_finished,sale_order_stats,delivery_view,back_view,excode_view,suppliers_manage', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list', '', '0', '0', null, '0', '2');
INSERT INTO `ecs_admin_user` VALUES ('11', 'dz001', 'dz001@sina.com', '62034d9e4c6e6d94e035c25e0de7d651', '4430', '1416483331', '1417680566', '127.0.0.1', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '7', null, '3', '0');
INSERT INTO `ecs_admin_user` VALUES ('12', 'dz002', 'dz002@sina.com', '17838c30f00ae5988b704aaf5387413e', '5561', '1416484021', '1416820597', '222.95.45.244', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '6', null, '3', '0');
INSERT INTO `ecs_admin_user` VALUES ('13', 'shopadmin1', 'shopadmin1@aa.com', '8881b9e3d1ceb2a485c22ba433643bb8', '9072', '1417153687', '1417153790', '117.88.151.165', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '0', '0');
INSERT INTO `ecs_admin_user` VALUES ('14', 'lbjtgg', 'lbjtgg@aaa.com', 'e163b476a74d8a3df51799b6272f906b', '7895', '1417254571', '1417254641', '117.88.151.165', 'admin_manage,sale_order_stats,client_flow_stats,delivery_view,back_view,suppliers_manage', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '10', null, '1', '4');
INSERT INTO `ecs_admin_user` VALUES ('15', 'test123', 'test123@sina.com', '576ad490d2e2a71ce60f2f787a82a040', '3966', '1417942669', '1417943152', '0.0.0.0', 'admin_manage,sale_order_stats,client_flow_stats,delivery_view,back_view,suppliers_manage', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '1', '5');
INSERT INTO `ecs_admin_user` VALUES ('16', 'dz222', 'dz222@sina.com', '6a08f4eb3920c5d33229731ce8a734f5', null, '1417943087', '0', '', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '3', '0');
INSERT INTO `ecs_admin_user` VALUES ('18', 'sh003', 'sh003@sina.com', '15eaa9f478867121b31afae9a714dda1', '8914', '1418724793', '0', '', 'admin_manage,sale_order_stats,client_flow_stats,delivery_view,back_view,suppliers_manage', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '1', '6');
