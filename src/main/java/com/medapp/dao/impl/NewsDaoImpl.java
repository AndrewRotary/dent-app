package com.medapp.dao.impl;

import com.medapp.dao.NewsDao;
import com.medapp.model.News;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

/**
 * Created by student on 3/6/2017.
 */
@Repository
@Transactional
public class NewsDaoImpl implements NewsDao{

  @Autowired
  private SessionFactory sessionFactory;


  public void addNews(News news) {
    Session session = sessionFactory.getCurrentSession();
    LocalDate today = LocalDate.now();
    Date date = java.sql.Date.valueOf(today);
    news.setDateCreated(date);
    session.saveOrUpdate(news);
    session.flush();
  }

  public void editNews(News news) {
    Session session = sessionFactory.getCurrentSession();
    session.saveOrUpdate(news);
    session.flush();
  }

  public News getNewsById(Long Id) {
    Session session = sessionFactory.getCurrentSession();
    News news = (News) session.get(News.class, Id);
    session.flush();
    return news;

  }

  public List<News> getAllNews() {
    Session session = sessionFactory.getCurrentSession();
    Query query = session.createQuery("from News");
    List<News> newsList = query.list();
    return newsList;
  }

  public void deleteNews(Long newsId) {
    Session session = sessionFactory.getCurrentSession();
    session.delete(getNewsById(newsId));
    session.flush();
  }
}
