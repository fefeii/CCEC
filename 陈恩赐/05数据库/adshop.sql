/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50525
 Source Host           : localhost:3306
 Source Schema         : adshop

 Target Server Type    : MySQL
 Target Server Version : 50525
 File Encoding         : 65001

 Date: 07/08/2018 15:29:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cartid` int(7) NOT NULL AUTO_INCREMENT,
  `userid` int(7) NULL DEFAULT NULL,
  `productid` int(7) NULL DEFAULT NULL,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `pnum` int(11) NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price_total` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`cartid`) USING BTREE,
  INDEX `fk_user`(`userid`) USING BTREE,
  INDEX `fk_product`(`productid`) USING BTREE,
  CONSTRAINT `fk_product` FOREIGN KEY (`productid`) REFERENCES `productinfo` (`ProductID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_user` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`USERID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3000015 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (3000001, 1000003, 2000001, 'UltraBOOST CLIMA 跑步鞋', 1599.00, 1, 'a1-1', 1599);
INSERT INTO `cart` VALUES (3000002, 1000003, 2000002, 'UltraBOOST Parley 跑步鞋', 1499.00, 2, 'a2-1', 2998);
INSERT INTO `cart` VALUES (3000003, 1000003, 2000003, 'Harden Vol. 1 LS PK 哈登系列篮球鞋', 1599.00, 1, 'a3-1', 1);
INSERT INTO `cart` VALUES (3000004, 1000003, 2000001, 'UltraBOOST CLIMA 跑步鞋', 1599.00, 1, 'a1-1', 1599);
INSERT INTO `cart` VALUES (3000005, 1000001, 2000001, 'UltraBOOST CLIMA 跑步鞋', 1599.00, 1, 'a1-1', 1599);
INSERT INTO `cart` VALUES (3000006, 1000003, 2000002, 'UltraBOOST Parley 跑步鞋', 1499.00, 1, 'a2-1', 1499);
INSERT INTO `cart` VALUES (3000007, 1000003, 2000002, 'UltraBOOST Parley 跑步鞋', 1499.00, 1, 'a2-1', 1499);
INSERT INTO `cart` VALUES (3000008, 1000003, 2000002, 'UltraBOOST Parley 跑步鞋', 1499.00, 1, 'a2-1', 1499);
INSERT INTO `cart` VALUES (3000009, 1000003, 2000007, 'UltraBOOST w 跑步鞋', 1399.00, 1, 'a7-1', 1399);
INSERT INTO `cart` VALUES (3000010, 1000003, 2000002, 'UltraBOOST Parley 跑步鞋', 1499.00, 1, 'a2-1', 1499);
INSERT INTO `cart` VALUES (3000011, 1000003, 2000002, 'UltraBOOST Parley 跑步鞋', 1499.00, 1, 'a2-1', 1499);
INSERT INTO `cart` VALUES (3000012, 1000003, 2000002, 'UltraBOOST Parley 跑步鞋', 1499.00, 1, 'a2-1', 1499);
INSERT INTO `cart` VALUES (3000013, 1000003, 2000003, 'Harden Vol. 1 LS PK 哈登系列篮球鞋', 1599.00, 1, 'a3-1', 1599);
INSERT INTO `cart` VALUES (3000014, 1000003, 2000002, 'UltraBOOST Parley 跑步鞋', 1499.00, 1, 'a2-1', 1499);

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`  (
  `colorID` int(1) NOT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`colorID`) USING BTREE,
  INDEX `color`(`color`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES (1, '白色');
INSERT INTO `color` VALUES (7, '粉红色');
INSERT INTO `color` VALUES (6, '红色');
INSERT INTO `color` VALUES (4, '绿色');
INSERT INTO `color` VALUES (5, '蓝色');
INSERT INTO `color` VALUES (3, '黄色');
INSERT INTO `color` VALUES (2, '黑色');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `managerID` int(7) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`managerID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4000002 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (4000001, 'cqhcc', '123456');

-- ----------------------------
-- Table structure for order_complete
-- ----------------------------
DROP TABLE IF EXISTS `order_complete`;
CREATE TABLE `order_complete`  (
  `orderID` int(7) NOT NULL,
  `productID` int(7) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `total_num` int(10) NOT NULL,
  `total_price` decimal(10, 2) NOT NULL,
  `complete-time` datetime NULL,
  `PVendor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderID`) USING BTREE,
  INDEX `fk_comp`(`productID`) USING BTREE,
  CONSTRAINT `fk_comp` FOREIGN KEY (`productID`) REFERENCES `productinfo` (`ProductID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_ongoing
-- ----------------------------
DROP TABLE IF EXISTS `order_ongoing`;
CREATE TABLE `order_ongoing`  (
  `OrderID` int(7) NOT NULL AUTO_INCREMENT,
  `price` decimal(10, 2) NOT NULL,
  `total` int(10) NOT NULL,
  `accepted` int(10) NOT NULL DEFAULT 0,
  `remaining` int(10) NOT NULL DEFAULT 0,
  `productID` int(7) NOT NULL,
  `total_price` decimal(10, 2) NOT NULL,
  `recent_update_time` datetime NULL,
  `PVendor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`OrderID`) USING BTREE,
  INDEX `fk_getOrder`(`productID`) USING BTREE,
  CONSTRAINT `fk_getOrder` FOREIGN KEY (`productID`) REFERENCES `productinfo` (`ProductID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for product_color
-- ----------------------------
DROP TABLE IF EXISTS `product_color`;
CREATE TABLE `product_color`  (
  `productID` int(11) NOT NULL,
  `Color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIBE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PictureSrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `fk_color`(`productID`) USING BTREE,
  INDEX `fk_c`(`Color`) USING BTREE,
  CONSTRAINT `fk_c` FOREIGN KEY (`Color`) REFERENCES `color` (`color`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_color` FOREIGN KEY (`productID`) REFERENCES `productinfo` (`ProductID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_color
-- ----------------------------
INSERT INTO `product_color` VALUES (2000001, '白色', '亮黄荧光', 'a1-1,a1-2,a1-3,a1-4');
INSERT INTO `product_color` VALUES (2000001, '黑色', '1号黑色/红荧光/亮黄荧光', 'a1-5,a1-6,a1-7,a1-8');
INSERT INTO `product_color` VALUES (2000002, '黑色', '传奇墨水蓝/碳黑/', 'a2-1,a2-2,a2-3,a2-4');
INSERT INTO `product_color` VALUES (2000002, '蓝色', '活力蓝/亮白/碳黑', 'a2-5,a2-6,a2-7,a2-8');
INSERT INTO `product_color` VALUES (2000003, '黑色', '1号黑色/石墨黑', 'a3-1,a3-2,a3-3,a3-4');
INSERT INTO `product_color` VALUES (2000003, '白色', '亮白/清澈灰/纯质灰', 'a3-5,a3-6,a3-7,a3-8');
INSERT INTO `product_color` VALUES (2000004, '黑色', '1号黑色/远景灰/石墨黑', 'a4-1,a4-2,a4-3,a4-4');
INSERT INTO `product_color` VALUES (2000004, '蓝色', '学院藏青蓝/黑色/一度灰', 'a4-5,a4-6,a4-7,a4-8');
INSERT INTO `product_color` VALUES (2000005, '黑色', '深灰/碳黑/亮白', 'a5-1,a5-2,a5-3,a5-4');
INSERT INTO `product_color` VALUES (2000005, '黄色', '亮黄荧光', 'a5-5,a5-6,a5-7,a5-8');
INSERT INTO `product_color` VALUES (2000006, '黑色', '深灰/黑色', 'a6-1,a6-2,a6-3,a6-4');
INSERT INTO `product_color` VALUES (2000007, '粉红色', '珍珠烟灰/亚麻棕', 'a7-1,a7-2,a7-3,a7-4');
INSERT INTO `product_color` VALUES (2000008, '黑色', '1号黑色', 'a8-1,a8-2,a8-3,a8-4');

-- ----------------------------
-- Table structure for product_inventory
-- ----------------------------
DROP TABLE IF EXISTS `product_inventory`;
CREATE TABLE `product_inventory`  (
  `productID` int(7) NOT NULL,
  `size` int(2) NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inventory` int(10) NULL DEFAULT NULL,
  `in_date` datetime NULL DEFAULT NULL,
  INDEX `fk_pro`(`productID`) USING BTREE,
  INDEX `fk_size`(`size`) USING BTREE,
  INDEX `fk_color1`(`color`) USING BTREE,
  CONSTRAINT `fk_color1` FOREIGN KEY (`color`) REFERENCES `color` (`color`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pro` FOREIGN KEY (`productID`) REFERENCES `productinfo` (`ProductID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_size` FOREIGN KEY (`size`) REFERENCES `size` (`size`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_inventory
-- ----------------------------
INSERT INTO `product_inventory` VALUES (2000001, 38, '白色', 10, '2018-07-30 17:01:45');
INSERT INTO `product_inventory` VALUES (2000001, 38, '黑色', 10, '2018-07-30 17:02:34');
INSERT INTO `product_inventory` VALUES (2000002, 38, '黑色', 12, '2018-07-30 17:07:36');
INSERT INTO `product_inventory` VALUES (2000002, 38, '蓝色', 12, '2018-07-30 17:07:57');
INSERT INTO `product_inventory` VALUES (2000003, 38, '白色', 12, NULL);
INSERT INTO `product_inventory` VALUES (2000003, 38, '黑色', 12, NULL);
INSERT INTO `product_inventory` VALUES (2000004, 38, '黑色', 12, NULL);
INSERT INTO `product_inventory` VALUES (2000004, 38, '蓝色', 12, NULL);
INSERT INTO `product_inventory` VALUES (2000005, 38, '黑色', 12, NULL);
INSERT INTO `product_inventory` VALUES (2000005, 38, '蓝色', 12, NULL);
INSERT INTO `product_inventory` VALUES (2000006, 38, '黄色', 12, NULL);

-- ----------------------------
-- Table structure for product_type
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type`  (
  `TYPEID` int(11) NOT NULL,
  `PType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIBE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`TYPEID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_type
-- ----------------------------
INSERT INTO `product_type` VALUES (1, '男士', NULL);
INSERT INTO `product_type` VALUES (2, '女士', NULL);
INSERT INTO `product_type` VALUES (3, '童鞋', NULL);
INSERT INTO `product_type` VALUES (4, '跑鞋', NULL);
INSERT INTO `product_type` VALUES (5, '篮球鞋', NULL);
INSERT INTO `product_type` VALUES (6, '足球鞋', NULL);
INSERT INTO `product_type` VALUES (7, '训练鞋', NULL);
INSERT INTO `product_type` VALUES (8, '户外鞋', NULL);

-- ----------------------------
-- Table structure for productinfo
-- ----------------------------
DROP TABLE IF EXISTS `productinfo`;
CREATE TABLE `productinfo`  (
  `ProductID` int(7) NOT NULL AUTO_INCREMENT,
  `price` decimal(10, 2) NOT NULL,
  `PNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PMODEL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PTYPEID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PDESCRIBE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PREPICTURE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ProductID`) USING BTREE,
  INDEX `FK_TYPE`(`PTYPEID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2000013 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'PVendor  出厂商' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of productinfo
-- ----------------------------
INSERT INTO `productinfo` VALUES (2000001, 1599.00, 'UltraBOOST CLIMA 跑步鞋', 'UltraBOOST CLIMA ', '男士,跑步鞋', '男子  运动表现  跑步', 'a1-1,a1-2,a1-3,a1-4');
INSERT INTO `productinfo` VALUES (2000002, 1499.00, 'UltraBOOST Parley 跑步鞋', 'UltraBOOST Parley', '男士,跑步鞋', '男子  运动表现  跑步', 'a2-1,a2-2,a2-3,a2-4');
INSERT INTO `productinfo` VALUES (2000003, 1599.00, 'Harden Vol. 1 LS PK 哈登系列篮球鞋', 'Harden Vol. 1 LS PK 哈登系列篮球鞋', '男士,篮球鞋', '男子  运动表现  篮球', 'a3-1,a3-2,a3-3,a3-4');
INSERT INTO `productinfo` VALUES (2000004, 899.00, 'TERREX TRAILMAKER 户外鞋', 'TERREX TRAILMAKER', '男士,户外鞋', '男子  运动表现  户外', 'a4-1,a4-2,a4-3,a4-4');
INSERT INTO `productinfo` VALUES (2000005, 2018.00, 'PREDATOR 18+ FG 足球鞋', 'PREDATOR 18+ FG', '男士,足球鞋', '男子  运动表现  足球', 'a5-1,a5-2,a5-3,a5-4');
INSERT INTO `productinfo` VALUES (2000006, 599.00, 'CrazyTrain LT M 训练鞋', 'CrazyTrain LT M', '男士,训练鞋', '男子  运动表现  训练', 'a6-1,a6-2,a6-3,a6-4');
INSERT INTO `productinfo` VALUES (2000007, 1399.00, 'UltraBOOST w 跑步鞋', 'UltraBOOST w', '女士,跑步鞋', '女子  运动表现  跑步', 'a7-1,a7-2,a7-3,a7-4');
INSERT INTO `productinfo` VALUES (2000008, 599.00, 'TERREX AX2R W 户外鞋', 'TERREX AX2R W', '女士,户外鞋', '女子  运动表现  户外', 'a8-1,a8-2,a8-3,a8-4');

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size`  (
  `sizeid` int(11) NOT NULL,
  `size` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`sizeid`) USING BTREE,
  INDEX `size`(`size`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES (1, 38);
INSERT INTO `size` VALUES (2, 39);
INSERT INTO `size` VALUES (3, 40);
INSERT INTO `size` VALUES (4, 41);
INSERT INTO `size` VALUES (5, 42);
INSERT INTO `size` VALUES (6, 43);
INSERT INTO `size` VALUES (7, 44);
INSERT INTO `size` VALUES (8, 45);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `USERID` int(7) NOT NULL AUTO_INCREMENT,
  `ACCOUNT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PWD` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SEX` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TEL` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EMAIL` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`USERID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000005 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1000001, 'cqh', '123456', '男', '13131313131', '1313131@qq.com');
INSERT INTO `userinfo` VALUES (1000003, 'cqhc', '123456', '男', '12345678913', 'bcd@qq.com');
INSERT INTO `userinfo` VALUES (1000004, 'hdfjdfh878', '54tftrtee', '男', '15089898983', '55422534@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
