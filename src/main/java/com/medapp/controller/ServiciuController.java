package com.medapp.controller;

import com.medapp.dao.ServiciuDao;
import com.medapp.model.Serviciu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by Root on 08.01.2017.
 */

@Controller
public class ServiciuController {

  @Autowired
  private ServiciuDao serviciuDao;

  private Path path;

  @RequestMapping(value = "/doctor/addServiciu", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
  public String addFisaGet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {
    request.setCharacterEncoding("UTF-8");
    Serviciu serviciu = new Serviciu();
    model.addAttribute("serviciu", serviciu);
    return "/addServiciu";
  }

  @RequestMapping(value = "/addServiciu", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
  public String addFisaPost(HttpServletRequest request, @ModelAttribute("serviciu") Serviciu serviciu) throws UnsupportedEncodingException {
    request.setCharacterEncoding("UTF-8");
    MultipartFile serviceImage = serviciu.getServiceImage();
    String rootDirectory = request.getSession().getServletContext().getRealPath("/");
    path = Paths.get(rootDirectory + "WEB-INF/resources/images/serviceImage/" + serviciu.getServiceImage() + ".png");
    if (serviceImage != null && !serviceImage.isEmpty()) {
      try {
        serviceImage.transferTo(new File(path.toString()));
      } catch (Exception e) {
        e.printStackTrace();
        throw new RuntimeException("Erroare imaginea nu sa salvat.", e);
      }
    }
    serviciuDao.addServiciu(serviciu);
    return "redirect:/doctor";
  }

  @RequestMapping("/editServiciu/{serviciuId}")
  public String editMeeting(@PathVariable Integer serviciuId, Model model) {
    Serviciu serviciu = serviciuDao.getServiciuById(serviciuId);
    model.addAttribute("serviciu", serviciu);
    return "editServiciu";
  }

  @RequestMapping(value = "/editServiciu", method = RequestMethod.POST)
  public String editMeetingPost(@Valid @ModelAttribute("serviciu") Serviciu serviciu) {
    serviciuDao.editServiciu(serviciu);
    return "redirect:/doctor";
  }

  @RequestMapping("/viewService")
  public String viewService(Model model) {
    List<Serviciu> serviciuList = serviciuDao.getAllServices();
    model.addAttribute("serviciuList", serviciuList);
    return "viewFisa";
  }
}
