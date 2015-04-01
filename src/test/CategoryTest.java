package test;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wzq.ms.dao.CategoryDao;
import com.wzq.ms.dataobject.Category;

public class CategoryTest {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("conf/applicationContext.xml");
		CategoryDao categoryDao=(CategoryDao)ctx.getBean("categoryDao");
		
	    /*
	 	List<Category> cates = categoryDao.getALlCategories();
		System.out.print(cates);*/
		
		/*
		Category cate = categoryDao.getCategoriesByCid(1);
		System.out.println(cate);
		
		List<Category> cates = categoryDao.getCategoriesByUid(1);
		System.out.println(cates);
		*/
		
		/*
		Category cate = new Category();
		cate.setUid(2);
		cate.setCname("niubie c name");
		cate.setCtime(new Date());
		categoryDao.addCategory(cate);*/
		

		Category cate = new Category();
		cate.setCid(1);
		cate.setCname("niubie  23ddd3333");
		categoryDao.chgName(cate);;
		
	}
}