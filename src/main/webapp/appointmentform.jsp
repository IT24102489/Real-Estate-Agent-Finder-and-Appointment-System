<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="robots" content="noindex,nofollow" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Appointment Form | PrimeHomes</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <link href="css/font-awesome.min.css" rel="stylesheet" >
    <link href="css/global.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans&display=swap" rel="stylesheet">
    <script src="js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f7f9fc;
            font-family: 'Helvetica Neue', Arial, sans-serif;
        }

        .minimal-appointment-form {
            max-width: 600px;
            margin: 4rem auto;
            padding: 2rem;
            background: #ffffff;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.06);
            border-radius: 10px;
            transition: box-shadow 0.3s ease;
        }

        .minimal-appointment-form h2 {
            font-weight: 500;
            color: #2c3e50;
            margin-bottom: 1.5rem;
            text-align: center;
            font-size: 1.75rem;
        }

        .minimal-form {
            display: grid;
            gap: 1.25rem;
        }

        .minimal-form-group {
            display: flex;
            flex-direction: column;
        }

        .minimal-form-group label {
            margin-bottom: 0.5rem;
            color: #555;
            font-size: 0.95rem;
        }

        .minimal-form-group input,
        .minimal-form-group select,
        .minimal-form-group textarea {
            padding: 0.75rem;
            border: 1px solid #ccd6dd;
            font-size: 1rem;
            border-radius: 6px;
            background: #fefefe;
            transition: border-color 0.2s ease, box-shadow 0.2s ease;
        }

        .minimal-form-group input:focus,
        .minimal-form-group select:focus,
        .minimal-form-group textarea:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.15);
        }

        .minimal-form-group.full-width {
            grid-column: span 2;
        }

        .button-wrapper {
            grid-column: span 2;
            display: flex;
            justify-content: center;
        }

        .minimal-submit-btn {
            padding: 0.75rem 1.5rem;
            background: #e74c3c;
            color: #fff;
            border: none;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 6px;
            transition: background 0.3s ease, box-shadow 0.3s ease;
            min-width: 160px;
        }

        .minimal-submit-btn:hover {
            background: #c0392b;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        @media (min-width: 768px) {
            .minimal-form {
                grid-template-columns: 1fr 1fr;
            }

            .minimal-form-group.full-width {
                grid-column: span 2;
            }
        }
    </style>
</head>
<body>

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
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Property
                        </a>
                        <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="list.jsp">Property</a></li>
                            <li><a class="dropdown-item border-0" href="detail.jsp">Property Detail</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Agent
                        </a>
                        <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="agent.jsp">Agent</a></li>
                            <li><a class="dropdown-item border-0" href="agent_detail.jsp">Agent Detail</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="navbar-nav mb-0 ms-auto">
                    <li class="nav-item">
                        <a class="nav-link button mx-3 bg-success" href="appointmentlist.jsp"><i class="fa fa-calendar me-1"></i> Booked Appointment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link button mx-3" href="register.jsp"><i class="fa fa-user-plus me-1"></i> Sign in</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</section>

<div class="minimal-appointment-form">
    <h2>Schedule a Consultation</h2>
    <form class="minimal-form" method="post" action="submit_appointment">
        <div class="minimal-form-group">
            <label for="first-name">First Name</label>
            <input type="text" id="first-name" name="firstName" required autocomplete="given-name" />
        </div>

        <div class="minimal-form-group">
            <label for="last-name">Last Name</label>
            <input type="text" id="last-name" name="lastName" required autocomplete="family-name" />
        </div>

        <div class="minimal-form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required autocomplete="email" />
        </div>

        <div class="minimal-form-group">
            <label for="phone">Phone</label>
            <input type="tel" id="phone" name="phone" required autocomplete="tel" />
        </div>

        <div class="minimal-form-group">
            <label for="date">Preferred Date</label>
            <input type="date" id="date" name="date" required min="<%= java.time.LocalDate.now() %>" />
        </div>

        <div class="minimal-form-group">
            <label for="time">Preferred Time</label>
            <select id="time" name="time" required>
                <option value="">Select time</option>
                <option value="9-10">9–10 AM</option>
                <option value="10-11">10–11 AM</option>
                <option value="11-12">11–12 PM</option>
                <option value="1-2">1–2 PM</option>
                <option value="2-3">2–3 PM</option>
                <option value="3-4">3–4 PM</option>
            </select>
        </div>

        <div class="minimal-form-group">
            <label for="service">Service Needed</label>
            <select id="service" name="service" required>
                <option value="">Select service</option>
                <option value="buy">Buying</option>
                <option value="sell">Selling</option>
                <option value="rent">Renting</option>
                <option value="valuation">Valuation</option>
            </select>
        </div>

        <div class="minimal-form-group">
            <label for="property-type">Property Type</label>
            <select id="property-type" name="propertyType">
                <option value="">Any type</option>
                <option value="house">House</option>
                <option value="apartment">Apartment</option>
                <option value="land">Land</option>
                <option value="commercial">Commercial</option>
            </select>
        </div>

        <div class="minimal-form-group full-width">
            <label for="notes">Additional Notes</label>
            <textarea id="notes" name="notes" rows="3" placeholder="Please provide any additional information about your needs..."></textarea>
        </div>

        <div class="button-wrapper">
            <button type="submit" class="minimal-submit-btn">Book Appointment</button>
        </div>
    </form>
</div>

<section id="footer">
    <div class="footer_m bg_back p_3">
        <div class="container-xl">
            <div class="footer_1 row">
                <div class="col-md-4">
                    <div class="footer_1l">
                        <h4 class="text-white mb-4">Get Our App</h4>
                        <p class="text-light">Download the app and book your property</p>
                        <h6 class="text-light"><i class="fa fa-phone-square col_blue me-1"></i> Office: +123 4567 890</h6>
                        <h6 class="text-light mt-3"><i class="fa fa-envelope col_blue me-1"></i> info@gmail.com</h6>
                        <h6 class="text-light mt-3 mb-0"><i class="fa fa-map col_blue me-1"></i> SLIIT,Malabe</h6>
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
                                    <h4 class="text-white mb-4">Explore</h4>
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
                                    <h4 class="text-white mb-4">Categories</h4>
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
                                    <h4 class="text-white mb-4">Locations</h4>
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
                                    <h4 class="text-white mb-4">Quick Links</h4>
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
                    <p class="mb-0 text-light">© 2025 Real Estate Agent Finder And Appointment System . All Rights Reserved | Design by <a class="text-warning fw-bold" href="http://www.templateonweb.com">TemplateOnWeb</a></p>
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