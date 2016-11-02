package com.AndreiWeb.dao.impl;

import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.model.Authorities;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by andrei on 25.04.2016.
 */
@Repository
@Transactional
public class DoctorDaoImpl implements DoctorDao{

        @Autowired
        private SessionFactory sessionFactory;

        public void addDoctor(Doctor doctor) {
            Session session = sessionFactory.getCurrentSession();
            //scoatem din jsp datele la username si parola si le setam prin usersid lauser in db
            doctor.getUsers().setDoctor(doctor);
            doctor.getUsers().setEnabled(true);
            session.saveOrUpdate(doctor);
            session.saveOrUpdate(doctor.getUsers());

            //la useru dat setem Rolu de User
            Authorities newAuthority = new Authorities();
            newAuthority.setUsername(doctor.getUsers().getUsername());
            newAuthority.setAuthority("ROLE_USER");
            session.saveOrUpdate(doctor.getUsers());
            session.saveOrUpdate(newAuthority);

            session.saveOrUpdate(doctor);


            session.flush();
        }

        public Doctor getDoctorById (int doctorId) {
            Session session = sessionFactory.getCurrentSession();
            return (Doctor) session.get(Doctor.class, doctorId);
        }

        public List<Doctor> getAllDoctors() {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery("from Doctor");
            List<Doctor> doctors = query.list();

            return doctors;
        }
  

        public Doctor getDoctorByUsername (String username) {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery("from Doctor where username = ?");
            query.setString(0, username);

            return (Doctor) query.uniqueResult();
        }
}
