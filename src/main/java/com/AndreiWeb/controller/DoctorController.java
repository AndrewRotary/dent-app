package com.AndreiWeb.controller;

import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.dao.StareaDintiDao;
import com.AndreiWeb.dao.WorckTimeDao;
import com.AndreiWeb.model.*;
import com.AndreiWeb.service.DoctorService;
import com.AndreiWeb.service.UsersService;
import org.hibernate.annotations.common.test.reflection.java.generics.deep.ANN612IssueTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import javax.naming.Binding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;

import java.util.List;


/**
 * Created by andrei on 25.04.2016.
 */
@Controller
public class DoctorController {

    @Autowired
    private DoctorDao doctorDao;

    private Path path;

    @Autowired
    private DoctorService doctorService;

    @Autowired
    private UsersService usersService;

    @Autowired
    private WorckTimeDao worckTimeDao;

    @RequestMapping("/registerD")
    public String registerDoctor(Model model) {

            Doctor doctor = new Doctor();
            Users users = new Users();
            doctor.setUsers(users);
            model.addAttribute("doctor", doctor);

            return "registerDoctor";

        }

        @RequestMapping(value = "/registerD", method = RequestMethod.POST)
        public String registerDoctorPost(@Valid @ModelAttribute("doctor") Doctor doctor, BindingResult result,
                                         Model model, HttpServletRequest request) {

            if (result.hasErrors()) {
                return "registerDoctor";
            }

            List<Doctor> doctorList = doctorService.getAllDoctors();
            List<Users> usersList = usersService.getAllUsers();

            for (int i=0; i < doctorList.size(); i++) {
                if(doctor.getDoctorEmail().equals(doctorList.get(i).getDoctorEmail())) {
                    model.addAttribute("emailMsgg", "Email already exists");

                    return "registerDoctor";
                }

                if(doctor.getUsers().getUsername().equals(doctorList.get(i).getUsers().getUsername())) {
                    model.addAttribute("usernameMsgg", "Username already exists");

                    return "registerDoctor";
                }
            }

            for (int i=0; i< usersList.size(); i++) {

                if(doctor.getUsers().getUsername().equals(usersList.get(i).getUsername())) {
                    model.addAttribute("usernameMsg", "Username already exists");

                    return "registerDoctor";
                }
            }
            doctor.setEnabled(true);
            doctorService.addDoctor(doctor);

            MultipartFile doctorImage = doctor.getDoctorImage();
            String rootDirectory = request.getSession().getServletContext().getRealPath("/");
            path = Paths.get(rootDirectory + "WEB-INF/resources/images/"+ doctor.getDoctorId() +".png");
//            path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+ doctor.getDoctorId() + ".png");


            if (doctorImage != null && !doctorImage.isEmpty()) {
                try {
                    doctorImage.transferTo(new File(path.toString()));
                } catch (Exception e) {
                    e.printStackTrace();
                    throw new RuntimeException("Product image saving failed.", e);
                }
            }

            return "registerDoctorSuccesfuly";

        }
    @RequestMapping("/userList")
    public String getDoctor(Model model){
        List<Doctor> doctors = doctorDao.getAllDoctors();

        model.addAttribute("doctors", doctors );

        return "userList";
    }

    //Afisarea calendarului medicului
    @RequestMapping("doctor/CalendarExtended")
    public String EventCalendar(Model model, @AuthenticationPrincipal User activeUser) {
        Users user = usersService.getUsersByUsername(activeUser.getUsername());
        Doctor doc = doctorDao.getDoctorById(user.getDoctor().getDoctorId());
        List<Meeting> meetings = doc.getMeetings();
        model.addAttribute("meetings", meetings);
        List<Doctor> doctors = doctorDao.getAllDoctors();
        model.addAttribute("doctors", doctors );
        return "/CalendarExtended";
    }

    @RequestMapping("doctor/docScheduler")
    public String docScheduler(Model model, @AuthenticationPrincipal User activeUser) {
        Users user = usersService.getUsersByUsername(activeUser.getUsername());
        Doctor doc = doctorDao.getDoctorById(user.getDoctor().getDoctorId());
        List<Meeting> meetings = doc.getMeetings();
        List<WorckTime> worckTimes = worckTimeDao.getAllWorckTimes();
        model.addAttribute("worckTimes", worckTimes);
        model.addAttribute("meetings", meetings);
        return "/docScheduler";
    }

    @RequestMapping("/doctor/addDocScheduler")
    public String addWorkGet(Model model, @AuthenticationPrincipal User activeUser){

        //In caz ca Luni deja este setat va returna pagina de editare a zilelor

        List<WorckTime> worckTimes = new ArrayList<WorckTime>();
        //In caz ca ziua de luni nu este programata va crea aceste setari
        WorckTime Luni = new WorckTime();
        Luni.setTitle("Luni");
        WorckTime Marti = new WorckTime();
        Marti.setTitle("Marți");
        WorckTime Miercuri = new WorckTime();
        Miercuri.setTitle("Miercuri");
        WorckTime Joi = new WorckTime();
        Joi.setTitle("Joi");
        WorckTime Vineri = new WorckTime();
        Vineri.setTitle("Vineri");
        worckTimes.add(Luni);
        worckTimes.add(Marti);
        worckTimes.add(Miercuri);
        worckTimes.add(Joi);
        worckTimes.add(Vineri);


        model.addAttribute("worckTimes", worckTimes);

        return "/addDocScheduler";
    }



    @RequestMapping(value ="doctor/addDocScheduler", method = RequestMethod.POST)
    public String addWorkPost(HttpServletRequest request, HttpServletResponse response,  @AuthenticationPrincipal User activeUser){
        Users user = usersService.getUsersByUsername(activeUser.getUsername());
        Doctor doctor = doctorDao.getDoctorById(user.getDoctor().getDoctorId());
        List<WorckTime> worckTimes = new ArrayList<WorckTime>(5);
        String titles[] = request.getParameterValues("title[]");
        String start[] = request.getParameterValues("start[]");;
        String end[] = request.getParameterValues("end[]");
        for (int i = 0; i < titles.length; i++) {
            WorckTime day = new WorckTime();
            day.setTitle(titles[i]);
            day.setDoctor(doctor);
            day.setStart(Time.valueOf(start[i]));
            day.setEnd(Time.valueOf(end[i]));
            worckTimeDao.addWorckTime(day);
            System.out.println(day.getTitle());
        }

        return "redirect:/";
    }




}

