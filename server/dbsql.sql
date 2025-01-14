/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : db_mall

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 05/06/2023 16:06:41
*/
CREATE DATABASE da_mall;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `uid` int(11) NOT NULL,
  `pwd` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (123, '123', 'MXR', '男', '1999911', '新疆');
INSERT INTO `admin` VALUES (20000105, 'fxjnsz', '芒果怪', '女', '1830090', '贵州');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `uid` int(11) NOT NULL,
  `gid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int(6) NOT NULL,
  PRIMARY KEY (`uid`, `gid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (123, '40', 1);
INSERT INTO `cart` VALUES (123, '8', 1);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (19, 9, 123, '好', '2022/5/2');
INSERT INTO `comment` VALUES (20, 9, 123, '不错不错', '2022/5/2');
INSERT INTO `comment` VALUES (29, 14, 123, '球的质量挺好的', '2022/5/6');
INSERT INTO `comment` VALUES (31, 9, 123, '123123', '2022/5/7');
INSERT INTO `comment` VALUES (32, 9, 123, '123123123', '2022/5/8');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (1, '希望进一些模型', '2022/4/11');
INSERT INTO `feedback` VALUES (2, '商品种类能多添加一些吗', '2022/4/11');
INSERT INTO `feedback` VALUES (3, '能够定制一批音响吗', '2022/4/11');
INSERT INTO `feedback` VALUES (4, '能够客制键盘吗', '2022/4/11');
INSERT INTO `feedback` VALUES (5, '多加一些积木玩具吧', '2022/4/11');
INSERT INTO `feedback` VALUES (9, '亲请问请问', '2022/5/2');
INSERT INTO `feedback` VALUES (13, 'qweqweqweqwe', '2022/5/4');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sales` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `score` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stock` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (8, '2', 'http://localhost:8888/1685609437723-QQ图片20220929105345.png', '大黄蜂', '43.1', '28', '4', '150mm * 100mm，塑料制品', '塑料制品，但很结实，耐造', '50');
INSERT INTO `goods` VALUES (9, '3', 'http://localhost:8888/1649779138811-goods14.jpg', '精美手机壳', '23.6', '78', '4', '适用于大部分机型，可定制。', '采用XXXXX材质个性定制，品质优良', '0');
INSERT INTO `goods` VALUES (10, '1', 'http://localhost:8888/1649778023199-goods4.png', '玻璃水杯', '23.4', '14', '4', '30cm * 8cm,无机玻璃', '原材料是无机玻璃,无毒健康，品质优良', '52');
INSERT INTO `goods` VALUES (11, '1', 'http://localhost:8888/1649778050905-goods3.png', '小音箱', '98.1', '34', '4', '13cm * 13cm 两个', '高质量小音箱，一年保修', '65');
INSERT INTO `goods` VALUES (12, '4', 'http://localhost:8888/1649778096821-goods2.png', '手表', '76', '17', '5', '机械电子表，搭载三星全新的 Exynos W920 芯片。', '这表非常不错，与上代产品相比，该芯片的性能将显著提升。', '57');
INSERT INTO `goods` VALUES (13, '5', 'http://localhost:8888/1649778132309-goods5.png', '键盘', '43.5', '35', '4', '96键客制键盘', '纯手工制品，组装部件选用上等零件，一年保修', '20');
INSERT INTO `goods` VALUES (14, '5', 'http://localhost:8888/1649779060138-goods15.png', '各种球', '33.3', '12', '5', '篮球 * 1，足球 * 1，橄榄球 * 1，乒乓球 * 3，棒球 * 2，网球 * 2，', '球类大礼包，包含多种球', '45');
INSERT INTO `goods` VALUES (16, '0', 'http://localhost:8888/1649779173944-goods11.png', '化妆品', '500', '21', '5', '面霜*1，洗面奶*1，身体乳*1，眼霜*1，防晒*1', '护肤大礼包，超级划算', '23');
INSERT INTO `goods` VALUES (17, '0', 'http://localhost:8888/1649779241961-goods13.jpg', '剃须刀', '34.9', '12', '4', '17', '17', '65');
INSERT INTO `goods` VALUES (18, '0', 'http://localhost:8888/1649779273212-goods12.jpg', '牛奶', '50.3', '17', '4', '230ml * 16', '源自大自然，好喝到爆', '12');
INSERT INTO `goods` VALUES (21, '2', 'http://localhost:8888/1651395230493-goods16.png', '耳机', '366', '23', '5', '轻质耳机300g,6000毫安大电池', '轻质耳机300g,6000毫安大容量，好评如潮', '88');
INSERT INTO `goods` VALUES (22, '1', 'http://localhost:8888/1651937289821-goods17.png', '桌游', '66', '0', '4', '好玩的桌游', '与伙伴们来一场紧张刺激的桌游吧！', '66');
INSERT INTO `goods` VALUES (23, '1', 'http://localhost:8888/1649777841534-goods8.jpg', '模型车', '88.8', '9', '5', '12345245', '113524', '55');
INSERT INTO `goods` VALUES (24, '4', 'http://localhost:8888/1649777876722-goods6.png', '木雕碗', '36.6', '34', '4', '43251312', '154235123', '12');
INSERT INTO `goods` VALUES (25, '5', 'http://localhost:8888/1649777959436-goods9.jpg', '模型车2', '66.6', '12', '4', '124315749', '35131', '23');
INSERT INTO `goods` VALUES (26, '0', 'http://localhost:8888/1649777989583-goods7.png', '台灯', '35.5', '11', '4', '98706', '45562', '54');
INSERT INTO `goods` VALUES (27, '2', 'http://localhost:8888/1649778023199-goods4.png', '玻璃水杯', '23.3', '23', '4', '15798', '413275', '86');
INSERT INTO `goods` VALUES (28, '3', 'http://localhost:8888/1649778050905-goods3.png', '小音响', '77.9', '13', '3', '1366906', '314236589', '12');
INSERT INTO `goods` VALUES (29, '5', 'http://localhost:8888/1649778096821-goods2.png', '手表', '326', '2', '3', '1231266', '12453563', '66');
INSERT INTO `goods` VALUES (30, '3', 'http://localhost:8888/1649778132309-goods5.png', '客制键盘', '99.9', '5', '4', '124315', '75608', '89');
INSERT INTO `goods` VALUES (31, '3', 'http://localhost:8888/1649779060138-goods15.png', '球礼包', '222.28', '8', '3', '124136', '346680', '32');
INSERT INTO `goods` VALUES (32, '0', 'http://localhost:8888/1649779138811-goods14.jpg', '定制手机壳', '23.3', '9', '5', '125367', '64865', '14');
INSERT INTO `goods` VALUES (33, '5', 'http://localhost:8888/1649779173944-goods11.png', '化妆品礼包', '335.8', '2', '3', '1255876', '0=06569', '45');
INSERT INTO `goods` VALUES (34, '2', 'http://localhost:8888/1649779241961-goods13.jpg', '剃须刀', '99.9', '2', '4', '126497870', '4653423', '78');
INSERT INTO `goods` VALUES (35, '4', 'http://localhost:8888/1649779273212-goods12.jpg', '山花牛奶', '66.6', '3', '5', '1243634', '36578', '66');
INSERT INTO `goods` VALUES (39, '3', 'http://localhost:8888/1651654136977-goods1.png', '小黄人2', '1123', '0', '5', '123123', '123123123', '33');
INSERT INTO `goods` VALUES (40, '1', 'http://localhost:8888/1649777817985-goods1.png', '小黄人模型', '50.2', '17', '4', '123123', '12312312', '18');
INSERT INTO `goods` VALUES (41, '2', 'http://localhost:8888/1651973496643-goods3.png', '123', '123', '0', '5', '12312', '123', '123');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (4, '666', '商品5×3', '50.70￥', '测试地址', '2022/4/4', '1');
INSERT INTO `orders` VALUES (6, '123', '商品6×1,商品8×3', '179.60￥', '测试地址', '2022/4/7', '1');
INSERT INTO `orders` VALUES (7, '123', '商品6×6,商品8×7', '603.50￥', '测试地址', '2022/4/7', '1');
INSERT INTO `orders` VALUES (13, '123', '化妆品礼包×1,剃须刀×2,山花牛奶×3', '735.40￥', '测试地址', '2022/4/26', '1');
INSERT INTO `orders` VALUES (14, '123', '模型车×1,小黄人模型×1,定制手机壳×9', '348.70￥', '测试地址', '2022/4/30', '1');
INSERT INTO `orders` VALUES (16, '123', '精美手机壳×10', '236.00￥', '测试地址', '2022/5/2', '0');
INSERT INTO `orders` VALUES (17, '123', '蓝色模型车×1,精美手机壳×8', '239.10￥', '测试地址', '2022/5/2', '0');
INSERT INTO `orders` VALUES (21, '123', '精美手机壳×2,键盘×3', '177.70￥', '测试测试地址', '2022/5/6', '0');
INSERT INTO `orders` VALUES (24, '123', '木雕饰品×1,精美手机壳×3', '96.60￥', '测试测试地址', '2022/5/7', '2');
INSERT INTO `orders` VALUES (25, '123', '大黄蜂×1,精美手机壳×2', '90.30￥', '测试测试地址', '2022/5/7', '0');
INSERT INTO `orders` VALUES (26, '123', '大黄蜂×1,精美手机壳×3', '113.90￥', '测试测试地址', '2022/5/8', '0');
INSERT INTO `orders` VALUES (27, '123', '玻璃水杯×1,小音箱×1,小黄人模型×1', '171.70￥', '测试测试地址', '2023/6/1', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL,
  `pwd` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (123, '123', '234', '男', '测试测试地址', '1999911');
INSERT INTO `users` VALUES (666, '123', 'mxrrrr', '男', 'xx省xx市', '1231232');
INSERT INTO `users` VALUES (20000105, 'fxjnsz', '芒果怪', '女', 'dd省dd市', '1830090');

SET FOREIGN_KEY_CHECKS = 1;
