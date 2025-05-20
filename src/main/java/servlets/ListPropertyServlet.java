package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Property;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/listProperties")
public class ListPropertyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get all properties from the text file
        String contextPath = getServletContext().getRealPath("/");
        List<Property> allProperties = PropertyReader.getPropertiesFromFile(contextPath);

        // Get filter parameters
        String propertyType = request.getParameter("propertyType");
        String listingType = request.getParameter("listingType");
        String city = request.getParameter("city");

        // Apply filters if specified
        List<Property> filteredProperties = allProperties;

        if (propertyType != null && !propertyType.isEmpty()) {
            filteredProperties = filteredProperties.stream()
                    .filter(p -> propertyType.equals(p.getPropertyType()))
                    .collect(Collectors.toList());
        }

        if (listingType != null && !listingType.isEmpty()) {
            filteredProperties = filteredProperties.stream()
                    .filter(p -> listingType.equals(p.getListingType()))
                    .collect(Collectors.toList());
        }

        if (city != null && !city.isEmpty()) {
            filteredProperties = filteredProperties.stream()
                    .filter(p -> city.equalsIgnoreCase(p.getCity()))
                    .collect(Collectors.toList());
        }

        // Set properties in request
        request.setAttribute("properties", filteredProperties);

        // For sale properties only
        List<Property> saleProperties = allProperties.stream()
                .filter(p -> "sell".equals(p.getListingType()))
                .collect(Collectors.toList());
        request.setAttribute("saleProperties", saleProperties);

        // For rent properties only
        List<Property> rentProperties = allProperties.stream()
                .filter(p -> "rent".equals(p.getListingType()))
                .collect(Collectors.toList());
        request.setAttribute("rentProperties", rentProperties);

        // Forward to JSP page
        request.getRequestDispatcher("/propertyDashboard.jsp").forward(request, response);
    }
}
