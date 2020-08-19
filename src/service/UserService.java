package service;

import java.util.List;



import domain.User;

/**
 * 用户管理的Service的接口
 *
 */
public interface UserService {

	void regist(User user);

	User login(User user);

	List<User> findAll();

	void update(User user);
	
	User findById(Long user_id);

}
