package com.medapp.controller;

import com.medapp.dao.DoctorDao;
import com.medapp.dao.MeetingDao;
import com.medapp.dao.NewsDao;
import com.medapp.dao.ServiciuDao;
import com.medapp.model.Doctor;
import com.medapp.model.Meeting;
import com.medapp.model.News;
import com.medapp.model.Serviciu;
import com.medapp.service.ClientService;
import com.medapp.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by andrei on 18.04.2016.
 */
@Controller
public class WelcomeController {

  @Autowired
  private ClientService clientService;

  @Autowired
  private UsersService usersService;

  @Autowired
  private ServiciuDao serviciuDao;

  @Autowired
  private DoctorDao doctorDao;

  @Autowired
  private MeetingDao meetingDao;

  @Autowired
  private NewsDao newsDao;

  @RequestMapping("/")
  public String home(Model model) {
    List<Serviciu> serviciuList = serviciuDao.getAllServices();
    List<Doctor> doctors = doctorDao.getAllDoctors();
    List<Meeting> meetings = meetingDao.getAllMeetings();
    List<News> newsList = newsDao.getAllNews();
    model.addAttribute("news", newsList);
    model.addAttribute("meetingsDao", meetings);
    model.addAttribute("doctors", doctors);
    model.addAttribute("serviciuList", serviciuList);
    return "home";
  }

  @RequestMapping("/soon")
  public String underConstruction() {
    return "underConstruction";
  }

}
