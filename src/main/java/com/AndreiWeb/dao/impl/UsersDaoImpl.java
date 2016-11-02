package com.AndreiWeb.dao.impl;

import com.AndreiWeb.dao.UsersDao;
import com.AndreiWeb.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by andrei on 19.04.2016.
 */
@Repository
@Transactional
public class UsersDaoImpl implements UsersDao {

        @Autowired
        private SessionFactory sessionFactory;

        public void addUsers(Users users){
            Session session = sessionFactory.getCurrentSession();
            session.saveOrUpdate(users);
            session.flush();
        }

        public Users getUsersById(int usersId){
            Session session = sessionFactory.getCurrentSession();
            Users users = (Users) session.get(Users.class, usersId);
            session.flush();

            return users;
        }

        public List<Users> getAllUsers(){
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery("from Users");
            List<Users> users = query.list();
            session.flush();

            return users;
        }

        public void deleteUsers(int usersId){
            Session session = sessionFactory.getCurrentSession();
            session.delete(getUsersById(usersId));
            session.flush();


        }

    public Users getUsersByUsername (String username) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Users where username = ?");
        query.setString(0, username);

        return (Users) query.uniqueResult();
    }

}
