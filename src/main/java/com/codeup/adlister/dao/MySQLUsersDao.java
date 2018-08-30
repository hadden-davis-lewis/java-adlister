package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch(SQLIntegrityConstraintViolationException e){
            throw new RuntimeException("Username must be unique");
        }catch (SQLException e) {
            e.toString();
            throw new RuntimeException("Error connecting to the database!");
        }
    }


    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM user WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public Long insert(User user) {

        String query = "INSERT INTO user(first_name, last_name, email, username, password, location, user_since) VALUES (?,?,?,?,?,?,NOW())";

        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getFirst_name());
            stmt.setString(2, user.getLast_name());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getUsername());
            stmt.setString(5, user.getPassword());
            stmt.setString(6, user.getLocation());


            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }

    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (!rs.next()) {
            return null;
        }
//        User newUser = new User();
        return new User(
                rs.getInt("id"),
                rs.getString("first_name"),
                rs.getString("last_name"),
                rs.getString("username"),
                rs.getString("email"),
                rs.getString("password"),
                rs.getString("location"),
                rs.getString("user_since")
        );
    }

    @Override
    public long updateUserById(User user) {


        try {
            PreparedStatement stmt = connection.prepareStatement(Updatequery(user.getId()), Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getFirst_name());
            stmt.setString(2, user.getLast_name());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getUsername());
            stmt.setString(5, user.getPassword());
            stmt.setString(6, user.getLocation());

            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error updating user", e);
        }
    }

    private String Updatequery(long userId){
        return "UPDATE user SET " +
                "first_name = ?," +
                "last_name = ?," +
                "email = ?," +
                "username = ?," +
                "password = ?," +
                "location = ?)" +
                "WHERE id ="+userId;
    }

    //        newUser.setId(rs.getInt("id"));
//        newUser.setPassword(rs.getString("password"));
//        newUser.setFirst_name(rs.getString("first_name"));
//        newUser.setLast_name(rs.getString("last_name"));
//        newUser.setEmail(rs.getString("email"));
//        newUser.setUsername(rs.getString("username"));
//        newUser.setPassword(rs.getString("password"));
//        newUser.setLocation(rs.getString("location"));
//        newUser.setUser_since(rs.getString("user_since"));
//
//        return newUser;
//
//    }

}
