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

 Date: 26/02/2023 22:32:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `sys_user_code_unique`(`user_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '001', '张三', '202cb962ac59075b964b07152d234b70');
INSERT INTO `sys_user` VALUES (2, '002', '李四', '202cb962ac59075b964b07152d234b70');
INSERT INTO `sys_user` VALUES (3, '003', '王五', '202cb962ac59075b964b07152d234b70');
INSERT INTO `sys_user` VALUES (6, '010', 'sfdvs', '900150983cd24fb0d6963f7d28e17f72');
INSERT INTO `sys_user` VALUES (14, '099', 'dfbzfd', '202cb962ac59075b964b07152d234b70');
INSERT INTO `sys_user` VALUES (15, '0019', 'Tom', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `sys_user` VALUES (16, '8866', 'Jack', '483101a6bc4e6c46a86222eb65fbcb6a');

SET FOREIGN_KEY_CHECKS = 1;
