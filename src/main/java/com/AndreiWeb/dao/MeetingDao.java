package com.AndreiWeb.dao;

import com.AndreiWeb.model.Meeting;

import java.util.List;

/**
 * Created by andrei on 02.05.2016.
 */
public interface MeetingDao {

        void addMeeting(Meeting meeting);

        void editMeeting(Meeting meeting);

        Meeting getMeetingById(int meetingId);

        List<Meeting> getAllMeetings();

        void deleteMeeting(int meetingId);

}
