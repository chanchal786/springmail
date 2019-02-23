package springmail.com.service;

import java.util.List;

import springmail.com.model.User;

public interface UserService {
	void saveUser(User user);
	List<User> allUser();
	User getUser(Long id);
}
