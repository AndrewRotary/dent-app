package com.medapp.controller;

import com.medapp.dao.*;
import com.medapp.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
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

  @Autowired
  private StareaDintiDao stareaDintiDao;

  @Autowired
  private DintiiDao dintiiDao;

  @Autowired
  private ServiciuDao serviciuDao;

  @RequestMapping("/doctor/addFisa/{clientId}")
  public String addFisaGet(@PathVariable Integer clientId, Model model) {
    Fisa fisa = new Fisa();
    Dintii dintii = new Dintii();
    Client client = clientDao.getClientById(clientId);
    fisa.setClient(client);
    fisa.setDintii(dintii);
    List<StareaDinti> starea = stareaDintiDao.getAllStareaDinti();
    model.addAttribute("fisa", fisa);
    model.addAttribute("client", client);
    model.addAttribute("dintii", dintii);
    model.addAttribute("starea", starea);
    return "/addFisa";
  }

  @RequestMapping(value = "/addFisa", method = RequestMethod.POST)
  public String addFisaPost(@ModelAttribute("fisa") Fisa fisa) {
    fisaDao.addFisa(fisa);
    return "redirect:/doctor";
  }

  @RequestMapping("/editFisa/{fisaId}")
  public String editMeeting(@PathVariable Integer fisaId, Model model) {
    Fisa fisa = fisaDao.getFisaById(fisaId);
    List<StareaDinti> starea = stareaDintiDao.getAllStareaDinti();
    model.addAttribute("fisa", fisa);
    model.addAttribute("starea", starea);
    return "editFisa";
  }

  @RequestMapping(value = "/editFisa", method = RequestMethod.POST)
  public String editMeetingPost(@Valid @ModelAttribute("fisa") Fisa fisa) {
    fisaDao.editFisa(fisa);
    return "redirect:/doctor";
  }

  @RequestMapping("/doctor/view")
  public String viewFisa(@PathVariable Integer fisaId, Model model) {
    Fisa fisa = fisaDao.getFisaById(fisaId);
    model.addAttribute("fisa", fisa);
    return "viewFisa";
  }

  //Afisez lista de pacienti
  @RequestMapping("/doctor")
  public String MeetingCalendar(Model model) {
    List<Client> clients = clientDao.getAllClients();
    List<Serviciu> servicii = serviciuDao.getAllServices();
    model.addAttribute("clients", clients);
    model.addAttribute("servicii", servicii);
    return "doctor";
  }


}
