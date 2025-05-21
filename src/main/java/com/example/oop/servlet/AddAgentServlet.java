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
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)
public class AddAgentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Check if this is an update or a new agent
            String idParam = request.getParameter("id");
            boolean isUpdate = idParam != null && !idParam.isEmpty();
            int agentId = isUpdate ? Integer.parseInt(idParam) : 0;

            //Get form data
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String expertise = request.getParameter("expertise");

            //Handle image upload
            Part filePart = request.getPart("image");
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

            // Save to /uploads
            String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdir();
            filePart.write(uploadPath + File.separator + fileName);

            // Web path for image
            String imagePath = request.getContextPath() + "/uploads/" + fileName;

            // Path to data file
            String dataFilePath = getServletContext().getRealPath("/") + "agents.txt";
            AgentDAO agentDAO = new AgentDAO(dataFilePath);

            Agent agent = new Agent(agentId, name, email, phone, expertise, imagePath);
            if (isUpdate) {
                agentDAO.updateAgent(agent);
            } else {
                agentDAO.addAgent(agent); 
            }

            response.sendRedirect("viewAgents");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error processing agent: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}
