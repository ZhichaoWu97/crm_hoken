/*
 Navicat Premium Data Transfer

 Source Server         : mysqlDB
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : crm_hoken

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 26/02/2023 22:31:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `cust_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户名称',
  `cust_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户类型',
  `cust_birthday` date NULL DEFAULT NULL COMMENT '客户出生日期',
  `cust_address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户住址',
  `cust_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`cust_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'abcdefg', 'aabbck3', '1998-04-25', 'sdmbok', '1568351');
INSERT INTO `customer` VALUES (2, 'dihsgnljtr', 'mdlkvl', '1990-01-14', 'sdmbokz', '16511465');
INSERT INTO `customer` VALUES (4, 'knsagjbnke', 'dlfjnkj13', NULL, 'mvlskdmfaekwoq', '1568351');
INSERT INTO `customer` VALUES (5, 'knsagjbnke', 'avdglmknl', NULL, 'mkadmklwm', '59816532');
INSERT INTO `customer` VALUES (6, 'knsagjbnk', 'venjkvanwik', NULL, 'k ajkNSnol', '231546');
INSERT INTO `customer` VALUES (7, 'あ　い', '个人事业主复数', '1995-05-04', '东京', '15112124545');
INSERT INTO `customer` VALUES (9, 'naajtfan ', 'dlfjnkj', '1996-06-06', '东京', '1568351');
INSERT INTO `customer` VALUES (11, 'knsagjbnke', 'aabbccd', '1995-05-05', 'amdjbijn', '231546');
INSERT INTO `customer` VALUES (13, 'う　え', '法人复数', '1991-01-01', '横滨', '19954524587');
INSERT INTO `customer` VALUES (14, '34345', 'tegs', '1989-01-01', 'lllll', '123465');
INSERT INTO `customer` VALUES (16, 'wu1', 'a1', '1988-12-31', 'urawa', '08075502589');
INSERT INTO `customer` VALUES (17, '343111', 'tegs', '1988-12-31', 'lllll', '123465');

SET FOREIGN_KEY_CHECKS = 1;
