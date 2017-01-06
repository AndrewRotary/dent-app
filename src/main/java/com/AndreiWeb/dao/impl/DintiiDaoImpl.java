package com.AndreiWeb.dao.impl;

import com.AndreiWeb.dao.DintiiDao;
import com.AndreiWeb.model.Dintii;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Root on 29.12.2016.
 */
@Repository
@Transactional
public class DintiiDaoImpl implements DintiiDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addDintii(Dintii dintii) {

    }

    public void editDintii(Dintii dintii) {

        Session session = sessionFactory.getCurrentSession();
//        dintii.ClearDinti(dintii.getUr1(),dintii.getUr2(), dintii.getUr3(), dintii.getUr4(), dintii.getUr5(), dintii.getUr6(), dintii.getUr7(), dintii.getUr8(),
//                dintii.getUl1(), dintii.getUl2(), dintii.getUl3(), dintii.getUl4(), dintii.getUl5(), dintii.getUl6(), dintii.getUl7(), dintii.getUl8(),
//                dintii.getDr1(), dintii.getDr2(), dintii.getDr3(), dintii.getDr4(), dintii.getDr5(), dintii.getDr6(), dintii.getDr7(), dintii.getDr8(),
//                dintii.getDl1(), dintii.getDl2(), dintii.getDl3(), dintii.getDl4(), dintii.getDl5(), dintii.getDl6(), dintii.getDl7(), dintii.getDl8());
        session.saveOrUpdate(dintii);
        session.flush();
    }

    public Dintii getDintiiById(int dintiiId) {

        Session session = sessionFactory.getCurrentSession();
        return (Dintii) session.get(Dintii.class, dintiiId);
    }

    public List<Dintii> getAllDintiis() {
        return null;
    }

    public void deleteDintii(int dintiiId) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getDintiiById(dintiiId));
        session.flush();
    }


}
