package com.AndreiWeb.dao;

import com.AndreiWeb.model.Serviciu;

import java.util.List;

/**
 * Created by Root on 08.01.2017.
 */
public interface ServiciuDao {

    void addServiciu(Serviciu serviciu);

    void editServiciu(Serviciu serviciu);

    Serviciu getServiciuById(int serviciuId);

    List<Serviciu> getAllServices();

    void deleteFisa(int serviciuId);
}
