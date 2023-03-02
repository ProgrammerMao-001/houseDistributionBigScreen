/*
Navicat MySQL Data Transfer

Source Server         : hello
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : dormitorytable

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-02-26 07:54:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `editroomlist`
-- ----------------------------
DROP TABLE IF EXISTS `editroomlist`;
CREATE TABLE `editroomlist` (
  `id` varchar(1000) COLLATE utf8_bin NOT NULL COMMENT '申请退寝列表',
  `roomnumber` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `applicant` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `applicanphone` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `applicantid` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of editroomlist
-- ----------------------------
INSERT INTO `editroomlist` VALUES ('187bb619-c698-4666-894d-28e3484efa23', '114', '苏逸', '13887678981', '56404575', '成功');
INSERT INTO `editroomlist` VALUES ('3501aac9-5765-41af-b369-ab1553e6822b', '131', '毛三仙', '139333', 'bc7e4c90-2890-4d47-8470-a2ddd6047526', '成功');
INSERT INTO `editroomlist` VALUES ('8feead78-0b6c-4c5f-b6d1-f1b174105a80', '125', '吴彬', '13887669961', '34421957', '成功');
INSERT INTO `editroomlist` VALUES ('b18557b1-85c7-403b-bad5-3a8cc85c750f', '112', '吴彬', '13887669961', '34421957', '成功');

-- ----------------------------
-- Table structure for `fixpeoplelist`
-- ----------------------------
DROP TABLE IF EXISTS `fixpeoplelist`;
CREATE TABLE `fixpeoplelist` (
  `id` varchar(1000) COLLATE utf8_bin NOT NULL COMMENT '维修工列表',
  `yearnumber` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `phonenumber` varchar(1000) COLLATE utf8_bin DEFAULT '' COMMENT '维修工列表',
  `sex` varchar(1000) COLLATE utf8_bin DEFAULT '' COMMENT '维修工列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fixpeoplelist
-- ----------------------------
INSERT INTO `fixpeoplelist` VALUES ('15157889', '1', '陈灵洁', '15151615881', '女');
INSERT INTO `fixpeoplelist` VALUES ('15372473', '31', '李斯然', '13887669961', '男');
INSERT INTO `fixpeoplelist` VALUES ('17114983', '2', '郭泽鑫', '13887669051', '男');
INSERT INTO `fixpeoplelist` VALUES ('23548286', '12', '黄义哲', '15187666771', '男');
INSERT INTO `fixpeoplelist` VALUES ('34421957', '4', '周成江', '13887678811', '男');
INSERT INTO `fixpeoplelist` VALUES ('35217622', '10', '刘海涛', '13887679591', '男');
INSERT INTO `fixpeoplelist` VALUES ('36714717', '8', '蔡媛媛', '15126858532', '女');
INSERT INTO `fixpeoplelist` VALUES ('38004465', '3', '郑学开', '15987782652', '男');
INSERT INTO `fixpeoplelist` VALUES ('51763909', '33', '陈方威', '13887669571', '男');
INSERT INTO `fixpeoplelist` VALUES ('55451847', '9', '曾月', '15151515151', '女');
INSERT INTO `fixpeoplelist` VALUES ('68259623', '3', '沃宏烨', '13769620701', '男');
INSERT INTO `fixpeoplelist` VALUES ('93417428', '2', '赵李麒', '13577669191', '男');

-- ----------------------------
-- Table structure for `piclist`
-- ----------------------------
DROP TABLE IF EXISTS `piclist`;
CREATE TABLE `piclist` (
  `id` varchar(1000) COLLATE utf8_bin NOT NULL,
  `url` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of piclist
-- ----------------------------
INSERT INTO `piclist` VALUES ('033d6e06-8054-4bd0-8237-d28419ac8bbf', '/uploads/file/20230226/file-1677362956724-asdaasdasd.png');
INSERT INTO `piclist` VALUES ('10fb2390-cf41-46c7-8f21-76e67d93ab75', '/uploads/file/20230226/file-1677362342784-bgLeft.png');
INSERT INTO `piclist` VALUES ('36a68bf6-6a1d-4200-bc74-b78de1d5b03d', '/uploads/file/20230226/file-1677361370335-bgBig.png');
INSERT INTO `piclist` VALUES ('545726c0-9679-4955-99ac-8d5f4754208f', '/uploads/file/20230226/file-1677362216964-boy.jpg');
INSERT INTO `piclist` VALUES ('6e26e086-f4c4-462b-94db-ee2d8b55d527', '/uploads/file/20230226/file-1677362278676-bgLeft.png');
INSERT INTO `piclist` VALUES ('716d6e83-563f-4c54-999a-68b2b565df3b', '/uploads/file/20230226/file-1677346695311-3.jpg');
INSERT INTO `piclist` VALUES ('89bbc36c-a47c-4370-958a-4d55c0295788', '/uploads/file/20230226/file-1677361873304-bgLeft.png');
INSERT INTO `piclist` VALUES ('90545f5a-a5f6-4efa-9d4a-f974f2e658fd', '/uploads/file/20230226/file-1677362881113-csdn.png');
INSERT INTO `piclist` VALUES ('9ceae8a1-e631-4dcf-8e8b-9e4a48d64acc', '/uploads/file/20230226/file-1677362749512-boy.jpg');
INSERT INTO `piclist` VALUES ('bbb33c51-847e-4564-a11e-eccb6de1801b', '/uploads/file/20230226/file-1677363606182-å¯å®¤ç®¡çç³»ç».png');
INSERT INTO `piclist` VALUES ('c4b0db7d-7b53-4258-86af-677f4449772b', '/uploads/file/20230226/file-1677361737541-bgLeft.png');
INSERT INTO `piclist` VALUES ('e34fbef7-51d4-4127-8a2c-435999c322d4', '/uploads/file/20230225/file-1677339658166-boy.jpg');

-- ----------------------------
-- Table structure for `rolelist`
-- ----------------------------
DROP TABLE IF EXISTS `rolelist`;
CREATE TABLE `rolelist` (
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '角色表\r\n存储用户对应的角色',
  `id` varchar(1000) COLLATE utf8_bin NOT NULL,
  `pid` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of rolelist
-- ----------------------------
INSERT INTO `rolelist` VALUES ('超级管理员', '1', 'null');
INSERT INTO `rolelist` VALUES ('教师', '2', 'null');

-- ----------------------------
-- Table structure for `roomlist`
-- ----------------------------
DROP TABLE IF EXISTS `roomlist`;
CREATE TABLE `roomlist` (
  `id` varchar(1000) COLLATE utf8_bin NOT NULL COMMENT '寝室表\r\n展示所有宿舍信息',
  `roomnumber` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `prize` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `totalnumber` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `nownumber` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `totalprize` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `ids` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `cannumber` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `teachers` varchar(10000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of roomlist
-- ----------------------------
INSERT INTO `roomlist` VALUES ('7f358c06-c3f3-412f-82fb-fc4453e7038a', '1122', '800', '7', '1', '800', '34915300', '6', '周智瑶');
INSERT INTO `roomlist` VALUES ('CEAC110862312010270022', '111', '300', '4', '0', '0', '', '4', '');
INSERT INTO `roomlist` VALUES ('CEAC110862312010270030', '112', '300', '4', '2', '600', '93417428,91874528', '2', '李世淼,黄义哲');
INSERT INTO `roomlist` VALUES ('CEAC110862312010270049', '113', '300', '4', '0', '0', null, '4', null);
INSERT INTO `roomlist` VALUES ('CEAC110862312010270057', '114', '300', '4', '1', '300', '59716130', '3', '吴家敏');
INSERT INTO `roomlist` VALUES ('CEAC110862312010270065', '115', '300', '4', '0', '0', '', '4', '');
INSERT INTO `roomlist` VALUES ('CEAC110862312010270073', '121', '700', '2', '0', '0', null, '2', null);
INSERT INTO `roomlist` VALUES ('CEAC110862312010270081', '122', '700', '2', '0', '0', null, '2', null);
INSERT INTO `roomlist` VALUES ('CEAC1108L1022010270019', '123', '700', '2', '1', '700', '34421957', '1', '吴彬');
INSERT INTO `roomlist` VALUES ('CEAC1108L1022010270027', '124', '700', '2', '1', '700', 'bc7e4c90-2890-4d47-8470-a2ddd6047526', '1', '毛三仙');
INSERT INTO `roomlist` VALUES ('CEAC1108L1022010270035', '125', '700', '2', '0', '0', '', '2', '');
INSERT INTO `roomlist` VALUES ('CEAC1108L1022010270043', '131', '1000', '1', '0', '0', '', '1', '');
INSERT INTO `roomlist` VALUES ('CEAC1108L1022010270051', '132', '1000', '1', '0', '0', null, '1', null);
INSERT INTO `roomlist` VALUES ('CEAC1108L102201027006X', '133', '1000', '1', '0', '0', null, '1', null);
INSERT INTO `roomlist` VALUES ('CEAC1108L1022010270078', '134', '1000', '1', '0', '0', null, '1', null);
INSERT INTO `roomlist` VALUES ('CEAC1108L1022010270086', '135', '1000', '1', '0', '0', null, '1', null);

-- ----------------------------
-- Table structure for `routerlist`
-- ----------------------------
DROP TABLE IF EXISTS `routerlist`;
CREATE TABLE `routerlist` (
  `name` varchar(1000) COLLATE utf8_bin DEFAULT '路由列表管理员',
  `url` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `icon` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `id` varchar(1000) COLLATE utf8_bin NOT NULL,
  `pid` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of routerlist
-- ----------------------------
INSERT INTO `routerlist` VALUES ('用户管理', '/sysManage/user', 'el-icon-user-solid\n', '0466648e-9a0e-4371-95a0-9290c0be2f58', 'null', '超级管理员');
INSERT INTO `routerlist` VALUES ('首页', '/home', 'el-icon-s-home\n', '59c80fd3-b761-4049-8f1a-e8cbdf05fa8c', 'null', '超级管理员,教师');
INSERT INTO `routerlist` VALUES ('维修管理', '/fixManage', 'el-icon-receiving', 'adasva516-fas564fas-as561f', 'null', '超级管理员');
INSERT INTO `routerlist` VALUES ('寝室管理', '/roomManage', 'el-icon-office-building', 'asdasd65das-56asd4asfa-asdas8q4g', 'null', '超级管理员');
INSERT INTO `routerlist` VALUES ('寝室申请', '/roomApply', 'el-icon-s-order', 'asdasdasfasf-asf-afdsf-sdsd4f9sdf-df', 'null', '教师');
INSERT INTO `routerlist` VALUES ('角色管理', '/roleManage', 'el-icon-takeaway-box', 'asdsada-sda156asd-asdas56-dasd', 'null', '超级管理员');
INSERT INTO `routerlist` VALUES ('维修工', '/sysManage/fixMan', 'el-icon-cpu', 'asg65he-g2g56dg-dsgd15sdf-dsf56', '0466648e-9a0e-4371-95a0-9290c0be2f58', '超级管理员');
INSERT INTO `routerlist` VALUES ('教师', '/sysManage/teacher', 'el-icon-user', 'dasdadasd-agdf2-15616das-sada56', '0466648e-9a0e-4371-95a0-9290c0be2f58', '超级管理员');
INSERT INTO `routerlist` VALUES ('退寝记录', '/editRoomManage', 'el-icon-guide', 'saaf156gfehtr-hr4e1f4s-fsdf56ad-ssaa', 'null', '超级管理员');
INSERT INTO `routerlist` VALUES ('维修申请', '/fixApply', 'el-icon-s-open', 'sadasfdfdsfs-asdassafas-sdfsfmj-s1', 'null', '教师');
INSERT INTO `routerlist` VALUES ('个人中心', '/personalCenter', 'el-icon-chat-line-round', 'safasfa-ggn-thnthn156tnt-nthn89rtg', 'null', '教师');

-- ----------------------------
-- Table structure for `userlist`
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist` (
  `id` varchar(1000) COLLATE utf8_bin NOT NULL COMMENT '用户表\r\n存取系统中用户的信息',
  `username` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `phonenumber` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `typeid` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `headimg` varchar(10000) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `token` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES ('12345645', '陈方威', '15187666771', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0031', '男');
INSERT INTO `userlist` VALUES ('20519196', '胡宇涛', '13769620701', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0032', '男');
INSERT INTO `userlist` VALUES ('22222222', 'admin', '13999999999', '超级管理员', '1', 'https://img-blog.csdnimg.cn/img_convert/2e1955b703679764792778c8efb15617.jpeg', 'a123', 'token-CEAC1108L120A0033', '男');
INSERT INTO `userlist` VALUES ('34421957', '吴彬', '13887669961', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0034', '男');
INSERT INTO `userlist` VALUES ('34915300', '周智瑶', '13887679591', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0035', '男');
INSERT INTO `userlist` VALUES ('38004422', '徐敏', '15126858511', '教师', '2', 'http://127.0.0.1:3000/api/getImg?url=/uploads/file/20230224/file-1677254120198-3.jpg', 'a123', 'token-CEAC1108L120A0036', '男');
INSERT INTO `userlist` VALUES ('38004465', '赵李麒', '18287662381', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0037', '男');
INSERT INTO `userlist` VALUES ('52128696', '郑学开', '15008829661', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0038', '男');
INSERT INTO `userlist` VALUES ('56404575', '苏逸', '13887678981', '教师', '2', 'http://127.0.0.1:3000/api/getImg?url=/uploads/file/20230226/file-1677346695311-3.jpg', 'a123', 'token-CEAC1108L120A0039', '男');
INSERT INTO `userlist` VALUES ('59716130', '吴家敏', '13378760141', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0040', '男');
INSERT INTO `userlist` VALUES ('90319368', '徐瑶倩', '13887634931', '超级管理员', '1', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0041', '女');
INSERT INTO `userlist` VALUES ('91874528', '黄义哲', '13577689671', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0042', '女');
INSERT INTO `userlist` VALUES ('93417428', '李世淼', '15154825551', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/efc034d110fe11e1f82c86a4f3cd9377.jpeg', 'a123', 'token-CEAC1108L120A0043', '女');
INSERT INTO `userlist` VALUES ('bc7e4c90-2890-4d47-8470-a2ddd6047526', '毛三仙', '139333', '教师', '2', 'https://img-blog.csdnimg.cn/img_convert/2e1955b703679764792778c8efb15617.jpeg', 'a123', 'token-9617oydd57400000000', '女');

-- ----------------------------
-- Table structure for `willfixlist`
-- ----------------------------
DROP TABLE IF EXISTS `willfixlist`;
CREATE TABLE `willfixlist` (
  `id` varchar(1000) COLLATE utf8_bin NOT NULL COMMENT '保修列表',
  `name` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `nameid` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `namephone` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `fixname` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `fixid` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `fixphone` varchar(1000) COLLATE utf8_bin DEFAULT '',
  `date` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `photo` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `reason` varchar(1000) COLLATE utf8_bin DEFAULT '',
  `room` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of willfixlist
-- ----------------------------
INSERT INTO `willfixlist` VALUES ('1', '吴彬', '34421957', '13887669960', '赵李麒', '93417428', '13577669193', '2023/03/18', 'https://img-blog.csdnimg.cn/img_convert/74e59d22e2bb8b9018ac6bad45f3fb57.jpeg', '这是将要待修列表的申请原因', '125', '拒绝');
INSERT INTO `willfixlist` VALUES ('810ba838-0e03-412f-bf08-53293861317c', '吴彬', '34421957', '13887669961', '曾月', '55451847', '15151515151', '2023/2/26 上午6:08:03', 'http://127.0.0.1:3000/api/getImg?url=/uploads/file/20230226/file-1677362881113-csdn.png', '55', '123', '未处理');
INSERT INTO `willfixlist` VALUES ('ae6599ad-999d-4abc-8701-9d9a21bd0d9b', '毛三仙', 'bc7e4c90-2890-4d47-8470-a2ddd6047526', '139333', '郭泽鑫', '17114983', '13887669051', '2023/2/26 上午6:55:56', 'http://127.0.0.1:3000/api/getImg?url=/uploads/file/20230226/file-1677363606182-å¯å®¤ç®¡çç³»ç».png', '申请原因\n', '124', '通过');
INSERT INTO `willfixlist` VALUES ('e2abdf6d-738f-400f-86e4-ac9966e5849b', '毛三仙', 'bc7e4c90-2890-4d47-8470-a2ddd6047526', '139333', '陈灵洁', '15157889', '15151615881', '2023/2/26 上午6:55:59', 'http://127.0.0.1:3000/api/getImg?url=/uploads/file/20230226/file-1677362956724-asdaasdasd.png', '申请原因 毛三仙的', '124', '拒绝');
INSERT INTO `willfixlist` VALUES ('f5042af0-7195-440b-87e9-668d3138215a', '吴彬', '34421957', '13887669961', '蔡媛媛', '36714717', '15126858532', '2023/2/26 上午6:55:47', 'http://127.0.0.1:3000/api/getImg?url=/uploads/file/20230226/file-1677362749512-boy.jpg', '原因', '123', '拒绝');
