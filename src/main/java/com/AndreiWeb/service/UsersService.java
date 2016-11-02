package com.AndreiWeb.service;

import com.AndreiWeb.model.Users;

import java.util.List;

/**
 * Created by andrei on 02.05.2016.
 */
public interface UsersService {

        void addUsers (Users users);

        Users getUsersById (int doctorId);

        List<Users> getAllUsers();

        Users getUsersByUsername (String username);

}
