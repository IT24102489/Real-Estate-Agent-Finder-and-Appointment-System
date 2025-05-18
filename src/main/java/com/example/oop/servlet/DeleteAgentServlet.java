package com.example.oop.servlet;

import com.example.oop.dao.AgentDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/deleteAgent")
public class DeleteAgentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get agent ID from request
        int id = Integer.parseInt(request.getParameter("id"));

        // Get file path to agents.txt
        String filePath = getServletContext().getRealPath("/") + "agents.txt";

        // Use DAO to delete agent
        AgentDAO dao = new AgentDAO(filePath);
        dao.deleteAgent(id);

        // Redirect to view agents
        response.sendRedirect("viewAgents");
    }
}
