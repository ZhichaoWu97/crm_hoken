CREATE TABLE `sys_user` (
  `user_id` BIGINT(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` VARCHAR(32) NOT NULL COMMENT '用户账号',
  `user_name` VARCHAR(64) NOT NULL COMMENT '用户名称',
  `user_password` VARCHAR(32) NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`user_id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ALTER TABLE sys_user ADD CONSTRAINT sys_user_code_unique UNIQUE(`user_code`);