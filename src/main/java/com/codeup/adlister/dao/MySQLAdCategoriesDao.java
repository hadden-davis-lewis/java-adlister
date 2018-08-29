package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdCategoriesDao implements AdCategories {
    private Connection connection;

    public MySQLAdCategoriesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }

    }

    @Override
    public List<String> getCategoriesByAdId(int ad_id) {
        PreparedStatement stmt = null;
        List<String> categories = new ArrayList<>();
        try {
            stmt = connection.prepareStatement(getCategoriesQuery());
            stmt.setInt(1,ad_id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                categories.add(rs.getString("name"));
            }

            return categories;
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public long addCategories(ArrayList<Integer> categoryIds, int ad_id) {
        try {
            String insertQuery = "INSERT INTO ads_categories(ad_id,category_id) VALUES (ad_id,?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            for(int id : categoryIds) {
                stmt.setLong(1, id);
                stmt.executeUpdate();
            }
                ResultSet rs = stmt.getGeneratedKeys();
                rs.next();
                return rs.getLong(1);

        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private String getCategoriesQuery(){
        return "SELECT category.name FROM category" +
                "JOIN ads_categories ON category.id = ads_categories.category_id" +
                "WHERE ads_categories.ad_id = ?";
    }

}
