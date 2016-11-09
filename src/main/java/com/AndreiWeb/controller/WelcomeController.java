package com.AndreiWeb.controller;

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

    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/soon")
    public String underConstruction(){
        return "underConstruction";
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
