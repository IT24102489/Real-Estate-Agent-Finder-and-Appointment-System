package com.example.oop.servlet;

import com.example.oop.dao.AgentDAO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/viewAgents")
public class ViewAgentsServlet extends HttpServlet  {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String filePath = getServletContext().getRealPath("/") + "agents.txt";
        AgentDAO dao = new AgentDAO(filePath);

        request.setAttribute("agents", dao.getAllAgents());
        request.getRequestDispatcher("agent_view.jsp").forward(request, response);
    }
}