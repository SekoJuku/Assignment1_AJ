package com.company;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Mass",urlPatterns = "/s2")
public class Mass extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();

        user.setWeight(Double.parseDouble(request.getParameter("user")));

        Double kg = Double.parseDouble(request.getParameter("kg"));

        user.chWeight(kg);

        request.setAttribute("user",user);

        request.getRequestDispatcher("jsp/menu.jsp").forward(request,response);
    }
}
