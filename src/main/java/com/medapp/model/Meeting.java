package com.medapp.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;


/**
 * Created by andrei on 26.04.2016.
 */
@Entity
public class Meeting implements Serializable {


  private static final long serialVersionUID = -2162658279783557828L;

  @Id
  @GeneratedValue
  private int meetingId;

  private Date DateTime;

  private java.sql.Time hourTime;

  @ManyToOne
  @LazyCollection(LazyCollectionOption.FALSE)
  @JoinColumn(name = "doctorId")
  @JsonIgnore
  private Doctor doctor;

  @ManyToOne
  @LazyCollection(LazyCollectionOption.FALSE)
  @JoinColumn(name = "clientId")
  @JsonIgnore
  private Client client;

  public int getMeetingId() {
    return meetingId;
  }

  public void setMeetingId(int meetingId) {
    this.meetingId = meetingId;
  }

  public Date getDateTime() {
    return DateTime;
  }

  public void setDateTime(Date dateTime) {
    DateTime = dateTime;
  }

  public Time getHourTime() {
    return hourTime;
  }

  public void setHourTime(Time hourTime) {
    this.hourTime = hourTime;
  }

  public Doctor getDoctor() {
    return doctor;
  }

  public void setDoctor(Doctor doctor) {
    this.doctor = doctor;
  }

  public Client getClient() {
    return client;
  }

  public void setClient(Client client) {
    this.client = client;
  }
}
