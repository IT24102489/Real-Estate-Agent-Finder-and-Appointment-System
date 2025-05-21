package servlets;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.util.Properties;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

// Assuming this servlet is intended for agent registration with a specific mapping
// Note: You might need to define a different @WebServlet mapping for this if /register is already used by RegisterServlet
@WebServlet("/agentregister") // Changed mapping for demonstration; please adjust if needed
public class AgentRegisterServletP extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String LOCAL_STORAGE_DIR = "localdata";
    private static final String AGENT_DATA_FILE = "agents.properties";

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

        // Create local storage directory if it doesn't exist
        Path localDir = Paths.get(LOCAL_STORAGE_DIR);
        if (!Files.exists(localDir)) {
            Files.createDirectories(localDir);
        }

        // Get path to the agent data file
        Path filePath = localDir.resolve(AGENT_DATA_FILE);
        File agentFile = filePath.toFile();

        Properties agents = new Properties();

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

        // Save properties file
        try (FileOutputStream fos = new FileOutputStream(agentFile)) {
            agents.store(fos, "Agent Data");
        } catch (IOException e) {
             System.err.println("Error saving agent data: " + e.getMessage());
             request.setAttribute("errorMessage", "Error saving agent data. Please try again later.");
             request.getRequestDispatcher("AgentSignUp.jsp").forward(request, response); // Adjusted redirect page
             return;
        }

        // Save agent details in a separate file
        String agentDetailPath = localDir.resolve(email.replaceAll("[^a-zA-Z0-9]", "_") + "_agent.txt").toString();
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
