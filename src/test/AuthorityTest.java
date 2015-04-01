package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wzq.ms.dao.AuthorityDao;
import com.wzq.ms.dataobject.Authority;

public class AuthorityTest {

	public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("conf/applicationContext.xml");
		AuthorityDao authorityDao=(AuthorityDao)ctx.getBean("authorityDao");

		Authority au = new Authority();
		au.setCid(3);
		au.setUid(1);
		au.setAuValue(6);
		authorityDao.addAuVAlue(au);
		
		/*System.out.println(authorityDao.getAuValue(au));
		
		au.setAuValue(6);
		authorityDao.chgAuVAlue(au);
		System.out.println(authorityDao.getAuValue(au));*/
	}

}
