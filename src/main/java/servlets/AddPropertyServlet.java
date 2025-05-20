package servlets;

import dao.PropertyDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Property;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/addProperty")
@MultipartConfig
public class AddPropertyServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Create PropertyDAO instance first to handle ID generation
            PropertyDAO dao = new PropertyDAO();
            
            // Basic property info - no need to get ID from form
            String title = request.getParameter("title");
            String propertyType = request.getParameter("propertyType");
            String listingType = request.getParameter("listingType");

            // Create Property object with essential fields - ID will be set by DAO
            Property property = new Property();
            property.setTitle(title);
            property.setPropertyType(propertyType);
            property.setListingType(listingType);

            // Property characteristics
            property.setBedrooms(request.getParameter("bedrooms"));
            property.setBathrooms(request.getParameter("bathrooms"));

            String areaStr = request.getParameter("area");
            if (areaStr != null && !areaStr.isEmpty()) {
                property.setArea(Double.parseDouble(areaStr));
            }

            property.setDescription(request.getParameter("description"));

            // Location details
            property.setAddress(request.getParameter("address"));
            property.setCity(request.getParameter("city"));
            property.setState(request.getParameter("state"));
            property.setZipCode(request.getParameter("zipCode"));

            // Handle pricing based on listing type
            if ("sell".equals(listingType)) {
                String sellingPriceStr = request.getParameter("sellingPrice");
                if (sellingPriceStr != null && !sellingPriceStr.isEmpty()) {
                    property.setSellingPrice(Double.parseDouble(sellingPriceStr));
                }

                String priceNegotiableStr = request.getParameter("priceNegotiable");
                property.setPriceNegotiable(priceNegotiableStr != null && priceNegotiableStr.equals("true"));
            } else if ("rent".equals(listingType)) {
                // Rental specific fields
                String monthlyRentStr = request.getParameter("monthlyRent");
                if (monthlyRentStr != null && !monthlyRentStr.isEmpty()) {
                    property.setMonthlyRent(Double.parseDouble(monthlyRentStr));
                }

                String securityDepositStr = request.getParameter("securityDeposit");
                if (securityDepositStr != null && !securityDepositStr.isEmpty()) {
                    property.setSecurityDeposit(Double.parseDouble(securityDepositStr));
                }

                property.setLeaseTerm(request.getParameter("leaseTerm"));

                String availableDateStr = request.getParameter("availableDate");
                if (availableDateStr != null && !availableDateStr.isEmpty()) {
                    property.setAvailableDate(LocalDate.parse(availableDateStr));
                }
            }

            // Amenities flags
            property.setHasParking(request.getParameter("hasParking") != null);
            property.setHasSwimmingPool(request.getParameter("hasSwimmingPool") != null);
            property.setHasGarden(request.getParameter("hasGarden") != null);
            property.setHasSecurity(request.getParameter("hasSecurity") != null);
            property.setHasElevator(request.getParameter("hasElevator") != null);
            property.setHasAirConditioning(request.getParameter("hasAirConditioning") != null);
            property.setHasGym(request.getParameter("hasGym") != null);
            property.setHasBalcony(request.getParameter("hasBalcony") != null);

            // Handle image upload (drag-and-drop or file input)
            Part filePart = request.getPart("imageFile");
            String imageUrl = null;
            if (filePart != null && filePart.getSize() > 0) {
                String fileName = System.currentTimeMillis() + "_" + Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
                String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdir();
                String filePath = uploadPath + File.separator + fileName;
                filePart.write(filePath);
                imageUrl = "uploads/" + fileName;
            }
            if (imageUrl != null) property.addImageUrl(imageUrl);

            // Save the property - ID will be generated here
            dao.addProperty(property);

            // Save a human-readable text version as well
            dao.saveAllPropertiesAsText(dao.getAllProperties());

            // Redirect to view page
            response.sendRedirect("ViewProperty.jsp?added=true");

        } catch (NumberFormatException e) {
            // Handle input error (invalid number format)
            request.setAttribute("errorMessage", "Invalid input: Numeric fields must contain valid numbers.");
            request.getRequestDispatcher("AddProperty.jsp").forward(request, response);
        } catch (DateTimeParseException e) {
            // Handle date parsing error
            request.setAttribute("errorMessage", "Invalid date format. Please use YYYY-MM-DD format.");
            request.getRequestDispatcher("AddProperty.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("ErrorProperty.jsp").forward(request, response);
        }
    }
}