CREATE TABLE `customer` (
  `cust_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(32) NOT NULL COMMENT '客户名称',
  `cust_type` varchar(32) DEFAULT NULL COMMENT '客户类型',
  `cust_birthday` date DEFAULT NULL COMMENT '客户出生日期',
  `cust_address` varchar(32) DEFAULT NULL COMMENT '客户住址',
  `cust_phone` varchar(32) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;