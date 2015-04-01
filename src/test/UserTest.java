package test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wzq.ms.dao.UserDao;
import com.wzq.ms.dataobject.User;

public class UserTest {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("conf/applicationContext.xml");
		UserDao UserDao=(UserDao)ctx.getBean("userDao");
		
		List<User> users = UserDao.getALlUsers();
		System.out.print(users);
		
	/*	
		User u = new User();
		u.setPwd("111lll");
		u.setSuFlag(true);
		u.setUname("Jackson");
		u.setUtime(new Date());
		UserDao.addUser(u);
		*/
		
	/*	User u = new User();
		u.setPwd("====sss=");
		u.setUid(3);
		UserDao.chgPwd(u);
		*/
		
		
		/*User u = new User();
		u.setSuFlag(false);
		u.setUid(4);
		UserDao.chgType(u);*/
		
		
		/*User u = new User();
		u.setPwd("TomAdminPWD");
		u.setUname("TomAsdmin");
		Integer us = UserDao.checkLogin(u);
		System.out.print("=="+us);
		*/
		
		
	}
}