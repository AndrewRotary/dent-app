package com.AndreiWeb.dao;

import com.AndreiWeb.model.Apointment;

import java.util.List;

/**
 * Created by andrei on 19.04.2016.
 */
public interface ApointmentDao {
    void addApointment(Apointment apointment);

    void editApointment(Apointment apointment);

    Apointment getApointmentById(Integer id);

    List<Apointment> getAllApointments();

    void deleteApointment(Integer id);
}
