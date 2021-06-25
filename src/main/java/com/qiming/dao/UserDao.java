package com.qiming.dao;

import com.qiming.domain.Admin;
import com.qiming.domain.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
     User login(User user);
     boolean register(User user);
     Admin alogin(Admin admin);
     boolean aregister(Admin admin);
     void updateUser(@Param("username") String username, @Param("Uuser") User Uuser);
}
