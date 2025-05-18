package com.example.oop;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
        System.out.println("🔧 Forwarding to index.jsp...");
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}