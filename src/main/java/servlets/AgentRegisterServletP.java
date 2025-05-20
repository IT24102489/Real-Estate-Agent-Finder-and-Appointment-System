package servlets;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.util.Properties;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

// Assuming this servlet is intended for agent registration with a specific mapping
// Note: You might need to define a different @WebServlet mapping for this if /register is already used by RegisterServlet
@WebServlet("/agentregister") // Changed mapping for demonstration; please adjust if needed
public class AgentRegisterServletP extends HttpServlet {
    private static final long serialVersionUID = 1L;
    // Assuming this servlet uses a different data file or structure for agents
    private static final String AGENT_DATA_FILE = "WEB-INF/userdata/agents.properties";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form parameters
        String name = request.getParameter("name"); // Business name (now optional)
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate inputs (email and password are required, name is now optional)
        if (email == null || password == null ||
                email.trim().isEmpty() || password.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Email and password are required");
            // Redirect to agent registration page
            request.getRequestDispatcher("AgentSignUp.jsp").forward(request, response); // Adjusted redirect page
            return;
        }

        // Get real path to the data file (for agents)
        String filePath = getServletContext().getRealPath(AGENT_DATA_FILE);
        File userDataDir = new File(getServletContext().getRealPath("WEB-INF/userdata"));

        // Create directory if it doesn't exist
        if (!userDataDir.exists()) {
            userDataDir.mkdirs();
        }

        Properties agents = new Properties();
        File agentFile = new File(filePath);

        // Load existing agents if file exists
        if (agentFile.exists()) {
            try (FileInputStream fis = new FileInputStream(agentFile)) {
                agents.load(fis);
            } catch (IOException e) {
                System.err.println("Error loading existing agents data: " + e.getMessage());
                request.setAttribute("errorMessage", "Error loading agent data. Please try again later.");
                request.getRequestDispatcher("AgentSignUp.jsp").forward(request, response); // Adjusted redirect page
                return;
            }
        }

        // Check if agent already exists
        if (agents.containsKey(email)) {
            request.setAttribute("errorMessage", "Email already registered as an agent");
            request.getRequestDispatcher("AgentSignUp.jsp").forward(request, response); // Adjusted redirect page
            return;
        }

        // Add new agent
        // Handle case where name might be null or empty if it's not required
        String agentName = (name != null && !name.trim().isEmpty()) ? name.trim() : "N/A"; // Use "N/A" or similar if name is empty
        agents.setProperty(email, agentName + ":" + password); // Storing name (optional) and password, consider hashing password

        // Save properties file (for agents)
        try (FileOutputStream fos = new FileOutputStream(filePath)) {
            agents.store(fos, "Agent Data");
        } catch (IOException e) {
             System.err.println("Error saving agent data: " + e.getMessage());
             request.setAttribute("errorMessage", "Error saving agent data. Please try again later.");
             request.getRequestDispatcher("AgentSignUp.jsp").forward(request, response); // Adjusted redirect page
             return;
        }

        // Also save agent data in a separate file for file handling demonstration (optional)
        String agentDetailPath = getServletContext().getRealPath("WEB-INF/userdata/" + email.replaceAll("[^a-zA-Z0-9]", "_") + "_agent.txt");
        try {
            Files.write(
                    Paths.get(agentDetailPath),
                    String.format("Name: %s\nEmail: %s\nRegistration Date: %s\n",
                            agentName, email, new java.util.Date()).getBytes(), // Use agentName here
                    StandardOpenOption.CREATE, StandardOpenOption.WRITE, StandardOpenOption.TRUNCATE_EXISTING
            );
        } catch (IOException e) {
            System.err.println("Error writing agent detail file: " + e.getMessage());
            // Log the error and continue.
        }

        // Set success message and redirect (for agents)
        HttpSession session = request.getSession();
        session.setAttribute("successMessage", "Agent registration successful! Please sign in.");

        // Redirect to agent login page
        response.sendRedirect("AgentSignIn.jsp"); // Corrected redirect page
    }
}
