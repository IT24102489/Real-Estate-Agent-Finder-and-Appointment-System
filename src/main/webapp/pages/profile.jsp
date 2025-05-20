<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="robots" content="noindex,nofollow" />
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Prop Estate - Profile</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/global.css" rel="stylesheet">
  <link href="css/contact.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
  <script src="../js/bootstrap.bundle.min.js"></script>
  <style>
    /* General Styling */
    body {
      font-family: 'Plus Jakarta Sans', sans-serif;
      background-color: #f8f9fa;
      color: #333;
    }

    /* Enhanced Header */
    #navbar_sticky {
      box-shadow: 0 2px 15px rgba(0,0,0,0.1);
      transition: all 0.3s ease;
    }

    .sticky {
      animation: slideDown 0.5s;
    }

    @keyframes slideDown {
      from {transform: translateY(-100%);}
      to {transform: translateY(0);}
    }

    .nav-link {
      font-weight: 500;
      transition: all 0.3s ease;
    }

    .nav-link:hover {
      color: #ff6347 !important;
    }

    /* Enhanced Banner */
    .center_h {
      background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('../img/banner.jpg');
      background-size: cover;
      background-position: center;
      padding: 80px 0;
      position: relative;
    }

    .center_h:before {
      content: "";
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 5px;
      background: linear-gradient(90deg, #ff6347, #ffc107);
    }

    .center_h1 h2 {
      font-size: 42px;
      font-weight: 700;
      text-shadow: 1px 1px 3px rgba(0,0,0,0.5);
    }

    /* Enhanced Profile Section */
    #profile {
      padding: 70px 0;
    }

    .login_1m {
      border-radius: 10px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      background: #fff !important;
      border-top: 5px solid #ff6347;
      transition: all 0.3s ease;
    }

    .login_1m:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 35px rgba(0,0,0,0.15);
    }

    .login_1m h2 {
      color: #333;
      font-weight: 700;
      margin-bottom: 30px;
      position: relative;
      padding-bottom: 15px;
    }

    .login_1m h2:after {
      content: "";
      position: absolute;
      bottom: 0;
      left: 50%;
      transform: translateX(-50%);
      width: 80px;
      height: 3px;
      background: linear-gradient(90deg, #ff6347, #ffc107);
    }

    .profile-avatar {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      margin: 0 auto 20px;
      border: 5px solid #eee;
      overflow: hidden;
      box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    }

    .profile-avatar img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .data-label {
      background-color: #f8f9fa;
      padding: 10px 15px;
      border-radius: 5px;
      font-weight: 600;
      color: #555;
      margin-bottom: 10px;
      font-size: 14px;
      border-left: 3px solid #ff6347;
    }

    .data-value {
      background-color: #fff;
      padding: 12px 15px;
      border-radius: 5px;
      border: 1px solid #e9ecef;
      margin-bottom: 20px;
      font-size: 16px;
      transition: all 0.3s ease;
    }

    .data-value:hover {
      border-color: #ff6347;
      box-shadow: 0 3px 10px rgba(0,0,0,0.05);
    }

    .button_2 {
      background: linear-gradient(90deg, #ff6347, #ff7f50);
      color: #fff !important;
      border-radius: 50px;
      padding: 12px 30px;
      font-weight: 600;
      transition: all 0.3s ease;
      text-decoration: none;
      display: inline-block;
      border: none;
      box-shadow: 0 5px 15px rgba(255, 99, 71, 0.3);
    }

    .button_2:hover {
      background: linear-gradient(90deg, #ff7f50, #ff6347);
      transform: translateY(-3px);
      box-shadow: 0 8px 20px rgba(255, 99, 71, 0.4);
    }

    .edit-profile-btn {
      background: transparent;
      color: #555 !important;
      border: 2px solid #ddd;
      border-radius: 50px;
      padding: 10px 25px;
      font-weight: 500;
      transition: all 0.3s ease;
      margin-right: 10px;
    }

    .edit-profile-btn:hover {
      border-color: #ff6347;
      color: #ff6347 !important;
    }

    /* Enhanced Footer */
    #footer {
      margin-top: 30px;
    }

    .bg_back {
      background: #222831;
      position: relative;
    }

    .bg_back:before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 3px;
      background: linear-gradient(90deg, #ff6347, #ffc107);
    }

    .footer_1l h4 {
      font-weight: 700;
      position: relative;
      padding-bottom: 15px;
      margin-bottom: 25px;
    }

    .footer_1l h4:after {
      content: "";
      position: absolute;
      bottom: 0;
      left: 0;
      width: 50px;
      height: 3px;
      background: #ff6347;
    }

    .footer_1ri1 h4 {
      font-weight: 700;
      position: relative;
      padding-bottom: 15px;
      margin-bottom: 25px;
    }

    .footer_1ri1 h4:after {
      content: "";
      position: absolute;
      bottom: 0;
      left: 0;
      width: 50px;
      height: 3px;
      background: #ff6347;
    }

    .footer_1l ul li {
      margin-right: 10px;
    }

    .footer_1l ul li a {
      width: 40px;
      height: 40px;
      display: block;
      background: rgba(255,255,255,0.1);
      color: #fff;
      text-align: center;
      line-height: 40px;
      border-radius: 5px;
      transition: all 0.3s ease;
    }

    .footer_1l ul li a:hover {
      background: #ff6347;
      transform: translateY(-3px);
    }

    /* Responsive Profile */
    @media (max-width: 767px) {
      .login_1m {
        width: 90% !important;
      }

      .center_h1 h2 {
        font-size: 32px;
      }

      #profile {
        padding: 40px 0;
      }
    }
  </style>
</head>
<body>
<section id="header">
  <nav class="navbar navbar-expand-md navbar-light bg-white shadow_box" id="navbar_sticky">
    <div class="container-xl">
      <a class="text-black p-0 navbar-brand fw-bold logo_position_rel" href="../index.jsp"> Estate <i class="fa fa-home col_blue me-1 logo_position_abs"></i> <span class="col_red">Agent</span></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mb-0 nav_left">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="../index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../about.html">About</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Property
            </a>
            <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="../list.html">Property</a></li>
              <li><a class="dropdown-item border-0" href="../detail.html">Property Detail</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Agent
            </a>
            <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="../agent.html">Agent</a></li>
              <li><a class="dropdown-item border-0" href="../agent_detail.html">Agent Detail</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Blog
            </a>
            <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="../blog.html">Blog</a></li>
              <li><a class="dropdown-item border-0" href="../blog_detail.html">Blog Detail</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Pages
            </a>
            <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="pricing.jsp">Pricing</a></li>
              <li><a class="dropdown-item" href="register.jsp">Sign Up</a></li>
              <li><a class="dropdown-item" href="login.jsp">Sign In</a></li>
              <li><a class="dropdown-item border-0" href="contact.jsp">Contact</a></li>
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
                      <i class="fa fa-search"></i>
                    </button>
                  </span>
                </div>
              </li>
            </ul>
          </li>
        </ul>
        <ul class="navbar-nav mb-0 ms-auto">
          <% if (session != null && session.getAttribute("user") != null) { %>
          <li class="nav-item">
            <a class="nav-link button mx-3" href="${pageContext.request.contextPath}/profile"><i class="fa fa-user me-1"></i> Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link button mx-3" href="../register.html"><i class="fa fa-user-plus me-1"></i> Add New Property</a>
          </li>
          <li class="nav-item">
            <form action="${pageContext.request.contextPath}/logout" method="GET" class="d-inline">
              <button type="submit" class="nav-link button mx-3"><i class="fa fa-sign-out me-1"></i> Log Out</button>
            </form>
          </li>
          <% } else { %>
          <li class="nav-item">
            <a class="nav-link button mx-3" href="register.jsp"><i class="fa fa-user-plus me-1"></i> Sign Up</a>
          </li>
          <li class="nav-item">
            <a class="nav-link button mx-3" href="login.jsp"><i class="fa fa-sign-in me-1"></i> Sign In</a>
          </li>
          <% } %>
        </ul>
      </div>
    </div>
  </nav>
</section>

<section id="center" class="center_h">
  <div class="center_om">
    <div class="container-xl">
      <div class="row center_h1 m-auto text-center">
        <div class="col-md-12">
          <h2 class="text-white">Profile</h2>
          <h6 class="text-white mb-0 mt-3"><a class="text-white" href="../index.jsp">Home</a> <span class="mx-2 text-warning">/</span> Profile</h6>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="profile" class="p_3">
  <div class="container-xl">
    <div class="row login_1">
      <div class="col-md-12">
        <div class="login_1m p-5 w-50 mx-auto bg-light">
          <h2 class="text-center">User Profile</h2>

<%--          <!-- Added Profile Avatar -->--%>
<%--          <div class="profile-avatar mb-4 text-center">--%>
<%--            <img src="/api/placeholder/120/120" alt="User Profile">--%>
<%--          </div>--%>

          <div class="profile-info">
            <div class="data-label">Full Name</div>
            <div class="data-value">${user.name}</div>

            <div class="data-label">Email Address</div>
            <div class="data-value">${user.email}</div>

            <div class="data-label">Username</div>
            <div class="data-value">${user.username}</div>

            <div class="data-label">Role</div>
            <div class="data-value">${user.role}</div>

            <!-- Added Account Info Section -->
            <div class="data-label">Account Status</div>
            <div class="data-value">
              <span class="badge bg-success p-2">Active</span>
            </div>

            <div class="data-label">Member Since</div>
            <div class="data-value">May 2023</div>
          </div>

          <div class="text-center mt-4">
            <a class="button_2" href="${pageContext.request.contextPath}/index.jsp"><i class="fa fa-home me-1"></i> Back to Home</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="footer">
  <div class="footer_m bg_back p_3">
    <div class="container-xl">
      <div class="footer_1 row">
        <div class="col-md-4">
          <div class="footer_1l">
            <h4 class="text-white">Get Our App</h4>
            <p class="text-light">Download the app and book your property</p>
            <h6 class="text-light"><i class="fa fa-phone-square col_blue me-1"></i> Office: +123 4567 890</h6>
            <h6 class="text-light mt-3"><i class="fa fa-envelope col_blue me-1"></i> info@gmail.com</h6>
            <h6 class="text-light mt-3 mb-0"><i class="fa fa-map col_blue me-1"></i> 36 Nora Dreek, India</h6>
            <h4 class="mt-4 text-white">Connect With Us</h4>
            <ul class="mb-0 mt-3">
              <li class="d-inline-block"><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li class="d-inline-block"><a href="#"><i class="fa fa-instagram"></i></a></li>
              <li class="d-inline-block"><a href="#"><i class="fa fa-behance"></i></a></li>
              <li class="d-inline-block"><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li class="d-inline-block"><a href="#"><i class="fa fa-pinterest"></i></a></li>
              <li class="d-inline-block"><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-8">
          <div class="footer_1r">
            <div class="footer_1ri row">
              <div class="col-md-3">
                <div class="footer_1ri1">
                  <h4 class="text-white">Explore</h4>
                  <div class="row footer_3ism">
                    <h6 class="col-md-12 col-6"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Listings</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Register</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Blogs</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Login</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Agency</a></h6>
                    <h6 class="col-md-12 col-6 mt-2 mb-0"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Property</a></h6>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="footer_1ri1">
                  <h4 class="text-white">Categories</h4>
                  <div class="row footer_3ism">
                    <h6 class="col-md-12 col-6"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Apartments</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Home</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Office</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Villas</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Flat</a></h6>
                    <h6 class="col-md-12 col-6 mt-2 mb-0"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Others</a></h6>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="footer_1ri1">
                  <h4 class="text-white">Locations</h4>
                  <div class="row footer_3ism">
                    <h6 class="col-md-12 col-6"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> United States</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Canada</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> India</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Australia</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> UK</a></h6>
                    <h6 class="col-md-12 col-6 mt-2 mb-0"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> UAE</a></h6>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="footer_1ri1">
                  <h4 class="text-white">Quick Links</h4>
                  <div class="row footer_3ism">
                    <h6 class="col-md-12 col-6"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> About</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Faq</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Our Terms</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Privacy Policy</a></h6>
                    <h6 class="col-md-12 col-6 mt-2"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Gallery</a></h6>
                    <h6 class="col-md-12 col-6 mt-2 mb-0"><a class="text-light" href="#"><i class="fa fa-chevron-right me-1 font_12 text-warning"></i> Contact</a></h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="footer_b" class="bg_dark pt-3 pb-3">
  <div class="container-xl">
    <div class="row footer_b1">
      <div class="col-md-12">
        <div class="footer_b1l text-center">
          <p class="mb-0 text-light">© 2013 Your Website Name. All Rights Reserved | Design by <a class="text-warning fw-bold" href="http://www.templateonweb.com">TemplateOnWeb</a></p>
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
      navbar_sticky.classList.add("sticky");
      document.body.style.paddingTop = navbar_height + 'px';
    } else {
      navbar_sticky.classList.remove("sticky");
      document.body.style.paddingTop = '0';
    }
  }
</script>