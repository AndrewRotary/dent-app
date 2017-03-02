package com.medapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by andrei on 21.04.2016.
 */
@Controller
public class AdminController {

  @RequestMapping("/admin")
  public String adminPage() {
    return "admin";
  }

}
