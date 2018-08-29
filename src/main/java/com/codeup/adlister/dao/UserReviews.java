package com.codeup.adlister.dao;

import com.codeup.adlister.models.Review;

import java.util.List;

public interface UserReviews {
    public List<Review> getReviewsByListerId(int listerId);
    public long addNewReview(Review review);
    public float showRating(int listerId);
}
