package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    List<User> all();
    User findByUsername(String username);
    User findUserById(int userID);
    Long insert(User user);
    long updateUser(User user);

}
