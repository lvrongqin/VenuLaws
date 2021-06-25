package com.qiming.service;

import com.qiming.domain.Admin;
import com.qiming.domain.User;

public interface UserService {
    User login(User user);
    boolean register(User user);
    Admin alogin(Admin admin);
    boolean aregister(Admin admin);
    void updateUser(String username,User Uuser);
}
