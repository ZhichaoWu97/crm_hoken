package web.action;

import java.io.IOException;
import java.util.stream.Collectors;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import domain.PageBean;
import service.CustomerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

import domain.Customer;
import domain.Hoken;

public class CustomerAction extends ActionSupport implements ModelDriven<Customer> {
	private Integer currPage = 1;

	public void setCurrPage(Integer currPage) {
		if (currPage == null) {
			currPage = 1;
		}
		this.currPage = currPage;
	}

	private CustomerService customerService;

	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	// 使用set方法接受每页显示记录数
	private Integer pageSize = 3;

	public void setPageSize(Integer pageSize) {
		if (pageSize == null) {
			pageSize = 3;
		}
		this.pageSize = pageSize;
	}
	
	private Customer customer = new Customer();
	
	@Override
	public Customer getModel() {
		return customer;
	}
		
	public String saveUI() {
		return "saveUI";
	}
	@InputConfig(resultName = "01")	
	public String save() throws IOException {
		// 保存客户
		customerService.save(customer);
		return "saveSuccess";
	}
	
	public String findAll() {
		// 接收参数：分页参数
		// 最好使用DetachedCriteria对象（条件查询--带分页）
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Customer.class);
		// 设置条件：（在web层设置条件）
		if (customer.getCust_name() != null) {
			// 输入名称:
			detachedCriteria.add(Restrictions.like("cust_name", "%" + customer.getCust_name() + "%"));
		}
		// 调用业务层查询:
		PageBean<Customer> pageBean = customerService.findByPage(detachedCriteria, currPage, pageSize);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAll";
	}
	
	public String update() throws IOException {
		/*
		 * System.out.println(customer.toString()); customer.returnHokenNames();
		 */
		customerService.update(customer);
		return "updateSuccess";
	}
	
	/**
	 * 删除客户的方法：delete
	 */
	public String delete() {
		// 先查询，再删除。
		customer = customerService.findById(customer.getCust_id());
		// 删除客户:
		customerService.delete(customer);
		return "deleteSuccess";
	}
	public String edit() {
		// 根据id查询，跳转页面，回显数据
		customer = customerService.findById(customer.getCust_id());
		// 将customer传递到页面：
		// 两种方式：一种，手动压栈。二种，因为模型驱动的对象，默认在栈顶。
		// 如果使用第一种方式：回显数据: <s:property value="cust_name"/> <s: name="cust_name"
		// value="">
		// 如果使用第二种方式：回显数据: <s:property value="model.cust_name"/>
		ActionContext.getContext().getValueStack().push(customer);
		// 跳转页面
		return "editSuccess";
	}
}
