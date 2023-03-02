/*
Navicat MySQL Data Transfer

Source Server         : hello
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : housedistributionbigscreen

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-02 23:21:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `citylist`
-- ----------------------------
DROP TABLE IF EXISTS `citylist`;
CREATE TABLE `citylist` (
  `id` varchar(100) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of citylist
-- ----------------------------
INSERT INTO `citylist` VALUES ('1', '杏花岭区');
INSERT INTO `citylist` VALUES ('10', '清徐县');
INSERT INTO `citylist` VALUES ('11', '榆次区');
INSERT INTO `citylist` VALUES ('2', '迎泽区');
INSERT INTO `citylist` VALUES ('3', '万柏林区');
INSERT INTO `citylist` VALUES ('4', '小店区');
INSERT INTO `citylist` VALUES ('5', '尖草坪区');
INSERT INTO `citylist` VALUES ('6', '晋源区');
INSERT INTO `citylist` VALUES ('7', '阳曲县');
INSERT INTO `citylist` VALUES ('8', '娄烦县');
INSERT INTO `citylist` VALUES ('9', '古交市');

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
INSERT INTO `housetable` VALUES ('0', '娄烦县', '阳光尚都', '娄烦县/胜利桥东/胜利街与金刚堰路交叉口东南角', '15152031526', '薛南', '22', '9700', '120', 'https://ke-image.ljcdn.com/newhouse-user-image/2bcec1288f08d5a714467cd40b211cf1.png.592x432.jpg', '37.88849', '112.563217');
INSERT INTO `housetable` VALUES ('1', '杏花岭区', '府东公园6栋', '杏花岭区/东客站/五龙口东街，太原东客站西200米', '15152031527', '孙楠楠', '202', '8500', '200', 'https://ke-image.ljcdn.com/newhouse-user-image/phpYmT19X1543392878.png.592x432.jpg', '37.872244', '112.621242');
INSERT INTO `housetable` VALUES ('10', '杏花岭区', '荔园·悦享星醍', '杏花岭区/五龙口商圈/府东街与东中环交汇处西北角', '15152031528', '赵国强', '23', '7900', '100', 'https://ke-image.ljcdn.com/newhouse-user-image/3b6b8b8b86c83363593a0adb1ffe30e2.jpg.592x432.jpg', '37.805121529277', '112.61420678122');
INSERT INTO `housetable` VALUES ('100', '榆次区 ', '北新里', '榆次区/榆次区/晋中市榆次区龙云路36号', '15152031529', '李亚鑫', '52', '7300  ', '115', 'https://ke-image.ljcdn.com/newhouse-user-image/761bcdb49ec7d4be88b43ec9faa7960f.jpg.592x432.jpg', '37.786277931423', '112.67250494559');
INSERT INTO `housetable` VALUES ('11', '杏花岭区', '国民金宝街', '杏花岭区/东客站/五龙口街北一巷9号（东客站西侧）', '15152031530', '任志敏', '56', '20000  ', '150', 'https://ke-image.ljcdn.com/newhouse-user-image/efd73046450043202ee5639c8112ede3.jpg.592x432.jpg', '37.86288', '112.463067');
INSERT INTO `housetable` VALUES ('12', '杏花岭区', '宜佳上东城', '杏花岭区/大东关商圈/新源里13号', '15152031531', '张宪梁', '215', '25000 ', '150', 'https://ke-image.ljcdn.com/hdic-resblock/d3a8f27c-43fc-4363-96b0-b024ce15bba7.jpg.592x432.jpg', '37.772303', '112.571401');
INSERT INTO `housetable` VALUES ('13', '杏花岭区', '融信·时光之城', '杏花岭区/东山北商圈/卧虎山快速路，动物园以北', '15152031532', '崔旭鹏', '2', '7000', '106', 'https://ke-image.ljcdn.com/newhouse-user-image/469e100a0c99a48851482ac5136439ca.png.592x432.jpg', '37.793752570747', '112.63587811656');
INSERT INTO `housetable` VALUES ('14', '杏花岭区', '阳光尚都', '杏花岭区/胜利桥东/胜利街与金刚堰路交叉口东南角', '15152031533', '张龙', '20', '9700', '117', 'https://ke-image.ljcdn.com/newhouse-user-image/2bcec1288f08d5a714467cd40b211cf1.png.592x432.jpg', '37.730909', '112.611377');
INSERT INTO `housetable` VALUES ('15', '杏花岭区', '金林雅苑', '杏花岭区/肿瘤医院商圈/迎春街与东中环交汇处东南角', '15152031534', '张家钊', '23', '8900', '132', 'https://ke-image.ljcdn.com/newhouse-user-image/4d267fd2cf80c6aca6a25a0e7c3276b7.jpg.592x432.jpg', '37.805121529277', '112.61420678122');
INSERT INTO `housetable` VALUES ('16', '杏花岭区', '金林佳园', '杏花岭区/肿瘤医院商圈/北河湾东街1号', '15152031535', '王青青', '9', '8500', '260', 'https://ke-image.ljcdn.com/newhouse-user-image/48302126ce58666d6694fde15f377e32.jpg.592x432.jpg', '37.900465', '112.607112');
INSERT INTO `housetable` VALUES ('17', '杏花岭区', '金地商置·花园道', '杏花岭区/东山北商圈/丈子头街36号', '15152031536', '洪霞', '59', '10000', '125', 'https://ke-image.ljcdn.com/newhouse-user-image/phpYmT19X1543392878.png.592x432.jpg', '37.872244', '112.621242');
INSERT INTO `housetable` VALUES ('18', '杏花岭区', '如意中环一号', '杏花岭区/肿瘤医院商圈/胜利东街40号', '15152031537', '杨成海', '56', '9000', '32', 'https://ke-image.ljcdn.com/newhouse-user-image/6c1f850a992049e882ffeee34768ba7c.jpg.592x432.jpg', '37.883726339996', '112.60697876177');
INSERT INTO `housetable` VALUES ('19', '杏花岭区', '翠湖天地', '杏花岭区/龙潭公园/解放路翠湖天地', '15152031538', '彭萍萍', '203', '12000', '235', 'https://ke-image.ljcdn.com/newhouse-user-image/3b56b0aeebc5911bf45fda4b65454f1d.jpg.592x432.jpg', '37.935747', '112.587003');
INSERT INTO `housetable` VALUES ('2', '杏花岭区', '龙湖翡翠', '杏花岭区/龙潭公园/龙潭湖公园东门（城坊街38号）', '15152031539', '韦丽沙', '102', '14000', '150', 'https://ke-image.ljcdn.com/hdic-resblock/1842aa4c-eb76-4e4a-8511-c1e4b512ffad.jpg.592x432.jpg', '37.88849', '112.563217');
INSERT INTO `housetable` VALUES ('20', '杏花岭区', '龙湾写意', '杏花岭区/胜利桥东/胜利街359号', '15152031540', '李艳凤', '199', '11500', '324', 'https://ke-image.ljcdn.com/hdic-resblock/a0f1f397-5e43-4f13-956e-2fa1fcdcf4f2.jpg.592x432.jpg', '37.903281884887', '112.54809606744');
INSERT INTO `housetable` VALUES ('21', '迎泽区', '魔方SOHO', '迎泽区/南站机场商圈/长风东街与太行路交叉口东南角', '15152031541', '陈岩', '210', '14500', '94', 'https://ke-image.ljcdn.com/hdic-resblock/434b7706-0c76-42d7-bb67-02a008b2ecfb.jpg.592x432.jpg', '37.820754', '112.62067');
INSERT INTO `housetable` VALUES ('22', '迎泽区', '都市广场', '迎泽区/水西门商圈/都司街9号', '15152031542', '徐森琴', '100', '12600', '330', 'https://ke-image.ljcdn.com/hdic-resblock/c5cbc546-15f5-443f-9f22-261293dfe061.jpg.592x432.jpg', '37.873202', '112.562407');
INSERT INTO `housetable` VALUES ('23', '迎泽区', '中国中铁·诺德城', '迎泽区/东山商圈/东峰路与朝阳街交叉口东北角', '15152031543', '钟雪影', '42', '10800', '94', 'https://ke-image.ljcdn.com/hdic-resblock/30123e5d-a611-4056-9273-0c3dfa19ec16.jpg.592x432.jpg', '37.858730577472', '112.62600923325');
INSERT INTO `housetable` VALUES ('24', '迎泽区', '国奥城', '迎泽区/东山商圈/太原市迎泽区东峰路南段108号（太原市迎泽区南内环东街与东峰路交汇处东北角）', '15152031544', '钱小亮', '66', '7500', '103', 'https://ke-image.ljcdn.com/newhouse-user-image/98055cdca8f031c115ca8ec38c7b88cb.jpg.592x432.jpg', '37.845193', '112.630344');
INSERT INTO `housetable` VALUES ('25', '迎泽区', '东山雅苑', '迎泽区/东山商圈/位于太原市迎泽区朝阳街与东峰路交叉口往东约300米位置（详细位置：太原市迎泽区松庄南街27号', '15152031545', '叶晓英', '55', '7500', '132', 'https://ke-image.ljcdn.com/newhouse-user-image/8338f775494dae017e65619639f43291.jpg.592x432.jpg', '37.862411', '112.627562');
INSERT INTO `housetable` VALUES ('26', '迎泽区', '元福绿都', '迎泽区/南站机场商圈/长风东街与双塔南路交汇处往南200米', '15152031546', '胡鹤敏', '6', '9700', '241', 'https://ke-image.ljcdn.com/newhouse-user-image/700ccffe958046c2e36dd7932bc2df0e.jpg.592x432.jpg', '37.819382', '112.602195');
INSERT INTO `housetable` VALUES ('27', '迎泽区', '红星紫御华府', '迎泽区/东山商圈/南十方街与东峰路交叉口东南角', '15152031547', '张运', '20', '7400', '156', 'https://ke-image.ljcdn.com/newhouse-user-image/952535393154344f0171930697c3a387.png.592x432.jpg', '37.838705', '112.628116');
INSERT INTO `housetable` VALUES ('28', '迎泽区', '保利金地·迎泽上品', '迎泽区/东山商圈/东峰路与朝阳街交叉口东约500米', '15152031548', '张志强', '30', '8500', '147', 'https://ke-image.ljcdn.com/newhouse-user-image/9b1b7357cce786526958c26249eeb307.png.592x432.jpg', '37.859114', '112.637041');
INSERT INTO `housetable` VALUES ('29', '迎泽区', '东鼎·迎泽里', '迎泽区/建南汽车站商圈/东中环南十方交汇处往东200米', '15152031549', '赵奔奔', '33', '11000', '140', 'https://ke-image.ljcdn.com/newhouse-user-image/3ec14d68c42ee5dbbac2729c1d107843.png.592x432.jpg', '37.836677', '112.613701');
INSERT INTO `housetable` VALUES ('3', '杏花岭区', '万达龙樾府', '杏花岭区/龙潭公园/龙潭公园东岸', '15152031550', '陈蕾', '41', '22000', '700', 'https://ke-image.ljcdn.com/hdic-resblock/1842aa4c-eb76-4e4a-8511-c1e4b512ffad.jpg.592x432.jpg', '37.89460972901', '112.62016336835');
INSERT INTO `housetable` VALUES ('30', '迎泽区', '雅居乐江山赋', '迎泽区/建南汽车站商圈/东中环与亲贤街东延交汇处', '15152031551', '余卫金', '45', '8800', '89', 'https://ke-image.ljcdn.com/newhouse-user-image/c345379b8962e1867f49e62cc266c24a.jpg.592x432.jpg', '37.830414674924', '112.6199558665');
INSERT INTO `housetable` VALUES ('31', '迎泽区', '碧桂园·桃源里', '迎泽区/东山商圈/长风东街与新沟路交汇处北侧', '15152031552', '罗亨杰', '48', '10300', '99', 'https://ke-image.ljcdn.com/hdic-resblock/3e254d54-81e8-4105-9ac7-892a0879cfbb.jpg.592x432.jpg', '37.772303', '112.571401');
INSERT INTO `housetable` VALUES ('32', '迎泽区', '东辰祥瑞', '迎泽区/朝阳街/东中环与南沙河交汇处以南100米路东', '15152031553', '韩杰', '60', '11000', '120', 'https://ke-image.ljcdn.com/hdic-resblock/0a933809-0ab6-4f5d-a428-04fe20939e03.jpg.592x432.jpg', '37.793752570747', '112.63587811656');
INSERT INTO `housetable` VALUES ('33', '迎泽区', '豪生国际公寓', '迎泽区/柳巷商圈/柳巷南路28号', '15152031554', '闫飞光', '50', '8500', '90', 'https://ke-image.ljcdn.com/hdic-resblock/52e73b85-3c10-45ee-93db-5d431a4575ae.jpg.592x432.jpg', '37.805121529277', '112.61420678122');
INSERT INTO `housetable` VALUES ('34', '迎泽区', '盛世长风二期', '迎泽区/建南汽车站商圈/长风大街美特好超市对面东南侧', '15152031555', '杨兵兵', '14', '11000', '123', 'https://ke-image.ljcdn.com/newhouse-user-image/5c7e288194f9fe344fa70c2fad334dca.jpg.592x432.jpg', '37.858544485182', '112.55767260205');
INSERT INTO `housetable` VALUES ('35', '迎泽区', '复地东山国际洋房', '迎泽区/南站机场商圈/长风东街与东中环西南角300米', '15152031556', '毛天龙', '44', '8700', '88', 'https://ke-image.ljcdn.com/newhouse-user-image/b90f341f740ac73922764e3c81b60643.png.592x432.jpg', '37.8164472328', '112.60087547835');
INSERT INTO `housetable` VALUES ('36', '万柏林区', '国投赞城5.0', '万柏林区/千峰南路商圈/和平南路与南内环交叉口向南100米', '15152031557', '许雪', '45', '12500', '88', 'https://ke-image.ljcdn.com/hdic-resblock/01714907-94d3-475b-859b-cfd3ba1b7361.jpg.592x432.jpg', '37.86288', '112.463067');
INSERT INTO `housetable` VALUES ('37', '万柏林区', '海唐广场', '万柏林区/理工大商圈/南内环桥西往北200米， 晋祠路以东', '15152031558', '高丽娟', '56', '6800', '100', 'https://ke-image.ljcdn.com/hdic-resblock/30123e5d-a611-4056-9273-0c3dfa19ec16.jpg.592x432.jpg', '37.772303', '112.571401');
INSERT INTO `housetable` VALUES ('38', '万柏林区', '南海·公元时代城', '万柏林区/西客站商圈/迎泽西大街与西苑南路交汇处东南角', '15152031559', '罗文', '156', '7500', '120', 'https://ke-image.ljcdn.com/newhouse-user-image/98055cdca8f031c115ca8ec38c7b88cb.jpg.592x432.jpg', '37.747282', '112.592749');
INSERT INTO `housetable` VALUES ('39', '万柏林区', '十二院城', '万柏林区/千峰北路商圈/迎泽西大街和平路交汇处(下元十字路口)', '15152031560', '王菊', '65', '6300', '75', 'https://ke-image.ljcdn.com/hdic-resblock/prod-88a2a6d5-a26e-41e0-a392-8668973f83f8phpALdFHj.592x432.jpg', '37.730909', '112.611377');
INSERT INTO `housetable` VALUES ('4', '杏花岭区', '千渡·东山晴', '杏花岭区/东山北商圈/杏花岭区东中环与凯旋街往东800米       ', '15152031561', '黄小君', '30', '6900', '61', 'https://ke-image.ljcdn.com/hdic-resblock/9b9056bc-1ff8-46bc-aa83-fc41c403efd4.jpg.592x432.jpg', '37.879478', '112.628591');
INSERT INTO `housetable` VALUES ('40', '万柏林区', '都市广场 ', '万柏林区/和平南路商圈/太原市南内环西街与和平南路交口向南100米处', '15152031562', '肖超超', '200', '3999', '99', 'https://ke-image.ljcdn.com/hdic-resblock/prod-dc33a930-ee7c-4c8b-8827-5a4aadba8c99phpJhjLVT.592x432.jpg', '37.805121529277', '112.61420678122');
INSERT INTO `housetable` VALUES ('41', '万柏林区', '太化·紫景天城', '万柏林区/义井商圈/长风西街与旧晋祠路交汇处，长风西街两侧', '15152031563', '李红', '41', '6022', '120', 'https://ke-image.ljcdn.com/newhouse-user-image/480ae39c4273aee721415b1e30478f88.png.592x432.jpg', '37.849682', '112.538996');
INSERT INTO `housetable` VALUES ('42', '万柏林区', '远大·凤玺湾', '万柏林区/长风商务区商圈/长兴路1号', '15152031564', '张小满', '56', '9800', '141', 'https://ke-image.ljcdn.com/newhouse-user-image/8338f775494dae017e65619639f43291.jpg.592x432.jpg', '37.858730577472', '112.62600923325');
INSERT INTO `housetable` VALUES ('43', '万柏林区', '玉泉山居', '万柏林区/西山商圈/玉泉山城郊森林公园（春盛西街53号）', '15152031565', '汪礼辉', '36', '7888', '103', 'https://ke-image.ljcdn.com/hdic-resblock/17eed8eb-9ba1-4b0c-bc56-4b4117f7411d.jpg.592x432.jpg', '37.845193', '112.630344');
INSERT INTO `housetable` VALUES ('44', '小店区', '海棠家园', '小店区/南站机场商圈/坞城路与庆云街交叉口东南角', '15152031566', '张晓秀', '60', '11000', '85', 'https://ke-image.ljcdn.com/hdic-resblock/43d8145e-26f2-4ff4-91f4-fbeaa89b7f2d.jpg.592x432.jpg', '37.747282', '112.592749');
INSERT INTO `housetable` VALUES ('45', '小店区', '宁达南苑', '小店区/南站机场商圈/唐明路与龙盛街十字路口东南角', '15152031567', '张文锋', '20', '10700', '150', 'https://ke-image.ljcdn.com/newhouse-user-image/14f9eda3953afe6e0474b72684afe218.jpg.592x432.jpg', '37.772303', '112.571401');
INSERT INTO `housetable` VALUES ('46', '小店区', '坤泽10里城', '小店区/经济开发区商圈/坞城南路与昌盛东街交汇处西南角', '15152031568', '黄美琳', '81', '9400', '128', 'https://ke-image.ljcdn.com/hdic-resblock/97d5a85f-3252-4ce5-b063-37e61dd7af82.jpg.592x432.jpg', '37.793752570747', '112.63587811656');
INSERT INTO `housetable` VALUES ('47', '小店区', '首开·国风琅樾', '小店区/龙城商圈/龙城大街与平阳南路东南角', '15152031569', '顾红良', '81', '14000', '360', 'https://ke-image.ljcdn.com/hdic-resblock/43d8145e-26f2-4ff4-91f4-fbeaa89b7f2d.jpg.592x432.jpg', '37.747282', '112.592749');
INSERT INTO `housetable` VALUES ('48', '小店区', '竞杰·常青藤', '小店区/南站机场商圈/龙堡街18、20号', '15152031570', '朱丹跃', '99', '16500', '325', 'https://ke-image.ljcdn.com/hdic-resblock/31fe5247-0f31-4942-bb5c-57ac90a0b3f0.jpg.592x432.jpg', '37.739036', '112.595684');
INSERT INTO `housetable` VALUES ('49', '小店区', '文湃苑', '小店区/建南汽车站商圈/并州南路与长风街交叉口向北200米（原山西省社会科学院）, 并州南路116号', '15152031571', '李典', '95', '13000', '320', 'https://ke-image.ljcdn.com/hdic-resblock/e119c131-cd4f-45cd-a5e8-5ac812b179ae.jpg.592x432.jpg', '37.74033681209', '112.58644709132');
INSERT INTO `housetable` VALUES ('5', '杏花岭区', '碧桂园·城市花园', '杏花岭区/东山北商圈/府东街与东峰路交叉口西北角', '15152031572', '张淑珍', '79', '6588', '84', 'https://ke-image.ljcdn.com/hdic-resblock/75f1cab2-f4c6-44cb-8137-dee39b850ea7.jpg.592x432.jpg', '37.890436', '112.567926');
INSERT INTO `housetable` VALUES ('50', '小店区', '晨煜·唐槐园', '小店区/经济开发区商圈/综改示范区唐槐产业园区太太路与汾东大街交叉口东北角\r\n小店区/经济开发区商圈/综改示范区唐槐产业园区太太路与汾东大街交叉口东北角', '15152031573', '柴天青', '89', '8500', '108', 'https://ke-image.ljcdn.com/hdic-resblock/8586cf7b-54c0-4dd8-bf19-e60aaf0d1975.jpg.592x432.jpg', '37.775058269362', '112.56485612923');
INSERT INTO `housetable` VALUES ('51', '小店区', '聚瑞星城', '小店区/南站机场商圈/山西省小店区龙城大街与太榆路交叉口往南1公里（蓝海汽配城斜对面）', '15152031574', '刁正东', '78', '8900', '118', 'https://ke-image.ljcdn.com/newhouse-user-image/4432e829a3ec9063ca9784db2b242daa.jpg.592x432.jpg', '37.815977', '112.611937');
INSERT INTO `housetable` VALUES ('52', '小店区', '海唐罗马花园', '小店区/龙城商圈/龙城大街与坞城南路交叉口往南100米', '15152031575', '金雄', '56', '40000', '520', 'https://ke-image.ljcdn.com/hdic-resblock/f0bccc78-f253-442c-964c-c92170a1e7fb.jpg.592x432.jpg', '37.828421', '112.588401');
INSERT INTO `housetable` VALUES ('53', '小店区', '晋润国际', '小店区/学府商圈/南中环与平阳路交汇处西北角', '15152031576', '徐超', '156', '15000', '122', 'https://ke-image.ljcdn.com/hdic-resblock/01925202-a4b3-4c79-8211-e2d61b60aede.jpg.592x432.jpg', '37.69855', '112.601332');
INSERT INTO `housetable` VALUES ('54', '尖草坪区', '碧桂园朗悦湾', '尖草坪区/兴华/汇丰街与九丰路交汇处西南', '15152031577', '钱鑫海', '54', '22000', '200', 'https://ke-image.ljcdn.com/hdic-resblock/d34c9a02-18d5-4b09-9141-f98f5ae1a119.jpg.592x432.jpg', '37.975633', '112.552188');
INSERT INTO `housetable` VALUES ('55', '尖草坪区', '融创外滩壹號', '尖草坪区/兴华/漪汾街与滨河西路交汇处往北500米', '15152031578', '高晓晓', '45', '2000', '50', 'https://ke-image.ljcdn.com/newhouse-user-image/92a15835958b8248505e20aba478838d.jpg.592x432.jpg', '37.931704', '112.512107');
INSERT INTO `housetable` VALUES ('56', '尖草坪区', '中国铁建·青秀嘉苑', '尖草坪区/太钢商圈/不锈钢产业园区新兰路58号', '15152031579', '肖浩军', '89', '7500', '122', 'https://ke-image.ljcdn.com/newhouse-user-image/8abdf72940d5a7ca3dc17c0e7d7a64f3.jpg.592x432.jpg', '37.972712', '112.553338');
INSERT INTO `housetable` VALUES ('57', '尖草坪区', '诺德·清华里', '尖草坪区/兴华/汇丰街与九丰路交汇处西南', '15152031580', '付贵', '89', '22000', '200', 'https://ke-image.ljcdn.com/newhouse-user-image/9c9349a1059a8e023a7fad14681944a8.jpg.592x432.jpg', '37.890735', '112.540871');
INSERT INTO `housetable` VALUES ('58', '尖草坪区', '靖烨·天朗美域', '尖草坪区/太钢商圈/新兰路78号', '15152031581', '董静举', '84', '6800', '101', 'https://ke-image.ljcdn.com/hdic-resblock/2b3bc8df-9428-4f7d-a5db-91aa3f919516.jpg.592x432.jpg', '37.890735', '112.540871');
INSERT INTO `housetable` VALUES ('59', '尖草坪区', '山投滨江城尚城', '尖草坪区/三给/和平北路363号（和平北路与摄乐北街交叉口西北角）', '15152031582', '张虎', '66', '9500', '136', 'https://ke-image.ljcdn.com/hdic-resblock/7f2146cb-8e24-48db-a805-483b1926ed3d.jpg.592x432.jpg', '37.971478', '112.553047');
INSERT INTO `housetable` VALUES ('6', '杏花岭区', '太原万达中心', '杏花岭区/龙潭公园/解放北路175号', '15152031583', '孙青华', '9', '8500', '95', 'https://ke-image.ljcdn.com/hdic-resblock/75f1cab2-f4c6-44cb-8137-dee39b850ea7.jpg.592x432.jpg', '37.877845441903', '112.63128293191');
INSERT INTO `housetable` VALUES ('60', '尖草坪区', '荣兴天顺', '尖草坪区/太钢商圈/新兰路62号荣兴天顺小区', '15152031584', '余林芳', '22', '7500  ', '64', 'https://ke-image.ljcdn.com/newhouse-user-image/75ee2ac4cf21d1fc4f4e4eb05fc5d6ae.jpg.592x432.jpg', '37.903009', '112.533873');
INSERT INTO `housetable` VALUES ('61', '尖草坪区', '融创外滩壹号', '尖草坪区/兴华/漪汾桥西与滨河西路交汇处往北500米路西', '15152031585', '阚先亮', '89', '12000', '250', 'https://ke-image.ljcdn.com/newhouse-user-image/92a15835958b8248505e20aba478838d.jpg.592x432.jpg', '37.943281', '112.511612');
INSERT INTO `housetable` VALUES ('62', '尖草坪区', '旭辉江山', '尖草坪区/三给/和平北路与三给街交汇处西北角', '15152031586', '俞家栋', '48', '8500', '144', 'https://ke-image.ljcdn.com/newhouse-user-image/a64a04ae7b7625ca2f3ef61e75e54869.png.592x432.jpg', '37.912837', '112.515755');
INSERT INTO `housetable` VALUES ('63', '晋源区', '海天世纪天鹅堡', '晋源区/晋阳湖商圈/南中环街与滨河西路交叉口南200米', '15152031587', '戚圣伟', '45', '14500', '500', 'https://ke-image.ljcdn.com/hdic-resblock/2094a935-e3d0-4264-abdd-2fedd7f0c59d.jpg.592x432.jpg', '37.794044', '112.539445');
INSERT INTO `housetable` VALUES ('64', '晋源区', '晋阳湖壹号', '晋源区/晋阳湖商圈/环湖东路与龙城大街交汇处南600米路东', '15152031588', '徐俊岭', '56', '13000', '206', 'https://ke-image.ljcdn.com/hdic-resblock/a3e900a0-f5b0-411c-bb0c-4d276af89b2f.jpg.592x432.jpg', '37.770795', '112.528817');
INSERT INTO `housetable` VALUES ('65', '晋源区', '阳光·汾河湾', '晋源区/晋阳湖商圈/晋源区环湖东路（新晋祠路）南中环街交汇处东南角', '15152031589', '姜柳明', '12', '17500', '385', 'https://ke-image.ljcdn.com/hdic-resblock/f6da7aca-df96-43a5-9547-409ab4830b9c.jpg.592x432.jpg', '112.528817', '112.539018');
INSERT INTO `housetable` VALUES ('66', '晋源区', '太原万科翡翠公园', '晋源区/晋阳湖商圈/龙城大街与滨河西路交叉口南500米', '15152031590', '陈双全', '23', '15000', '570', 'https://ke-image.ljcdn.com/hdic-resblock/94feeabb-b397-455e-a7b6-c5ea79b8d60b.jpg.592x432.jpg', '37.772464', '112.539165');
INSERT INTO `housetable` VALUES ('67', '晋源区', '富力湾', '晋源区/晋阳湖商圈/滨河西路与健康北街交汇处（奥体中心北侧）', '15152031591', '梁瑞桐', '86', '1300', '520', 'https://ke-image.ljcdn.com/hdic-resblock/5148336a-b008-4812-a31e-0463553dafe3.jpg.592x432.jpg', '37.768072', '112.540108');
INSERT INTO `housetable` VALUES ('68', '晋源区', '保利西湖林语68號', '晋源区/晋阳湖商圈/晋阳湖东门正对面（环湖东路与健康南街交汇处山西省体育中心西200米）', '15152031592', '周杰', '56', '13000  ', '329', 'https://ke-image.ljcdn.com/newhouse-user-image/6ac9f4019ad171e401532112d336d10d.jpg.592x432.jpg', '37.75507043091', '112.52864070517');
INSERT INTO `housetable` VALUES ('69', '晋源区', '当代城ΜΟΜΛ', '晋源区/义井商圈/南中环与西中环交汇处东北角', '15152031593', '余成成', '90', '11200', '174', 'https://ke-image.ljcdn.com/newhouse-user-image/10e7518707dbeb2124a3a0857ddbc36f.jpg.592x432.jpg', '37.803169', '112.505138');
INSERT INTO `housetable` VALUES ('7', '杏花岭区', '红星·紫御半山', '杏花岭区/东山北商圈/府东街与东峰路交叉口东南角', '15152031594', '傅先雄', '38', '7000', '126', 'https://ke-image.ljcdn.com/hdic-resblock/7ff2d7f6-7f21-4c58-b864-e6ed6ff83003.jpg.592x432.jpg', '37.909616046934', '112.60405681314');
INSERT INTO `housetable` VALUES ('70', '晋源区', '全景晋阳湖', '晋源区/晋阳湖商圈/晋源区环湖东路与龙城大街交汇处往南600米路东', '15152031595', '蔡小倩', '39', '9000  ', '230', 'https://ke-image.ljcdn.com/newhouse-user-image/641668ab7c6f0b48b22831193223e2a7.jpg.592x432.jpg', '37.770186108146', '112.52824946034');
INSERT INTO `housetable` VALUES ('71', '晋源区', '太行悦泉苑', '晋源区/义井商圈/南中环街与西中环路交汇西北300米处', '15152031596', '刘冬', '100', '11000  ', '11000  ', 'https://ke-image.ljcdn.com/newhouse-user-image/21fdc785ed653758f4d91427f29340de.png.592x432.jpg', '37.805966', '112.501764');
INSERT INTO `housetable` VALUES ('72', '晋源区', '富力山', '晋源区/西山商圈/蒙山景区入口北侧（蒙山脚下）', '15152031597', '张良侠', '25', '14000', '276', 'https://ke-image.ljcdn.com/hdic-resblock/prod-681055d1-0087-486b-8cde-a9bd944b3b73phpWDF1tS.592x432.jpg', '37.778844', '112.457178');
INSERT INTO `housetable` VALUES ('73', '晋源区', '万科·公园大道', '晋源区/晋阳湖商圈/环湖东路和健康北街交汇处东北角', '15152031598', '陈丹', '256', '11000  ', '125', 'https://ke-image.ljcdn.com/newhouse-user-image/9cc8f8d29cad553b2de617fafeacc303.jpeg.592x432.jpg', '37.86288', '112.463067');
INSERT INTO `housetable` VALUES ('74', '晋源区', '万科翡翠晋阳湖', '晋源区/晋阳湖商圈/晋阳大道与龙城大街西街（规划路）①交汇处往西约200米', '15152031599', '张洪升', '56', '12000  ', '330', 'https://ke-image.ljcdn.com/newhouse-user-image/d78a885b59b2e1d5fec4c7ce0b828be6.png.592x432.jpg', '37.767325', '112.529255');
INSERT INTO `housetable` VALUES ('75', '晋源区', '兰亭荟 ', '晋源区/义井商圈/长兴南街与和平南路交汇处东北角', '15152031600', '冯晓艳', '56', '8000  ', '48', 'https://ke-image.ljcdn.com/hdic-resblock/prod-f40be8e2-2a40-4455-b5b5-3c77c474760dphpRT1dnT.592x432.jpg', '37.780569', '112.489288');
INSERT INTO `housetable` VALUES ('76', '晋源区', '兰亭熙园', '晋源区/义井商圈/西中环与长兴北街交汇处西北角', '15152031601', '姚海潮', '52', '20000  ', '200', 'https://ke-image.ljcdn.com/newhouse-user-image/c346fbd06963ce9d773741226ac1c600.jpg.592x432.jpg', '37.811222', '112.512114');
INSERT INTO `housetable` VALUES ('77', '晋源区', '荔园国际金融中心', '晋源区/长风商务区商圈/太原市万柏林区集阜北街与集阜西路交叉口东南角', '15152031602', '汪玲玲', '65', '19000  ', '296', 'https://ke-image.ljcdn.com/newhouse-user-image/2c24752025f8d7497042bb4a2188998c.jpg.592x432.jpg', '37.811222', '112.512114');
INSERT INTO `housetable` VALUES ('78', '晋源区', '保利·悦公馆', '晋源区/义井商圈/南中环康兴路口（保利梧桐语南侧）', '15152031603', '邱慧莲', '25', '13000  ', '145', 'https://ke-image.ljcdn.com/newhouse-user-image/154239fd26534e26fc457fad4d3bb57c.png.592x432.jpg', '37.821103', '112.505203');
INSERT INTO `housetable` VALUES ('79', '晋源区', '官山园著', '晋源区/西山商圈/南中环西中环交汇处往西800米', '15152031604', '占小龙', '59', '19000  ', '212', 'https://ke-image.ljcdn.com/newhouse-user-image/a94f5605ddc11b626c3eeb641bd99ff1.jpg.592x432.jpg', '37.807779', '112.5379');
INSERT INTO `housetable` VALUES ('8', '杏花岭区', '如意小区', '杏花岭区/肿瘤医院商圈/胜利东街与东中环交汇处往西100米', '15152031605', '吴遇飞', '89', '40000 ', '150', 'https://ke-image.ljcdn.com/hdic-resblock/e4f3ab24-89b1-4211-952d-5a82b8fed3a6.jpg.592x432.jpg', '37.878837', '112.608072');
INSERT INTO `housetable` VALUES ('80', '晋源区', '保利和悦华锦', '晋源区/义井商圈/南中环与西中环交叉口西北角', '15152031606', '张彦芳', '15', '9200  ', '9200  ', 'https://ke-image.ljcdn.com/newhouse-user-image/328c405a02cd3ff4a847ae23a2964dd2.jpg.592x432.jpg', '37.801261093163', '112.52463184552');
INSERT INTO `housetable` VALUES ('81', '阳曲县', '龙投·远洋·晋春秋', '阳曲县/曲阳县/方特乐园旁，108国道与锦绣大街交汇处', '15152031607', '黄良红', '56', '10000', '275', 'https://ke-image.ljcdn.com/newhouse-user-image/dc8104221d5533bf140949bc4d24070a.jpg.592x432.jpg', '38.046882', '112.65589');
INSERT INTO `housetable` VALUES ('82', '阳曲县', '阳曲·万科金域蓝湾', '阳曲县/曲阳县/府前街与中社八路交汇处', '15152031608', '林余凤', '56', '6500  ', '95', 'https://ke-image.ljcdn.com/newhouse-user-image/3b007d8f1cdbb29c70595561c2d99644.jpg.592x432.jpg', '38.069020910614', '112.70343169221');
INSERT INTO `housetable` VALUES ('83', '阳曲县', '新希望花园', '阳曲县/曲阳县/并阳路1号', '15152031609', '崔亚浩', '98', '7500 ', '85', 'https://ke-image.ljcdn.com/newhouse-user-image/5b207335c87fa91bdc72d08f176e720f.jpg.592x432.jpg', '38.0353699216', '112.67487779674');
INSERT INTO `housetable` VALUES ('84', '阳曲县', '龙城晋府', '阳曲县/曲阳县/山西省太原市阳曲县', '15152031610', '柴秀莲', '56', '8222', '300', 'https://ke-image.ljcdn.com/newhouse-user-image/dc8104221d5533bf140949bc4d24070a.jpg.592x432.jpg', '38.067506001091', '112.7084876937');
INSERT INTO `housetable` VALUES ('85', '阳曲县', '君弘瑞景', '阳曲县/曲阳县/惠民街君弘瑞景', '15152031611', '饶凯军', '156', '9200', '90', 'https://ke-image.ljcdn.com/newhouse-user-image/5b207335c87fa91bdc72d08f176e720f.jpg.592x432.jpg', '38.053169956557', '112.66521726488');
INSERT INTO `housetable` VALUES ('87', '古交市', '北洋景苑', '古交市/古交市/河扫线北洋景苑', '15152031612', '乔春菊', '26', '8200', '201', 'https://ke-image.ljcdn.com/newhouse-user-image/e19d79b73154c41eb09d1d5a43bcbf38.png.592x432.jpg', '37.930977551246', '112.23300923507');
INSERT INTO `housetable` VALUES ('88', '古交市', '汾河明珠', '古交市/古交市/滨河北路汾河明珠', '15152031613', '徐月琴', '89', '9600', '300', 'https://ty.fang.ke.com/loupan/p_wdlyfabdyb/', '37.920230302712', '112.20024115761');
INSERT INTO `housetable` VALUES ('89', '清徐县', '万科如园', '清徐县/清徐县/滨河西路与文源路交汇处往西200米', '15152031614', '李洋', '78', '6300', '123', 'https://ke-image.ljcdn.com/newhouse-user-image/59fc032826e1858218e1ba21e5001a81.jpg.184x128.jpg', '37.595593', '112.382834');
INSERT INTO `housetable` VALUES ('9', '杏花岭区', '富力城·八号园 ', '杏花岭区/富力城商圈/北中环与东中环交汇处东北角', '15152031615', '徐素珍', '89', '10500', '91', 'https://ke-image.ljcdn.com/hdic-resblock/b6ff297b-0dcd-4610-9991-3cd04c2d6a6a.jpg.592x432.jpg', '37.889169', '112.5641');
INSERT INTO `housetable` VALUES ('90', '清徐县', '四月天·壹号院', '清徐县/清徐县/紫林路与原晋夏路东北交汇处', '15152031616', '陈伟', '89', '6555', '311', 'https://ke-image.ljcdn.com/newhouse-user-image/0426e78f3c09e3a9304a6dd3cc916de0.jpg.592x432.jpg', '37.612793222795', '112.38045985649');
INSERT INTO `housetable` VALUES ('91', '清徐县', '金科清泉城', '清徐县/清徐县/晋夏公路北段金科清泉城', '15152031617', '毛尧星', '56', '5562', '121', 'https://ke-image.ljcdn.com/newhouse-user-image/phpYmT19X1543392878.png.592x432.jpg', '37.617602975002', '112.38140043537');
INSERT INTO `housetable` VALUES ('92', '清徐县', '翔恒·湖锦江南', '清徐县/清徐县/西关大道翔恒·湖锦江南', '15152031618', '孙立鹏', '56', '9550', '111', 'https://ke-image.ljcdn.com/newhouse-user-image/84aec88b9a2dad811ad1999c96aa0d62.jpg.184x128.jpg', '37.628034572779', '112.35974692412');
INSERT INTO `housetable` VALUES ('93', '清徐县', '多弗·南湖岛', '清徐县/清徐县/X914多弗·南湖岛', '15152031619', '杨占坡', '15', '6000', '96', 'https://ke-image.ljcdn.com/newhouse-user-image/59fc032826e1858218e1ba21e5001a81.jpg.184x128.jpg', '37.594092998742', '112.37216695896');
INSERT INTO `housetable` VALUES ('94', '清徐县', '旭日·梧桐苑', '清徐县/清徐县/凤仪街旭日·梧桐苑', '15152031620', '张洁', '95', '12000', '300', 'https://ke-image.ljcdn.com/hdic-resblock/75f1cab2-f4c6-44cb-8137-dee39b850ea7.jpg.184x128.jpg', '37.601590004543', '112.34866938454');
INSERT INTO `housetable` VALUES ('95', '清徐县', '双湖城', '清徐县/清徐县/紫林路双湖城', '15152031621', '陈利军', '48', '3000', '121', 'https://ke-image.ljcdn.com/newhouse-user-image/eade0d68ff26af981a04afdf79f835b4.jpg.184x128.jpg', '37.622655959847', '112.36686008359');
INSERT INTO `housetable` VALUES ('96', '清徐县', '信和天禧城', '清徐县/清徐县/育青路信和天禧城', '15152031622', '李婉', '89', '5800  ', '123', 'https://ke-image.ljcdn.com/newhouse-user-image/f97746c985e3c5e623ef40cbf1b1d015.jpg.592x432.jpg', '37.615222716107', '112.34478160541');
INSERT INTO `housetable` VALUES ('97', '清徐县', '天禄堂·红禧台', '清徐县/清徐县/清徐徐沟镇徐沟中学南门南侧', '15152031623', '林红', '56', '5600  ', '200', 'https://ke-image.ljcdn.com/newhouse-user-image/8abf529b4088fa6da52d3dcac9df6c30.jpg.592x432.jpg', '37.564444', '112.507904');
INSERT INTO `housetable` VALUES ('98', '榆次区', '中格云景小镇 ', '榆次区/榆次区/龙城大街东延，北砖井村', '15152031624', '高华全', '66', '7300  ', '98', 'https://ke-image.ljcdn.com/newhouse-user-image/a0563eaed8ab4638b47da5131bf83f05.jpg.592x432.jpg', '37.788351', '112.672565');
INSERT INTO `housetable` VALUES ('99', '榆次区 ', '中赢·文渊府', '榆次区/榆次区/山西综改示范区创业街山西华澳商贸学院西侧', '15152031625', '郭文军', '30', '5900  ', '76', 'https://ke-image.ljcdn.com/newhouse-user-image/43f46789a68e43be8e2ed27476308f70.jpg.592x432.jpg', '37.679336484436', '112.6415348222');

-- ----------------------------
-- Table structure for `piclist`
-- ----------------------------
DROP TABLE IF EXISTS `piclist`;
CREATE TABLE `piclist` (
  `id` varchar(1000) NOT NULL,
  `url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of piclist
-- ----------------------------

-- ----------------------------
-- Table structure for `titlelist`
-- ----------------------------
DROP TABLE IF EXISTS `titlelist`;
CREATE TABLE `titlelist` (
  `id` varchar(200) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of titlelist
-- ----------------------------
INSERT INTO `titlelist` VALUES ('1', '太原市房屋分布信息大屏');

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
