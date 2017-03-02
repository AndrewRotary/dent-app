package com.medapp.service;

import com.medapp.model.Meeting;

import java.util.List;

/**
 * Created by andrei on 13.05.2016.
 */
public interface MeetingService {
  List<Meeting> getMeetingList();

  Meeting getMeetingById(int meetingId);

  void addMeeting(Meeting meeting);

  void editMeeting(Meeting meeting);

  void deleteMeeting(int meetingId);
}
