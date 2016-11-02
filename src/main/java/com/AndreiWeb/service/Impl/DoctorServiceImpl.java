package com.AndreiWeb.service.Impl;

import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by andrei on 25.04.2016.
 */
@Service
public class DoctorServiceImpl implements DoctorService {



        @Autowired
        private DoctorDao doctorDao;

        public void addDoctor (Doctor doctor) {
            doctorDao.addDoctor(doctor);
        }

        public Doctor getDoctorById(int doctorId) {
            return doctorDao.getDoctorById(doctorId);
        }

        public List<Doctor> getAllDoctors() {
            return doctorDao.getAllDoctors();
        }

        public Doctor getDoctorByUsername (String username) {
            return doctorDao.getDoctorByUsername(username);
        }

}
