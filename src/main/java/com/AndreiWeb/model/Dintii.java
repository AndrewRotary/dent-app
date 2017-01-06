package com.AndreiWeb.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;

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
    private ArrayList<String> ul1;
    private ArrayList<String> ul2;
    private ArrayList<String> ul3;
    private ArrayList<String> ul4;
    private ArrayList<String> ul5;
    private ArrayList<String> ul6;
    private ArrayList<String> ul7;
    private ArrayList<String> ul8;
    //Dintit de sus dreapta
    private ArrayList<String> ur1;
    private ArrayList<String> ur2;
    private ArrayList<String> ur3;
    private ArrayList<String> ur4;
    private ArrayList<String> ur5;
    private ArrayList<String> ur6;
    private ArrayList<String> ur7;
    private ArrayList<String> ur8;
    //Dintitt de jos stinga
    private ArrayList<String> dl1;
    private ArrayList<String> dl2;
    private ArrayList<String> dl3;
    private ArrayList<String> dl4;
    private ArrayList<String> dl5;
    private ArrayList<String> dl6;
    private ArrayList<String> dl7;
    private ArrayList<String> dl8;
    //Dintit de sus dreapta
    private ArrayList<String> dr1;
    private ArrayList<String> dr2;
    private ArrayList<String> dr3;
    private ArrayList<String> dr4;
    private ArrayList<String> dr5;
    private ArrayList<String> dr6;
    private ArrayList<String> dr7;
    private ArrayList<String> dr8;

    public int getDintiiId() {
        return dintiiId;
    }

    public void setDintiiId(int dintiiId) {
        this.dintiiId = dintiiId;
    }

    public ArrayList<String> getUl1() {
        return ul1;
    }

    public void setUl1(ArrayList<String> ul1) {
        this.ul1 = ul1;
    }

    public ArrayList<String> getUl2() {
        return ul2;
    }

    public void setUl2(ArrayList<String> ul2) {
        this.ul2 = ul2;
    }

    public ArrayList<String> getUl3() {
        return ul3;
    }

    public void setUl3(ArrayList<String> ul3) {
        this.ul3 = ul3;
    }

    public ArrayList<String> getUl4() {
        return ul4;
    }

    public void setUl4(ArrayList<String> ul4) {
        this.ul4 = ul4;
    }

    public ArrayList<String> getUl5() {
        return ul5;
    }

    public void setUl5(ArrayList<String> ul5) {
        this.ul5 = ul5;
    }

    public ArrayList<String> getUl6() {
        return ul6;
    }

    public void setUl6(ArrayList<String> ul6) {
        this.ul6 = ul6;
    }

    public ArrayList<String> getUl7() {
        return ul7;
    }

    public void setUl7(ArrayList<String> ul7) {
        this.ul7 = ul7;
    }

    public ArrayList<String> getUl8() {
        return ul8;
    }

    public void setUl8(ArrayList<String> ul8) {
        this.ul8 = ul8;
    }

    public ArrayList<String> getUr1() {
        return ur1;
    }

    public void setUr1(ArrayList<String> ur1) {
        this.ur1 = ur1;
    }

    public ArrayList<String> getUr2() {
        return ur2;
    }

    public void setUr2(ArrayList<String> ur2) {
        this.ur2 = ur2;
    }

    public ArrayList<String> getUr3() {
        return ur3;
    }

    public void setUr3(ArrayList<String> ur3) {
        this.ur3 = ur3;
    }

    public ArrayList<String> getUr4() {
        return ur4;
    }

    public void setUr4(ArrayList<String> ur4) {
        this.ur4 = ur4;
    }

    public ArrayList<String> getUr5() {
        return ur5;
    }

    public void setUr5(ArrayList<String> ur5) {
        this.ur5 = ur5;
    }

    public ArrayList<String> getUr6() {
        return ur6;
    }

    public void setUr6(ArrayList<String> ur6) {
        this.ur6 = ur6;
    }

    public ArrayList<String> getUr7() {
        return ur7;
    }

    public void setUr7(ArrayList<String> ur7) {
        this.ur7 = ur7;
    }

    public ArrayList<String> getUr8() {
        return ur8;
    }

    public void setUr8(ArrayList<String> ur8) {
        this.ur8 = ur8;
    }

    public ArrayList<String> getDl1() {
        return dl1;
    }

    public void setDl1(ArrayList<String> dl1) {
        this.dl1 = dl1;
    }

    public ArrayList<String> getDl2() {
        return dl2;
    }

    public void setDl2(ArrayList<String> dl2) {
        this.dl2 = dl2;
    }

    public ArrayList<String> getDl3() {
        return dl3;
    }

    public void setDl3(ArrayList<String> dl3) {
        this.dl3 = dl3;
    }

    public ArrayList<String> getDl4() {
        return dl4;
    }

    public void setDl4(ArrayList<String> dl4) {
        this.dl4 = dl4;
    }

    public ArrayList<String> getDl5() {
        return dl5;
    }

    public void setDl5(ArrayList<String> dl5) {
        this.dl5 = dl5;
    }

    public ArrayList<String> getDl6() {
        return dl6;
    }

    public void setDl6(ArrayList<String> dl6) {
        this.dl6 = dl6;
    }

    public ArrayList<String> getDl7() {
        return dl7;
    }

    public void setDl7(ArrayList<String> dl7) {
        this.dl7 = dl7;
    }

    public ArrayList<String> getDl8() {
        return dl8;
    }

    public void setDl8(ArrayList<String> dl8) {
        this.dl8 = dl8;
    }

    public ArrayList<String> getDr1() {
        return dr1;
    }

    public void setDr1(ArrayList<String> dr1) {
        this.dr1 = dr1;
    }

    public ArrayList<String> getDr2() {
        return dr2;
    }

    public void setDr2(ArrayList<String> dr2) {
        this.dr2 = dr2;
    }

    public ArrayList<String> getDr3() {
        return dr3;
    }

    public void setDr3(ArrayList<String> dr3) {
        this.dr3 = dr3;
    }

    public ArrayList<String> getDr4() {
        return dr4;
    }

    public void setDr4(ArrayList<String> dr4) {
        this.dr4 = dr4;
    }

    public ArrayList<String> getDr5() {
        return dr5;
    }

    public void setDr5(ArrayList<String> dr5) {
        this.dr5 = dr5;
    }

    public ArrayList<String> getDr6() {
        return dr6;
    }

    public void setDr6(ArrayList<String> dr6) {
        this.dr6 = dr6;
    }

    public ArrayList<String> getDr7() {
        return dr7;
    }

    public void setDr7(ArrayList<String> dr7) {
        this.dr7 = dr7;
    }

    public ArrayList<String> getDr8() {
        return dr8;
    }

    public void setDr8(ArrayList<String> dr8) {
        this.dr8 = dr8;
    }

    public Fisa getFisa() {
        return fisa;
    }

    public void setFisa(Fisa fisa) {
        this.fisa = fisa;
    }

    public void ClearDinti(ArrayList<String> ur1, ArrayList<String> ur2, ArrayList<String> ur3, ArrayList<String> ur4, ArrayList<String> ur5, ArrayList<String> ur6, ArrayList<String> ur7, ArrayList<String> ur8,
                           ArrayList<String> ul1, ArrayList<String> ul2, ArrayList<String> ul3, ArrayList<String> ul4, ArrayList<String> ul5, ArrayList<String> ul6, ArrayList<String> ul7, ArrayList<String> ul8,
                           ArrayList<String> dr1, ArrayList<String> dr2, ArrayList<String> dr3, ArrayList<String> dr4, ArrayList<String> dr5, ArrayList<String> dr6, ArrayList<String> dr7, ArrayList<String> dr8,
                           ArrayList<String> dl1, ArrayList<String> dl2, ArrayList<String> dl3, ArrayList<String> dl4, ArrayList<String> dl5, ArrayList<String> dl6, ArrayList<String> dl7, ArrayList<String> dl8){
        this.ur1 = null;
        this.ur2 = null;
        this.ur3 = null;
        this.ur4 = null;
        this.ur8 = null;
        this.ur5 = null;
        this.ur6 = null;
        this.ur7 = null;
        this.ul1 = null;
        this.ul2 = null;
        this.ul3 = null;
        this.ul4 = null;
        this.ul8 = null;
        this.ul5 = null;
        this.ul6 = null;
        this.ul7 = null;
        this.dr1 = null;
        this.dr2 = null;
        this.dr3 = null;
        this.dr4 = null;
        this.dr8 = null;
        this.dr5 = null;
        this.dr6 = null;
        this.dr7 = null;
        this.dl1 = null;
        this.dl2 = null;
        this.dl3 = null;
        this.dl4 = null;
        this.dl8 = null;
        this.dl5 = null;
        this.dl6 = null;
        this.dl7 = null;

    }
}
