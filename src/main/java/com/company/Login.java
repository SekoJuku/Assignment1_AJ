package com.company;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Login", urlPatterns = "/s1")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String username = req.getParameter("username");
        String userpass = req.getParameter("userpass");

        User user = new User();

        req.setAttribute("user",user);
        try{
            if(user.getUsername().equals(username) && user.getPass().equals(userpass)) {
                req.getRequestDispatcher("/jsp/menu.jsp").forward(req,resp);
            } else {
                req.setAttribute("err","Wrong username or password. Try again!");
                req.getRequestDispatcher("/").forward(req,resp);
            }
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
