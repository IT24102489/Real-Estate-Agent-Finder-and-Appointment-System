package servlets;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.Properties;

public class AgentLoginServletP extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String USER_DATA_FILE = "WEB-INF/userdata/users.properties";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form parameters
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate inputs
        if (email == null || password == null ||
                email.trim().isEmpty() || password.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Email and password are required");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Get real path to the data file
        String filePath = getServletContext().getRealPath(USER_DATA_FILE);
        File userFile = new File(filePath);

        // Check if user file exists
        if (!userFile.exists()) {
            request.setAttribute("errorMessage", "Invalid credentials");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        Properties users = new Properties();

        // Load user data
        try (FileInputStream fis = new FileInputStream(userFile)) {
            users.load(fis);
        } catch (IOException e) {
             // Log the exception properly in a real application
             System.err.println("Error loading user data: " + e.getMessage());
             request.setAttribute("errorMessage", "An error occurred during login. Please try again.");
             request.getRequestDispatcher("login.jsp").forward(request, response);
             return;
        }

        // Check if user exists and password matches
        String userData = users.getProperty(email);
        if (userData == null) {
            request.setAttribute("errorMessage", "Invalid credentials");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        String[] parts = userData.split(":");
        // Basic password check (should be replaced with secure hashing)
        if (parts.length != 2 || !parts[1].equals(password)) {
            request.setAttribute("errorMessage", "Invalid credentials");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Login successful
        HttpSession session = request.getSession();
        session.setAttribute("userName", parts[0]);
        session.setAttribute("userEmail", email);
        session.setAttribute("isLoggedIn", true);

        // Update login history file (file handling demonstration)
        String loginHistoryPath = getServletContext().getRealPath("WEB-INF/userdata/" + email.replaceAll("[^a-zA-Z0-9]", "_") + "_logins.txt");
        try (FileWriter fw = new FileWriter(loginHistoryPath, true)) { // Use try-with-resources and append mode
            if (!new File(loginHistoryPath).exists()) { // Check if file exists before writing header (optional, could be done once)
                fw.write("Login History for " + email + "\n");
                fw.write("==================================\n");
            }
            fw.write(new java.util.Date().toString() + "\n");
        } catch (IOException e) {
            // Log the exception properly in a real application
            System.err.println("Error writing login history: " + e.getMessage());
        }

        // Redirect to Property Dashboard
        // Consider using request.getContextPath() if redirecting outside the current servlet's path
        response.sendRedirect("propertyDashboard.jsp");
    }
}
