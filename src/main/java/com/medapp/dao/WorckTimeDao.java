package com.medapp.dao;

import com.medapp.model.WorckTime;

import java.util.List;

/**
 * Created by Root on 19.01.2017.
 */
public interface WorckTimeDao {

  void addWorckTime(WorckTime worckTime);

  WorckTime getWorckTimeId(int worckTimeId);

  List<WorckTime> getAllWorckTimes();

  void editWorckTime(WorckTime worckTime);

  void deleteWorckTime(int worckTimeId);


}
