package com.AndreiWeb.dao.impl;


import com.AndreiWeb.dao.ClientDao;
import com.AndreiWeb.dao.FisaDao;
import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Dintii;
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
        session.saveOrUpdate(fisa);
        Client client = clientDao.getClientById(fisa.getClient().getClientId());
        Dintii dintii = fisa.getDintii();
        dintii.setFisa(fisa);
        session.saveOrUpdate(dintii);
        client.setFisa(fisa);
        session.saveOrUpdate(client);
        session.flush();
    }

    public void editFisa(Fisa fisa) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(fisa);
        session.flush();
    }

    public Fisa getFisaById(int fisaId) {
        Session session = sessionFactory.getCurrentSession();
        Fisa fisa = (Fisa) session.get(Fisa.class, fisaId);
        session.flush();
        return fisa;
    }

    public List<Fisa> getAllFisas() {
        return null;
    }

    public void deleteFisa(int fisaId) {

    }
}
