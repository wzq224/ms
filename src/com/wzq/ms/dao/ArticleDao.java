package com.wzq.ms.dao;

import java.util.List;

import com.wzq.ms.dataobject.Article;

public interface ArticleDao {

	public Article getByAid(Integer aid);
	
	public List<Article> getByCid(Integer cid);
	
	public List<Article> getByUid(Integer uid);
	
	public List<Article> getAll();
	
	public void addArticle(Article article);
}
