package servlets;

import dao.PropertyDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Property;

import java.io.IOException;
import java.util.List;

@WebServlet("/viewProperties")
public class ViewPropertiesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PropertyDAO dao = new PropertyDAO();
        List<Property> properties = dao.getAllPropertiesSorted();

        request.setAttribute("properties", properties);
        request.getRequestDispatcher("ViewProperty.jsp").forward(request, response);
    }
}