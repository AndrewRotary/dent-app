package com.medapp.dao;

import com.medapp.model.News;

import java.util.List;

/**
 * Created by student on 3/6/2017.
 */
public interface NewsDao {

  void addNews(News news);

  void editNews(News news);

  News getNewsById(int newsId);

  List<News> getAllNews();

  void deleteNews(int newsId);
}
