package com.AndreiWeb.controller;

import com.AndreiWeb.dao.ApointmentDao;
import com.AndreiWeb.model.Apointment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.nio.file.Path;
import java.sql.Date;
import java.util.List;

/**
 * Created by andrei on 21.04.2016.
 */
@Controller
public class AdminController {

    @Autowired
    private ApointmentDao apointmentDao;

    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("admin/ApointmentCalendar")
    public String ApointmentCalendar(Model model){
        List<Apointment> apointments = apointmentDao.getAllApointments();
        model.addAttribute("apointments", apointments);

        return "ApointmentCalendar";
    }

    @RequestMapping("/admin/ApointmentCalendar/addApointment")
    public String addApointment(Model model){
        Apointment apointment = new Apointment();
        apointment.setApointmentDate(new Date(2015-11-11));
        apointment.setUserId(1);
        apointment.setDoctorId(2);


        model.addAttribute("apointment", apointment);
        return "addApointment";
    }

    @RequestMapping(value ="/admin/ApointmentCalendar/addApointment", method = RequestMethod.POST)
    public String addApointmentPost(@ModelAttribute("apointment") Apointment apointment){
        apointmentDao.addApointment(apointment);


        return "redirect:/admin/ApointmentCalendar";
    }

    @RequestMapping("/admin/ApointmentCalendar/deleteApointment/{id}")
    public String deleteApointment(@PathVariable Integer id, Model model){
        apointmentDao.deleteApointment(id);

        return "redirect:/admin/ApointmentCalendar";
    }

    @RequestMapping("/admin/ApointmentCalendar/editApointment/{id}")
    public String editApointment(@PathVariable Integer id, Model model){
        Apointment apointment = apointmentDao.getApointmentById(id);

        model.addAttribute(apointment);

        return "editApointment";
    }

//    @RequestMapping(value = "/admin/ApointmentCalendar/editApointment/", method = RequestMethod.POST)
//    public String editApointment(@ModelAttribute("apointment") Apointment apointment, Model model){
//
//        apointmentDao.editApointment(apointment);
//
//        return "redirect:/admin/ApointmentCalendar";
//    }

    @RequestMapping(value ="/admin/ApointmentCalendar/editApointment", method = RequestMethod.POST)
    public String editApointmentPost(@ModelAttribute("apointment") Apointment apointment){
        apointmentDao.editApointment(apointment);


        return "redirect:/admin/ApointmentCalendar";
    }
}
