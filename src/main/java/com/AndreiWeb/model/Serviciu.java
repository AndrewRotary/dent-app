package com.AndreiWeb.model;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Root on 08.01.2017.
 */
@Entity
public class Serviciu implements Serializable{
    private static final long serialVersionUID = -2162658279783557828L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int serviciuId;

    private String name;

    @Column(length = 1250)
    private String about;

    private double price;

    @Transient
    private MultipartFile serviceImage;

    public int getServiciuId() {
        return serviciuId;
    }

    public void setServiciuId(int serviciuId) {
        this.serviciuId = serviciuId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public MultipartFile getServiceImage() {
        return serviceImage;
    }

    public void setServiceImage(MultipartFile serviceImage) {
        this.serviceImage = serviceImage;
    }
}
