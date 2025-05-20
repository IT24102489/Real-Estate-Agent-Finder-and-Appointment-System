package servlets;

import dao.PropertyDAO;
import model.Property;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;

@WebServlet("/updateProperty")
@MultipartConfig
public class UpdatePropertyServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Get property ID and retrieve existing property
            String idStr = request.getParameter("id");
            if (idStr == null || idStr.trim().isEmpty()) {
                request.setAttribute("errorMessage", "Property ID is required");
                request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
                return;
            }

            int id = Integer.parseInt(idStr);
            PropertyDAO dao = new PropertyDAO();
            Property existingProperty = dao.getPropertyById(id);

            if (existingProperty == null) {
                request.setAttribute("errorMessage", "Property with ID " + id + " not found.");
                request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
                return;
            }

            // Create updated property object with the existing ID
            Property updatedProperty = new Property();
            updatedProperty.setId(id); // Preserve the original ID
            updatedProperty.setTitle(request.getParameter("title"));
            updatedProperty.setPropertyType(request.getParameter("propertyType"));
            updatedProperty.setListingType(request.getParameter("listingType"));
            
            // Handle numeric fields
            try {
                updatedProperty.setBedrooms(request.getParameter("bedrooms"));
                updatedProperty.setBathrooms(request.getParameter("bathrooms"));
                String areaStr = request.getParameter("area");
                if (areaStr != null && !areaStr.isEmpty()) {
                    updatedProperty.setArea(Double.parseDouble(areaStr));
                }
            } catch (NumberFormatException e) {
                request.setAttribute("errorMessage", "Invalid numeric value in area");
                request.setAttribute("property", existingProperty);
                request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
                return;
            }

            updatedProperty.setDescription(request.getParameter("description"));
            updatedProperty.setAddress(request.getParameter("address"));
            updatedProperty.setCity(request.getParameter("city"));
            updatedProperty.setState(request.getParameter("state"));
            updatedProperty.setZipCode(request.getParameter("zipCode"));

            // Handle pricing based on listing type
            if ("sell".equals(updatedProperty.getListingType())) {
                try {
                    String sellingPriceStr = request.getParameter("sellingPrice");
                    if (sellingPriceStr != null && !sellingPriceStr.isEmpty()) {
                        updatedProperty.setSellingPrice(Double.parseDouble(sellingPriceStr));
                    }
                    updatedProperty.setPriceNegotiable(request.getParameter("priceNegotiable") != null);
                    // Reset rent-related fields
                    updatedProperty.setMonthlyRent(0.0);
                    updatedProperty.setSecurityDeposit(0.0);
                    updatedProperty.setLeaseTerm(null);
                    updatedProperty.setAvailableDate(null);
                } catch (NumberFormatException e) {
                    request.setAttribute("errorMessage", "Invalid selling price format");
                    request.setAttribute("property", existingProperty);
                    request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
                    return;
                }
            } else {
                try {
                    String monthlyRentStr = request.getParameter("monthlyRent");
                    String securityDepositStr = request.getParameter("securityDeposit");
                    if (monthlyRentStr != null && !monthlyRentStr.isEmpty()) {
                        updatedProperty.setMonthlyRent(Double.parseDouble(monthlyRentStr));
                    }
                    if (securityDepositStr != null && !securityDepositStr.isEmpty()) {
                        updatedProperty.setSecurityDeposit(Double.parseDouble(securityDepositStr));
                    }
                    updatedProperty.setLeaseTerm(request.getParameter("leaseTerm"));
                    String availableDateStr = request.getParameter("availableDate");
                    if (availableDateStr != null && !availableDateStr.isEmpty()) {
                        updatedProperty.setAvailableDate(LocalDate.parse(availableDateStr));
                    }
                    // Reset sell-related fields
                    updatedProperty.setSellingPrice(0.0);
                    updatedProperty.setPriceNegotiable(false);
                } catch (NumberFormatException e) {
                    request.setAttribute("errorMessage", "Invalid rent or deposit amount format");
                    request.setAttribute("property", existingProperty);
                    request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
                    return;
                } catch (DateTimeParseException e) {
                    request.setAttribute("errorMessage", "Invalid date format");
                    request.setAttribute("property", existingProperty);
                    request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
                    return;
                }
            }

            // Set amenities
            updatedProperty.setHasParking(request.getParameter("hasParking") != null);
            updatedProperty.setHasSwimmingPool(request.getParameter("hasSwimmingPool") != null);
            updatedProperty.setHasGarden(request.getParameter("hasGarden") != null);
            updatedProperty.setHasSecurity(request.getParameter("hasSecurity") != null);
            updatedProperty.setHasElevator(request.getParameter("hasElevator") != null);
            updatedProperty.setHasAirConditioning(request.getParameter("hasAirConditioning") != null);
            updatedProperty.setHasGym(request.getParameter("hasGym") != null);
            updatedProperty.setHasBalcony(request.getParameter("hasBalcony") != null);

            // Preserve existing images
            updatedProperty.setImageUrls(existingProperty.getImageUrls());

            // Handle new image upload if any
            Part filePart = request.getPart("imageFile");
            if (filePart != null && filePart.getSize() > 0) {
                String fileName = System.currentTimeMillis() + "_" + Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
                String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdir();
                String filePath = uploadPath + File.separator + fileName;
                filePart.write(filePath);
                String imageUrl = "uploads/" + fileName;
                updatedProperty.addImageUrl(imageUrl);
            }

            // Update the property
            boolean success = dao.updateProperty(updatedProperty);

            if (success) {
                response.sendRedirect("ViewProperty.jsp?updated=true");
            } else {
                request.setAttribute("errorMessage", "Failed to update property");
                request.setAttribute("property", existingProperty); // Keep the existing property data
                request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
            }

        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid numeric value in form");
            request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
        } catch (DateTimeParseException e) {
            request.setAttribute("errorMessage", "Invalid date format");
            request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String idStr = request.getParameter("id");
            if (idStr == null || idStr.trim().isEmpty()) {
                request.setAttribute("errorMessage", "Property ID is required");
                request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
                return;
            }

            int id = Integer.parseInt(idStr);
            PropertyDAO dao = new PropertyDAO();
            Property property = dao.getPropertyById(id);

            if (property == null) {
                request.setAttribute("errorMessage", "Property with ID " + id + " not found");
                request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
                return;
            }

            // Set the property as a request attribute
            request.setAttribute("property", property);
            
            // Forward to UpdateProperty.jsp
            request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid property ID format");
            request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("UpdateProperty.jsp").forward(request, response);
        }
    }
}