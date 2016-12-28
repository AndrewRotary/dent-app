package com.AndreiWeb.dao.impl;


import com.AndreiWeb.dao.ClientDao;
import com.AndreiWeb.dao.FisaDao;
import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Fisa;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Root on 27.12.2016.
 */

@Repository
@Transactional
public class FisaDaoImpl implements FisaDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private ClientDao clientDao;

    public void addFisa(Fisa fisa) {
        Session session = sessionFactory.getCurrentSession();
        //din jsp ieu Id Client si il pastrez in Meeting.clientId

        session.saveOrUpdate(fisa);
        Client client = clientDao.getClientById(fisa.getClient().getClientId());
        client.setFisa(fisa);
        System.out.println("----------------------------------------------" + fisa.getAcuze() + client.getClientName());
        session.saveOrUpdate(client);
        session.flush();
    }

    public void editFisa(Fisa fisa) {

    }

    public Fisa getFisaById(int fisaId) {
        return null;
    }

    public List<Fisa> getAllFisas() {
        return null;
    }

    public void deleteFisa(int fisaId) {

    }
}
