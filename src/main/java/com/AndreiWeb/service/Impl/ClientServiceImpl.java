package com.AndreiWeb.service.Impl;




import com.AndreiWeb.dao.ClientDao;
import com.AndreiWeb.model.Client;
import com.AndreiWeb.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by andrei on 24.04.2016.
 */

    @Service
    public class ClientServiceImpl implements ClientService{

        @Autowired
        private ClientDao clientDao;

        public void addClient (Client client) {
            clientDao.addClient(client);
        }

        public Client getClientById(int clientId) {
            return clientDao.getClientById(clientId);
        }

        public List<Client> getAllClients() {
            return clientDao.getAllClients();
        }

//        public Client getClientByUsername (String username) {
//            return clientDao.getClientByUsername(username);
//        }


    }


