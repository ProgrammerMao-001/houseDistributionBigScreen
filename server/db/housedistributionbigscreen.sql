/*
Navicat MySQL Data Transfer

Source Server         : hello
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : housedistributionbigscreen

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-02 15:05:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `housetable`
-- ----------------------------
DROP TABLE IF EXISTS `housetable`;
CREATE TABLE `housetable` (
  `id` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `city` varchar(1000) DEFAULT '',
  `housename` varchar(1000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `sellphone` varchar(1000) DEFAULT NULL,
  `sellname` varchar(1000) DEFAULT NULL,
  `sellnum` varchar(1000) DEFAULT NULL,
  `houseprize` varchar(1000) DEFAULT NULL,
  `totalprize` varchar(1000) DEFAULT NULL,
  `piclist` varchar(8800) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `latitude` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `longitude` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of housetable
-- ----------------------------
INSERT INTO `housetable` VALUES ('1', '杏花岭区', '府东公园6栋', '杏花岭区/东客站/五龙口东街，太原东客站西200米', null, null, null, '8500', '200', 'https://ke-image.ljcdn.com/newhouse-user-image/phpYmT19X1543392878.png.592x432.jpg', '37.872244', '112.621242');
INSERT INTO `housetable` VALUES ('10', '杏花岭区', '荔园·悦享星醍', '杏花岭区/五龙口商圈/府东街与东中环交汇处西北角', null, null, null, '7900', '100', 'https://ke-image.ljcdn.com/newhouse-user-image/3b6b8b8b86c83363593a0adb1ffe30e2.jpg.592x432.jpg', '37.805121529277', '112.61420678122');
INSERT INTO `housetable` VALUES ('11', '杏花岭区', '国民金宝街', '杏花岭区/东客站/五龙口街北一巷9号（东客站西侧）', null, null, null, '20000  ', '150', 'https://ke-image.ljcdn.com/newhouse-user-image/efd73046450043202ee5639c8112ede3.jpg.592x432.jpg', '37.86288', '112.463067');
INSERT INTO `housetable` VALUES ('12', '杏花岭区', '宜佳上东城', '杏花岭区/大东关商圈/新源里13号', null, null, null, '25000 ', '150', 'https://ke-image.ljcdn.com/hdic-resblock/d3a8f27c-43fc-4363-96b0-b024ce15bba7.jpg.592x432.jpg', '37.772303', '112.571401');
INSERT INTO `housetable` VALUES ('13', '杏花岭区', '融信·时光之城', '杏花岭区/东山北商圈/卧虎山快速路，动物园以北', null, null, null, '7000', '106', 'https://ke-image.ljcdn.com/newhouse-user-image/469e100a0c99a48851482ac5136439ca.png.592x432.jpg', '37.793752570747', '112.63587811656');
INSERT INTO `housetable` VALUES ('14', '杏花岭区', '阳光尚都', '杏花岭区/胜利桥东/胜利街与金刚堰路交叉口东南角', null, null, null, '9700', '117', 'https://ke-image.ljcdn.com/newhouse-user-image/2bcec1288f08d5a714467cd40b211cf1.png.592x432.jpg', '37.730909', '112.611377');
INSERT INTO `housetable` VALUES ('15', '杏花岭区', '金林雅苑', '杏花岭区/肿瘤医院商圈/迎春街与东中环交汇处东南角', null, null, null, '8900', '132', 'https://ke-image.ljcdn.com/newhouse-user-image/4d267fd2cf80c6aca6a25a0e7c3276b7.jpg.592x432.jpg', '37.805121529277', '112.61420678122');
INSERT INTO `housetable` VALUES ('16', '杏花岭区', '金林佳园', '杏花岭区/肿瘤医院商圈/北河湾东街1号', null, null, null, '8500', '260', 'https://ke-image.ljcdn.com/newhouse-user-image/48302126ce58666d6694fde15f377e32.jpg.592x432.jpg', '37.900465', '112.607112');
INSERT INTO `housetable` VALUES ('17', '杏花岭区', '金地商置·花园道', '杏花岭区/东山北商圈/丈子头街36号', null, null, null, '10000', '125', 'https://ke-image.ljcdn.com/newhouse-user-image/phpYmT19X1543392878.png.592x432.jpg', '37.872244', '112.621242');
INSERT INTO `housetable` VALUES ('18', '杏花岭区', '如意中环一号', '杏花岭区/肿瘤医院商圈/胜利东街40号', null, null, null, '9000', '32', 'https://ke-image.ljcdn.com/newhouse-user-image/6c1f850a992049e882ffeee34768ba7c.jpg.592x432.jpg', '37.883726339996', '112.60697876177');
INSERT INTO `housetable` VALUES ('19', '杏花岭区', '翠湖天地', '杏花岭区/龙潭公园/解放路翠湖天地', null, null, null, '12000', '235', 'https://ke-image.ljcdn.com/newhouse-user-image/3b56b0aeebc5911bf45fda4b65454f1d.jpg.592x432.jpg', '37.935747', '112.587003');
INSERT INTO `housetable` VALUES ('2', '杏花岭区', '龙湖翡翠', '杏花岭区/龙潭公园/龙潭湖公园东门（城坊街38号）', null, null, null, '14000', '150', 'https://ke-image.ljcdn.com/hdic-resblock/1842aa4c-eb76-4e4a-8511-c1e4b512ffad.jpg.592x432.jpg', '37.88849', '112.563217');
INSERT INTO `housetable` VALUES ('20', '杏花岭区', '龙湾写意', '杏花岭区/胜利桥东/胜利街359号', null, null, null, '11500', '324', 'https://ke-image.ljcdn.com/hdic-resblock/a0f1f397-5e43-4f13-956e-2fa1fcdcf4f2.jpg.592x432.jpg', '37.903281884887', '112.54809606744');
INSERT INTO `housetable` VALUES ('21', '迎泽区', '魔方SOHO', '迎泽区/南站机场商圈/长风东街与太行路交叉口东南角', null, null, null, '14500', '94', 'https://ke-image.ljcdn.com/hdic-resblock/434b7706-0c76-42d7-bb67-02a008b2ecfb.jpg.592x432.jpg', '37.820754', '112.62067');
INSERT INTO `housetable` VALUES ('22', '迎泽区', '都市广场', '迎泽区/水西门商圈/都司街9号', null, null, null, '12600', '330', 'https://ke-image.ljcdn.com/hdic-resblock/c5cbc546-15f5-443f-9f22-261293dfe061.jpg.592x432.jpg', '37.873202', '112.562407');
INSERT INTO `housetable` VALUES ('23', '迎泽区', '中国中铁·诺德城', '迎泽区/东山商圈/东峰路与朝阳街交叉口东北角', null, null, null, '10800', '94', 'https://ke-image.ljcdn.com/hdic-resblock/30123e5d-a611-4056-9273-0c3dfa19ec16.jpg.592x432.jpg', '37.858730577472', '112.62600923325');
INSERT INTO `housetable` VALUES ('24', '迎泽区', '国奥城', '迎泽区/东山商圈/太原市迎泽区东峰路南段108号（太原市迎泽区南内环东街与东峰路交汇处东北角）', null, null, null, '7500', '103', 'https://ke-image.ljcdn.com/newhouse-user-image/98055cdca8f031c115ca8ec38c7b88cb.jpg.592x432.jpg', '37.845193', '112.630344');
INSERT INTO `housetable` VALUES ('25', '迎泽区', '东山雅苑', '迎泽区/东山商圈/位于太原市迎泽区朝阳街与东峰路交叉口往东约300米位置（详细位置：太原市迎泽区松庄南街27号', null, null, null, '7500', '132', 'https://ke-image.ljcdn.com/newhouse-user-image/8338f775494dae017e65619639f43291.jpg.592x432.jpg', '37.862411', '112.627562');
INSERT INTO `housetable` VALUES ('26', '迎泽区', '元福绿都', '迎泽区/南站机场商圈/长风东街与双塔南路交汇处往南200米', null, null, null, '9700', '241', 'https://ke-image.ljcdn.com/newhouse-user-image/700ccffe958046c2e36dd7932bc2df0e.jpg.592x432.jpg', '37.819382', '112.602195');
INSERT INTO `housetable` VALUES ('27', '迎泽区', '红星紫御华府', '迎泽区/东山商圈/南十方街与东峰路交叉口东南角', null, null, null, '7400', '156', 'https://ke-image.ljcdn.com/newhouse-user-image/952535393154344f0171930697c3a387.png.592x432.jpg', '37.838705', '112.628116');
INSERT INTO `housetable` VALUES ('28', '迎泽区', '保利金地·迎泽上品', '迎泽区/东山商圈/东峰路与朝阳街交叉口东约500米', null, null, null, '8500', '147', 'https://ke-image.ljcdn.com/newhouse-user-image/9b1b7357cce786526958c26249eeb307.png.592x432.jpg', '37.859114', '112.637041');
INSERT INTO `housetable` VALUES ('29', '迎泽区', '东鼎·迎泽里', '迎泽区/建南汽车站商圈/东中环南十方交汇处往东200米', null, null, null, '11000', '140', 'https://ke-image.ljcdn.com/newhouse-user-image/3ec14d68c42ee5dbbac2729c1d107843.png.592x432.jpg', '37.836677', '112.613701');
INSERT INTO `housetable` VALUES ('3', '杏花岭区', '万达龙樾府', '杏花岭区/龙潭公园/龙潭公园东岸', null, null, null, '22000', '700', 'https://ke-image.ljcdn.com/hdic-resblock/1842aa4c-eb76-4e4a-8511-c1e4b512ffad.jpg.592x432.jpg', '37.89460972901', '112.62016336835');
INSERT INTO `housetable` VALUES ('30', '迎泽区', '雅居乐江山赋', '迎泽区/建南汽车站商圈/东中环与亲贤街东延交汇处', null, null, null, '8800', '89', 'https://ke-image.ljcdn.com/newhouse-user-image/c345379b8962e1867f49e62cc266c24a.jpg.592x432.jpg', '37.830414674924', '112.6199558665');
INSERT INTO `housetable` VALUES ('31', '迎泽区', '碧桂园·桃源里', '迎泽区/东山商圈/长风东街与新沟路交汇处北侧', null, null, null, '10300', '99', 'https://ke-image.ljcdn.com/hdic-resblock/3e254d54-81e8-4105-9ac7-892a0879cfbb.jpg.592x432.jpg', '37.772303', '112.571401');
INSERT INTO `housetable` VALUES ('32', '迎泽区', '东辰祥瑞', '迎泽区/朝阳街/东中环与南沙河交汇处以南100米路东', null, null, null, '11000', '120', 'https://ke-image.ljcdn.com/hdic-resblock/0a933809-0ab6-4f5d-a428-04fe20939e03.jpg.592x432.jpg', '37.793752570747', '112.63587811656');
INSERT INTO `housetable` VALUES ('33', '迎泽区', '豪生国际公寓', '迎泽区/柳巷商圈/柳巷南路28号', null, null, null, '8500', '90', 'https://ke-image.ljcdn.com/hdic-resblock/52e73b85-3c10-45ee-93db-5d431a4575ae.jpg.592x432.jpg', '37.805121529277', '112.61420678122');
INSERT INTO `housetable` VALUES ('34', '迎泽区', '盛世长风二期', '迎泽区/建南汽车站商圈/长风大街美特好超市对面东南侧', null, null, null, '11000', '123', 'https://ke-image.ljcdn.com/newhouse-user-image/5c7e288194f9fe344fa70c2fad334dca.jpg.592x432.jpg', '37.858544485182', '112.55767260205');
INSERT INTO `housetable` VALUES ('35', '迎泽区', '复地东山国际洋房', '迎泽区/南站机场商圈/长风东街与东中环西南角300米', null, null, null, '8700', '88', 'https://ke-image.ljcdn.com/newhouse-user-image/b90f341f740ac73922764e3c81b60643.png.592x432.jpg', '37.8164472328', '112.60087547835');
INSERT INTO `housetable` VALUES ('36', '万柏林区', '国投赞城5.0', '万柏林区/千峰南路商圈/和平南路与南内环交叉口向南100米', null, null, null, '12500', '88', 'https://ke-image.ljcdn.com/hdic-resblock/01714907-94d3-475b-859b-cfd3ba1b7361.jpg.592x432.jpg', '37.86288', '112.463067');
INSERT INTO `housetable` VALUES ('37', '万柏林区', '海唐广场', '万柏林区/理工大商圈/南内环桥西往北200米， 晋祠路以东', null, null, null, '6800', '100', 'https://ke-image.ljcdn.com/hdic-resblock/30123e5d-a611-4056-9273-0c3dfa19ec16.jpg.592x432.jpg', '37.772303', '112.571401');
INSERT INTO `housetable` VALUES ('38', '万柏林区', '南海·公元时代城', '万柏林区/西客站商圈/迎泽西大街与西苑南路交汇处东南角', null, null, null, '7500', '120', 'https://ke-image.ljcdn.com/newhouse-user-image/98055cdca8f031c115ca8ec38c7b88cb.jpg.592x432.jpg', '37.747282', '112.592749');
INSERT INTO `housetable` VALUES ('39', '万柏林区', '十二院城', '万柏林区/千峰北路商圈/迎泽西大街和平路交汇处(下元十字路口)', null, null, null, '6300', '75', 'https://ke-image.ljcdn.com/hdic-resblock/prod-88a2a6d5-a26e-41e0-a392-8668973f83f8phpALdFHj.592x432.jpg', '37.730909', '112.611377');
INSERT INTO `housetable` VALUES ('4', '杏花岭区', '千渡·东山晴', '杏花岭区/东山北商圈/杏花岭区东中环与凯旋街往东800米       ', null, null, null, '6900', '61', 'https://ke-image.ljcdn.com/hdic-resblock/9b9056bc-1ff8-46bc-aa83-fc41c403efd4.jpg.592x432.jpg', '37.879478', '112.628591');
INSERT INTO `housetable` VALUES ('40', '万柏林区', '都市广场 ', '万柏林区/和平南路商圈/太原市南内环西街与和平南路交口向南100米处', null, null, null, '3999', '99', 'https://ke-image.ljcdn.com/hdic-resblock/prod-dc33a930-ee7c-4c8b-8827-5a4aadba8c99phpJhjLVT.592x432.jpg', '37.805121529277', '112.61420678122');
INSERT INTO `housetable` VALUES ('41', '万柏林区', '太化·紫景天城', '万柏林区/义井商圈/长风西街与旧晋祠路交汇处，长风西街两侧', null, null, null, '6022', '120', 'https://ke-image.ljcdn.com/newhouse-user-image/480ae39c4273aee721415b1e30478f88.png.592x432.jpg', '37.849682', '112.538996');
INSERT INTO `housetable` VALUES ('42', '万柏林区', '远大·凤玺湾', '万柏林区/长风商务区商圈/长兴路1号', null, null, null, '9800', '141', 'https://ke-image.ljcdn.com/newhouse-user-image/8338f775494dae017e65619639f43291.jpg.592x432.jpg', '37.858730577472', '112.62600923325');
INSERT INTO `housetable` VALUES ('43', '万柏林区', '玉泉山居', '万柏林区/西山商圈/玉泉山城郊森林公园（春盛西街53号）', null, null, null, '7888', '103', 'https://ke-image.ljcdn.com/hdic-resblock/17eed8eb-9ba1-4b0c-bc56-4b4117f7411d.jpg.592x432.jpg', '37.845193', '112.630344');
INSERT INTO `housetable` VALUES ('5', '杏花岭区', '碧桂园·城市花园', '杏花岭区/东山北商圈/府东街与东峰路交叉口西北角', null, null, null, '6588', '84', 'https://ke-image.ljcdn.com/hdic-resblock/75f1cab2-f4c6-44cb-8137-dee39b850ea7.jpg.592x432.jpg', '37.890436', '112.567926');
INSERT INTO `housetable` VALUES ('6', '杏花岭区', '太原万达中心', '杏花岭区/龙潭公园/解放北路175号', null, null, null, '8500', '95', 'https://ke-image.ljcdn.com/hdic-resblock/75f1cab2-f4c6-44cb-8137-dee39b850ea7.jpg.592x432.jpg', '37.877845441903', '112.63128293191');
INSERT INTO `housetable` VALUES ('7', '杏花岭区', '红星·紫御半山', '杏花岭区/东山北商圈/府东街与东峰路交叉口东南角', null, null, null, '7000', '126', 'https://ke-image.ljcdn.com/hdic-resblock/7ff2d7f6-7f21-4c58-b864-e6ed6ff83003.jpg.592x432.jpg', '37.909616046934', '112.60405681314');
INSERT INTO `housetable` VALUES ('8', '杏花岭区', '如意小区', '杏花岭区/肿瘤医院商圈/胜利东街与东中环交汇处往西100米', null, null, null, '40000 ', '150', 'https://ke-image.ljcdn.com/hdic-resblock/e4f3ab24-89b1-4211-952d-5a82b8fed3a6.jpg.592x432.jpg', '37.878837', '112.608072');
INSERT INTO `housetable` VALUES ('9', '杏花岭区', '富力城·八号园 ', '杏花岭区/富力城商圈/北中环与东中环交汇处东北角', null, null, null, '10500', '91', 'https://ke-image.ljcdn.com/hdic-resblock/b6ff297b-0dcd-4610-9991-3cd04c2d6a6a.jpg.592x432.jpg', '37.889169', '112.5641');

-- ----------------------------
-- Table structure for `titlelist`
-- ----------------------------
DROP TABLE IF EXISTS `titlelist`;
CREATE TABLE `titlelist` (
  `id` varchar(200) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updatename` varchar(200) DEFAULT '',
  `updateid` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of titlelist
-- ----------------------------
INSERT INTO `titlelist` VALUES ('1', '太原市房屋分布信息大屏', 'admin', '1');

-- ----------------------------
-- Table structure for `userlist`
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist` (
  `id` varchar(200) NOT NULL,
  `username` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `headimg` varchar(1000) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES ('1', 'admin', '123456', 'https://img-blog.csdnimg.cn/img_convert/2e1955b703679764792778c8efb15617.jpeg');
