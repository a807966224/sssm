/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : sssm

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-07-03 21:40:22
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('0', '菜单根部', null, '-1', '0');
INSERT INTO `menus` VALUES ('1', '系统设置', null, '0', '1');
INSERT INTO `menus` VALUES ('2', '用户管理', '/users/list', '1', '2');
INSERT INTO `menus` VALUES ('3', '角色管理', '/roles/list', '1', '2');
INSERT INTO `menus` VALUES ('4', '菜单管理', '/menu/toAll', '1', '2');
INSERT INTO `menus` VALUES ('5', '123', '11', '1', '2');
INSERT INTO `menus` VALUES ('6', '123', '234', '1', '2');
INSERT INTO `menus` VALUES ('7', '435', '345', '1', '2');
INSERT INTO `menus` VALUES ('12', '啊啊', '11', '0', '1');
INSERT INTO `menus` VALUES ('13', '11', '11', '12', '2');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `state` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'f2abb8c558d18a771c4d090c64d0eaa1ea8a6079d51f1c2b462e4fd9c51c5050957fde5c1a9b085a', '1');
INSERT INTO `users` VALUES ('3', '11', '111', '1');
INSERT INTO `users` VALUES ('4', '1111', '2212', '1');
INSERT INTO `users` VALUES ('5', '99', '99', '1');
INSERT INTO `users` VALUES ('6', '2323', '2323', '1');
INSERT INTO `users` VALUES ('7', 'aasdf', 'sadfasdf', '1');
INSERT INTO `users` VALUES ('8', 'asdfasdf', 'asdfasdf', '1');
INSERT INTO `users` VALUES ('9', '123', '234', '1');
INSERT INTO `users` VALUES ('10', 'asdsfasdf', 'sadfasdf', '1');
INSERT INTO `users` VALUES ('11', '777', '05830047b5925a5b95e1201609d2536604ffea0efca014246aae8d30c22798f77eef9eea3bfb9c2a', '1');
INSERT INTO `users` VALUES ('12', '000', '3d33edf8860d9ed3b9555a67c3ef39d1a6b036f7a483f104f327889ae95bca0ec04656a0c2f0d21b', '1');
INSERT INTO `users` VALUES ('13', '阿道夫333', '4fb297d99f138a4880efcc2907a1099aabec06e7b96af3da0e75ced41728a074414acc8b65cc6cb2', '1');
INSERT INTO `users` VALUES ('14', '来', '1bd0cf37d38bfaa691d57c49decab74d60d5cdb02b8fc05777f081d0dcdcc681c49e472e8065f4e2', '1');
INSERT INTO `users` VALUES ('16', 'test', '8bf9c1fb44222613cec4ca2b8dec9731f5d61b03e964312e7ee74a2a176e538e978b48cac9dae5b8', '1');
