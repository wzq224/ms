package com.wzq.ms.dao;

import java.util.List;

import com.wzq.ms.dataobject.Category;

public interface CategoryDao {

	public List<Category> getAllCategories();
	
	public Category getCategoriesByCid(int cid);
	
	public List<Category> getCategoriesByUid(int uid);
	
	public void addCategory(Category category);

	public void chgName(Category cate);
}
