package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;

import java.util.ArrayList;
import java.util.List;

public interface AdCategories {
    // finds all categories for a single ad using its id
    public List<String> getCategoriesByAdId(int ad_id);

    //
    public long addCategories(ArrayList<Integer> categoryIds, int ad_id);
}
