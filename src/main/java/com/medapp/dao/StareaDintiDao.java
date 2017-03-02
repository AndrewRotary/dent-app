package com.medapp.dao;

import com.medapp.model.StareaDinti;

import java.util.List;

/**
 * Created by Root on 29.12.2016.
 */
public interface StareaDintiDao {

  void addStareaDinti(StareaDinti stareaDinti);

  void editStareaDinti(StareaDinti stareaDinti);

  StareaDintiDao getStareaDintiById(int stareaDintiId);

  List<StareaDinti> getAllStareaDinti();

  void deleteDintii(int stareaDintiId);
}
