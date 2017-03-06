package com.medapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.nio.file.Path;

/**
 * Created by andrei on 21.04.2016.
 */
@Controller
public class AdminController {

  private Path path;

  @RequestMapping("/admin")
  public String adminPage() {
    return "admin";
  }



}
