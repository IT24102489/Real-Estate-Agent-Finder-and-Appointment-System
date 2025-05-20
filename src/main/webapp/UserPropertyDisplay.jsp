<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 5/20/2025
  Time: 7:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@ page import="dao.PropertyDAO, model.Property, java.util.List" %>
<%
    // Fetch property data just like in ViewProperty.jsp
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
    <link href="css/ViewProperty.css" rel="stylesheet"> <%-- Reusing ViewProperty.css for card styling --%>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans&display=swap" rel="stylesheet">

    <section id="header">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow_box" id="navbar_sticky">
            <div class="container-xl">
                <a class="text-black p-0 navbar-brand fw-bold logo_position_rel" href="index.jsp"> Estate <i class="fa fa-home col_blue me-1 logo_position_abs"></i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="col_red">Agent</span></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mb-0 nav_left">
                        <li class="nav-item">
                            <a class="nav-link " aria-current="page" href="UserDashboard.jsp">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link active" href="#" >Property</a>

                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Agent
                            </a>
                            <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="agent.jsp"> Agent</a></li>
                                <li><a class="dropdown-item border-0" href="agent_detail.jsp"> Agent Detail</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Blog
                            </a>
                            <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="blog.jsp"> Blog</a></li>
                                <li><a class="dropdown-item border-0" href="blog_detail.jsp"> Blog Detail</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Pages
                            </a>
                            <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="pricing.jsp"> Pricing</a></li>
                                <li><a class="dropdown-item" href="register.jsp"> Sign Up</a></li>
                                <li><a class="dropdown-item" href="login.jsp"> Sign In</a></li>
                                <li><a class="dropdown-item border-0" href="contact.jsp"> Contact</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle dropdown_search nav_hide" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-search"></i>
                            </a>
                            <ul class="dropdown-menu drop_2 p-3" aria-labelledby="navbarDropdown">
                                <li>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search Here">
                                        <span class="input-group-btn">
					<button class="btn btn-primary bg_yell rounded-0 p-2 px-3 border-0" type="button">
						<i class="fa fa-search"></i> </button>
				</span>
                                    </div>
                                </li>
                            </ul>
                        </li>

                    </ul>
                    <ul class="navbar-nav mb-0 ms-auto">
                        <li class="nav-item">
                            <a class="nav-link button mx-3" href="register.jsp"><i class="fa fa-user-plus me-1"></i> Add New Property  </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </section>
    <style>
        /* Modern Card Styles - copied from ViewProperty.jsp */
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

        /* Removed agent-specific action button styles */

        /* General layout styles copied from ViewProperty.jsp */
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
        /* Removed agent-specific search/filter form styles */
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
        /* Removed agent-specific action buttons container styles */
        /* Removed agent-specific action button styles */
        /* Removed agent-specific add button styles */
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



<!-- Hero Section - Copied and adapted from ViewProperty.jsp -->
<section class="hero-section-t">
    <div class="container-t">
        <div class="hero-content-t">
            <div class="bg-section-list-t">
                <div class="overlay-t">
                    <h1 class="display-4-t fw-bold-t">Available Properties</h1>
                    <p class="detail-lead-t">Browse our collection of premium properties</p>
                </div>
            </div>
        </div>
    </div>
</section>

<%-- Removed success message display as it was for agent actions --%>

<!-- Main Content -->
<div class="container py-5">
    <%-- Removed Add New Property button --%>

    <c:choose>
        <c:when test="${empty properties}">
            <div class="empty-state">
                <i class="fa fa-home"></i>
                <h3>No Properties Found</h3>
                <p>There are no properties available at the moment.</p>
                <%-- Removed Add Property button link --%>
            </div>
        </c:when>
        <c:otherwise>
            <div class="row">
                <%-- Loop through properties and display in cards --%>
                <c:forEach items="${properties}" var="property">
                    <div class="col-md-6 col-lg-4">
                        <div class="property-card">
                            <c:if test="${not empty property.imageUrls}">
                                <%-- Assuming imageUrls[0] is the path to the image --%>
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
                                <%-- Removed agent-specific action buttons --%>
                                <div class="mt-3">
                                    <a href="#" class="btn btn-primary">Add Appointment</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<%-- You might want to include a different footer for regular users --%>

<script src="js/bootstrap.bundle.min.js"></script>
<script>
    // Add any user-specific JavaScript here if needed
</script>
</body>
</html>
