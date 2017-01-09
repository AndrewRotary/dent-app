package com.AndreiWeb.dao.impl;

import com.AndreiWeb.dao.ServiciuDao;
import com.AndreiWeb.model.Serviciu;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

/**
 * Created by Root on 08.01.2017.
 */

@Repository
@Transactional
public class ServiciuDaoImpl implements ServiciuDao{


    @Autowired
    private SessionFactory sessionFactory;

    public void addServiciu(Serviciu serviciu) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(serviciu);
        session.flush();
    }

    public void editServiciu(Serviciu serviciu) {
        Session session = sessionFactory.getCurrentSession();
        LocalDate today = LocalDate.now();
        Date date = java.sql.Date.valueOf(today);
        serviciu.setDateEdited(date);
        session.saveOrUpdate(serviciu);
        session.flush();
    }

    public Serviciu getServiciuById(int serviciuId) {
        Session session = sessionFactory.getCurrentSession();
        Serviciu serviciu = (Serviciu) session.get(Serviciu.class, serviciuId);
        session.flush();
        return serviciu;
    }

    public List<Serviciu> getAllServices() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Serviciu");
        List<Serviciu> servicii = query.list();
        session.flush();
        return servicii;
    }

    public void deleteFisa(int serviciuId) {

    }
}
