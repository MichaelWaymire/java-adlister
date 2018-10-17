
package com.codeup.adlister.dao;

import javax.servlet.jsp.jstl.core.Config;

public class DaoFactory {
    private static com.codeup.adlister.dao.Ads adsDao;
    private static Config config = new Config();

    public static com.codeup.adlister.dao.Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }
}