package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List<Ad> getAdsByListerId(int listerId);

    Ad getAdByAdId(int adId);

    List<Integer> getAdIdsByCategory(String category);

    Long delete(int adId);

    Long edit(Ad ad);

    List<Ad> getAdByTitle(String title);

}
