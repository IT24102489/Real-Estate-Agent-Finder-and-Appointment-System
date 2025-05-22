package servlets;

import model.User;
import model.FileUtil;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

public class AdminDashboardServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<User> clients = FileUtil.getAllUsers("client");
        request.setAttribute("clients", clients);
        RequestDispatcher dispatcher = request.getRequestDispatcher("UserDashboard.jsp");
        dispatcher.forward(request, response);
    }
}
