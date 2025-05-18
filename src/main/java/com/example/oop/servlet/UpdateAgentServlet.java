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

@WebServlet("/updateAgent")
@MultipartConfig
public class UpdateAgentServlet extends HttpServlet {
    private static final String UPLOAD_DIR = "uploads";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String filePath = getServletContext().getRealPath("/") + "agents.txt";
            Agent agent = new AgentDAO(filePath).getAgentById(id);

            request.setAttribute("agent", agent);
            request.getRequestDispatcher("/agent_update.jsp").forward(request, response);
        } catch (Exception e) {
            response.sendRedirect("viewAgents?error=Invalid+agent");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String expertise = request.getParameter("expertise");

            // Handle file upload
            String fileName = null;
            Part filePart = request.getPart("image");
            if (filePart != null && filePart.getSize() > 0) {
                fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
                String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
                new File(uploadPath).mkdirs();
                filePart.write(uploadPath + File.separator + fileName);
            }

            // Get existing agent data
            String dataFilePath = getServletContext().getRealPath("/") + "agents.txt";
            AgentDAO dao = new AgentDAO(dataFilePath);
            Agent existing = dao.getAgentById(id);

            // Create web-accessible path
            String imagePath = (fileName != null) ?
                    request.getContextPath() + "/uploads/" + fileName :
                    existing.getImagePath();

            // Update agent
            Agent updatedAgent = new Agent(id, name, email, phone, expertise, imagePath);
            dao.updateAgent(updatedAgent);
            response.sendRedirect("viewAgents");

        } catch (Exception e) {
            response.sendRedirect("viewAgents?error=Update+failed");
        }
    }
}