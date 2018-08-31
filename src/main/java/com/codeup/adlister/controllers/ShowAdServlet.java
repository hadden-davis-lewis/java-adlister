package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ShowAdServlet", urlPatterns = "/showAds")
public class ShowAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int adId = Integer.parseInt(request.getParameter("id") );
        Ad ad = DaoFactory.getAdsDao().getAdByAdId(adId);
        request.setAttribute("ad", ad);
        request.setAttribute("lister", DaoFactory.getUsersDao().findUserById((int) ad.getUserId()));
        request.getRequestDispatcher("/WEB-INF/ads/showAd.jsp").forward(request, response);
    }
}
