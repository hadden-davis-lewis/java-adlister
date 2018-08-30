package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.EditProfileServlet", urlPatterns = "/editProfile")
public class EditProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        String location = request.getParameter("location");

        String profile_pic = request.getParameter("profile_pic");

//        DaoFactory.getUsersDao().updateUser(new User())

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/partials/editProfile.jsp").forward(request, response);
//        ----need to retrieve form with current user values prefilled into it---
        if (request.getSession().getAttribute("user") == null){

        }else {
            User user = (User) request.getSession().getAttribute("user");
            request.setAttribute("user", DaoFactory.getUsersDao().findByUsername(user.getUsername()));

        }
    }
}



