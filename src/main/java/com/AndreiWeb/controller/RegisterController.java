package com.AndreiWeb.controller;

import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Users;
import com.AndreiWeb.service.ClientService;
import com.AndreiWeb.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by andrei on 24.04.2016.
 */

@Controller
public class RegisterController {

    @Autowired
    private ClientService clientService;

    @Autowired
    private UsersService usersService;

    @RequestMapping("/register")
    public String registerClient(Model model) {

        Client client = new Client();
        Users users = new Users();
        client.setUsers(users);

        model.addAttribute("client", client);

        return "registerClient";

    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerClientPost(@Valid @ModelAttribute("client") Client client, Users users, BindingResult result,
                                       Model model) {

        if (result.hasErrors()) {
            return "registerClient";
        }

        List<Client> clientList = clientService.getAllClients();
        List<Users> usersList = usersService.getAllUsers();

        for (int i=0; i< clientList.size(); i++) {
            if(client.getClientEmail().equals(clientList.get(i).getClientEmail())) {
                model.addAttribute("emailMsg", "Email already exists");

                return "registerClient";
            }

            if(client.getUsers().getPassword().isEmpty()){
                model.addAttribute("pswMsg", "Please enter a password");

                return "registerClient";
            }
        }

        for (int i=0; i< usersList.size(); i++) {

            if(client.getUsers().getUsername().equals(usersList.get(i).getUsername())) {
                model.addAttribute("usernameMsg", "Username already exists");

                return "registerClient";
            }
        }

        client.setEnabled(true);
        clientService.addClient(client);

        return "registerClientSuccesfuly";

    }

}