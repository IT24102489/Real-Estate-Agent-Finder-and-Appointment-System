package com.realestate.servlet;

import com.realestate.model.User;
import com.realestate.util.FileUtil;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

public class AdminDashboardServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<User> clients = FileUtil.getAllUsers("client");
        request.setAttribute("clients", clients);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/admin/manage_users.jsp");
        dispatcher.forward(request, response);
    }
}
