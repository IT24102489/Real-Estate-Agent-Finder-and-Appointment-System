package servlets;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import java.io.File;

@WebServlet("/agentsignin") // Map this servlet to the /agentsignin URL
public class AgentSignInServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String AGENT_DATA_FILE = "WEB-INF/userdata/agents.properties";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form parameters
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate inputs
        if (email == null || password == null || email.trim().isEmpty() || password.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Email and password are required.");
            request.getRequestDispatcher("AgentSignIn.jsp").forward(request, response);
            return;
        }

        // Get real path to the agent data file
        String filePath = getServletContext().getRealPath(AGENT_DATA_FILE);
        File agentFile = new File(filePath);

        // Check if agent data file exists
        if (!agentFile.exists()) {
             System.err.println("Agent data file not found: " + filePath);
            request.setAttribute("errorMessage", "Agent data not available. Please try again later.");
            request.getRequestDispatcher("AgentSignIn.jsp").forward(request, response);
            return;
        }

        Properties agents = new Properties();

        // Load agent data
        try (FileInputStream fis = new FileInputStream(agentFile)) {
            agents.load(fis);
        } catch (IOException e) {
            System.err.println("Error loading agent data: " + e.getMessage());
            request.setAttribute("errorMessage", "An error occurred during login. Please try again.");
            request.getRequestDispatcher("AgentSignIn.jsp").forward(request, response);
            return;
        }

        // Check if agent exists and password matches
        String agentData = agents.getProperty(email);
        if (agentData == null) {
            request.setAttribute("errorMessage", "Invalid email or password.");
            request.getRequestDispatcher("AgentSignIn.jsp").forward(request, response);
            return;
        }

        String[] parts = agentData.split(":");
        // Basic password check (should be replaced with secure hashing in a real application)
        if (parts.length < 2 || !parts[1].equals(password)) { // parts[0] is name, parts[1] is password
            request.setAttribute("errorMessage", "Invalid email or password.");
            request.getRequestDispatcher("AgentSignIn.jsp").forward(request, response);
            return;
        }

        // Login successful
        HttpSession session = request.getSession();
        session.setAttribute("agentEmail", email);
        session.setAttribute("agentName", parts[0]); // Store agent name in session
        session.setAttribute("isAgentLoggedIn", true); // Use a specific flag for agent login

        // Redirect to property dashboard
        response.sendRedirect("propertyDashboard.jsp");
    }

     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         // Optionally handle GET requests, perhaps redirect to the sign-in page
         response.sendRedirect("AgentSignIn.jsp");
     }
} 