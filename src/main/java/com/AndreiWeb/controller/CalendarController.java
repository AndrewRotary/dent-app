package com.AndreiWeb.controller;

import com.AndreiWeb.Calendar.CalendarCommon;
import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.dao.MeetingDao;
import com.AndreiWeb.dao.UsersDao;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Meeting;
import com.AndreiWeb.model.Users;
import com.AndreiWeb.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Calendar;
import java.util.List;

/**
 * Created by andrei on 16.08.2016.
 */
@Controller
public class CalendarController {

    @Autowired
    private UsersDao usersDao;

    @Autowired
    private UsersService usersService;

    @Autowired
    private DoctorDao doctorDao;

    @Autowired
    private MeetingDao meetingDao;

    @RequestMapping("/calendar/{NextMonthToController}/{PrevMonthToController}")
    public String NextMonth(Model model,@PathVariable int NextMonthToController,@PathVariable int PrevMonthToController) {


        //     get the current year/month/day
        Calendar theCal = Calendar.getInstance();
        int currentYearInt  = theCal.get(Calendar.YEAR);
        int currentMonthInt = theCal.get(Calendar.MONTH);
        int currentDayInt   = theCal.get(Calendar.DATE);
        String currentYearString  = new Integer(currentYearInt).toString();
        String currentMonthString = new Integer(currentMonthInt).toString();

        // get parameters the user might have sent by clicking fwd or back
        String newMonth = String.valueOf(NextMonthToController);
        String newYear  = String.valueOf(PrevMonthToController);

        // reset the month and year if necessary
        if ( newMonth != null )
        {
            currentMonthString = newMonth;
        }
        if ( newYear != null )
        {
            currentYearString = newYear;
        }

        // determine the next/previous month and year
        int intMonth = new Integer(currentMonthString).intValue();
        int intYear  = new Integer(currentYearString).intValue();

        // determine the name of the current intMonth
        String monthNames[] = {"January",
                "February",
                "March",
                "April",
                "May",
                "June",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December" };

        String monthName = monthNames[intMonth];

        // determine the next/previous month and year.
        // this is really only needed by calendar.jsp, but i moved it here
        // to simplify calendar.jsp.
        int nextYear = intYear;
        int prevYear = intYear;
        PrevMonthToController = intMonth-1;
        if ( PrevMonthToController==-1 )
        {
            PrevMonthToController=11;
            prevYear--;
        }
         NextMonthToController = intMonth+1;
        if ( NextMonthToController==12 )
        {
            NextMonthToController = 0;
            nextYear++;
        }


        model.addAttribute("monthStringName", monthName);
        model.addAttribute("newMonth", newMonth);
        model.addAttribute("nextMonth",  NextMonthToController);
        model.addAttribute("prevMonth",  NextMonthToController);

        return "/CalendarExtended";

    }

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

}
