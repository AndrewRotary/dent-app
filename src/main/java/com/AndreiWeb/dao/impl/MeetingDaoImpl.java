package com.AndreiWeb.dao.impl;

import com.AndreiWeb.dao.ClientDao;
import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.dao.MeetingDao;
import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Meeting;
import com.AndreiWeb.model.Users;
import com.AndreiWeb.service.ClientService;
import com.AndreiWeb.service.UsersService;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by andrei on 02.05.2016.
 */

@Repository
@Transactional
public class MeetingDaoImpl implements MeetingDao{

        @Autowired
        private SessionFactory sessionFactory;

     @Autowired
    private DoctorDao doctorDao;
@Autowired
    private UsersService usersService;

@Autowired
    private ClientDao clientDao;


    public void addMeeting(Meeting meeting){
            Session session = sessionFactory.getCurrentSession();
            //din jsp ieu Id Client si il pastrez in Meeting.clientId
            Client client = clientDao.getClientById(meeting.getClient().getClientId())  ;
            client.getMeetings().add(meeting);
            meeting.setClient(client);
            session.saveOrUpdate(meeting);
            session.saveOrUpdate(client);
            // din select primessc doctorId si il salvez in Meeting.doctorId
            Doctor doctor = doctorDao.getDoctorById(meeting.getDoctor().getDoctorId());
            doctor.getMeetings().add(meeting);
            meeting.setDoctor(doctor);

            session.saveOrUpdate(meeting);
            session.saveOrUpdate(doctor);


            session.flush();
        }

        public void editMeeting(Meeting meeting){
            Session session = sessionFactory.getCurrentSession();
//            Doctor doctor =  doctorDao.getDoctorById(meeting.getDoctor().getDoctorId());
//            meeting.setDoctor(doctor);
            session.saveOrUpdate(meeting);
            session.flush();
        }

        public Meeting getMeetingById(int meetingId){
            Session session = sessionFactory.getCurrentSession();
            Meeting meeting = (Meeting) session.get(Meeting.class, meetingId);
            session.flush();

            return meeting;
        }

        public List<Meeting> getAllMeetings(){
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery("from Meeting");
            List<Meeting> meetings = query.list();
            session.flush();

            return meetings;
        }

        public void deleteMeeting(int meetingId){
            Session session = sessionFactory.getCurrentSession();
            session.delete(getMeetingById(meetingId));
            session.flush();

        }

    }
