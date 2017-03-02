package com.medapp.dao;

import com.medapp.model.Fisa;

import java.util.List;

/**
 * Created by Root on 27.12.2016.
 */
public interface FisaDao {

  void addFisa(Fisa fisa);

  void editFisa(Fisa fisa);

  Fisa getFisaById(int fisaId);

  List<Fisa> getAllFisas();

  void deleteFisa(int fisaId);
}
