package com.example.oop.servlet;

import com.example.oop.dao.AgentDAO;
import com.example.oop.model.Agent;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet("/addAgent")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10,      // 10MB
        maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class AddAgentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String expertise = request.getParameter("expertise");

        // Handle file upload
        Part filePart = request.getPart("image");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        // Configure upload path
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        // Save file
        filePart.write(uploadPath + File.separator + fileName);

        // Create web-accessible path
        String imagePath = request.getContextPath() + "/uploads/" + fileName;

        // Create and save agent
        Agent newAgent = new Agent(0, name, email, phone, expertise, imagePath);
        String dataFilePath = getServletContext().getRealPath("/") + "agents.txt";
        new AgentDAO(dataFilePath).addAgent(newAgent);

        response.sendRedirect("viewAgents");
    }
}