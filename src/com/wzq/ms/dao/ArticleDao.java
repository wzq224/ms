package com.wzq.ms.dao;

import java.util.List;

import com.wzq.ms.dataobject.Article;

public interface ArticleDao {

	public Article getByAid(int aid);
	
	public List<Article> getByCid(int cid);
	
	public List<Article> getByUid(int uid);
	
	public void addArticle(Article article);
}
