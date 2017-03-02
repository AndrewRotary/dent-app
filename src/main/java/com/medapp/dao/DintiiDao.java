package com.medapp.dao;

import com.medapp.model.Dintii;

import java.util.List;

/**
 * Created by Root on 29.12.2016.
 */
public interface DintiiDao {

  void addDintii(Dintii dintii);

  void editDintii(Dintii dintii);

  Dintii getDintiiById(int dintiiId);

  List<Dintii> getAllDintiis();

  void deleteDintii(int dintiiId);

}
