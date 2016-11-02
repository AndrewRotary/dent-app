package com.AndreiWeb.controller;

import com.AndreiWeb.dao.ClientDao;
import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.dao.MeetingDao;
import com.AndreiWeb.dao.UsersDao;
import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Meeting;
import com.AndreiWeb.model.Users;
import com.AndreiWeb.service.ClientService;
import com.AndreiWeb.service.MeetingService;
import com.AndreiWeb.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
        import org.springframework.security.core.userdetails.User;
        import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
        import org.springframework.stereotype.Controller;
        import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
        import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.nio.file.Paths;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Iterator;
import java.util.List;

/**
 * Created by andrei on 02.05.2016.
 */
@Controller
public class MeetingController {

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


    @RequestMapping("/client")
    public String clientPage(){
        return "client";
    }

    @RequestMapping("/calendar")
    public String calendarPage(Model model){
        List<Meeting> meetings = meetingDao.getAllMeetings();
        List<Doctor> doctors = doctorDao.getAllDoctors();
        model.addAttribute("doctorTop", doctors );
        model.addAttribute("meetingsDao", meetings );
        return "/calendar";
    }


    @RequestMapping("/calendar/hourVerify/{doctorId}/{date}")
    public String HourVerify(@PathVariable Integer doctorId,@PathVariable Date date, Model model){
        Doctor myDoc = doctorDao.getDoctorById(doctorId);
        List<Meeting> SortedMitings = myDoc.getMeetings();

        Iterator<Meeting> iter = SortedMitings.iterator();
        while (iter.hasNext()) {
            Meeting s = iter.next();
            if (!s.getDateTime().equals(date)) {
                SortedMitings.size();
                iter.remove();
                s.getDateTime();
            }
        }
        model.addAttribute("choosedDoc", myDoc);
        model.addAttribute("choosedDate", date);
        model.addAttribute("SortedMitings", SortedMitings);

        return "hourVerify";
    }
    @RequestMapping("/managePacient/{date}")
    public String managePacient(@PathVariable Date date, Model model, @AuthenticationPrincipal User activeUser){
        Users user = usersService.getUsersByUsername(activeUser.getUsername());
        Doctor myDoc = doctorDao.getDoctorById(user.getDoctor().getDoctorId());

        List<Meeting> SortedMitings = myDoc.getMeetings();

        Iterator<Meeting> iter = SortedMitings.iterator();
        while (iter.hasNext()) {
            Meeting s = iter.next();
            if (!s.getDateTime().equals(date)) {
                SortedMitings.size();
                iter.remove();
                s.getDateTime();
            }
        }
        model.addAttribute("choosedDoc", myDoc);
        model.addAttribute("choosedDate", date);
        model.addAttribute("SortedMitings", SortedMitings);

        return "/managePacient";
    }
    @RequestMapping("/calendarFull")
    public String calendarFullPage(){
        return "calendarMonthPrintView";
    }

    @RequestMapping("client/MeetingCalendar")
    public String MeetingCalendar(Model model, @AuthenticationPrincipal User activeUser){
        Users user = usersService.getUsersByUsername(activeUser.getUsername());

        List<Meeting> meetings = user.getClient().getMeetings();

        model.addAttribute("meetings", meetings);


        List<Doctor> doctors = doctorDao.getAllDoctors();
        model.addAttribute("doctors", doctors );

        return "MeetingCalendar";
    }

    @RequestMapping("/client/MeetingCalendar/addMeeting")

    public String addMeeting( Model model, @AuthenticationPrincipal User activeUser){

        Meeting meeting = new Meeting();
        //Afisez in select lista de doctori
        List<Doctor> doctors = doctorDao.getAllDoctors();
        meeting.setDateTime(new Date(2015-11-11));
        // Aflu username la Userul Logat si aflu Id a lui
        Users users = usersService.getUsersByUsername(activeUser.getUsername());
        Client client = users.getClient();

        model.addAttribute("meeting", meeting);
        model.addAttribute("doctors", doctors );
        model.addAttribute("client", client);


        return "addMeeting";
    }

    @RequestMapping(value ="/client/MeetingCalendar/addMeeting", method = RequestMethod.POST)
    public String addMeetingPost(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("meeting") Meeting meeting,
                                 @ModelAttribute("doctor") Doctor doctor, @AuthenticationPrincipal User activeUser){

        String selectedvalue  =  request.getParameter("doctorSelect");

        meeting.setDoctor(doctor);
        meetingDao.addMeeting(meeting);

        return "redirect:/client/MeetingCalendar";
    }



    @RequestMapping("/client/MeetingCalendar/deleteMeeting/{meetingId}")
    public String deleteMeeting(@PathVariable Integer meetingId, Model model){
        meetingDao.deleteMeeting(meetingId);

        return "redirect:/client/MeetingCalendar";
    }

    @RequestMapping("/client/MeetingCalendar/editMeeting/{meetingId}")
    public String editMeeting(@PathVariable Integer meetingId, Model model){
        Meeting meeting = meetingDao.getMeetingById(meetingId);
        List<Doctor> doctors = doctorDao.getAllDoctors();

        model.addAttribute("meeting" , meeting);
        model.addAttribute("doctors" ,doctors);


        return "editMeeting";
    }


    @RequestMapping(value="/client/MeetingCalendar/editMeeting", method = RequestMethod.POST)
    public String editMeetingPost(@Valid @ModelAttribute("meeting") Meeting meeting, BindingResult result,
                                  HttpServletRequest request) {
        if(result.hasErrors()) {
            return "editMeeting";
        }

       // MultipartFile productImage = product.getProductImage();
        //String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        //path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");

//        if (productImage != null && !productImage.isEmpty()) {
//            try {
//                productImage.transferTo(new File(path.toString()));
//            } catch (Exception e) {
//                e.printStackTrace();
//                throw new RuntimeException("Product image saving failed.", e);
//            }
//        }
        meetingService.editMeeting(meeting);


        return "/home";
    }
}



