<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/24/2025
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.PropertyDAO, model.Property" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    Property property = (Property) request.getAttribute("property");
    if (property == null) {
        String idStr = request.getParameter("id");
        if (idStr == null || idStr.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Property ID is required");
            request.getRequestDispatcher("ErrorProperty.jsp").forward(request, response);
            return;
        }
        
        try {
            int id = Integer.parseInt(idStr);
            PropertyDAO dao = new PropertyDAO();
            property = dao.getPropertyById(id);
            
            if (property == null) {
                request.setAttribute("errorMessage", "Property with ID " + id + " not found");
                request.getRequestDispatcher("ErrorProperty.jsp").forward(request, response);
                return;
            }
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid property ID format");
            request.getRequestDispatcher("ErrorProperty.jsp").forward(request, response);
            return;
        } catch (Exception e) {
            request.setAttribute("errorMessage", "Error retrieving property: " + e.getMessage());
            request.getRequestDispatcher("ErrorProperty.jsp").forward(request, response);
            return;
        }
    }
    
    String errorMessage = (String) request.getAttribute("errorMessage");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update Property | Prop Estate</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/globalProperty.css" rel="stylesheet">
    <link href="css/AddProperty.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Include your header/navigation from AddProperty.jsp -->
    <section id="header">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow_box" id="navbar_sticky">
            <!-- Your navigation code from AddProperty.jsp -->
        </nav>
    </section>

    <!-- Hero Section -->
    <section class="hero-section-t">
        <div class="container-t">
            <div class="hero-content-t">
                <div class="bg-section-list-t">
                    <div class="overlay-t">
                        <h1 class="display-4-t fw-bold-t">Update Property</h1>
                        <p class="detail-lead-t">Edit property details</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Main Content -->
    <div class="container py-5">
        <form action="updateProperty" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="<%= property.getId() %>">
            
            <!-- Basic Information -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Basic Information</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="title">Property Title</label>
                        <input type="text" class="form-control" id="title" name="title" 
                               value="<%= property.getTitle() %>" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="propertyType">Property Type</label>
                        <select class="form-control" id="propertyType" name="propertyType" required>
                            <option value="land" <%= property.getPropertyType().equals("land") ? "selected" : "" %>>Land</option>
                            <option value="apartment" <%= property.getPropertyType().equals("apartment") ? "selected" : "" %>>Apartment</option>
                            <option value="house" <%= property.getPropertyType().equals("house") ? "selected" : "" %>>House</option>
                            <option value="villa" <%= property.getPropertyType().equals("villa") ? "selected" : "" %>>Villa</option>
                            <option value="condo" <%= property.getPropertyType().equals("condo") ? "selected" : "" %>>Condo</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="listingType">Listing Type</label>
                        <select class="form-control" id="listingType" name="listingType" required>
                            <option value="sell" <%= property.getListingType().equals("sell") ? "selected" : "" %>>For Sale</option>
                            <option value="rent" <%= property.getListingType().equals("rent") ? "selected" : "" %>>For Rent</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- Property Details -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Property Details</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="bedrooms">Bedrooms</label>
                        <input type="number" class="form-control" id="bedrooms" name="bedrooms" 
                               value="<%= property.getBedrooms() %>">
                    </div>
                    
                    <div class="form-group">
                        <label for="bathrooms">Bathrooms</label>
                        <input type="number" class="form-control" id="bathrooms" name="bathrooms" 
                               value="<%= property.getBathrooms() %>">
                    </div>
                    
                    <div class="form-group">
                        <label for="area">Area (sq ft)</label>
                        <input type="number" class="form-control" id="area" name="area" 
                               value="<%= property.getArea() %>" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" name="description" rows="4"><%= property.getDescription() %></textarea>
                    </div>
                </div>
            </div>

            <!-- Location -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Location</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="address" 
                               value="<%= property.getAddress() %>" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="city">City</label>
                        <input type="text" class="form-control" id="city" name="city" 
                               value="<%= property.getCity() %>" required>
                    </div>
                    

                    
                    <div class="form-group">
                        <label for="zipCode">ZIP Code</label>
                        <input type="text" class="form-control" id="zipCode" name="zipCode" 
                               value="<%= property.getZipCode() %>" required>
                    </div>
                </div>
            </div>

            <!-- Price Information -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Price Information</h3>
                </div>
                <div class="card-body">
                    <div id="sellFields" class="<%= property.getListingType().equals("sell") ? "d-block" : "d-none" %>">
                        <div class="form-group">
                            <label for="sellingPrice">Selling Price (₹)</label>
                            <input type="number" step="0.01" class="form-control" id="sellingPrice" name="sellingPrice" 
                                   value="<%= property.getSellingPrice() %>" required>
                        </div>
                        
                        <div class="form-group">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="priceNegotiable" name="priceNegotiable" 
                                       <%= property.isPriceNegotiable() ? "checked" : "" %>>
                                <label class="form-check-label" for="priceNegotiable">Price Negotiable</label>
                            </div>
                        </div>
                    </div>

                    <div id="rentFields" class="<%= property.getListingType().equals("rent") ? "d-block" : "d-none" %>">
                        <div class="form-group">
                            <label for="monthlyRent">Monthly Rent (₹)</label>
                            <input type="number" step="0.01" class="form-control" id="monthlyRent" name="monthlyRent" 
                                   value="<%= property.getMonthlyRent() %>" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="securityDeposit">Security Deposit (₹)</label>
                            <input type="number" step="0.01" class="form-control" id="securityDeposit" name="securityDeposit" 
                                   value="<%= property.getSecurityDeposit() %>" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="leaseTerm">Lease Term</label>
                            <select class="form-control" id="leaseTerm" name="leaseTerm" required>
                                <option value="month" <%= "month".equals(property.getLeaseTerm()) ? "selected" : "" %>>Monthly</option>
                                <option value="6months" <%= "6months".equals(property.getLeaseTerm()) ? "selected" : "" %>>6 Months</option>
                                <option value="1year" <%= "1year".equals(property.getLeaseTerm()) ? "selected" : "" %>>1 Year</option>
                                <option value="2years" <%= "2years".equals(property.getLeaseTerm()) ? "selected" : "" %>>2 Years</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="availableDate">Available Date</label>
                            <input type="date" class="form-control" id="availableDate" name="availableDate" 
                                   value="<%= property.getAvailableDate() != null ? property.getAvailableDate() : "" %>" required>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Amenities -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Amenities</h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="hasParking" name="hasParking" 
                                       <%= property.isHasParking() ? "checked" : "" %>>
                                <label class="form-check-label" for="hasParking">Parking</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="hasSwimmingPool" name="hasSwimmingPool" 
                                       <%= property.isHasSwimmingPool() ? "checked" : "" %>>
                                <label class="form-check-label" for="hasSwimmingPool">Swimming Pool</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="hasGarden" name="hasGarden" 
                                       <%= property.isHasGarden() ? "checked" : "" %>>
                                <label class="form-check-label" for="hasGarden">Garden</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="hasSecurity" name="hasSecurity" 
                                       <%= property.isHasSecurity() ? "checked" : "" %>>
                                <label class="form-check-label" for="hasSecurity">Security</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="hasElevator" name="hasElevator" 
                                       <%= property.isHasElevator() ? "checked" : "" %>>
                                <label class="form-check-label" for="hasElevator">Elevator</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="hasAirConditioning" name="hasAirConditioning" 
                                       <%= property.isHasAirConditioning() ? "checked" : "" %>>
                                <label class="form-check-label" for="hasAirConditioning">Air Conditioning</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="hasGym" name="hasGym" 
                                       <%= property.isHasGym() ? "checked" : "" %>>
                                <label class="form-check-label" for="hasGym">Gym</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="hasBalcony" name="hasBalcony" 
                                       <%= property.isHasBalcony() ? "checked" : "" %>>
                                <label class="form-check-label" for="hasBalcony">Balcony</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Images -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Property Images</h3>
                </div>
                <div class="card-body">
                    <!-- Display existing images -->
                    <% if (property.getImageUrls() != null && !property.getImageUrls().isEmpty()) { %>
                        <div class="row mb-3">
                            <% for (String imageUrl : property.getImageUrls()) { %>
                                <div class="col-md-4 mb-3">
                                    <img src="<%= imageUrl %>" class="img-fluid rounded" alt="Property Image">
                                </div>
                            <% } %>
                        </div>
                    <% } %>

                    <!-- Image upload -->
                    <div class="form-group">
                        <label for="imageFile">Add New Image</label>
                        <input type="file" class="form-control" id="imageFile" name="imageFile" accept="image/*">
                    </div>
                </div>
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <% if (errorMessage != null) { %>
                    <div class="alert alert-danger mb-3" role="alert">
                        <%= errorMessage %>
                    </div>
                <% } %>
                <button type="submit" class="btn btn-primary btn-lg">Update Property</button>
                <a href="ViewProperty.jsp" class="btn btn-secondary btn-lg ml-2">Cancel</a>
            </div>
        </form>
    </div>

    <!-- Include your footer if you have one -->
    <script src="js/bootstrap.bundle.min.js"></script>
    <script>
        // Toggle between rent and sell fields
        document.getElementById('listingType').addEventListener('change', function() {
            const sellFields = document.getElementById('sellFields');
            const rentFields = document.getElementById('rentFields');
            
            if (this.value === 'sell') {
                sellFields.classList.remove('d-none');
                sellFields.classList.add('d-block');
                rentFields.classList.remove('d-block');
                rentFields.classList.add('d-none');
                // Make sell fields required and rent fields not required
                document.getElementById('sellingPrice').required = true;
                document.getElementById('monthlyRent').required = false;
                document.getElementById('securityDeposit').required = false;
                document.getElementById('leaseTerm').required = false;
                document.getElementById('availableDate').required = false;
            } else {
                sellFields.classList.remove('d-block');
                sellFields.classList.add('d-none');
                rentFields.classList.remove('d-none');
                rentFields.classList.add('d-block');
                // Make rent fields required and sell fields not required
                document.getElementById('sellingPrice').required = false;
                document.getElementById('monthlyRent').required = true;
                document.getElementById('securityDeposit').required = true;
                document.getElementById('leaseTerm').required = true;
                document.getElementById('availableDate').required = true;
            }
        });

        // Initialize the form state based on current listing type
        document.addEventListener('DOMContentLoaded', function() {
            const listingType = document.getElementById('listingType');
            if (listingType) {
                // Set default to 'sell' if not already set
                if (!listingType.value) {
                    listingType.value = 'sell';
                }
                // Trigger the change event to update the form
                listingType.dispatchEvent(new Event('change'));
            }
        });
    </script>
</body>
</html>


