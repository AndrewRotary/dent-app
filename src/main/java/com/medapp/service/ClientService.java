package com.medapp.service;

import com.medapp.model.Client;

import java.util.List;

/**
 * Created by andrei on 24.04.2016.
 */
public interface ClientService {


  void addClient(Client client);

  Client getClientById(int clientId);

  List<Client> getAllClients();

//        Client getClientByUsername (String username);
}

