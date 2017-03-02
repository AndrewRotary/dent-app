package com.medapp.service;

import com.medapp.model.Doctor;

import java.util.List;

/**
 * Created by andrei on 25.04.2016.
 */
public interface DoctorService {

  void addDoctor(Doctor doctor);

  Doctor getDoctorById(int doctorId);

  List<Doctor> getAllDoctors();

  Doctor getDoctorByUsername(String username);
}
