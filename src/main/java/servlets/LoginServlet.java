package servlets;

import model.User;
import model.FileUtil;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = FileUtil.authenticate(username, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Redirect to a welcome page (e.g., dashboard.jsp)
            if (user.getRole().equals("admin")) {
                response.sendRedirect("admin/dashboard");

            } else {
                response.sendRedirect("UserDashboard.jsp");  // Redirecting to the user dashboard
            }
        } else {
            response.getWriter().write("Login failed");
        }
    }
}
