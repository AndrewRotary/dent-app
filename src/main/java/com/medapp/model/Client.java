package com.medapp.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by andrei on 24.04.2016.
 */
@Entity
public class Client implements Serializable {


  private static final long serialVersionUID = -7669277357339027933L;
  @OneToMany(mappedBy = "client", orphanRemoval = true)
  @LazyCollection(LazyCollectionOption.FALSE)
  private List<Meeting> meetings;
  @Id
  @GeneratedValue
  private int clientId;
  @Column(name = "Name")
  @NotEmpty(message = "The customer name must not be null.")
  private String clientName;
  @Column(name = "email")
  @NotEmpty(message = "The customer email must not be null.")
  private String clientEmail;
  @Column(name = "phone")
  private String clientPhone;
  @OneToOne
  @JoinColumn(name = "usersId")
  private Users users;
  private boolean enabled;
  @OneToOne
  @JoinColumn(name = "fisaID")
  private Fisa fisa;

  public int getClientId() {
    return clientId;
  }

  public void setClientId(int clientId) {
    this.clientId = clientId;
  }

  public String getClientName() {
    return clientName;
  }

  public void setClientName(String clientName) {
    this.clientName = clientName;
  }

  public String getClientEmail() {
    return clientEmail;
  }

  public void setClientEmail(String clientEmail) {
    this.clientEmail = clientEmail;
  }

  public String getClientPhone() {
    return clientPhone;
  }

  public void setClientPhone(String clientPhone) {
    this.clientPhone = clientPhone;
  }

  public boolean isEnabled() {
    return enabled;
  }

  public void setEnabled(boolean enabled) {
    this.enabled = enabled;
  }

  public Users getUsers() {
    return users;
  }

  public void setUsers(Users users) {
    this.users = users;
  }

  public List<Meeting> getMeetings() {
    return meetings;
  }

  public void setMeetings(List<Meeting> meetings) {
    this.meetings = meetings;
  }

  public Fisa getFisa() {
    return fisa;
  }

  public void setFisa(Fisa fisa) {
    this.fisa = fisa;
  }
}
