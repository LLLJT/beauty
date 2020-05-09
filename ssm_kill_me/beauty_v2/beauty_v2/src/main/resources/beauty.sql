/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : beauty

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-05-04 05:41:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT '1',
  `content` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `modifytime` datetime DEFAULT NULL,
  `rec_flag` tinyint(1) DEFAULT '0' COMMENT '1, recommend; 0, default, not recommend',
  `pic1` varchar(255) DEFAULT NULL,
  `pic_url_1` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `pic_url_2` varchar(255) DEFAULT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `pic_url_3` varchar(255) DEFAULT NULL,
  `likenum` int(11) DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`),
  KEY `fk_type` (`typeid`),
  KEY `fk_blog_user` (`userid`),
  CONSTRAINT `fk_blog_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_type` FOREIGN KEY (`typeid`) REFERENCES `blog_type` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'blog1', '3', '1', 'content1', '2020-04-29 23:04:09', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('2', 'blog2', '3', '1', 'content2', '2020-04-29 23:05:50', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('3', 'blog3', '3', '1', 'content3', '2020-04-29 23:05:03', null, '1', null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blogid` int(11) DEFAULT NULL,
  `cmtid` int(11) DEFAULT NULL COMMENT 'reply another comment',
  `comment` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `likenum` int(11) DEFAULT '0',
  `del_flag` tinyint(1) DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`),
  KEY `fk_cmt_user` (`userid`),
  KEY `fk_cmt_blog` (`blogid`),
  KEY `fk_cmt_cmt` (`cmtid`),
  CONSTRAINT `fk_cmt_blog` FOREIGN KEY (`blogid`) REFERENCES `blog` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_cmt_cmt` FOREIGN KEY (`cmtid`) REFERENCES `blog_comment` (`id`),
  CONSTRAINT `fk_cmt_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------
INSERT INTO `blog_comment` VALUES ('1', '2', '1', null, 'comment', '2020-04-29 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('2', '13', '2', null, '一个毫无思想的存在，经我之手获得了价值。', '2020-04-29 04:01:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('3', '13', '2', null, '我要来抓你们了。', '2020-04-29 04:02:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('4', '13', '2', null, '所有劣等生物都可受益于我的主宰。', '2020-04-29 04:03:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('5', '13', '2', null, '麦克风打开了吗？测试，一、二，一、二……烂东西。\r\n', '2020-04-29 04:04:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('6', '13', '2', null, '你们蒙蔽不了神之眼。', '2020-04-29 04:05:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('7', '14', '2', null, 'dwdqw', '2020-04-29 05:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('8', '20', '2', '7', 'Surely a tall drink of water like yourself can put out a few flames.', '2020-04-29 05:01:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('9', '14', '2', '8', 'Fxxk you.', '2020-04-29 05:02:00', '0', '1');

-- ----------------------------
-- Table structure for blog_star
-- ----------------------------
DROP TABLE IF EXISTS `blog_star`;
CREATE TABLE `blog_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blogid` int(11) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_star_user` (`userid`),
  KEY `fk_star_blog` (`blogid`),
  CONSTRAINT `fk_star_blog` FOREIGN KEY (`blogid`) REFERENCES `blog` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_star_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog_star
-- ----------------------------
INSERT INTO `blog_star` VALUES ('1', '2', '1', '2020-04-29 23:13:43');
INSERT INTO `blog_star` VALUES ('2', '2', '2', '2020-04-29 23:13:50');
INSERT INTO `blog_star` VALUES ('3', '2', '3', '2020-04-29 23:13:58');
INSERT INTO `blog_star` VALUES ('4', '4', '2', '2020-04-30 17:58:08');
INSERT INTO `blog_star` VALUES ('5', '5', '2', '2020-04-30 17:58:18');
INSERT INTO `blog_star` VALUES ('6', '6', '2', '2020-04-30 17:58:24');

-- ----------------------------
-- Table structure for blog_type
-- ----------------------------
DROP TABLE IF EXISTS `blog_type`;
CREATE TABLE `blog_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog_type
-- ----------------------------
INSERT INTO `blog_type` VALUES ('1', '暂无分类', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roleid` int(11) NOT NULL DEFAULT '2' COMMENT '2,user',
  `sex` tinyint(1) DEFAULT '1' COMMENT '1,male; 0,female',
  `birthday` datetime DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `introdution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profileimg` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`),
  KEY `fk_rolw` (`roleid`),
  CONSTRAINT `fk_rolw` FOREIGN KEY (`roleid`) REFERENCES `user_role` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('2', 'user', 'user', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('3', 'uploader', 'uploader', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('4', 'testuser', '000000', '2', '0', null, null, null, null, '1');
INSERT INTO `user` VALUES ('5', 'testuser1', '111111', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('6', 'testuser2', '222222', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('7', 'testup', '000000', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('8', 'testup1', '111111', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('9', 'testup2', '222222', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('10', 'testadmin', '000000', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('11', 'testadmin1', '111111', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('12', 'testadmin2', '222222', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('13', 'Ozwell E. Spencer', 'laotou', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('14', 'Jill valentine', 'jier', '2', '0', null, null, null, null, '1');
INSERT INTO `user` VALUES ('15', 'Alex Wesker', 'alex', '1', '0', null, null, null, null, '1');
INSERT INTO `user` VALUES ('16', 'Annette Birkin', 'yani', '1', '0', null, null, null, null, '1');
INSERT INTO `user` VALUES ('17', 'William Birkin', 'weilian', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('18', 'Daniel Fabron', 'wuyifan', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('19', 'Valerie Harmon', 'naima', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('20', 'Carlos Oliveira', 'kaluosi', '2', '1', null, null, null, null, '1');

-- ----------------------------
-- Table structure for user_follow
-- ----------------------------
DROP TABLE IF EXISTS `user_follow`;
CREATE TABLE `user_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followerid` int(11) NOT NULL,
  `uploaderid` int(11) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_follower` (`followerid`),
  KEY `fk_uploader` (`uploaderid`),
  CONSTRAINT `fk_follower` FOREIGN KEY (`followerid`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_uploader` FOREIGN KEY (`uploaderid`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_follow
-- ----------------------------
INSERT INTO `user_follow` VALUES ('1', '1', '3', '2020-04-29 22:35:56');
INSERT INTO `user_follow` VALUES ('2', '2', '3', '2020-04-29 22:36:12');
INSERT INTO `user_follow` VALUES ('3', '4', '3', '2020-04-29 22:36:22');
INSERT INTO `user_follow` VALUES ('4', '2', '7', '2020-04-29 22:43:56');
INSERT INTO `user_follow` VALUES ('5', '2', '8', '2020-04-29 22:44:08');
INSERT INTO `user_follow` VALUES ('6', '2', '9', '2020-04-29 22:44:18');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', 'admin', '1');
INSERT INTO `user_role` VALUES ('2', 'user', '1');
INSERT INTO `user_role` VALUES ('3', 'uploader', '1');

-- ----------------------------
-- View structure for upblogstars
-- ----------------------------
DROP VIEW IF EXISTS `upblogstars`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `upblogstars` AS select `blog`.`userid` AS `upid`,`blog`.`id` AS `blogid`,count(0) AS `stars` from (`blog` join `blog_star` on((`blog`.`id` = `blog_star`.`blogid`))) group by `blog`.`id` ;

-- ----------------------------
-- View structure for upfans
-- ----------------------------
DROP VIEW IF EXISTS `upfans`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `upfans` (`upid`,`fans`) AS select `follow`.`uploaderid` AS `uploaderid`,count(0) AS `COUNT(*)` from `follow` group by `follow`.`uploaderid` ;
