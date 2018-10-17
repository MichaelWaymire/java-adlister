package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import javax.servlet.jsp.jstl.core.Config;
import java.util.List;

public class MySQLAdsDao implements com.codeup.adlister.dao.Ads {
    public MySQLAdsDao(Config config) {
    }

    @Override
    public List<Ad> all() {
        return null;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}
