package com.medapp.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Time;

/**
 * Created by Root on 19.01.2017.
 */

@Entity
public class WorckTime implements Serializable {

  @Id
  @GeneratedValue
  private int worckTimeId;

  private String title;

  private int week;

  private Time start;

  private Time end;

  private boolean dountWork = false;

  @ManyToOne
  @LazyCollection(LazyCollectionOption.FALSE)
  @JoinColumn(name = "doctorId")
  @JsonIgnore
  private Doctor doctor;

  public int getWorckTimeId() {
    return worckTimeId;
  }

  public void setWorckTimeId(int worckTimeId) {
    this.worckTimeId = worckTimeId;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public int getWeek() {
    return week;
  }

  public void setWeek(int week) {
    this.week = week;
  }

  public Time getStart() {
    return start;
  }

  public void setStart(Time start) {
    this.start = start;
  }

  public Time getEnd() {
    return end;
  }

  public void setEnd(Time end) {
    this.end = end;
  }

  public Doctor getDoctor() {
    return doctor;
  }

  public void setDoctor(Doctor doctor) {
    this.doctor = doctor;
  }

  public boolean isDountWork() {
    return dountWork;
  }

  public void setDountWork(boolean dountWork) {
    this.dountWork = dountWork;
  }
}
