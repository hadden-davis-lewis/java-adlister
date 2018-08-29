package com.codeup.adlister.dao;

import com.codeup.adlister.models.Review;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLReviewsDao implements UserReviews{

    private Connection connection;

    public MySQLReviewsDao(Config config) {
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
    public List<Review> getReviewsByListerId(int listerId) {

        PreparedStatement stmt = null;
        List<Review> reviews = new ArrayList<>();
        try {
            stmt = connection.prepareStatement(getReviewQuery());
            stmt.setInt(1,listerId);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Review newReview = new Review();
                newReview.setId(rs.getInt("id"));
                newReview.setReviewer_id(rs.getInt("reviewer_id"));
                newReview.setLister_id(rs.getInt("lister_id"));
                newReview.setRating(rs.getInt("rating"));
                newReview.setReview(rs.getString("review"));
                reviews.add(newReview);
            }
            return reviews;
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public long addNewReview(Review review) {

        String insertQuery = "INSERT INTO review(reviewer_id, lister_id, rating, review) VALUES (?,?,?,?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, review.getLister_id());
            stmt.setInt(2, review.getReviewer_id());
            stmt.setInt(3, (int) review.getRating());
            stmt.setString(4,review.getReview());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    @Override
    public float showRating(int listerID) {

        PreparedStatement stmt = null;
        int count = 0;
        float rating = 0;

        try {
            stmt = connection.prepareStatement(getReviewQuery());
            stmt.setInt(1,listerID);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
               rating+= rs.getInt("rating");
               count++;
            }

            return rating/count;
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    private String getReviewQuery(){
        return "SELECT * FROM review" +
                "WHERE lister_id = ?";
    }
    private String getRatingQuery(){
        return "SELECT rating FROM review" +
                "WHERE lister_id = ?";
    }
}
