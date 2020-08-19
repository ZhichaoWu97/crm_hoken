package web.action;

import java.io.IOException;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.context.ApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import domain.Customer;
import domain.Hoken;
import domain.PageBean;
import service.CustomerService;
import service.HokenService;

public class HokenAction extends ActionSupport implements ModelDriven<Hoken> {
	
	private Hoken hoken = new Hoken();

	public Hoken getModel() {
		return hoken;
	}
	
	private HokenService hokenService;
	public void setHokenService(HokenService hokenService) {
		this.hokenService = hokenService;
	}
	
	private CustomerService customerService;
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
		
	private Integer currPage = 1;
	private Integer pageSize = 3;
	public void setCurrPage(Integer currPage) {
		if (currPage == null) {
			currPage = 1;
		}
		this.currPage = currPage;
	}

	public void setPageSize(Integer pageSize) {
		if (pageSize == null) {
			pageSize = 3;
		}
		this.pageSize = pageSize;
	}
	

	
	public String findAll() {
		// 接收参数：分页参数
		// 最好使用DetachedCriteria对象（条件查询--带分页）
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Hoken.class);
		// 设置条件：（在web层设置条件）
		if (hoken.getHoken_name() != null) {
			// 输入名称:
			detachedCriteria.add(Restrictions.like("hoken_name", "%" + hoken.getHoken_name() + "%"));
		}
		// 调用业务层查询:
		/*
		 * System.out.println(currPage); System.out.println(pageSize);
		 */
		PageBean<Hoken> pageBean = hokenService.findAll(detachedCriteria, currPage, pageSize);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAll";
	}

	
	public String saveUI() {
		List<Customer> list = customerService.findAll();
		// 将list集合保存值栈中:
		ActionContext.getContext().getValueStack().set("list", list);
		return "saveUI";
	}
	
	public String save() throws IOException {
		// 保存客户
		
		  if(hoken.getCustomer().getCust_id() == null){ // 登录失败 // 添加错误信息:
		  this.addActionError("请选择订单所属的客户"); 
		  List<Customer> list = customerService.findAll();
			// 将list集合保存值栈中:
			ActionContext.getContext().getValueStack().set("list", list);
		  return LOGIN;
		  }else{
		  hokenService.save(hoken);
		  return "saveSuccess"; }
		 
		/*
		 * System.out.println(hoken.getCustomer().toString()); hokenService.save(hoken);
		 * return "saveSuccess";
		 */
	}
	
	public String update() throws IOException {
		
		hokenService.update(hoken);
		return "updateSuccess";
	}
	
	/**
	 * 删除客户的方法：delete
	 */
	public String delete() {
		// 先查询，再删除。
		hoken = hokenService.findById(hoken.getHoken_id());
		// 删除客户:
		hokenService.delete(hoken);
		return "deleteSuccess";
	}
	public String edit() {
		// 根据id查询，跳转页面，回显数据
		List<Customer> list = customerService.findAll();
		for(int i=0;i<list.size();i++)
			System.out.println(list.get(i).toString());
		
		hoken = hokenService.findById(hoken.getHoken_id());
		
		ActionContext.getContext().getValueStack().set("list", list);
		
		ActionContext.getContext().getValueStack().push(hoken);
		
		
		
		// 将hoken传递到页面：
		// 两种方式：一种，手动压栈。二种，因为模型驱动的对象，默认在栈顶。
		// 如果使用第一种方式：回显数据: <s:property value="cust_name"/> <s:name ="cust_name"
		// value="">
		// 如果使用第二种方式：回显数据: <s:property value="model.cust_name"/>
		ActionContext.getContext().getValueStack().push(hoken);
		// 跳转页面
		return "editSuccess";
	}
	
	/*
	 * public void validate() {
	 * 
	 * if (account == null || account.equals("")) {
	 * this.addFieldError("loginUser.account", "请输入您的用户名！");//添加域级错误信息 } if (pwd ==
	 * null || pwd.equals("")) { this.addFieldError("loginUser.password",
	 * "请输入您的密码！");//添加域级错误信息 } }
	 */
}
