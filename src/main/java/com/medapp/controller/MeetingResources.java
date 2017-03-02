package com.medapp.controller;

import com.medapp.dao.ClientDao;
import com.medapp.dao.DoctorDao;
import com.medapp.dao.MeetingDao;
import com.medapp.dao.UsersDao;
import com.medapp.model.Client;
import com.medapp.model.Meeting;
import com.medapp.model.Users;
import com.medapp.service.ClientService;
import com.medapp.service.MeetingService;
import com.medapp.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Created by andrei on 15.05.2016.
 */
@Controller
@RequestMapping("/rest/meeting")
public class MeetingResources {

  @Autowired
  private MeetingDao meetingDao;

  @Autowired
  private ClientService clientService;

  @Autowired
  private UsersService usersService;

  @Autowired
  private UsersDao usersDao;

  @Autowired
  private DoctorDao doctorDao;

  @Autowired
  private ClientDao clientDao;

  @Autowired
  private MeetingService meetingService;


  @RequestMapping("/{meetingId}")
  public
  @ResponseBody
  Meeting getMeetingById(@PathVariable(value = "meetingId") int meetingId) {
    return meetingDao.getMeetingById(meetingId);

  }

  @RequestMapping(value = "/add/{meetingId}", method = RequestMethod.PUT)
  @ResponseStatus(value = HttpStatus.NO_CONTENT)
  public void addItem(@PathVariable(value = "meetingId") int meetingId, @AuthenticationPrincipal User activeUser) {
    Users users = usersService.getUsersByUsername(activeUser.getUsername());
    Client client = clientService.getClientById(users.getClient().getClientId());
    Meeting meeting = meetingService.getMeetingById(meetingId);
    client.getMeetings().add(meeting);
    meeting.setClient(client);
    meetingService.addMeeting(meeting);

  }

}




