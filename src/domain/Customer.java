package domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.format.annotation.DateTimeFormat;

/*
  `cust_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(32) NOT NULL COMMENT '客户名称',
  `cust_type` varchar(32) DEFAULT NULL COMMENT '客户类型',
  `cust_birthday` date DEFAULT NULL COMMENT '客户出生日期',
  `cust_address` varchar(32) DEFAULT NULL COMMENT '客户住址',
  `cust_phone` varchar(32) DEFAULT NULL COMMENT '联系方式',
 */
public class Customer {
	@Override
	public String toString() {
		return "Customer [cust_id=" + cust_id + ", cust_name=" + cust_name + ", cust_type=" + cust_type
				+ ", cust_birthday=" + cust_birthday + ", cust_address=" + cust_address + ", cust_phone=" + cust_phone
				+ ", hokens=" + hokens.hashCode() + "]";
	}

	private Long cust_id;
	private String cust_name;
	private String cust_type;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date cust_birthday;
	private String cust_address;
	private String cust_phone;

	private Set<Hoken> hokens = new HashSet<Hoken>();

	public Set<Hoken> getHokens() {
		return hokens;
	}

	public void setHokens(Set<Hoken> hokens) {
		this.hokens = hokens;
	}

	
	  public void returnHokenNames() { String hoken_name =
	  hokens.stream().map(Hoken::getHoken_name).collect(Collectors.joining(",")); 
	  
	  }
	 

	public Long getCust_id() {
		return cust_id;
	}

	public void setCust_id(Long cust_id) {
		this.cust_id = cust_id;
	}

	public String getCust_name() {
		return cust_name;
	}

	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}

	public String getCust_type() {
		return cust_type;
	}

	public void setCust_type(String cust_type) {
		this.cust_type = cust_type;
	}

	public Date getCust_birthday() {
		return cust_birthday;
	}

	public void setCust_birthday(Date cust_birthday) {
		this.cust_birthday = cust_birthday;
	}

	public String getCust_address() {
		return cust_address;
	}

	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}

	public String getCust_phone() {
		return cust_phone;
	}

	public void setCust_phone(String cust_phone) {
		this.cust_phone = cust_phone;
	}

}
