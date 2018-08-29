package com.codeup.adlister.models;

public class Review {
    private int id;
    private int reviewer_id;
    private int lister_id;
    private int rating;
    private String review;

    public Review() {
    }

    public Review(int rating, String review) {
        this.rating = rating;
        this.review = review;
    }

    public Review(int id, int rating, String review) {
        this.id = id;
        this.rating = rating;
        this.review = review;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getReviewer_id() {
        return reviewer_id;
    }

    public void setReviewer_id(int review_id) {
        this.reviewer_id = review_id;
    }

    public int getLister_id() {
        return lister_id;
    }

    public void setLister_id(int lister_id) {
        this.lister_id = lister_id;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }
}
