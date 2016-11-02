package com.AndreiWeb.controller;

import com.AndreiWeb.dao.ApointmentDao;
import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.model.Apointment;
import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Users;
import com.AndreiWeb.service.ClientService;
import com.AndreiWeb.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by andrei on 18.04.2016.
 */
@Controller
public class  WelcomeController {

    @Autowired
    private ApointmentDao apointmentDao;

    @Autowired
    private ClientService clientService;

    @Autowired
    private UsersService usersService;

    @RequestMapping("/")
    public String home(){
        return "home";
    }


    @RequestMapping("/apointmentList")
    public String getApointment(Model model){
        List<Apointment> apointments = apointmentDao.getAllApointments();
        model.addAttribute("apointments", apointments );
        return "apointmentList";
    }

    //login controller
//    public String login(@RequestParam(value = "error", required = false) String error,
//                        @RequestParam(value = "logout", required = false) String logout, Model model){
//        if(error != null) {
//            model.addAttribute("error", "Invalid username and password");
//        }
//        if(logout != null){
//            model.addAttribute("msg", "You have logged out successfully");
//        }
//
//        return "home";
//    }

}
