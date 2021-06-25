package com.qiming.service;
import com.qiming.dao.UserDao;
import com.qiming.domain.Admin;
import com.qiming.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;
    public User login(User user) {
        return userDao.login(user);
    }

    public boolean register(User user) {
        return userDao.register(user);
    }

    public Admin alogin(Admin admin) {
        return userDao.alogin(admin);
    }

    public boolean aregister(Admin admin) {
        return userDao.aregister(admin);
    }

    public void updateUser(String username, User Uuser) {
        userDao.updateUser(username,Uuser);
    }
}
