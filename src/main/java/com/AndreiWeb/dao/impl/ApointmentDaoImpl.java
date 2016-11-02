package com.AndreiWeb.dao.impl;

import com.AndreiWeb.dao.ApointmentDao;
import com.AndreiWeb.model.Apointment;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by andrei on 19.04.2016.
 */
@Repository
@Transactional
public class ApointmentDaoImpl implements ApointmentDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addApointment(Apointment apointment){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(apointment);
        session.flush();
    }

    public void editApointment(Apointment apointment){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(apointment);
        session.flush();
    }

    public Apointment getApointmentById(Integer id){
        Session session = sessionFactory.getCurrentSession();
        Apointment apointment = (Apointment) session.get(Apointment.class, id);
        session.flush();

        return apointment;
    }

    public List<Apointment> getAllApointments(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Apointment");
        List<Apointment> apointments = query.list();
        session.flush();

        return apointments;
    }

    public void deleteApointment(Integer id){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getApointmentById(id));
        session.flush();

    }

}


