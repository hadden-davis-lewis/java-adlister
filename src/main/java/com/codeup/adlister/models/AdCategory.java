package com.codeup.adlister.models;

public class AdCategory {
    private int ad_id;
    private int category_id;

    public AdCategory() {
    }

    public AdCategory(int ad_id, int category_id) {
        this.ad_id = ad_id;
        this.category_id = category_id;
    }

    public int getAd_id() {
        return ad_id;
    }

    public void setAd_id(int ad_id) {
        this.ad_id = ad_id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }
}
