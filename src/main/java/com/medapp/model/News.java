package com.medapp.model;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by student on 3/3/2017.
 */
@Entity
public class News implements Serializable {
  @Id
  @GeneratedValue
  private Long Id;
  private String title;
  private String info;
  private String linkVideoPath;
  @Transient
  private MultipartFile newsImage;

  private Date dateCreated;

  public Long getId() {
    return Id;
  }

  public void setId(Long id) {
    Id = id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getInfo() {
    return info;
  }

  public void setInfo(String info) {
    this.info = info;
  }

  public String getLinkVideoPath() {
    return linkVideoPath;
  }

  public void setLinkVideoPath(String linkVideoPath) {
    this.linkVideoPath = linkVideoPath;
  }

  public Date getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(Date dateCreated) {
    this.dateCreated = dateCreated;
  }

  public MultipartFile getNewsImage() {
    return newsImage;
  }

  public void setNewsImage(MultipartFile newsImage) {
    this.newsImage = newsImage;
  }
}
