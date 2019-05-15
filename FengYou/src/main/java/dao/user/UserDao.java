package dao.user;

import pojo.User;

public interface UserDao {
	public User login(User user);
	public int Registration(User user);
}
