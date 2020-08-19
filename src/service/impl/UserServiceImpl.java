package service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;


import dao.UserDao;
import domain.User;
import service.UserService;
import utils.MD5Utils;
/**
 * 用户管理的Service的实现类
 * 
 *
 */
@Transactional
public class UserServiceImpl implements UserService {

	// 注入DAO:
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	// 业务层注册用户的方法
	public void regist(User user) {
		// 对密码进行加密处理：
		user.setUser_password(MD5Utils.md5(user.getUser_password()));
		// 调用DAO
		userDao.save(user);
	}

	@Override
	// 业务层用户登录的方法
	public User login(User user) {
		user.setUser_password(MD5Utils.md5(user.getUser_password()));
		// 调用DAO
		return userDao.login(user);
	}

	@Override
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Override
	public void update(User user) {
		user.setUser_password(MD5Utils.md5(user.getUser_password()));
		userDao.update(user);
	}

	@Override
	public User findById(Long user_id) {
		
			return userDao.findById(user_id);
	}
	
	
}


