package com.AndreiWeb.dao;

import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Users;

import java.util.List;

/**
 * Created by andrei on 24.04.2016.
 */
public interface ClientDao {

    void addClient (Client client);

    Client getClientById (int clientId);

    List<Client> getAllClients();

    Client getClientByUsers (Integer usersId);

}
