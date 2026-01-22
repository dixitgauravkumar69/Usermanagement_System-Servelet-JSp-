package com.serveletFirst;

import java.util.List;
import java.util.ArrayList;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Mainservlet")
public class Mainservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    //  list at class level to retain data
    private List<User> users = new ArrayList<>();

    // GET: Show form + table
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("userList", users);  // table data
        request.getRequestDispatcher("index.jsp").forward(request, response); // forward to JSP
    }

    // POST: Add or Delete user
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("delete".equals(action)) {
            // delete user by email
            String email = request.getParameter("email");
            users.removeIf(u -> u.getEmail().equals(email));

        } else {
            // Add new user
            String userName = request.getParameter("userName");
            String email = request.getParameter("mail");
            String date = request.getParameter("date");
            String password = request.getParameter("password");

            // create new user
            User user = new User(userName, email, date, password);

            // add to list
            users.add(user);
        }

        // redirect to doGet() to show updated table
        response.sendRedirect("Mainservlet");
    }
}
