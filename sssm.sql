/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : sssm

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2017-08-25 16:58:21
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ams`
-- ----------------------------
DROP TABLE IF EXISTS `ams`;
CREATE TABLE `ams` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `auth_id` varchar(10) NOT NULL,
  `menu_id` varchar(10) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ams
-- ----------------------------
INSERT INTO `ams` VALUES ('1', '1', '1', '1');
INSERT INTO `ams` VALUES ('2', '1', '2', '1');
INSERT INTO `ams` VALUES ('3', '1', '3', '1');
INSERT INTO `ams` VALUES ('4', '1', '4', '1');
INSERT INTO `ams` VALUES ('27', '44', '12', '1');
INSERT INTO `ams` VALUES ('28', '44', '13', '1');
INSERT INTO `ams` VALUES ('82', '45', '1', '1');
INSERT INTO `ams` VALUES ('83', '45', '2', '1');
INSERT INTO `ams` VALUES ('84', '45', '4', '1');
INSERT INTO `ams` VALUES ('85', '45', '100001', '2');
INSERT INTO `ams` VALUES ('86', '45', '100007', '2');
INSERT INTO `ams` VALUES ('87', '45', '100009', '2');

-- ----------------------------
-- Table structure for `authorities`
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `authname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authorities
-- ----------------------------
INSERT INTO `authorities` VALUES ('1', 'admin');
INSERT INTO `authorities` VALUES ('2', '143');
INSERT INTO `authorities` VALUES ('3', '123');
INSERT INTO `authorities` VALUES ('4', '435');
INSERT INTO `authorities` VALUES ('5', '234');
INSERT INTO `authorities` VALUES ('6', '56');
INSERT INTO `authorities` VALUES ('7', '456');
INSERT INTO `authorities` VALUES ('8', '567');
INSERT INTO `authorities` VALUES ('9', '768');
INSERT INTO `authorities` VALUES ('10', '58');
INSERT INTO `authorities` VALUES ('11', '678');
INSERT INTO `authorities` VALUES ('12', '5674');
INSERT INTO `authorities` VALUES ('13', '456');
INSERT INTO `authorities` VALUES ('14', '354');
INSERT INTO `authorities` VALUES ('15', '345');
INSERT INTO `authorities` VALUES ('16', '456');
INSERT INTO `authorities` VALUES ('17', '567');
INSERT INTO `authorities` VALUES ('18', '345');
INSERT INTO `authorities` VALUES ('19', '56');
INSERT INTO `authorities` VALUES ('20', '546');
INSERT INTO `authorities` VALUES ('21', '4');
INSERT INTO `authorities` VALUES ('22', '7');
INSERT INTO `authorities` VALUES ('23', '6');
INSERT INTO `authorities` VALUES ('24', '5');
INSERT INTO `authorities` VALUES ('25', '3');
INSERT INTO `authorities` VALUES ('26', '7');
INSERT INTO `authorities` VALUES ('27', '9');
INSERT INTO `authorities` VALUES ('28', '0');
INSERT INTO `authorities` VALUES ('29', '6');
INSERT INTO `authorities` VALUES ('30', '765');
INSERT INTO `authorities` VALUES ('31', '987657');
INSERT INTO `authorities` VALUES ('32', '11');
INSERT INTO `authorities` VALUES ('44', '来来来');
INSERT INTO `authorities` VALUES ('45', 'user');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(32) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `dept_addr` varchar(200) DEFAULT NULL,
  `dept_build_date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `dept_tell` varchar(32) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rgt` int(10) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('0', 'ROOT_NODE', 'XXX', '-1', null, null, null, null, '0', '1', '0');

-- ----------------------------
-- Table structure for `functions`
-- ----------------------------
DROP TABLE IF EXISTS `functions`;
CREATE TABLE `functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `funchname` varchar(255) NOT NULL,
  `funenname` varchar(255) NOT NULL,
  `menu_id` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of functions
-- ----------------------------
INSERT INTO `functions` VALUES ('1', '添加', 'ADD', '2');
INSERT INTO `functions` VALUES ('2', '修改', 'EDIT', '2');
INSERT INTO `functions` VALUES ('3', '删除', 'DEL', '2');
INSERT INTO `functions` VALUES ('4', '添加', 'ADD', '3');
INSERT INTO `functions` VALUES ('5', '修改', 'EDIT', '3');
INSERT INTO `functions` VALUES ('6', '删除', 'DEL', '3');
INSERT INTO `functions` VALUES ('7', '添加', 'ADD', '4');
INSERT INTO `functions` VALUES ('8', '修改', 'EDIT', '4');
INSERT INTO `functions` VALUES ('9', '删除', 'DEL', '4');

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `auth_id` varchar(10) NOT NULL,
  `user_id` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', '1', '1');
INSERT INTO `groups` VALUES ('8', '21', '13');
INSERT INTO `groups` VALUES ('9', '35', '13');
INSERT INTO `groups` VALUES ('13', '45', '16');

-- ----------------------------
-- Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(50) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent` varchar(10) DEFAULT NULL,
  `level` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', '系统设置', null, '0', '1');
INSERT INTO `menus` VALUES ('2', '用户管理', '/users/list', '1', '2');
INSERT INTO `menus` VALUES ('3', '角色管理', '/roles/list', '1', '2');
INSERT INTO `menus` VALUES ('4', '菜单管理', '/menu/toAll', '1', '2');
INSERT INTO `menus` VALUES ('12', '啊啊', '11', '0', '1');
INSERT INTO `menus` VALUES ('13', '1111', '111112', '12', '2');
INSERT INTO `menus` VALUES ('15', '部门管理', '/departments/list', '1', '2');
INSERT INTO `menus` VALUES ('17', '手机报修', '3331111', '1', '2');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `state` varchar(5) NOT NULL COMMENT '1正常，0停用',
  `sex` int(2) DEFAULT NULL COMMENT '1男，0女',
  `dept_id` bigint(20) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `cornet` varchar(50) DEFAULT NULL COMMENT '短号',
  `birth` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `car_num` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'f2abb8c558d18a771c4d090c64d0eaa1ea8a6079d51f1c2b462e4fd9c51c5050957fde5c1a9b085a', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('3', '11', '111', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('4', '1111', '2212', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('5', '99', '99', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('6', '2323', '2323', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('7', 'aasdf', 'sadfasdf', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('8', 'asdfasdf', 'asdfasdf', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('9', '123', '234', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('10', 'asdsfasdf', 'sadfasdf', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('11', '777', 'f2abb8c558d18a771c4d090c64d0eaa1ea8a6079d51f1c2b462e4fd9c51c5050957fde5c1a9b085a', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('12', '000', '3d33edf8860d9ed3b9555a67c3ef39d1a6b036f7a483f104f327889ae95bca0ec04656a0c2f0d21b', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('13', '阿道夫333', '4fb297d99f138a4880efcc2907a1099aabec06e7b96af3da0e75ced41728a074414acc8b65cc6cb2', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('14', '来', '1bd0cf37d38bfaa691d57c49decab74d60d5cdb02b8fc05777f081d0dcdcc681c49e472e8065f4e2', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('16', 'test', 'f2abb8c558d18a771c4d090c64d0eaa1ea8a6079d51f1c2b462e4fd9c51c5050957fde5c1a9b085a', null, '1', null, null, null, null, null, null, null, null);
