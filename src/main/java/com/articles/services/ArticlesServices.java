package com.articles.services;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.articles.model.Article;
@Service
public class ArticlesServices {

	@Autowired
	 private SessionFactory sessionFactory;
public void saveArticle(Article article){
		
		sessionFactory.getCurrentSession().save(article);
		}
	
}
