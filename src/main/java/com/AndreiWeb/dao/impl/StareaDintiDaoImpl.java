package com.AndreiWeb.dao.impl;

import com.AndreiWeb.dao.StareaDintiDao;
import com.AndreiWeb.model.StareaDinti;
import org.hibernate.Query;
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
public class StareaDintiDaoImpl implements StareaDintiDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addStareaDinti(StareaDinti stareaDinti) {

    }

    public void editStareaDinti(StareaDinti stareaDinti) {

    }

    public StareaDintiDao getStareaDintiById(int stareaDintiId) {
        return null;
    }

    public List<StareaDinti> getAllStareaDinti() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from StareaDinti");
        List<StareaDinti> stareaDinti = query.list();

        return stareaDinti;
    }

    public void deleteDintii(int stareaDintiId) {

    }
}
