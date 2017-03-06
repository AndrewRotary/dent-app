package com.medapp.controller;

import com.medapp.model.News;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

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
