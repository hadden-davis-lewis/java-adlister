package com.codeup.adlister.models;

import com.codeup.adlister.util.Password;

public class User {
    private long id;
    private String first_name;
    private String last_name;
    private String email;
    private String username;
    private String password;
    private String location;
    private String profile_pic;
    private String user_since;

//    public User(String first_name, String last_name, String location, long id, String username, String email, String password) {}

//    public User(String username, String email, String password) {
//        this.username = username;
//        this.email = email;
//        setPassword(password);
//    }

//    public User(long id, String username, String email, String password) {
//        this.id = id;
//        this.username = username;
//        this.email = email;
//        this.password = password;
//    }


    public User() {
    }

    public User(String first_name, String last_name, String username, String email, String password, String location) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.password = password;
        this.location = location;
        this.username = username;
        setPassword(password);
    }

    public User(int id, String first_name, String last_name, String username, String email, String password, String location, String user_since) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.password = password;
        this.location = location;
        this.username = username;
        this.id = id;
        this.user_since = user_since;
    }

//    public User(int id, String password, String first_name, String last_name, String email, String username, String password1, String location, String user_since) {
//    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = Password.hash(password);
    }




    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getProfile_pic() {
        return profile_pic;
    }

    public void setProfile_pic(String profile_pic) {
        this.profile_pic = profile_pic;
    }

    public String getUser_since() {
        return user_since;
    }

    public void setUser_since(String user_since) {
        this.user_since = user_since;
    }
}
