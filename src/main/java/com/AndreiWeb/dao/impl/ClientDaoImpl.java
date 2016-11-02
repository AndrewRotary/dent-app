package com.AndreiWeb.dao.impl;

import com.AndreiWeb.dao.ClientDao;
import com.AndreiWeb.model.Authorities;
import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by andrei on 24.04.2016.
 */
@Repository
@Transactional
public class ClientDaoImpl  implements ClientDao {

        @Autowired
        private SessionFactory sessionFactory;

        public void addClient(Client client) {
            Session session = sessionFactory.getCurrentSession();
            //scoatem din jsp datele la username si parola si le setam prin usersid lauser in db
            client.getUsers().setClient(client);
            client.getUsers().setEnabled(true);
            session.saveOrUpdate(client);
            session.saveOrUpdate(client.getUsers());

            //la useru dat setem Rolu de User
            Authorities newAuthority = new Authorities();
            newAuthority.setUsername(client.getUsers().getUsername());
            newAuthority.setAuthority("ROLE_USER");
            session.saveOrUpdate(client.getUsers());
            session.saveOrUpdate(newAuthority);

            session.saveOrUpdate(client);


            session.flush();
        }

        public Client getClientById (int clientId) {
            Session session = sessionFactory.getCurrentSession();
            return (Client) session.get(Client.class, clientId);
        }

        public List<Client> getAllClients() {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery("from Client");
            List<Client> clientList = query.list();

            return clientList;
        }

        public Client getClientByUsers (Integer usersId) {
            Session session = sessionFactory.getCurrentSession();
            return (Client) session.get(Client.class, usersId);
        }
}
