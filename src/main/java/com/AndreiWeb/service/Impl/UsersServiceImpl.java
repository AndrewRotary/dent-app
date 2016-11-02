package com.AndreiWeb.service.Impl;

import com.AndreiWeb.dao.UsersDao;
import com.AndreiWeb.model.Users;
import com.AndreiWeb.service.UsersService;
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

        public void addUsers (Users users) {
            usersDao.addUsers(users);
        }

        public Users getUsersById(int usersId) {
            return usersDao.getUsersById(usersId);
        }

        public List<Users> getAllUsers() {
            return usersDao.getAllUsers();
        }

        public Users getUsersByUsername (String username) {
            return usersDao.getUsersByUsername(username);
        }



}
