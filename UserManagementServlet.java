package com.realestate.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet("/UserManagementServlet")
public class UserManagementServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database configuration
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/realest ate_db";
    private static final String JDBC_USER = "your_username";
    private static final String JDBC_PASSWORD = "your_password";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            if ("list".equals(action)) {
                listUsers(conn, response);
            } else if ("get".equals(action)) {
                getUser(conn, request, response);
            }
        } catch (SQLException e) {
            sendError(response, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            if ("add".equals(action)) {
                addUser(conn, request, response);
            } else if ("update".equals(action)) {
                updateUser(conn, request, response);
            } else if ("delete".equals(action)) {
                deleteUser(conn, request, response);
            }
        } catch (SQLException e) {
            sendError(response, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
        }
    }

    private void listUsers(Connection conn, HttpServletResponse response) throws IOException, SQLException {
        List<JSONObject> users = new ArrayList<>();
        String sql = "SELECT * FROM users";

        try (PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                JSONObject user = new JSONObject();
                user.put("id", rs.getInt("id"));
                user.put("firstName", rs.getString("first_name"));
                user.put("lastName", rs.getString("last_name"));
                user.put("email", rs.getString("email"));
                user.put("role", rs.getString("role"));
                user.put("status", rs.getString("status"));
                users.add(user);
            }

            JSONArray jsonArray = new JSONArray(users);
            sendJsonResponse(response, jsonArray.toString());
        }
    }

    private void getUser(Connection conn, HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        int userId = Integer.parseInt(request.getParameter("id"));
        String sql = "SELECT * FROM users WHERE id = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, userId);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    JSONObject user = new JSONObject();
                    user.put("id", rs.getInt("id"));
                    user.put("firstName", rs.getString("first_name"));
                    user.put("lastName", rs.getString("last_name"));
                    user.put("email", rs.getString("email"));
                    user.put("role", rs.getString("role"));
                    user.put("status", rs.getString("status"));
                    sendJsonResponse(response, user.toString());
                } else {
                    sendError(response, HttpServletResponse.SC_NOT_FOUND, "User not found");
                }
            }
        }
    }

    private void addUser(Connection conn, HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String role = request.getParameter("role");
        String status = request.getParameter("status");

        String sql = "INSERT INTO users (first_name, last_name, email, role, status) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, firstName);
            stmt.setString(2, lastName);
            stmt.setString(3, email);
            stmt.setString(4, role);
            stmt.setString(5, status);

            int affectedRows = stmt.executeUpdate();

            if (affectedRows > 0) {
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        JSONObject responseJson = new JSONObject();
                        responseJson.put("success", true);
                        responseJson.put("id", generatedKeys.getInt(1));
                        sendJsonResponse(response, responseJson.toString());
                    }
                }
            } else {
                sendError(response, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to add user");
            }
        }
    }

    private void updateUser(Connection conn, HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        int userId = Integer.parseInt(request.getParameter("id"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String role = request.getParameter("role");
        String status = request.getParameter("status");

        String sql = "UPDATE users SET first_name = ?, last_name = ?, email = ?, role = ?, status = ? WHERE id = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, firstName);
            stmt.setString(2, lastName);
            stmt.setString(3, email);
            stmt.setString(4, role);
            stmt.setString(5, status);
            stmt.setInt(6, userId);

            int affectedRows = stmt.executeUpdate();

            if (affectedRows > 0) {
                JSONObject responseJson = new JSONObject();
                responseJson.put("success", true);
                sendJsonResponse(response, responseJson.toString());
            } else {
                sendError(response, HttpServletResponse.SC_NOT_FOUND, "User not found");
            }
        }
    }

    private void deleteUser(Connection conn, HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        int userId = Integer.parseInt(request.getParameter("id"));
        String sql = "DELETE FROM users WHERE id = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, userId);

            int affectedRows = stmt.executeUpdate();

            if (affectedRows > 0) {
                JSONObject responseJson = new JSONObject();
                responseJson.put("success", true);
                sendJsonResponse(response, responseJson.toString());
            } else {
                sendError(response, HttpServletResponse.SC_NOT_FOUND, "User not found");
            }
        }
    }

    private void sendJsonResponse(HttpServletResponse response, String json) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }

    private void sendError(HttpServletResponse response, int statusCode, String message) throws IOException {
        response.setStatus(statusCode);
        JSONObject errorJson = new JSONObject();
        errorJson.put("error", message);
        sendJsonResponse(response, errorJson.toString());
    }
}