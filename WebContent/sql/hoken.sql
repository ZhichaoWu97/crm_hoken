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

 Date: 26/02/2023 22:32:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hoken
-- ----------------------------
DROP TABLE IF EXISTS `hoken`;
CREATE TABLE `hoken`  (
  `hoken_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '保险编号(主键)',
  `hoken_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保险名称',
  `hoken_customer_id` bigint(32) NOT NULL COMMENT '客户id',
  `hihokensha` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被保险者名称',
  `hihokensha_birthday` date NULL DEFAULT NULL COMMENT '被保险者出生日期',
  `hoken_kingaku` bigint(32) NULL DEFAULT NULL COMMENT '保险金额',
  `siharai_houhou` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付方式',
  PRIMARY KEY (`hoken_id`) USING BTREE,
  INDEX `FKjrbonf59xm9yxdte81tgvd1lm`(`hoken_customer_id`) USING BTREE,
  CONSTRAINT `FK001` FOREIGN KEY (`hoken_customer_id`) REFERENCES `customer` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKjrbonf59xm9yxdte81tgvd1lm` FOREIGN KEY (`hoken_customer_id`) REFERENCES `customer` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hoken
-- ----------------------------
INSERT INTO `hoken` VALUES (3, 'fakbhjfrbajwhr', 1, 'ambiaun', '1996-12-01', 1787161917, '年付');
INSERT INTO `hoken` VALUES (4, 'rmijmtbksjr', 1, 'ambitnisn', NULL, NULL, '半年付');
INSERT INTO `hoken` VALUES (6, 'fakbhjfrbajwhr', 1, '', '1996-12-31', NULL, '月付');
INSERT INTO `hoken` VALUES (7, 'rmijmtbksjr', 5, 'ambitnisn', '1996-12-31', 51254156, '');
INSERT INTO `hoken` VALUES (8, 'xkzlvmnf', 4, 'a,ekfrl', '1996-12-31', 98765, '年付');
INSERT INTO `hoken` VALUES (10, 'rmijmtbksjr', 4, 'ambiaun', '1997-01-01', 98765, '月付');
INSERT INTO `hoken` VALUES (12, 'rmijmtbksjr', 1, 'ambitnisn', '1997-08-06', 98765, '年付');
INSERT INTO `hoken` VALUES (13, 'あ　い', 7, 'ambitnisn', '1997-08-06', 98765, '年付');
INSERT INTO `hoken` VALUES (15, 'fakbhjfrbajwhr', 1, '', NULL, 1000000000, '月付');
INSERT INTO `hoken` VALUES (16, 'rmijmtbksjr', 2, 'ambitnisn', '1996-12-01', 51254156, '年付');

SET FOREIGN_KEY_CHECKS = 1;
