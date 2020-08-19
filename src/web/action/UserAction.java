package web.action;

import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import domain.User;
import service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

import net.sf.json.JSONArray;
/**
 * 用户管理的Action的类
 * 
 *
 */
public class UserAction extends ActionSupport implements ModelDriven<User> {
	// 模型驱动使用的对象
	private User user = new User();
	@Override
	public User getModel() {
		return user;
	}

	// 注入Service:
	private UserService userService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/**
	 * 用户注册的方法:regist
	 */
	public String regist(){
		try {
			if (user.getUser_name()!= null && !"".equals(user.getUser_name().trim())) {
				userService.regist(user);
				return "registsuccess";
			}else {
				return "02";
			}
			
			
		} catch (Exception e) {
			return "02";
		}
	}
	
	/**
	 * 用户登录的方法：login
	 */
	public String login(){
		// 调用业务层查询用户:
		User existUser = userService.login(user);
		if(existUser == null){
			// 登录失败
			// 添加错误信息:
			this.addActionError("用户名或密码错误!");
			return LOGIN;
		}else{
			// 登录成功
//			ServletActionContext.getRequest().getSession().setAttribute("existUser", existUser);
			ActionContext.getContext().getSession().put("existUser", existUser);
			//ActionContext.getContext().getValueStack().push(existUser);
			return SUCCESS;
		}
	}
	
	/**
	 * 跳转到编辑页面的方法：edit
	 */
	public String edit(){
		user = userService.findById(user.getUser_id());
		ActionContext.getContext().getValueStack().push(user);
		return "editSuccess";
	}
	
	public String update() {
		userService.update(user);
		return "updateSuccess";
	}
	
	public String findAllUser() throws IOException{
		List<User> list = userService.findAll();
		JSONArray jsonArray = JSONArray.fromObject(list);
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		ServletActionContext.getResponse().getWriter().println(jsonArray.toString());
		return NONE;
	}
	
	public String exit() {
		ActionContext.getContext().getSession().clear();
		return "exitSuccess";
	}
}
