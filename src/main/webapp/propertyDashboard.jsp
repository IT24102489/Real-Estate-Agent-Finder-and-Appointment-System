<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="dao.PropertyDAO" %>
<%@ page import="model.Property" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="robots" content="noindex,nofollow" />
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Prop Estate</title>
  <link href="css/bootstrap.min.css" rel="stylesheet" >
  <link href="css/font-awesome.min.css" rel="stylesheet" >
  <link href="css/globalProperty.css" rel="stylesheet">
  <link href="css/propertyDashboard.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans&display=swap" rel="stylesheet">
  <script src="js/bootstrap.bundle.min.js"></script>
  <style>
    /* Quick fix for the center header image height */
    .center_h {
      height:75vh !important; /* Override with !important */
    }

    .center_om {
      padding-top: 60px !important;
      padding-bottom: 60px !important;
      max-height: none !important;
    }

    /* Additional custom styles */
    .property-card {
      border-radius: 12px;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      overflow: hidden;
      height: 100%;
      box-shadow: var(--box-shadow);
    }

    .property-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
    }

    .property-card .card-img-top {
      height: 200px;
      object-fit: cover;
    }

    .stat-card {
      border-radius: var(--border-radius);
      background: linear-gradient(145deg, #ffffff, #f0f0f0);
      box-shadow: var(--box-shadow);
      transition: all 0.3s ease;
      height: 100%;
      padding: 1.5rem;
      border: none;
      position: relative;
      overflow: hidden;
    }

    .row g-4{
      color: #0a53be;
      background-color: #0c4128;
    }
    .py-5{
      background-color: rgba(195, 202, 214, 0.55);
    }
    .stat-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
    }

    .stat-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 5px;
      height: 100%;
    }

    .stat-card.primary::before {
      background-color: var(--secondary-color);
    }

    .stat-card.success::before {
      background-color: var(--success-color);
    }

    .stat-card.accent::before {
      background-color: var(--accent-color);
    }

    .stat-card .stat-icon {
      font-size: 2.5rem;
      position: absolute;
      top: 15px;
      right: 15px;
      opacity: 0.2;
    }

    .stat-card .stat-value {
      font-size: 2rem;
      font-weight: bold;
      margin-bottom: 0.5rem;
    }

    .stat-card .stat-label {
      text-transform: uppercase;
      font-size: 0.85rem;
      letter-spacing: 1px;
      opacity: 0.8;
    }

    .action-card {
      border-radius: 12px;
      background: rgb(255, 255, 255);
      transition: all 0.3s ease;
      min-height: 150px;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      overflow: hidden;
      position: relative;
    }

    .action-card:hover {
      background: #e0e6e9;
    }

    .action-card h3 {
      margin: 0;
      font-size: 1.75rem;
    }

    .action-card a {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      display: flex;
      align-items: center;
      justify-content: center;
      text-decoration: none;
      color: inherit;
    }

    .action-card.add-property {
      background-color: #2ecc71;
      color: rgb(255, 255, 255);
    }

    .action-card.manage-property {
      background-color: #3498db;
      color: white;
    }

    /* Add some spacing between sections */
    section {
      margin-bottom: 2rem;
    }

    .quick-actions {
      padding: 2rem 0;
      background-color: #f8f9fa;
    }
  </style>
</head>
<body>
<%
  PropertyDAO dao = new PropertyDAO();
  int propertyCount = dao.getAllProperties().size();
  int saleCount = 0;
  int rentCount = 0;
  for (Property p : dao.getAllProperties()) {
    if ("sell".equalsIgnoreCase(p.getListingType())) saleCount++;
    if ("rent".equalsIgnoreCase(p.getListingType())) rentCount++;
  }
%>
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

<!-- Home page header section - with fixed height -->
<section id="center" class="center_h">
  <div class="center_om">
    <div class="container-xl">
      <div class="row center_h1">
        <div class="col-md-12 text-center">
          <h6 class="text-white font_50">Property Management</h6>
          <p class="text-white mt-3 fs-5">
            Properties for buy / rent in your location. We have more<br>
            than 3200+ listings for you to choose
          </p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Property Stats Section -->
<section class="py-5">
  <div class="container-xl">
    <div class="row g-4">
      <!-- Total Properties Card -->
      <div class="col-md-4">
        <div class="stat-card primary">
          <i class="fa fa-building stat-icon"></i>
          <div class="stat-value"><%= propertyCount %></div>
          <div class="stat-label">Total Properties</div>
        </div>
      </div>

      <!-- For Sale Properties Card -->
      <div class="col-md-4">
        <div class="stat-card accent">
          <i class="fa fa-tag stat-icon"></i>
          <div class="stat-value"><%= saleCount %></div>
          <div class="stat-label">For Sale</div>
        </div>
      </div>

      <!-- For Rent Properties Card -->
      <div class="col-md-4">
        <div class="stat-card success">
          <i class="fa fa-key stat-icon"></i>
          <div class="stat-value"><%= rentCount %></div>
          <div class="stat-label">For Rent</div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Quick Actions Section -->
<section class="quick-actions">
  <div class="container-xl">
    <div class="row g-4">
      <div class="col-md-6">
        <div class="action-card add-property">
          <a href="AddProperty.jsp">
            <div>
              <i class="fa fa-plus-circle fa-3x mb-3"></i>
              <h3>Add Property</h3>
            </div>
          </a>
        </div>
      </div>
      <div class="col-md-6">
        <div class="action-card manage-property">
          <a href="ViewProperty.jsp">
            <div>
              <i class="fa fa-cogs fa-3x mb-3"></i>
              <h3>Manage Property</h3>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
  window.onscroll = function() {myFunction()};
  var navbar_sticky = document.getElementById("navbar_sticky");
  var sticky = navbar_sticky.offsetTop;
  var navbar_height = document.querySelector('.navbar').offsetHeight;
  function myFunction() {
    if (window.pageYOffset >= sticky + navbar_height) {
      navbar_sticky.classList.add("sticky")
      document.body.style.paddingTop = navbar_height + 'px';
    } else {
      navbar_sticky.classList.remove("sticky");
      document.body.style.paddingTop = '0'
    }
  }
</script>

</body>
</html>