package com.medapp.dao.impl;

import com.medapp.dao.DoctorDao;
import com.medapp.dao.WorckTimeDao;
import com.medapp.model.Doctor;
import com.medapp.model.WorckTime;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Root on 19.01.2017.
 */

@Repository
@Transactional
public class WorckTimeDaoImpl implements WorckTimeDao {

  @Autowired
  private DoctorDao doctorDao;

  @Autowired
  private SessionFactory sessionFactory;

  public void addWorckTime(WorckTime worckTime) {
    Session session = sessionFactory.getCurrentSession();
    Doctor doctor = doctorDao.getDoctorById(worckTime.getDoctor().getDoctorId());
    doctor.getWorckTimes().add(worckTime);
    worckTime.setDoctor(doctor);
    session.saveOrUpdate(worckTime);
    session.saveOrUpdate(doctor);
    session.flush();
  }

  public WorckTime getWorckTimeId(int worckTimeId) {
    Session session = sessionFactory.getCurrentSession();
    WorckTime worckTime = (WorckTime) session.get(WorckTime.class, worckTimeId);
    session.flush();
    return worckTime;
  }

  public List<WorckTime> getAllWorckTimes() {
    Session session = sessionFactory.getCurrentSession();
    Query query = session.createQuery("from WorckTime");
    List<WorckTime> worckTimes = query.list();
    session.flush();
    return worckTimes;
  }

  public void editWorckTime(WorckTime worckTime) {
    Session session = sessionFactory.getCurrentSession();
    session.saveOrUpdate(worckTime);
    session.flush();

  }

  public void deleteWorckTime(int worckTimeId) {

  }
}
