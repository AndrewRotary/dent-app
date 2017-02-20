package com.AndreiWeb.controller;

import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.dao.MeetingDao;
import com.AndreiWeb.dao.ServiciuDao;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Meeting;
import com.AndreiWeb.model.Serviciu;
import com.AndreiWeb.service.ClientService;
import com.AndreiWeb.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by andrei on 18.04.2016.
 */
@Controller
public class  WelcomeController {

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

    @RequestMapping("/")
    public String home(Model model){

        List<Serviciu> serviciuList = serviciuDao.getAllServices();
        List<Doctor> doctors = doctorDao.getAllDoctors();

        List<Meeting> meetings = meetingDao.getAllMeetings();
        List<Doctor> doctorsCl = doctorDao.getAllDoctors();
        model.addAttribute("doctorTop", doctorsCl );
        model.addAttribute("meetingsDao", meetings );

        model.addAttribute("doctors", doctors );
        model.addAttribute("serviciuList", serviciuList);
        return "home";
    }

    @RequestMapping("/soon")
    public String underConstruction(){
        return "underConstruction";
    }

 }
