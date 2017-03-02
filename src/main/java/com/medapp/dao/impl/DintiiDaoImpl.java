package com.medapp.dao.impl;

import com.medapp.dao.DintiiDao;
import com.medapp.model.Dintii;
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
    //constructor needed
  }

  public void editDintii(Dintii dintii) {

    Session session = sessionFactory.getCurrentSession();
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
