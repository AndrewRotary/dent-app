package com.AndreiWeb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;

/**
 * Created by andrei on 19.04.2016.
 */
@Entity
public class Apointment {

        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        private Integer id;
        private java.sql.Date ApointmentDate;
        private Integer UserId;
        private Integer DoctorId;

       //Geters and Setters
        public Date getApointmentDate() {
            return ApointmentDate;
        }

        public void setApointmentDate(Date apointmentDate) {
            ApointmentDate = apointmentDate;
        }


        public Integer getId() {
            return id;
        }

        public void setId(Integer id) {
            this.id = id;
        }



        public Integer getUserId() {
            return UserId;
        }

        public void setUserId(Integer userId) {
            UserId = userId;
        }

        public Integer getDoctorId() {
            return DoctorId;
        }

        public void setDoctorId(Integer doctorId) {
            DoctorId = doctorId;
        }

    @Override
    public String toString() {
        return "Apointment{" +
                "id=" + id +
                ", ApointmentDate=" + ApointmentDate +
                ", UserId=" + UserId +
                ", DoctorId=" + DoctorId +
                '}';
    }
}
