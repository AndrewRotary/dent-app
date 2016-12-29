package com.AndreiWeb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Root on 29.12.2016.
 */
@Entity
public class StareaDinti implements Serializable{

    @Id
    @GeneratedValue
    private int stareaDintiId;

    private  String NumeStare;

    public int getStareaDintiId() {
        return stareaDintiId;
    }

    public void setStareaDintiId(int stareaDintiiId) {
        this.stareaDintiId = stareaDintiiId;
    }

    public String getNumeStare() {
        return NumeStare;
    }

    public void setNumeStare(String numeStare) {
        NumeStare = numeStare;
    }
}
