CREATE TABLE `hoken` (
  `hoken_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '保险编号(主键)',
  `hoken_name` varchar(16) DEFAULT NULL COMMENT '保险名称',
  `hoken_customer_id` bigint(32) NOT NULL COMMENT  '客户id',
  `hihokensha` varchar(16) DEFAULT NULL COMMENT '被保险者名称',
  `hihokensha_birthday` date DEFAULT NULL COMMENT '被保险者出生日期',
  `hoken_kingaku` bigint(32) DEFAULT NULL COMMENT '保险金额',
  `siharai_houhou` varchar(16) DEFAULT NULL COMMENT '支付方式',
  PRIMARY KEY (`hoken_id`),
  CONSTRAINT `FK001` FOREIGN KEY (`hoken_customer_id`) REFERENCES `customer` (`cust_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;