package com.AndreiWeb.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Future;
import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;


/**
 * Created by andrei on 26.04.2016.
 */
@Entity
public class Meeting implements Serializable{


    private static final long serialVersionUID = -2162658279783557828L;

    @Id
    @GeneratedValue
    private int meetingId;

    private Date DateTime;

    private java.sql.Time hourTime;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "doctorId")
    @JsonIgnore
    private Doctor doctor;

    @ManyToOne(fetch = FetchType.EAGER)
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
