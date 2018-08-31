package com.codeup.adlister.models;

public class Interested {
    private int userID;
    private int adID;

    public Interested() {
    }

    public Interested(int userID, int adID) {
        this.userID = userID;
        this.adID = adID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getAdID() {
        return adID;
    }

    public void setAdID(int adID) {
        this.adID = adID;
    }
}
