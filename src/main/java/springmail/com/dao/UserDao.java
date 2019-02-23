package springmail.com.dao;

import java.util.List;

import springmail.com.model.User;

public interface UserDao {
	void saveUser(User user);
	List<User> allUser();
	User getUser(Long id);
}
