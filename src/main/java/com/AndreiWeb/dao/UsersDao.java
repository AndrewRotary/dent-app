package com.AndreiWeb.dao;

import com.AndreiWeb.model.Users;

import java.util.List;

/**
 * Created by andrei on 19.04.2016.
 */
public interface UsersDao {

        void addUsers(Users users);

        Users getUsersById(int usersId);

        List<Users> getAllUsers();

        void deleteUsers(int usersId);

        Users getUsersByUsername (String username);

}
