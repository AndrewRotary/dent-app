package com.AndreiWeb.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

import static java.awt.font.TransformAttribute.IDENTITY;

/**
 * Created by Root on 27.12.2016.
 */
@Entity
public class Fisa implements Serializable {

    private static final long serialVersionUID = -2162658279783557828L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int fisaId;

    @OneToOne
    @JoinColumn(name = "clientId")
    private Client client;

    @OneToOne
    @JoinColumn(name="dintiiId")
    private Dintii dintii;

    @Column(name = "dataCreat")
    private Date date;

    private String diagnosticul;

    private String acuze;

    private String boli;

    private String evolutiaBolii;

    private String examenExterior;

    private String ocluzia;

    private String stareaMucoaseiEtc;

    public int getFisaId() {
        return fisaId;
    }

    public void setFisaId(int fisaId) {
        this.fisaId = fisaId;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Dintii getDintii() {
        return dintii;
    }

    public void setDintii(Dintii dintii) {
        this.dintii = dintii;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDiagnosticul() {
        return diagnosticul;
    }

    public void setDiagnosticul(String diagnosticul) {
        this.diagnosticul = diagnosticul;
    }

    public String getAcuze() {
        return acuze;
    }

    public void setAcuze(String acuze) {
        this.acuze = acuze;
    }

    public String getBoli() {
        return boli;
    }

    public void setBoli(String boli) {
        this.boli = boli;
    }

    public String getEvolutiaBolii() {
        return evolutiaBolii;
    }

    public void setEvolutiaBolii(String evolutiaBolii) {
        this.evolutiaBolii = evolutiaBolii;
    }

    public String getExamenExterior() {
        return examenExterior;
    }

    public void setExamenExterior(String examenExterior) {
        this.examenExterior = examenExterior;
    }

    public String getOcluzia() {
        return ocluzia;
    }

    public void setOcluzia(String ocluzia) {
        this.ocluzia = ocluzia;
    }

    public String getStareaMucoaseiEtc() {
        return stareaMucoaseiEtc;
    }

    public void setStareaMucoaseiEtc(String stareaMucoaseiEtc) {
        this.stareaMucoaseiEtc = stareaMucoaseiEtc;
    }
}
