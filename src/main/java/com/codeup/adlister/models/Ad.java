package com.codeup.adlister.models;

public class Ad {

    private long id;
    private long userId;
    private String title;
    private String description;
    private String photo;
    private String date_added;
    private double price;
    private String location;

    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long id, long userId, String rsString, String string, String photo, String title, double price, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long id, String title, String description) {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhoto() { return photo; }

    public void setPhoto(String photo) {this.photo = photo;}

    public String getDate_Added() { return date_added; }

    public void setDate_added(String date_added) { this.date_added = date_added; }

    public double getPrice() { return price; }

    public void setPrice(double price) { this.price = price; }

    public String getLocation() { return location; }

    public void setLocation(String location) { this.location = location; }


}
