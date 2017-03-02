package com.medapp.service.Impl;

import com.medapp.dao.UsersDao;
import com.medapp.model.Users;
import com.medapp.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by andrei on 02.05.2016.
 */

@Service
public class UsersServiceImpl implements UsersService {


  @Autowired
  private UsersDao usersDao;

  public void addUsers(Users users) {
    usersDao.addUsers(users);
  }

  public Users getUsersById(int usersId) {
    return usersDao.getUsersById(usersId);
  }

  public List<Users> getAllUsers() {
    return usersDao.getAllUsers();
  }

  public Users getUsersByUsername(String username) {
    return usersDao.getUsersByUsername(username);
  }


}
