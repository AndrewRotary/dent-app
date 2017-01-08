package com.AndreiWeb.controller;

import com.AndreiWeb.dao.ServiciuDao;
import com.AndreiWeb.model.Serviciu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by Root on 08.01.2017.
 */

@Controller
public class ServiciuController {

    @Autowired
    private ServiciuDao serviciuDao;

    private Path path;

    @RequestMapping("/doctor/addServiciu")
    public String addFisaGet( Model model){
        Serviciu serviciu = new Serviciu();
        model.addAttribute("serviciu", serviciu);
        return "/addServiciu";
    }

    @RequestMapping(value ="/addServiciu", method = RequestMethod.POST)
    public String addFisaPost(HttpServletRequest request, HttpServletResponse response,
                              @ModelAttribute("serviciu") Serviciu serviciu, BindingResult result){

        MultipartFile serviceImage = serviciu.getServiceImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "WEB-INF/resources/images/serviceImage/"+ serviciu.getServiceImage() +".png");
//            path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+ doctor.getDoctorId() + ".png");


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
}
