package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wzq.ms.dao.ArticleDao;
import com.wzq.ms.dataobject.Article;

public class ArticleTest {

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("conf/applicationContext.xml");
		ArticleDao articleDao=(ArticleDao)ctx.getBean("articleDao");
		
	    Article a = articleDao.getByAid(1);
	    System.out.println(a);
		
	    System.out.println(articleDao.getByCid(2));
	    System.out.println(articleDao.getByUid(1));
	}
}