package domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import domain.Customer;

/*
  `hoken_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '保险编号(主键)',
  `hoken_name` varchar(16) DEFAULT NULL COMMENT '保险名称',
  `hoken_customer_id` bigint(32) NOT NULL COMMENT  '客户id',
  `hihokensha` varchar(16) DEFAULT NULL COMMENT '被保险者名称',
  `hihokensha_birthday` date DEFAULT NULL COMMENT '被保险者出生日期',
  `hoken_kingaku` bigint(32) DEFAULT NULL COMMENT '保险金额',
  `siharai_houhou` varchar(16) DEFAULT NULL COMMENT '支付方式',
 */
public class Hoken {

	
	@Override
	public String toString() {
		return "Hoken [hoken_id=" + hoken_id + ", hoken_name=" + hoken_name + ", hihokensha=" + hihokensha
				+ ", hihokensha_birthday=" + hihokensha_birthday + ", hoken_kingaku=" + hoken_kingaku
				+ ", siharai_houhou=" + siharai_houhou + ", customer=" + customer + "]";
	}
	private Long hoken_id;
	private String hoken_name;

	private String hihokensha;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date  hihokensha_birthday;
	private Long hoken_kingaku;
	private String siharai_houhou;
	private Customer customer;
	
	
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Long getHoken_id() {
		return hoken_id;
	}
	public void setHoken_id(Long hoken_id) {
		this.hoken_id = hoken_id;
	}
	public String getHoken_name() {
		return hoken_name;
	}
	public void setHoken_name(String hoken_name) {
		this.hoken_name = hoken_name;
	}

	
	public String getHihokensha() {
		return hihokensha;
	}
	public void setHihokensha(String hihokensha) {
		this.hihokensha = hihokensha;
	}
	public Date getHihokensha_birthday() {
		return hihokensha_birthday;
	}
	public void setHihokensha_birthday(Date hihokensha_birthday) {
		this.hihokensha_birthday = hihokensha_birthday;
	}
	public Long getHoken_kingaku() {
		return hoken_kingaku;
	}
	public void setHoken_kingaku(Long hoken_kingaku) {
		this.hoken_kingaku = hoken_kingaku;
	}
	public String getSiharai_houhou() {
		return siharai_houhou;
	}
	public void setSiharai_houhou(String siharai_houhou) {
		this.siharai_houhou = siharai_houhou;
	}

}
