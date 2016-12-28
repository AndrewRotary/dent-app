package com.AndreiWeb.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Root on 27.12.2016.
 */

@Entity
public class Dintii implements Serializable {

    @Id
    @GeneratedValue
    private int dintiiId;

    @OneToOne
    @JoinColumn(name="fisaId")
    private Fisa fisa;
    //Dintii de sus stinga
    private String ul1;
    private String ul2;
    private String ul3;
    private String ul4;
    private String ul5;
    private String ul6;
    private String ul7;
    private String ul8;
    //Dintit de sus dreapta
    private String ur1;
    private String ur2;
    private String ur3;
    private String ur4;
    private String ur5;
    private String ur6;
    private String ur7;
    private String ur8;
    //Dintitt de jos stinga
    private String dl1;
    private String dl2;
    private String dl3;
    private String dl4;
    private String dl5;
    private String dl6;
    private String dl7;
    private String dl8;
    //Dintit de sus dreapta
    private String dr1;
    private String dr2;
    private String dr3;
    private String dr4;
    private String dr5;
    private String dr6;
    private String dr7;
    private String dr8;

    public int getDintiiId() {
        return dintiiId;
    }

    public void setDintiiId(int dintiiId) {
        this.dintiiId = dintiiId;
    }

    public String getUl1() {
        return ul1;
    }

    public void setUl1(String ul1) {
        this.ul1 = ul1;
    }

    public String getUl2() {
        return ul2;
    }

    public void setUl2(String ul2) {
        this.ul2 = ul2;
    }

    public String getUl3() {
        return ul3;
    }

    public void setUl3(String ul3) {
        this.ul3 = ul3;
    }

    public String getUl4() {
        return ul4;
    }

    public void setUl4(String ul4) {
        this.ul4 = ul4;
    }

    public String getUl5() {
        return ul5;
    }

    public void setUl5(String ul5) {
        this.ul5 = ul5;
    }

    public String getUl6() {
        return ul6;
    }

    public void setUl6(String ul6) {
        this.ul6 = ul6;
    }

    public String getUl7() {
        return ul7;
    }

    public void setUl7(String ul7) {
        this.ul7 = ul7;
    }

    public String getUl8() {
        return ul8;
    }

    public void setUl8(String ul8) {
        this.ul8 = ul8;
    }

    public String getUr1() {
        return ur1;
    }

    public void setUr1(String ur1) {
        this.ur1 = ur1;
    }

    public String getUr2() {
        return ur2;
    }

    public void setUr2(String ur2) {
        this.ur2 = ur2;
    }

    public String getUr3() {
        return ur3;
    }

    public void setUr3(String ur3) {
        this.ur3 = ur3;
    }

    public String getUr4() {
        return ur4;
    }

    public void setUr4(String ur4) {
        this.ur4 = ur4;
    }

    public String getUr5() {
        return ur5;
    }

    public void setUr5(String ur5) {
        this.ur5 = ur5;
    }

    public String getUr6() {
        return ur6;
    }

    public void setUr6(String ur6) {
        this.ur6 = ur6;
    }

    public String getUr7() {
        return ur7;
    }

    public void setUr7(String ur7) {
        this.ur7 = ur7;
    }

    public String getUr8() {
        return ur8;
    }

    public void setUr8(String ur8) {
        this.ur8 = ur8;
    }

    public String getDl1() {
        return dl1;
    }

    public void setDl1(String dl1) {
        this.dl1 = dl1;
    }

    public String getDl2() {
        return dl2;
    }

    public void setDl2(String dl2) {
        this.dl2 = dl2;
    }

    public String getDl3() {
        return dl3;
    }

    public void setDl3(String dl3) {
        this.dl3 = dl3;
    }

    public String getDl4() {
        return dl4;
    }

    public void setDl4(String dl4) {
        this.dl4 = dl4;
    }

    public String getDl5() {
        return dl5;
    }

    public void setDl5(String dl5) {
        this.dl5 = dl5;
    }

    public String getDl6() {
        return dl6;
    }

    public void setDl6(String dl6) {
        this.dl6 = dl6;
    }

    public String getDl7() {
        return dl7;
    }

    public void setDl7(String dl7) {
        this.dl7 = dl7;
    }

    public String getDl8() {
        return dl8;
    }

    public void setDl8(String dl8) {
        this.dl8 = dl8;
    }

    public String getDr1() {
        return dr1;
    }

    public void setDr1(String dr1) {
        this.dr1 = dr1;
    }

    public String getDr2() {
        return dr2;
    }

    public void setDr2(String dr2) {
        this.dr2 = dr2;
    }

    public String getDr3() {
        return dr3;
    }

    public void setDr3(String dr3) {
        this.dr3 = dr3;
    }

    public String getDr4() {
        return dr4;
    }

    public void setDr4(String dr4) {
        this.dr4 = dr4;
    }

    public String getDr5() {
        return dr5;
    }

    public void setDr5(String dr5) {
        this.dr5 = dr5;
    }

    public String getDr6() {
        return dr6;
    }

    public void setDr6(String dr6) {
        this.dr6 = dr6;
    }

    public String getDr7() {
        return dr7;
    }

    public void setDr7(String dr7) {
        this.dr7 = dr7;
    }

    public String getDr8() {
        return dr8;
    }

    public void setDr8(String dr8) {
        this.dr8 = dr8;
    }

    public Fisa getFisa() {
        return fisa;
    }

    public void setFisa(Fisa fisa) {
        this.fisa = fisa;
    }
}
