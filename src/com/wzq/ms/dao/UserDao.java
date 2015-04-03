package com.wzq.ms.dao;

import java.util.List;

import com.wzq.ms.dataobject.User;

public interface UserDao {
	
	public List<User> getALlUsers();
	
	public User checkLogin(User user);
	
	public User getUserById(int uId);
	
	public User selectUser(User user);
	
	public void addUser(User user);
	
	public void chgPwd(User user);
	
	public void chgType(User user);
	
	public void updateUser(User user);
	
	public boolean checkAdmin(Integer uid);
	
	public void deleteUser(int userId);
}