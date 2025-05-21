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

@WebServlet("/searchProperties")
public class SearchPropertiesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get search parameters
        String searchType = request.getParameter("searchType");
        String listingType = request.getParameter("listingType");
        String minPriceStr = request.getParameter("minPrice");
        String maxPriceStr = request.getParameter("maxPrice");
        String city = request.getParameter("city");

        // Convert price strings to doubles
        double minPrice = 0;
        double maxPrice = 0;
        try {
            if (minPriceStr != null && !minPriceStr.isEmpty()) {
                minPrice = Double.parseDouble(minPriceStr);
            }
            if (maxPriceStr != null && !maxPriceStr.isEmpty()) {
                maxPrice = Double.parseDouble(maxPriceStr);
            }
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid price format. Please enter valid numbers.");
            request.getRequestDispatcher("ViewProperty.jsp").forward(request, response);
            return;
        }

        // Search for properties
        PropertyDAO dao = new PropertyDAO();
        List<Property> properties = dao.searchProperties(
                searchType, listingType, minPrice, maxPrice, city);

        // Set properties in request and forward to view
        request.setAttribute("properties", properties);
        request.getRequestDispatcher("ViewProperty.jsp").forward(request, response);
    }
}