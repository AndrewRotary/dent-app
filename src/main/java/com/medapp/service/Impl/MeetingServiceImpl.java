package com.medapp.service.Impl;

import com.medapp.dao.MeetingDao;
import com.medapp.model.Meeting;
import com.medapp.service.MeetingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by andrei on 13.05.2016.
 */
@Service
public class MeetingServiceImpl implements MeetingService {

  @Autowired
  private MeetingDao meetingDao;


  public List<Meeting> getMeetingList() {
    return meetingDao.getAllMeetings();
  }

  public Meeting getMeetingById(int meetingId) {
    return meetingDao.getMeetingById(meetingId);
  }

  public void addMeeting(Meeting meeting) {
    meetingDao.addMeeting(meeting);
  }

  public void editMeeting(Meeting meeting) {
    meetingDao.editMeeting(meeting);
  }

  public void deleteMeeting(int meetingId) {
    meetingDao.deleteMeeting(meetingId);
  }
}
