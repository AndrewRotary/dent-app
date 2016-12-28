package com.AndreiWeb.controller;

import com.AndreiWeb.dao.ClientDao;
import com.AndreiWeb.dao.FisaDao;
import com.AndreiWeb.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.List;

/**
 * Created by Root on 27.12.2016.
 */

@Controller
public class FisaController {

    @Autowired
    private ClientDao clientDao;

    @Autowired
    private FisaDao fisaDao;

    @RequestMapping("/doctor/addFisa/{clientId}")
    public String addFisaGet(@PathVariable Integer clientId, Model model){
        Fisa fisa = new Fisa();
        Client client = clientDao.getClientById(clientId);
        long millis=System.currentTimeMillis();
        java.sql.Date date=new java.sql.Date(millis);
        fisa.setDate(date);
        fisa.setClient(client);
        model.addAttribute("fisa", fisa);
        model.addAttribute("client", client);

        return "/addFisa";
    }

       @RequestMapping(value ="/addFisa", method = RequestMethod.POST)
    public String addFisaPost(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("fisa") Fisa fisa, @ModelAttribute("client") Client client){

        Client client1 = clientDao.getClientById(fisa.getClient().getClientId());
           System.out.println("----------------------------------------------" + fisa.getAcuze() + fisa.getClient().getClientId() + client1.getClientId());
        fisaDao.addFisa(fisa);

        return "redirect:/doctor";
    }

    @RequestMapping("/doctor/view")
    public String viewFisa(@PathVariable Integer fisaId, Model model){

        Fisa fisa = fisaDao.getFisaById(fisaId);
        model.addAttribute("fisa", fisa);
        return "viewFisa";
    }
//Afisez lista de pacienti

    @RequestMapping("/doctor")
    public String MeetingCalendar(Model model){

        List<Client> clients = clientDao.getAllClients();
        model.addAttribute("clients", clients );

        return "doctor";
    }


}
