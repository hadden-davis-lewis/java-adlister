package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
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
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ad");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ad(user_id, title, description, photo, price,location,date_added) VALUES (?, ?, ?, ?, ?,?,NOW())";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setString(4, ad.getPhoto());
            stmt.setDouble(5, ad.getPrice());
            stmt.setString(6,ad.getLocation());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public List<Ad> getAdsByListerId(int listerId) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ad WHERE user_id = ?");
            stmt.setInt(1,listerId);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving ads by lister Id.", e);
        }
    }

    @Override
    public Ad getAdByAdId(int adId) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ad WHERE ad_id = ?");
            stmt.setInt(1,adId);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving an ad by id.", e);
        }
    }

    @Override
    public List<Integer> getAdIdsByCategory(String category) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT ads_id FROM ads_categories WHERE category_id = ?");
            stmt.setInt(1, getCategoryIdFromCategoryName(category));
            ResultSet rs = stmt.executeQuery();
            return createAdIdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ad Ids by category.", e);
        }
    }

    private int getCategoryIdFromCategoryName(String category){
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT id FROM category WHERE name = ?");
            stmt.setString(1, category);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return rs.getInt("id");
        } catch (SQLException e) {
            throw new RuntimeException("Error returning category Id from category name", e);
        }

    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description"),
            rs.getString("photo"),
            rs.getDouble("price"),
            rs.getString("location"),
            rs.getString("date_added")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    private List<Integer> createAdIdsFromResults(ResultSet rs) throws SQLException {
        List<Integer> adIds = new ArrayList<>();
        while (rs.next()) {
            adIds.add(rs.getInt("id"));
        }
        return adIds;
    }
}
