package com.realestate.servlets;

import com.realestate.dao.AgentDAO;
import com.realestate.model.Agent;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

/**
 * Servlet to handle listing agents
 */
// Servlet mapping defined in web.xml
public class ListAgentsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Get sort parameter, default to sorting by rating
        String sort = request.getParameter("sort");
        if (sort == null) {
            sort = "rating";
        }
        
        // Get agents from DAO
        AgentDAO agentDAO = new AgentDAO();
        List<Agent> agents;
        
        if ("rating".equals(sort)) {
            // Sort by rating (highest first)
            agents = agentDAO.getAgentsSortedByRating();
        } else {
            // Default sort (by ID)
            agents = agentDAO.getAllAgents();
        }
        
        // Get action parameter
        String action = request.getParameter("action");
        
        // Set agents in request scope
        request.setAttribute("agents", agents);
        request.setAttribute("sort", sort);
        
        // Check if this is for selecting an agent to review
        if ("selectForReview".equals(action)) {
            request.setAttribute("selectForReview", true);
        }
        
        // Forward to JSP
        request.getRequestDispatcher("agentList.jsp").forward(request, response);
    }
}
