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
                newReview.setRating(rs.getFloat("rating"));
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
        return 0;
    }

    @Override
    public float showRating() {
        return 0;
    }

    private String getReviewQuery(){
        return "SELECT * FROM review" +
                "WHERE lister_id = ?";
    }
}
