package com.AndreiWeb.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Le on 1/24/2016.
 */

@Entity
public class Users implements Serializable{


    private static final long serialVersionUID = -9065421446804944251L;

    @Id
    @GeneratedValue
    private int usersId;
    private String username;
    private String password;
    private boolean enabled;

    @OneToOne
    @JoinColumn(name="clientId")
    private Client client;

    @OneToOne
    @JoinColumn(name="doctorId")
    private Doctor doctor;

    public int getUsersId() {
        return usersId;
    }

    public void setUsersId(int usersId) {
        this.usersId = usersId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }
}
