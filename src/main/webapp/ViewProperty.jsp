<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@ page import="dao.PropertyDAO, model.Property, java.util.List" %>
<%
    PropertyDAO dao = new PropertyDAO();
    List<Property> properties = dao.getAllProperties();
    request.setAttribute("properties", properties);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="robots" content="noindex,nofollow" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Properties | Prop Estate</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/globalProperty.css" rel="stylesheet">
    <link href="css/ViewProperty.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans&display=swap" rel="stylesheet">
    <style>
        /* Modern Card Styles */
        .property-card {
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            margin-bottom: 30px;
            background: white;
        }

        .property-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }

        .card-img-top {
            height: 220px;
            object-fit: cover;
            width: 100%;
        }

        .card-body {
            padding: 20px;
        }

        .property-type {
            font-size: 14px;
            color: #6c757d;
            margin-bottom: 5px;
        }

        .card-title {
            font-size: 1.25rem;
            margin-bottom: 10px;
            font-weight: 600;
            color: #2c3e50;
        }

        .card-text {
            color: #7f8c8d;
            margin-bottom: 15px;
            font-size: 14px;
        }

        .property-price {
            font-size: 1.5rem;
            font-weight: 700;
            color: #3498db;
            margin-bottom: 15px;
        }

        .property-features {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
            font-size: 14px;
        }

        .property-features span {
            display: flex;
            align-items: center;
        }

        .property-features i {
            margin-right: 5px;
            color: #3498db;
        }

        .property-location {
            display: flex;
            align-items: center;
            color: #7f8c8d;
            font-size: 14px;
            margin-bottom: 15px;
        }

        .property-location i {
            margin-right: 5px;
        }

        .badge-listing-type {
            position: absolute;
            top: 15px;
            right: 15px;
            padding: 5px 10px;
            border-radius: 4px;
            font-weight: 600;
            font-size: 12px;
            text-transform: uppercase;
        }

        .for-sale {
            background-color: #e74c3c;
            color: white;
        }

        .for-rent {
            background-color: #2ecc71;
            color: white;
        }

        .amenities {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            margin-top: 10px;
        }

        .amenity-badge {
            background-color: #f8f9fa;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 12px;
            color: #495057;
        }

        .property-actions {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }

        /* Filter and search section */
        .filter-section {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 30px;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .search-form {
            margin-bottom: 20px;
            padding: 15px;
            background-color: #f8f9fa;
            border-radius: 5px;
        }
        .search-form input, .search-form select {
            margin-right: 10px;
            padding: 5px;
        }
        .property-card {
            border: 1px solid #ddd;
            padding: 15px;
            margin-bottom: 15px;
            border-radius: 5px;
            background-color: white;
        }
        .property-card h3 {
            margin-top: 0;
            color: #2c3e50;
        }
        .property-card p {
            margin: 5px 0;
        }
        .action-buttons {
            margin-top: 10px;
        }
        .action-buttons a {
            margin-right: 10px;
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 3px;
        }
        .edit-btn {
            background-color: #3498db;
            color: white;
        }
        .delete-btn {
            background-color: #e74c3c;
            color: white;
        }
        .add-btn {
            display: inline-block;
            margin-bottom: 20px;
            padding: 10px 20px;
            background-color: #2ecc71;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .empty-state {
            text-align: center;
            padding: 40px;
            background: #f8f9fa;
            border-radius: 10px;
            margin: 20px 0;
        }
        .empty-state i {
            font-size: 48px;
            color: #6c757d;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<!-- Include your header/navigation from AddProperty.jsp -->
<section id="header">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow_box" id="navbar_sticky">
        <div class="container-xl">
            <a class="text-black p-0 navbar-brand fw-bold logo_position_rel" href="propertyDashboard.jsp"> Estate <i class="fa fa-home col_blue me-1 logo_position_abs"></i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="col_red">Agent</span></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mb-0 nav_left">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="propertyDashboard.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="AddProperty.jsp">Property Listing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="ViewProperty.jsp">Property Detail</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</section>

<!-- Hero Section -->
<section class="hero-section-t">
    <div class="container-t">
        <div class="hero-content-t">
            <div class="bg-section-list-t">
                <div class="overlay-t">
                    <h1 class="display-4-t fw-bold-t">Property Details</h1>
                    <p class="detail-lead-t">Browse our collection of premium properties</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Success Messages -->
<c:if test="${param.updated == 'true'}">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        Property has been successfully updated!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</c:if>

<c:if test="${param.deleted == 'true'}">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        Property has been successfully deleted!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</c:if>

<c:if test="${param.added == 'true'}">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        Property has been successfully added!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</c:if>

<!-- Main Content -->
<div class="container py-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Available Properties</h1>

        <a href="AddProperty.jsp" class="add-btn">
            <i class="fa fa-plus"></i> Add New Property
        </a>
    </div>

    <c:choose>
        <c:when test="${empty properties}">
            <div class="empty-state">
                <i class="fa fa-home"></i>
                <h3>No Properties Found</h3>
                <p>There are no properties in the system yet. Add your first property to get started!</p>
                <a href="AddProperty.jsp" class="add-btn">Add Property</a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="row">
                <c:forEach items="${properties}" var="property">
                    <div class="col-md-6 col-lg-4">
                        <div class="property-card">
                            <c:if test="${not empty property.imageUrls}">
                                <img src="${property.imageUrls[0]}" class="card-img-top" alt="Property Image">
                            </c:if>
                            <div class="card-body">
                                <h5 class="card-title">${property.title}</h5>
                                <p class="property-type">
                                    ${property.propertyType} - ${property.listingType}
                                </p>
                                <p class="property-price">
                                    Rs.<c:choose>
                                        <c:when test="${property.listingType == 'sell'}">
                                            ${property.sellingPrice}
                                        </c:when>
                                        <c:otherwise>
                                            ${property.monthlyRent}/month
                                        </c:otherwise>
                                    </c:choose>
                                </p>
                                <p class="card-text">
                                    <i class="fa fa-bed"></i> ${property.bedrooms} |
                                    <i class="fa fa-bath"></i> ${property.bathrooms} |
                                    <i class="fa fa-arrows-alt"></i> ${property.area} sq ft
                                </p>
                                <p class="card-text">
                                    <i class="fa fa-map-marker"></i> ${property.address}, ${property.city}, ${property.state}
                                </p>
                                <p class="card-text">
                                    <i class="fa fa-info-circle"></i> ${property.description}
                                </p>
                                <div class="property-actions">
                                    <a href="updateProperty?id=${property.id}" class="btn btn-primary">
                                        <i class="fa fa-edit"></i> Update
                                    </a>
                                    <a href="deleteProperty?id=${property.id}" class="btn btn-danger" 
                                       onclick="return confirm('Are you sure you want to delete this property?')">
                                        <i class="fa fa-trash"></i> Delete
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<!-- Include your footer if you have one -->

<script src="js/bootstrap.bundle.min.js"></script>
<script>
    // You can add JavaScript for filtering/sorting if needed
</script>
</body>
</html>