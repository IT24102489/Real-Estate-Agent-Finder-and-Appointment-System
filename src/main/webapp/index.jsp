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
    <link href="css/global.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans&display=swap" rel="stylesheet">
    <script src="js/bootstrap.bundle.min.js"></script>

</head>
<body>
<%-- Check if the registrationStatus attribute is set --%>
<% String registrationStatus = (String) request.getAttribute("registrationStatus"); %>
<% if (registrationStatus != null) { %>
<script type="text/javascript">
    alert("<%= registrationStatus %>");
</script>
<% } %>
<section id="header">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow_box" id="navbar_sticky">
        <div class="container-xl">
            <a class="text-black p-0 navbar-brand fw-bold logo_position_rel" href="index.html"> Estate <i class="fa fa-home col_blue me-1 logo_position_abs"></i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="col_red">Agent</span></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mb-0 nav_left">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About </a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Property
                        </a>
                        <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="list.html"> Property</a></li>
                            <li><a class="dropdown-item border-0" href="detail.html"> Property Detail</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Agent
                        </a>
                        <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="agent.html"> Agent</a></li>
                            <li><a class="dropdown-item border-0" href="agent_detail.html"> Agent Detail</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Blog
                        </a>
                        <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="blog.html"> Blog</a></li>
                            <li><a class="dropdown-item border-0" href="blog_detail.html"> Blog Detail</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Pages
                        </a>
                        <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="pages/pricing.jsp"> Pricing</a></li>
                            <li><a class="dropdown-item" href="pages/register.jsp"> Sign Up</a></li>
                            <li><a class="dropdown-item" href="pages/login.jsp"> Sign In</a></li>
                            <li><a class="dropdown-item border-0" href="pages/contact.jsp"> Contact</a></li>
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
                    <% if (session != null && session.getAttribute("user") != null) { %>
                    <li class="nav-item">
                        <a class="nav-link button mx-3" href="${pageContext.request.contextPath}/profile"><i class="fa fa-user me-1"></i> Profile</a>
                    </li>
                    <% } %>
                    <li class="nav-item">
                        <a class="nav-link button mx-3" href="register.html"><i class="fa fa-user-plus me-1"></i> Add New Property</a>
                    </li>
                    <li class="nav-item">
                        <form action="${pageContext.request.contextPath}/logout" method="GET" class="d-inline">
                            <button type="submit" class="nav-link button mx-3"><i class="fa fa-sign-out me-1"></i> Log Out</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</section>

<section id="center" class="center_h">
    <div class="center_om">
        <div class="container-xl">
            <div class="row center_h1">
                <div class="col-md-12">
                    <h1 class="text-white font_50">Find Your Best Dream House <br> for <span class="col_blue">Rental, Buy & Sell...</span></h1>
                    <p class="text-white mt-3 fs-5">Properties for buy / rent in in your location. We have more <br> than 3200+ listings for you to choose</p>
                    <ul class="mb-0 mt-4">
                        <li class="d-inline-block"><a class="button" href="#"><i class="fa fa-home me-1 align-middle fs-5"></i> Buy a Property </a></li>
                        <li class="d-inline-block ms-2"><a class="button_1" href="#"><i class="fa fa-building me-1 fs-5 align-middle"></i> Rent a Property </a></li>
                    </ul>
                </div>
            </div>
            <div class="row center_h2 mt-4 rounded_10 bg-white p-4 px-3 mx-0">
                <div class="col-md-8">
                    <div class="center_h2l">
                        <div class="center_h2li row">
                            <div class="col-md-4">
                                <div class="center_h2lil">
                                    <input class="form-control border-0 rounded_10 bg-light" placeholder="Enter Keyword" type="text">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="center_h2lil">
                                    <select class="form-select border-0 rounded_10 bg-light" aria-label="Default select example">
                                        <option selected>Property Type</option>
                                        <option value="1">Buy Property</option>
                                        <option value="2">Rent Property</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="center_h2lil">
                                    <input class="form-control border-0 rounded_10 bg-light" placeholder="Enter Address" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="center_h2r">
                        <div class="center_h2ri row">
                            <div class="col-md-5">
                                <div class="center_h2ril">
                                    <input class="form-control border-0 rounded_10 bg-light" placeholder="Min Price" type="text">
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="center_h2ril">
                                    <input class="form-control border-0 rounded_10 bg-light" placeholder="Max Price" type="text">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="center_h2rir">
                                    <span><a class="button" href="#"><i class="fa fa-search  fs-5"></i>  </a></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="work_h" class="p_3">

    <div class="container-xl">
        <div class="row work_h1 text-center mb-4">
            <div class="col-md-12">
                <h2>How It Works</h2>
                <hr class="line mx-auto">
                <p class="mb-0">Follow these 4 steps to book your place</p>
            </div>
        </div>
        <div class="row work_h2">
            <div class="col-md-4">
                <div class="work_h2i p-4 rounded_10 shadow_box text-center">
                    <span class="d-inline-block bg_blue text-white rounded-circle fs-1"><i class="fa fa-map-signs"></i></span>
                    <h5 class="mt-3 mb-3">01. Search for Location</h5>
                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis et sem sed sollicitudin. Donec non odio…</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work_h2i p-4 rounded_10 shadow_box text-center">
                    <span class="d-inline-block bg-danger text-white rounded-circle fs-1"><i class="fa fa-home"></i></span>
                    <h5 class="mt-3 mb-3">02. Select Property Type</h5>
                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis et sem sed sollicitudin. Donec non odio…</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work_h2i p-4 rounded_10 shadow_box text-center">
                    <span class="d-inline-block bg-success text-white rounded-circle fs-1"><i class="fa fa-ticket"></i></span>
                    <h5 class="mt-3 mb-3">03. Book Your Property</h5>
                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis et sem sed sollicitudin. Donec non odio…</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="explore" class="pt-5 pb-5 bg_blue carousel_p">
    <div class="container-xl">
        <div class="row explore_1">
            <div class="col-md-4">
                <div class="explore_1l">
                    <h3 class="text-white">Explore by <br> Property Type</h3>
                    <hr class="line">
                    <p class="mb-0 text-white">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis et sem sed</p>
                </div>
            </div>
            <div class="col-md-8">
                <div class="explore_1r">
                    <div id="carouselExampleCaptions1" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleCaptions1" data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions1" data-bs-slide-to="1" aria-label="Slide 2" class="" aria-current="true"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="explore_1ri row">
                                    <div class="col-md-3 col-sm-6">
                                        <div class="explore_1ril bg-white rounded_10 p-4 px-3 text-center">
                                            <span class="font_50 lh-1 col_blue"><i class="fa fa-building"></i></span>
                                            <h5 class="mt-3 mb-3">Apartment</h5>
                                            <h6 class="mb-0 text-muted">32 Properties</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="explore_1ril bg-white rounded_10 p-4 px-3 text-center">
                                            <span class="font_50 lh-1 col_blue"><i class="fa fa-hotel"></i></span>
                                            <h5 class="mt-3 mb-3">Vilas</h5>
                                            <h6 class="mb-0 text-muted">34 Properties</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="explore_1ril bg-white rounded_10 p-4 px-3 text-center">
                                            <span class="font_50 lh-1 col_blue"><i class="fa fa-home"></i></span>
                                            <h5 class="mt-3 mb-3">Houses</h5>
                                            <h6 class="mb-0 text-muted">33 Properties</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="explore_1ril bg-white rounded_10 p-4 px-3 text-center">
                                            <span class="font_50 lh-1 col_blue"><i class="fa fa-building-o"></i></span>
                                            <h5 class="mt-3 mb-3">Offices</h5>
                                            <h6 class="mb-0 text-muted">24 Properties</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="explore_1ri row">
                                    <div class="col-md-3 col-sm-6">
                                        <div class="explore_1ril bg-white rounded_10 p-4 px-3 text-center">
                                            <span class="font_50 lh-1 col_blue"><i class="fa fa-building"></i></span>
                                            <h5 class="mt-3 mb-3">Apartment</h5>
                                            <h6 class="mb-0 text-muted">32 Properties</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="explore_1ril bg-white rounded_10 p-4 px-3 text-center">
                                            <span class="font_50 lh-1 col_blue"><i class="fa fa-hotel"></i></span>
                                            <h5 class="mt-3 mb-3">Vilas</h5>
                                            <h6 class="mb-0 text-muted">34 Properties</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="explore_1ril bg-white rounded_10 p-4 px-3 text-center">
                                            <span class="font_50 lh-1 col_blue"><i class="fa fa-home"></i></span>
                                            <h5 class="mt-3 mb-3">Houses</h5>
                                            <h6 class="mb-0 text-muted">33 Properties</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="explore_1ril bg-white rounded_10 p-4 px-3 text-center">
                                            <span class="font_50 lh-1 col_blue"><i class="fa fa-building-o"></i></span>
                                            <h5 class="mt-3 mb-3">Offices</h5>
                                            <h6 class="mb-0 text-muted">24 Properties</h6>
                                        </div>
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

<section id="sale" class="p_3 bg-light">
    <div class="container-xl">
        <div class="row work_h1 text-center mb-4">
            <div class="col-md-12">
                <h2>Featured Properties for Sales</h2>
                <hr class="line mx-auto">
                <p class="mb-0">Hand-Picked selection of quality places</p>
            </div>
        </div>
        <div class="row sale_1  mb-4">
            <div class="col-md-4">
                <div class="sale_1m">
                    <div class="sale_1m1 position-relative">
                        <div class="sale_1m1i">
                            <div class="grid clearfix">
                                <figure class="effect-jazz mb-0">
                                    <a href="#"><img src="img/2.jpg" class="w-100" alt="abc"></a>
                                </figure>
                            </div>
                        </div>
                        <div class="sale_1m1i1  position-absolute top-0 w-100 p-3">
                            <div class="sale_1m1i1i row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i1il">
                                        <ul class="mb-0">
                                            <li class="d-inline-block bg_blight text-white rounded_10 p-2 font_14 me-2">Featured</li>
                                            <li class="d-inline-block bg-danger  text-white rounded_10 p-2 font_14">New</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i1ir text-end">
                                        <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="#"><i class="fa fa-heart-o"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sale_1m1i2 position-absolute bottom-0 w-100 p-3">
                            <div class="sale_1m1i2 row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i2l">
                                        <h5 class="text-white mb-0 mt-4">$43,000</h5>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i2r text-end">
                                        <img src="webapp/img/8.jpg" class="w-100 rounded-circle" alt="abc">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sale_1m2 p-4 bg-white">
                        <h6 class="font_14 text-muted">
			 <span class="text-warning me-1">
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			 </span>
                            5.0 (50 Reviews)
                        </h6>
                        <h4 class="mt-3 mb-3"><a href="#">Minimalist and bright flat</a></h4>
                        <p class="font_14"><i class="fa fa-map-marker col_blue me-1"></i> 538-540 6th Aue, Old York, NZ 130338, USA</p>
                        <ul class="bg_blue_light p-3 font_14">
                            <li class="d-inline-block"><i class="fa fa-bed col_blue me-1"></i> 4 Beds</li>
                            <li class="d-inline-block mx-2"><i class="fa fa-home col_blue me-1"></i> 2 Baths</li>
                            <li class="d-inline-block"><i class="fa fa-building-o col_blue me-1"></i> 23000 Sqft</li>
                        </ul>
                        <h6 class="mb-0 mt-3 font_14"><span class="fw-bold">Listed on :</span> 21 Jan 2023 <span class="float-end"><span class="fw-bold">Category :</span> Flats</span></h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="sale_1m">
                    <div class="sale_1m1 position-relative">
                        <div class="sale_1m1i">
                            <div class="grid clearfix">
                                <figure class="effect-jazz mb-0">
                                    <a href="#"><img src="img/3.jpg" class="w-100" alt="abc"></a>
                                </figure>
                            </div>
                        </div>
                        <div class="sale_1m1i1  position-absolute top-0 w-100 p-3">
                            <div class="sale_1m1i1i row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i1il">
                                        <ul class="mb-0">
                                            <li class="d-inline-block bg_blight text-white rounded_10 p-2 font_14 me-2">Featured</li>
                                            <li class="d-inline-block bg-danger  text-white rounded_10 p-2 font_14">New</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i1ir text-end">
                                        <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="#"><i class="fa fa-heart-o"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sale_1m1i2 position-absolute bottom-0 w-100 p-3">
                            <div class="sale_1m1i2 row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i2l">
                                        <h5 class="text-white mb-0 mt-4">$48,000</h5>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i2r text-end">
                                        <img src="img/9.jpg" class="w-100 rounded-circle" alt="abc">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sale_1m2 p-4 bg-white">
                        <h6 class="font_14 text-muted">
			 <span class="text-warning me-1">
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star-half-o"></i>
			 </span>
                            4.5 (55 Reviews)
                        </h6>
                        <h4 class="mt-3 mb-3"><a href="#">Place perfect for nature</a></h4>
                        <p class="font_14"><i class="fa fa-map-marker col_blue me-1"></i> 538-540 6th Aue, Old York, NZ 130338, USA</p>
                        <ul class="bg_blue_light p-3 font_14">
                            <li class="d-inline-block"><i class="fa fa-bed col_blue me-1"></i> 4 Beds</li>
                            <li class="d-inline-block mx-2"><i class="fa fa-home col_blue me-1"></i> 2 Baths</li>
                            <li class="d-inline-block"><i class="fa fa-building-o col_blue me-1"></i> 27000 Sqft</li>
                        </ul>
                        <h6 class="mb-0 mt-3 font_14"><span class="fw-bold">Listed on :</span> 23 Jan 2023 <span class="float-end"><span class="fw-bold">Category :</span> Flats</span></h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="sale_1m">
                    <div class="sale_1m1 position-relative">
                        <div class="sale_1m1i">
                            <div class="grid clearfix">
                                <figure class="effect-jazz mb-0">
                                    <a href="#"><img src="img/4.jpg" class="w-100" alt="abc"></a>
                                </figure>
                            </div>
                        </div>
                        <div class="sale_1m1i1  position-absolute top-0 w-100 p-3">
                            <div class="sale_1m1i1i row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i1il">
                                        <ul class="mb-0">
                                            <li class="d-inline-block bg_blight text-white rounded_10 p-2 font_14 me-2">Featured</li>
                                            <li class="d-inline-block bg-danger  text-white rounded_10 p-2 font_14">New</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i1ir text-end">
                                        <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="#"><i class="fa fa-heart-o"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sale_1m1i2 position-absolute bottom-0 w-100 p-3">
                            <div class="sale_1m1i2 row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i2l">
                                        <h5 class="text-white mb-0 mt-4">$49,000</h5>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i2r text-end">
                                        <img src="img/10.jpg" class="w-100 rounded-circle" alt="abc">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sale_1m2 p-4 bg-white">
                        <h6 class="font_14 text-muted">
			 <span class="text-warning me-1">
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star-o"></i>
			 </span>
                            4.0 (60 Reviews)
                        </h6>
                        <h4 class="mt-3 mb-3"><a href="#">Summer House</a></h4>
                        <p class="font_14"><i class="fa fa-map-marker col_blue me-1"></i> 538-540 6th Aue, Old York, NZ 130338, USA</p>
                        <ul class="bg_blue_light p-3 font_14">
                            <li class="d-inline-block"><i class="fa fa-bed col_blue me-1"></i> 4 Beds</li>
                            <li class="d-inline-block mx-2"><i class="fa fa-home col_blue me-1"></i> 2 Baths</li>
                            <li class="d-inline-block"><i class="fa fa-building-o col_blue me-1"></i> 29000 Sqft</li>
                        </ul>
                        <h6 class="mb-0 mt-3 font_14"><span class="fw-bold">Listed on :</span> 29 Jan 2023 <span class="float-end"><span class="fw-bold">Category :</span> Flats</span></h6>
                    </div>
                </div>
            </div>
        </div>
        <div class="row sale_1">
            <div class="col-md-4">
                <div class="sale_1m">
                    <div class="sale_1m1 position-relative">
                        <div class="sale_1m1i">
                            <div class="grid clearfix">
                                <figure class="effect-jazz mb-0">
                                    <a href="#"><img src="img/5.jpg" class="w-100" alt="abc"></a>
                                </figure>
                            </div>
                        </div>
                        <div class="sale_1m1i1  position-absolute top-0 w-100 p-3">
                            <div class="sale_1m1i1i row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i1il">
                                        <ul class="mb-0">
                                            <li class="d-inline-block bg_blight text-white rounded_10 p-2 font_14 me-2">Featured</li>
                                            <li class="d-inline-block bg-danger  text-white rounded_10 p-2 font_14">New</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i1ir text-end">
                                        <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="#"><i class="fa fa-heart-o"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sale_1m1i2 position-absolute bottom-0 w-100 p-3">
                            <div class="sale_1m1i2 row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i2l">
                                        <h5 class="text-white mb-0 mt-4">$43,000</h5>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i2r text-end">
                                        <img src="img/11.jpg" class="w-100 rounded-circle" alt="abc">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sale_1m2 p-4 bg-white">
                        <h6 class="font_14 text-muted">
			 <span class="text-warning me-1">
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			 </span>
                            5.0 (50 Reviews)
                        </h6>
                        <h4 class="mt-3 mb-3"><a href="#">Minimalist and bright flat</a></h4>
                        <p class="font_14"><i class="fa fa-map-marker col_blue me-1"></i> 538-540 6th Aue, Old York, NZ 130338, USA</p>
                        <ul class="bg_blue_light p-3 font_14">
                            <li class="d-inline-block"><i class="fa fa-bed col_blue me-1"></i> 4 Beds</li>
                            <li class="d-inline-block mx-2"><i class="fa fa-home col_blue me-1"></i> 2 Baths</li>
                            <li class="d-inline-block"><i class="fa fa-building-o col_blue me-1"></i> 23000 Sqft</li>
                        </ul>
                        <h6 class="mb-0 mt-3 font_14"><span class="fw-bold">Listed on :</span> 21 Jan 2023 <span class="float-end"><span class="fw-bold">Category :</span> Flats</span></h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="sale_1m">
                    <div class="sale_1m1 position-relative">
                        <div class="sale_1m1i">
                            <div class="grid clearfix">
                                <figure class="effect-jazz mb-0">
                                    <a href="#"><img src="img/6.jpg" class="w-100" alt="abc"></a>
                                </figure>
                            </div>
                        </div>
                        <div class="sale_1m1i1  position-absolute top-0 w-100 p-3">
                            <div class="sale_1m1i1i row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i1il">
                                        <ul class="mb-0">
                                            <li class="d-inline-block bg_blight text-white rounded_10 p-2 font_14 me-2">Featured</li>
                                            <li class="d-inline-block bg-danger  text-white rounded_10 p-2 font_14">New</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i1ir text-end">
                                        <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="#"><i class="fa fa-heart-o"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sale_1m1i2 position-absolute bottom-0 w-100 p-3">
                            <div class="sale_1m1i2 row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i2l">
                                        <h5 class="text-white mb-0 mt-4">$48,000</h5>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i2r text-end">
                                        <img src="img/12.jpg" class="w-100 rounded-circle" alt="abc">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sale_1m2 p-4 bg-white">
                        <h6 class="font_14 text-muted">
			 <span class="text-warning me-1">
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star-half-o"></i>
			 </span>
                            4.5 (55 Reviews)
                        </h6>
                        <h4 class="mt-3 mb-3"><a href="#">Place perfect for nature</a></h4>
                        <p class="font_14"><i class="fa fa-map-marker col_blue me-1"></i> 538-540 6th Aue, Old York, NZ 130338, USA</p>
                        <ul class="bg_blue_light p-3 font_14">
                            <li class="d-inline-block"><i class="fa fa-bed col_blue me-1"></i> 4 Beds</li>
                            <li class="d-inline-block mx-2"><i class="fa fa-home col_blue me-1"></i> 2 Baths</li>
                            <li class="d-inline-block"><i class="fa fa-building-o col_blue me-1"></i> 27000 Sqft</li>
                        </ul>
                        <h6 class="mb-0 mt-3 font_14"><span class="fw-bold">Listed on :</span> 23 Jan 2023 <span class="float-end"><span class="fw-bold">Category :</span> Flats</span></h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="sale_1m">
                    <div class="sale_1m1 position-relative">
                        <div class="sale_1m1i">
                            <div class="grid clearfix">
                                <figure class="effect-jazz mb-0">
                                    <a href="#"><img src="img/7.jpg" class="w-100" alt="abc"></a>
                                </figure>
                            </div>
                        </div>
                        <div class="sale_1m1i1  position-absolute top-0 w-100 p-3">
                            <div class="sale_1m1i1i row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i1il">
                                        <ul class="mb-0">
                                            <li class="d-inline-block bg_blight text-white rounded_10 p-2 font_14 me-2">Featured</li>
                                            <li class="d-inline-block bg-danger  text-white rounded_10 p-2 font_14">New</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i1ir text-end">
                                        <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="#"><i class="fa fa-heart-o"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sale_1m1i2 position-absolute bottom-0 w-100 p-3">
                            <div class="sale_1m1i2 row">
                                <div class="col-md-9 col-9">
                                    <div class="sale_1m1i2l">
                                        <h5 class="text-white mb-0 mt-4">$49,000</h5>
                                    </div>
                                </div>
                                <div class="col-md-3 col-3">
                                    <div class="sale_1m1i2r text-end">
                                        <img src="img/13.jpg" class="w-100 rounded-circle" alt="abc">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sale_1m2 p-4 bg-white">
                        <h6 class="font_14 text-muted">
			 <span class="text-warning me-1">
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star-o"></i>
			 </span>
                            4.0 (60 Reviews)
                        </h6>
                        <h4 class="mt-3 mb-3"><a href="#">Summer House</a></h4>
                        <p class="font_14"><i class="fa fa-map-marker col_blue me-1"></i> 538-540 6th Aue, Old York, NZ 130338, USA</p>
                        <ul class="bg_blue_light p-3 font_14">
                            <li class="d-inline-block"><i class="fa fa-bed col_blue me-1"></i> 4 Beds</li>
                            <li class="d-inline-block mx-2"><i class="fa fa-home col_blue me-1"></i> 2 Baths</li>
                            <li class="d-inline-block"><i class="fa fa-building-o col_blue me-1"></i> 29000 Sqft</li>
                        </ul>
                        <h6 class="mb-0 mt-3 font_14"><span class="fw-bold">Listed on :</span> 29 Jan 2023 <span class="float-end"><span class="fw-bold">Category :</span> Flats</span></h6>
                    </div>
                </div>
            </div>
        </div>
        <div class="row sale_2 mt-4 text-center">
            <div class="col-md-12">
                <h6 class="mb-0"><a class="button" href="#">View All Properties </a></h6>
            </div>
        </div>
    </div>
</section>

<section id="list" class="p_3">
    <div class="container-xl">
        <div class="row work_h1 text-center mb-4">
            <div class="col-md-12">
                <h2>Cities With Listing</h2>
                <hr class="line mx-auto">
                <p class="mb-0">Destinations we love the most</p>
            </div>
        </div>
        <div class="row list_1">
            <div class="col-md-4">
                <div class="list_1i position-relative">
                    <div class="list_1i1">
                        <img src="img/14.jpg" class="w-100 rounded_10" alt="abc">
                    </div>
                    <div class="list_1i2 bg_back position-absolute top-0 px-3 rounded_10   h-100 w-100">
                        <h5><a class="text-white" href="#">United Kingdom</a></h5>
                        <h6 class="text-white mb-0">1330 Properties</h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="list_1i position-relative">
                    <div class="list_1i1">
                        <img src="img/15.jpg" class="w-100 rounded_10" alt="abc">
                    </div>
                    <div class="list_1i2 bg_back position-absolute top-0 px-3 rounded_10   h-100 w-100">
                        <h5><a class="text-white" href="#">USA</a></h5>
                        <h6 class="text-white mb-0">330 Properties</h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="list_1i position-relative">
                    <div class="list_1i1">
                        <img src="img/16.jpg" class="w-100 rounded_10" alt="abc">
                    </div>
                    <div class="list_1i2 bg_back position-absolute top-0 px-3 rounded_10   h-100 w-100">
                        <h5><a class="text-white" href="#">New York</a></h5>
                        <h6 class="text-white mb-0">380 Properties</h6>
                    </div>
                </div>
            </div>
        </div>
        <div class="row list_1 mt-4">
            <div class="col-md-4">
                <div class="list_1i position-relative">
                    <div class="list_1i1">
                        <img src="img/17.jpg" class="w-100 rounded_10" alt="abc">
                    </div>
                    <div class="list_1i2 bg_back position-absolute top-0 px-3 rounded_10   h-100 w-100">
                        <h5><a class="text-white" href="#">Singapore</a></h5>
                        <h6 class="text-white mb-0">120 Properties</h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="list_1i position-relative">
                    <div class="list_1i1">
                        <img src="img/18.jpg" class="w-100 rounded_10" alt="abc">
                    </div>
                    <div class="list_1i2 bg_back position-absolute top-0 px-3 rounded_10   h-100 w-100">
                        <h5><a class="text-white" href="#">Thailand</a></h5>
                        <h6 class="text-white mb-0">230 Properties</h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="list_1i position-relative">
                    <div class="list_1i1">
                        <img src="img/19.jpg" class="w-100 rounded_10" alt="abc">
                    </div>
                    <div class="list_1i2 bg_back position-absolute top-0 px-3 rounded_10   h-100 w-100">
                        <h5><a class="text-white" href="#">Argentina</a></h5>
                        <h6 class="text-white mb-0">410 Properties</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="spec">
    <div class="container-xl">
        <div class="row spec_1">
            <div class="col-md-3 col-sm-6">
                <div class="spec_1i text-center p-5 px-4 rounded_10">
                    <span class="font_60 col_red lh-1"><i class="fa fa-list-alt"></i></span>
                    <h1 class="text-white mt-3">55K</h1>
                    <h6 class="mb-0 text-white">Listings Added</h6>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="spec_1i text-center p-5 px-4 rounded_10">
                    <span class="font_60 col_red lh-1"><i class="fa fa-user-plus"></i></span>
                    <h1 class="text-white mt-3">3200+</h1>
                    <h6 class="mb-0 text-white">Agents Listed</h6>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="spec_1i text-center p-5 px-4 rounded_10">
                    <span class="font_60 col_red lh-1"><i class="fa fa-bullhorn"></i></span>
                    <h1 class="text-white mt-3">2200+</h1>
                    <h6 class="mb-0 text-white">Sales Completed</h6>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="spec_1i text-center p-5 px-4 rounded_10">
                    <span class="font_60 col_red lh-1"><i class="fa fa-user"></i></span>
                    <h1 class="text-white mt-3">5200+</h1>
                    <h6 class="mb-0 text-white">Users</h6>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="disc" class="p_3">
    <div class="container-xl">
        <div class="row disc_1">
            <div class="col-md-4">
                <div class="disc_1i position-relative">
                    <div class="disc_1i1">
                        <img src="img/20.jpg" class="w-100 rounded_10" alt="abc">
                    </div>
                    <div class="disc_1i2 position-absolute  rounded_10 shadow_box p-4">
                        <div class="disc_1i2i row">
                            <div class="col-md-9 col-9">
                                <div class="disc_1i2il">
                                    <h4 class="mb-0 mt-3">Buy a Property</h4>
                                </div>
                            </div>
                            <div class="col-md-3 col-3">
                                <div class="disc_1i2ir text-end">
                                    <span class="d-inline-block bg-danger text-white text-center rounded-circle fs-5"><i class="fa fa-long-arrow-right"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="disc_1i position-relative">
                    <div class="disc_1i1">
                        <img src="img/21.jpg" class="w-100 rounded_10" alt="abc">
                    </div>
                    <div class="disc_1i2 position-absolute  rounded_10 shadow_box p-4">
                        <div class="disc_1i2i row">
                            <div class="col-md-9 col-9">
                                <div class="disc_1i2il">
                                    <h4 class="mb-0 mt-3">Sell a Property</h4>
                                </div>
                            </div>
                            <div class="col-md-3 col-3">
                                <div class="disc_1i2ir text-end">
                                    <span class="d-inline-block bg-warning text-white text-center rounded-circle fs-5"><i class="fa fa-long-arrow-right"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="disc_1i position-relative">
                    <div class="disc_1i1">
                        <img src="img/22.jpg" class="w-100 rounded_10" alt="abc">
                    </div>
                    <div class="disc_1i2 position-absolute  rounded_10 shadow_box p-4">
                        <div class="disc_1i2i row">
                            <div class="col-md-9 col-9">
                                <div class="disc_1i2il">
                                    <h4 class="mb-0 mt-3">Rent a Property</h4>
                                </div>
                            </div>
                            <div class="col-md-3 col-3">
                                <div class="disc_1i2ir text-end">
                                    <span class="d-inline-block bg_blight text-white text-center rounded-circle fs-5"><i class="fa fa-long-arrow-right"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="testim" class="p_3 bg_blue carousel_p">
    <div class="container-xl">
        <div class="row work_h1 text-center mb-4">
            <div class="col-md-12">
                <h2 class="text-white">Testimonials</h2>
                <hr class="line mx-auto">
                <p class="mb-0 text-light">What our happy client says</p>
            </div>
        </div>
        <div class="testim_1 row">
            <div id="carouselExampleCaptions2" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions2" data-bs-slide-to="0" class="active" aria-label="Slide 1" aria-current="true"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions2" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="testim_1i row">
                            <div class="col-md-4">
                                <div class="testim_1i1 bg-white p-4 text-center rounded_10">
                                    <img src="img/8.jpg" alt="abc" class="rounded-circle">
                                    <p class="mt-3">Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...</p>
                                    <h6 class="fw-bold  lh-base mt-3 fs-5"> Eget Nulla <br> <span class="col_blue fs-6   fw-normal">User</span></h6>
                                    <span class="text-warning">
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star-o"></i>
		 </span>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="testim_1i1 bg-white p-4 text-center rounded_10">
                                    <img src="img/9.jpg" alt="abc" class="rounded-circle">
                                    <p class="mt-3">Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...</p>
                                    <h6 class="fw-bold  lh-base mt-3 fs-5"> Dolor Porta <br> <span class="col_blue fs-6   fw-normal">User</span></h6>
                                    <span class="text-warning">
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star-half-o"></i>
		 </span>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="testim_1i1 bg-white p-4 text-center rounded_10">
                                    <img src="img/10.jpg" alt="abc" class="rounded-circle">
                                    <p class="mt-3">Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...</p>
                                    <h6 class="fw-bold  lh-base mt-3 fs-5"> Quis Ipsum <br> <span class="col_blue fs-6   fw-normal">User</span></h6>
                                    <span class="text-warning">
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		 </span>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="testim_1i row">
                            <div class="col-md-4">
                                <div class="testim_1i1 bg-white p-4 text-center rounded_10">
                                    <img src="img/11.jpg" alt="abc" class="rounded-circle">
                                    <p class="mt-3">Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...</p>
                                    <h6 class="fw-bold  lh-base mt-3 fs-5"> Eget Nulla <br> <span class="col_blue fs-6   fw-normal">User</span></h6>
                                    <span class="text-warning">
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star-o"></i>
		 </span>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="testim_1i1 bg-white p-4 text-center rounded_10">
                                    <img src="img/12.jpg" alt="abc" class="rounded-circle">
                                    <p class="mt-3">Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...</p>
                                    <h6 class="fw-bold  lh-base mt-3 fs-5"> Dolor Porta <br> <span class="col_blue fs-6   fw-normal">User</span></h6>
                                    <span class="text-warning">
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star-half-o"></i>
		 </span>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="testim_1i1 bg-white p-4 text-center rounded_10">
                                    <img src="img/13.jpg" alt="abc" class="rounded-circle">
                                    <p class="mt-3">Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...Omnis velit quia. Perspiciatis et cupiditate. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint. Optio veniam...</p>
                                    <h6 class="fw-bold  lh-base mt-3 fs-5"> Quis Ipsum <br> <span class="col_blue fs-6   fw-normal">User</span></h6>
                                    <span class="text-warning">
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		  <i class="fa fa-star"></i>
		 </span>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="subs" class="p_3">
    <div class="container-xl">
        <div class="row subs_1 mb-4">
            <div class="col-md-8">
                <div class="subs_1l">
                    <h2>Pricing & Subscriptions</h2>
                    <hr class="line">
                    <p class="mb-0">Checkout our package, choose your package wisely</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="subs_1r text-end">
                    <ul class="nav nav-tabs mb-0 border-0">
                        <li class="nav-item d-inline-block me-2">
                            <a href="#home" data-bs-toggle="tab" aria-expanded="false" class="nav-link active">
                                <span class="d-md-block">Monthly</span>
                            </a>
                        </li>
                        <li class="nav-item d-inline-block">
                            <a href="#profile" data-bs-toggle="tab" aria-expanded="true" class="nav-link">
                                <span class="d-md-block">Yearly</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="subs_2 row">
            <div class="col-md-12">
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <div class="subs_2i row">
                            <div class="col-md-4">
                                <div class="subs_2i1 border_1 rounded_10 p-4">
                                    <h4 class="plan_blue">Standard</h4>
                                    <p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> 10 Listing Per Login</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> 110+ Users</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Enquiry On Listing</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> 24 Hrs Support</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Custom Review</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Impact Reporting</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Onboarding & Account</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> API Access</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Transaction Tracking</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Branding</h6>
                                    <h6 class="mb-0 mt-4"><a class="button text-center d-block" href="#">Get Quote </a></h6>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="subs_2i1 border_1 rounded_10 p-4">
                                    <h4 class="plan_orange">Professional</h4>
                                    <p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> 20 Listing Per Login</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> 110+ Users</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Enquiry On Listing</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> 24 Hrs Support</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Custom Review</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Impact Reporting</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Onboarding & Account</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> API Access</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Transaction Tracking</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Branding</h6>
                                    <h6 class="mb-0 mt-4"><a class="button text-center d-block" href="#">Get Quote </a></h6>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="subs_2i1 border_1 rounded_10 p-4">
                                    <h4 class="plan_green">Enterprise</h4>
                                    <p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> 40 Listing Per Login</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> 110+ Users</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Enquiry On Listing</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> 24 Hrs Support</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Custom Review</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Impact Reporting</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Onboarding & Account</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> API Access</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Transaction Tracking</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Branding</h6>
                                    <h6 class="mb-0 mt-4"><a class="button text-center d-block" href="#">Get Quote </a></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="profile">
                        <div class="subs_2i row">
                            <div class="col-md-4">
                                <div class="subs_2i1 border_1 rounded_10 p-4">
                                    <h4 class="plan_red">Popular</h4>
                                    <p class="mt-3">Omnis velit quia. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint.</p>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> 60 Listing Per Login</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> 110+ Users</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Enquiry On Listing</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> 24 Hrs Support</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Custom Review</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Impact Reporting</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Onboarding & Account</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> API Access</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Transaction Tracking</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 col_blue"></i> Branding</h6>
                                    <h6 class="mb-0 mt-4"><a class="button text-center d-block" href="#">Get Quote </a></h6>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="subs_2i1 border_1 rounded_10 p-4">
                                    <h4 class="plan_orange">Trending</h4>
                                    <p class="mt-3">Omnis velit quia. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint.</p>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> 70 Listing Per Login</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> 110+ Users</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Enquiry On Listing</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> 24 Hrs Support</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Custom Review</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Impact Reporting</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Onboarding & Account</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> API Access</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Transaction Tracking</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-warning"></i> Branding</h6>
                                    <h6 class="mb-0 mt-4"><a class="button text-center d-block" href="#">Get Quote </a></h6>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="subs_2i1 border_1 rounded_10 p-4">
                                    <h4 class="plan_blue">New Plan</h4>
                                    <p class="mt-3">Omnis velit quia. Voluptatum beatae asperiores dolor magnam fuga. Sed fuga est harum quo nesciunt sint.</p>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> 90 Listing Per Login</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> 110+ Users</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Enquiry On Listing</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> 24 Hrs Support</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Custom Review</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Impact Reporting</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Onboarding & Account</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> API Access</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Transaction Tracking</h6>
                                    <h6 class="mt-3"><i class="fa fa-check-square-o me-1 text-success"></i> Branding</h6>
                                    <h6 class="mb-0 mt-4"><a class="button text-center d-block" href="#">Get Quote </a></h6>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<section id="faq" class="p_3 bg-light">
    <div class="container-xl">
        <div class="faq_1 row">
            <div class="col-md-4">
                <div class="faq_1l">
                    <img src="img/23.jpg" class="w-100 rounded_10" alt="abc">
                </div>
            </div>
            <div class="col-md-8">
                <div class="faq_1r">
                    <h2>Frequently Asked Questions</h2>
                    <hr class="line">
                    <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia <br> consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt</p>
                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <i class="fa fa-check-circle me-2"></i>  1. What are the costs to buy a house?
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
                                <div class="accordion-body">
                                    <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <i class="fa fa-check-circle me-2"></i> 2. What are the steps to sell a house?
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    <i class="fa fa-check-circle me-2"></i> 3. Do you have loan consultants?
                                </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFour">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    <i class="fa fa-check-circle me-2"></i> 4. When will the project be completed?
                                </button>
                            </h2>
                            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFive">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    <i class="fa fa-check-circle me-2"></i> 5.What are the steps to rent a house?
                                </button>
                            </h2>
                            <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="reg" class="pt-5 pb-5 bg_blue">
    <div class="container-xl">
        <div class="reg_1 row">
            <div class="col-md-9">
                <div class="reg_1l">
                    <h2 class="text-white">Become a Real Estate Agent</h2>
                    <hr class="line">
                    <p class="text-light mb-0">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia <br> consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="reg_1r text-end mt-4">
                    <h6 class="mb-0"><a class="button" href="register.html">Register Now</a></h6>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="blog" class="p_3">
    <div class="container-xl">
        <div class="row work_h1 text-center mb-4">
            <div class="col-md-12">
                <h2>Latest Blog</h2>
                <hr class="line mx-auto">
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do <br> eiusmodtempor incididunt</p>
            </div>
        </div>
        <div class="blog_1 row">
            <div class="col-md-4">
                <div class="blog_1i">
                    <div class="grid clearfix">
                        <figure class="effect-jazz mb-0">
                            <a href="blog_detail.html"><img src="img/5.jpg" class="w-100" alt="abc"></a>
                        </figure>
                    </div>
                    <h6 class="d-inline-block bg_blight text-white rounded_10 p-2 px-3 mt-3">Property</h6>
                    <h4 class="mt-2"><a href="blog_detail.html">How to achieve financial independence</a></h4>
                    <p class="mt-3 mb-0">There are many variations of passages of lorem ipsum available.</p>
                    <hr>
                    <div class="blog_1i1 row">
                        <div class="col-md-9 col-9">
                            <div class="blog_1i1l">
                                <span><img src="img/8.jpg" alt="abc" class="rounded-circle me-2 float-start"></span>
                                <h6 class="mb-0 fw-bold  lh-base"> Eget Nulla <br> <span class="text-muted font_14 fw-normal">Posted on : 13 Jan 2023</span></h6>
                            </div>
                        </div>
                        <div class="col-md-3 col-3">
                            <div class="blog_1i1r">
                                <span><a class="bg_blight d-inline-block text-white text-center rounded-circle fs-5" href="blog_detail.html"><i class="fa fa-long-arrow-right"></i></a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="blog_1i">
                    <div class="grid clearfix">
                        <figure class="effect-jazz mb-0">
                            <a href="blog_detail.html"><img src="img/6.jpg" class="w-100" alt="abc"></a>
                        </figure>
                    </div>
                    <h6 class="d-inline-block bg_blight text-white rounded_10 p-2 px-3 mt-3">Property</h6>
                    <h4 class="mt-2"><a href="blog_detail.html">The most popular cities for homebuyers</a></h4>
                    <p class="mt-3 mb-0">There are many variations of passages of lorem ipsum available.</p>
                    <hr>
                    <div class="blog_1i1 row">
                        <div class="col-md-9 col-9">
                            <div class="blog_1i1l">
                                <span><img src="img/9.jpg" alt="abc" class="rounded-circle me-2 float-start"></span>
                                <h6 class="mb-0 fw-bold  lh-base"> Quis Sem <br> <span class="text-muted font_14 fw-normal">Posted on : 14 Jan 2023</span></h6>
                            </div>
                        </div>
                        <div class="col-md-3 col-3">
                            <div class="blog_1i1r">
                                <span><a class="bg_blight d-inline-block text-white text-center rounded-circle fs-5" href="blog_detail.html"><i class="fa fa-long-arrow-right"></i></a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="blog_1i">
                    <div class="grid clearfix">
                        <figure class="effect-jazz mb-0">
                            <a href="blog_detail.html"><img src="img/7.jpg" class="w-100" alt="abc"></a>
                        </figure>
                    </div>
                    <h6 class="d-inline-block bg_blight text-white rounded_10 p-2 px-3 mt-3">Property</h6>
                    <h4 class="mt-2"><a href="blog_detail.html">Learn how real estate really shapes our future</a></h4>
                    <p class="mt-3 mb-0">There are many variations of passages of lorem ipsum available.</p>
                    <hr>
                    <div class="blog_1i1 row">
                        <div class="col-md-9 col-9">
                            <div class="blog_1i1l">
                                <span><img src="img/10.jpg" alt="abc" class="rounded-circle me-2 float-start"></span>
                                <h6 class="mb-0 fw-bold  lh-base"> Dolor Amet <br> <span class="text-muted font_14 fw-normal">Posted on : 16 Jan 2023</span></h6>
                            </div>
                        </div>
                        <div class="col-md-3 col-3">
                            <div class="blog_1i1r">
                                <span><a class="bg_blight d-inline-block text-white text-center rounded-circle fs-5" href="blog_detail.html"><i class="fa fa-long-arrow-right"></i></a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="reg_o" class="pt-5 pb-5 bg-light">
    <div class="container-xl">
        <div class="reg_o1 row">
            <div class="col-md-6">
                <div class="reg_o1l">
                    <h2>Sign Up for Our Newsletter</h2>
                    <hr class="line">
                    <p class="mb-0">Lorem ipsum dolor sit amet, consecte tur cing elit. Suspe <br> ndisse suscipit sagittis</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="reg_o1r text-end mt-4">
                    <div class="input-group bg-white p-3 rounded_10">
                        <input type="text" class="form-control border-0 bg-transparent rounded-0" placeholder="Enter Email">
                        <span class="input-group-btn">
					<button class="btn btn-primary  border-0  p-2 px-3 bg_blight rounded_10" type="button">
						Subscribe </button>
				</span>
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
                        <h4 class="text-white mb-4">Get Our App</h4>
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