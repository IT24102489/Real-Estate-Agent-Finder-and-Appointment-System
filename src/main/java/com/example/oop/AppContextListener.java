package com.example.oop;

import com.example.oop.dao.AgentDAO;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import java.io.File;

@WebListener
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Get the real path to webapp directory
        String contextPath = sce.getServletContext().getRealPath("/");
        String filePath = contextPath + File.separator + "agents.txt";


        // Initialize DAO with correct path
        new AgentDAO(filePath);  // This will trigger loading from file
        System.out.println("Agents loaded into BST from: " + filePath);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Web application stopped.");
    }
}