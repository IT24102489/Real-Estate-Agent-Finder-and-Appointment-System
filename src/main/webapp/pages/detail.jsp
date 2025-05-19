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
	<link href="css/list.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans&display=swap" rel="stylesheet">
	<script src="js/bootstrap.bundle.min.js"></script>

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
          <a class="nav-link " aria-current="page" href="index.jsp">Home</a>
        </li>
		 
		<li class="nav-item">
          <a class="nav-link" href="about.jsp">About </a>
        </li>
		
		<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Property
          </a>
          <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="list.jsp"> Property</a></li>
            <li><a class="dropdown-item border-0" href="detail.html"> Property Detail</a></li>
          </ul>
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
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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

<section id="center" class="center_dt">
   <div class="center_om bg_backo">
     <div class="container-xl">
  <div class="row center_o1 m-auto text-center">
     <div class="col-md-12">
	     <h2 class="text-white">Property Detail</h2>
		  <h6 class="text-white mb-0 mt-3"><a class="text-white" href="#">Home</a> <span class="mx-2 text-warning">/</span> Property Detail </h6>
	 </div>
  </div>
 </div>
   </div>   
</section>

<section id="detail" class="p_3 bg-light">
   <div class="container-xl">
	 <div class="detail_1 row">
	  <div class="col-md-8">
	   <div class="detail_1l">
	     <div class="detail_1l1">
		   <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item">
      <img src="img/27.jpg" class="d-block w-100 rounded_10" alt="abc">
      
    </div>
    <div class="carousel-item">
      <img src="img/28.jpg" class="d-block w-100 rounded_10" alt="abc">
      
    </div>
    <div class="carousel-item active">
      <img src="img/29.jpg" class="d-block w-100 rounded_10" alt="abc">
      
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
		 </div>
		 <div class="detail_1l2 p-4 rounded_10 bg-white mt-4">
		  <h4>Overview</h4>
		  <ul class="mb-0 mt-3">
		   <li class="d-inline-block text-center me-5"><i class="fa fa-bed col_blue"></i> <br> 3 Beds</li>
		   <li class="d-inline-block text-center me-5"><i class="fa fa-home col_blue"></i> <br> 2 Baths</li>
		   <li class="d-inline-block text-center me-5"><i class="fa fa-building-o col_blue"></i> <br> 32000 Sqft</li>
		   <li class="d-inline-block text-center me-5"><i class="fa fa-car col_blue"></i> <br> 3 Garages</li>
		   <li class="d-inline-block text-center"><i class="fa fa-calendar col_blue"></i> <br> Year Built: 2008</li>
		  </ul>
		 </div> 
		 <div class="detail_1l2 p-4 rounded_10 bg-white mt-4">
		  <h4>Description</h4>
		  <p class="mt-3">Good road frontage on a paved county road with utilities make it an amazing setting for your dream country getaway! If you like views, you must see this property!,</p>
		  <p class="mb-0">This property is mostly wooded and sits high on a hilltop overlooking the Mohawk River Valley. Located right in the heart of Upstate NYs Amish farm Country, this land is certified organic making it extremely rare! Good road frontage on a paved county road with utilities make it an amazing setting for your dream country getaway! If you like views, you must see this property!This property is mostly wooded and sits high on a hilltop overlooking the Mohawk River Valley. Located right in the heart of Upstate NYs Amish farm Country, this land is certified organic making it extremely rare! Good road frontage on a paved county road with utilities make it an amazing setting for your dream country getaway! If you like views, you must see this property!</p>
		 </div>
		 <div class="detail_1l2 p-4 rounded_10 bg-white mt-4">
		  <h4>Property Address</h4>
		  <ul class="mt-3">
		   <li class="d-inline-block  me-4"> <span class="fw-bold">Address :</span> Lorem Park</li>
		   <li class="d-inline-block  me-4"> <span class="fw-bold">City :</span> Dolor City</li>
		   <li class="d-inline-block"> <span class="fw-bold">State/County :</span> New Jersey State</li>
		  </ul>
		  <ul class="mt-3 mb-0">
		   <li class="d-inline-block  me-4"> <span class="fw-bold">Country :</span> United States</li>
		   <li class="d-inline-block  me-4"> <span class="fw-bold">Zip :</span> 12345</li>
		   <li class="d-inline-block"> <span class="fw-bold">Area :</span> Ipsum</li>
		  </ul>
		 </div>
		 <div class="detail_1l2 p-4 rounded_10 bg-white mt-4">
		  <h4>Property Details</h4>
		  <div class="detail_1l2i row mt-3">
		   <div class="col-md-4">
		    <div class="detail_1l2il">
			  <h6> <span class="fw-bold">Property Id :</span> 22972</h6>
			  <h6 class="mt-3"> <span class="fw-bold">Price :</span> $ 840,000</h6>
			  <h6 class="mt-3"> <span class="fw-bold">Price Info :</span> $ 1,268 /sq ft</h6>
			  <h6 class="mt-3"> <span class="fw-bold">Property Size :</span> 160 ft2</h6>
			  <h6 class="mt-3 mb-0"> <span class="fw-bold">Property Lot Size :</span>  1,300 ft2</h6>
			</div>
		   </div>
		   <div class="col-md-4">
		    <div class="detail_1l2il">
			  <h6> <span class="fw-bold">Rooms :</span> 12</h6>
			  <h6 class="mt-3"> <span class="fw-bold">Bedrooms :</span> 6</h6>
			  <h6 class="mt-3"> <span class="fw-bold">Bathrooms :</span> 4</h6>
			  <h6 class="mt-3"> <span class="fw-bold">Custom Id :</span> 66</h6>
			  <h6 class="mt-3 mb-0"> <span class="fw-bold">Garages :</span>  3</h6>
			</div>
		   </div>
		   <div class="col-md-4">
		    <div class="detail_1l2il">
			  <h6> <span class="fw-bold">Year Built :</span> 2008</h6>
			  <h6 class="mt-3"> <span class="fw-bold">Garage Size :</span> 3 cars</h6>
			  <h6 class="mt-3"> <span class="fw-bold">Available From :</span> 16-12-2023</h6>
			  <h6 class="mt-3"> <span class="fw-bold">Structure Type :</span> Brick</h6>
			  <h6 class="mt-3 mb-0"> <span class="fw-bold">Floors No :</span>  2</h6>
			</div>
		   </div>
		  </div>
		 </div>
		 <div class="detail_1l2 p-4 rounded_10 bg-white mt-4">
		  <h4>Amenities</h4>
		  <div class="detail_1l2i row mt-3">
		   <div class="col-md-4">
		    <div class="detail_1l2il">
			  <h6><i class="fa fa-arrow-right col_blue me-1"></i> Air Conditioning</h6>
		       <h6 class="mt-3"><i class="fa fa-arrow-right col_blue me-1"></i> Swimming Pools</h6>
			   <h6 class="mt-3"><i class="fa fa-arrow-right col_blue me-1"></i> Sporting Facilities</h6>
			   <h6 class="mt-3"><i class="fa fa-arrow-right col_blue me-1"></i> Gym</h6>
			   <h6 class="mt-3 mb-0"><i class="fa fa-arrow-right col_blue me-1"></i> Clubhouse</h6>
			</div>
		   </div>
		   <div class="col-md-4">
		    <div class="detail_1l2il">
			  <h6><i class="fa fa-arrow-right col_blue me-1"></i> Landscaped Gardens</h6>
		       <h6 class="mt-3"><i class="fa fa-arrow-right col_blue me-1"></i> Wide-Open Spaces</h6>
			   <h6 class="mt-3"><i class="fa fa-arrow-right col_blue me-1"></i> Parks</h6>
			   <h6 class="mt-3"><i class="fa fa-arrow-right col_blue me-1"></i> Package Lockers</h6>
			   <h6 class="mt-3 mb-0"><i class="fa fa-arrow-right col_blue me-1"></i> Spa</h6>
			</div>
		   </div>
		   <div class="col-md-4">
		    <div class="detail_1l2il">
			  <h6><i class="fa fa-arrow-right col_blue me-1"></i> Surveillance Cameras</h6>
		       <h6 class="mt-3 mb-0"><i class="fa fa-arrow-right col_blue me-1"></i> Billiards Table</h6>
			</div>
		   </div>
		  </div>
		 </div>
		 <div class="detail_1l2 p-4 rounded_10 bg-white mt-4">
		  <h4>Documents</h4>
		   <h6 class="mt-3"><i class="fa fa-image me-1 col_red"></i> Semper Park.jpg</h6>
		   <h6 class="mt-3 mb-0"><i class="fa fa-file me-1 col_red"></i> Energetic-Certificate-PDF7</h6>
		 </div>
		 <div class="detail_1l3 p-4 rounded_10 bg-white mt-4">
		  <h4>Video</h4>
		   <div class="detail_1l3i mt-3 position-relative">
		     <div class="detail_1l3i1">
		       <img src="img/29.jpg" class="w-100 rounded_10" alt="abc">
		   </div>
		   <div class="detail_1l3i2 text-center position-absolute top-0 w-100">
		    <span><a  class="font_60" href="#"><i class="fa fa-play-circle"></i></a></span>
		   </div>
		   </div>
		 </div>
		 <div class="detail_1l3 p-4 rounded_10 bg-white mt-4">
		  <h4 class="mb-3">Map</h4>
		   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114964.53925916665!2d-80.29949920266738!3d25.782390733064336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88d9b0a20ec8c111%3A0xff96f271ddad4f65!2sMiami%2C+FL%2C+USA!5e0!3m2!1sen!2sin!4v1530774403788" height="400" style="border:0; width:100%;" allowfullscreen=""></iframe>
		 </div>
		 <div class="detail_1l2 p-4 rounded_10 bg-white mt-4">
		  <h4>Floor Plan</h4>
		  <ul class="mt-3">
		   <li class="d-inline-block text-center me-5"><i class="fa fa-bed col_blue"></i> <br> 3 Beds</li>
		   <li class="d-inline-block text-center me-5"><i class="fa fa-home col_blue"></i> <br> 2 Baths</li>
		   <li class="d-inline-block text-center me-5"><i class="fa fa-building-o col_blue"></i> <br> 32000 Sqft</li>
		   <li class="d-inline-block text-center me-5"><i class="fa fa-car col_blue"></i> <br> 3 Garages</li>
		   <li class="d-inline-block text-center"><i class="fa fa-calendar col_blue"></i> <br> Year Built: 2008</li>
		  </ul>
		  <p class="mb-0">This property is mostly wooded and sits high on a hilltop overlooking the Mohawk River Valley. Located right in the heart of Upstate NYs Amish farm Country, this land is certified organic making it extremely rare! Good road frontage on a paved county road with utilities make it an amazing setting for your dream country getaway! If you like views, you must see this property!,</p>
		 </div>
		 <div class="detail_1l4 p-4 rounded_10 bg-white mt-4">
		  <h4 class="mb-3">Reviews (2)</h4>
		   <div class="detail_1l4i border_1 p-3">
		    <div class="detail_1l4i1 row">
			 <div class="col-md-6 col-sm-6">
			  <div class="detail_1l4i1l">
			    <span><img src="img/8.jpg" alt="abc" class="rounded_10 me-3 float-start"></span>
		   <h6 class="mb-0 fw-bold  lh-base"> Eget Nulla <br> <span class="text-muted font_14 fw-normal">03 Jan 2023</span></h6>
			  </div>
			 </div>
			 <div class="col-md-6 col-sm-6">
			  <div class="detail_1l4i1r text-end mt-3">
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
			  </div>
			 </div>
			</div>
			<div class="detail_1l4i1 row">
			 <div class="col-md-12">
			  <p class="mb-0 bg-light p-3 mt-3">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s</p>
			 </div>
			</div>
		   </div>
		   <div class="detail_1l4i border_1 p-3 mt-4">
		    <div class="detail_1l4i1 row">
			 <div class="col-md-6 col-sm-6">
			  <div class="detail_1l4i1l">
			    <span><img src="img/9.jpg" alt="abc" class="rounded_10 me-3 float-start"></span>
		   <h6 class="mb-0 fw-bold  lh-base"> Lorem Amet <br> <span class="text-muted font_14 fw-normal">04 Jan 2023</span></h6>
			  </div>
			 </div>
			 <div class="col-md-6 col-sm-6">
			  <div class="detail_1l4i1r text-end mt-3">
			    <h6 class="font_14 text-muted">
			 <span class="text-warning me-1">
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star-o"></i>
			 </span>
			 4.0 (30 Reviews)
			 </h6>
			  </div>
			 </div>
			</div>
			<div class="detail_1l4i1 row">
			 <div class="col-md-12">
			  <p class="mb-0 bg-light p-3 mt-3">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s</p>
			 </div>
			</div>
		   </div>
		   <h4 class="mb-3 mt-4">Property Reviews</h4>
		    <div class="detail_1l4b">
			 <div class="detail_1l4b1 row">
			  <div class="col-md-6">
			   <div class="detail_1l4b1l">
			    <input class="form-control rounded_10 border-0 bg-light" placeholder="Your Name" type="text">
			   </div>
			  </div>
			  <div class="col-md-6">
			   <div class="detail_1l4b1l">
			    <input class="form-control rounded_10 border-0 bg-light" placeholder="Your Email" type="text">
			   </div>
			  </div>
			 </div>
			 <div class="detail_1l4b1 row mt-4">
			  <div class="col-md-12">
			   <div class="detail_1l4b1l">
			    <textarea class="form-control rounded_10 border-0 bg-light form_text" placeholder="Enter Your Comments"></textarea>
				<h6 class="mb-0 mt-4"><a class="button d-block text-center" href="#">Submit Review</a></h6>
			   </div>
			  </div>
			  
			 </div>
			</div> 
		 </div>
	   </div>
	  </div>
	  <div class="col-md-4">
	   <div class="detail_1r">
	     <div class="detail_1r1 bg-white rounded_10 p-4 text-center">
		   <ul>
		  <li class="d-inline-block"><a class="button p-3 font_14" href="#"><i class="fa fa-info me-1"></i> Request Info </a></li>
		   <li class="d-inline-block ms-2"><a class="button_1 p-3 font_14" href="#"><i class="fa fa-video-camera me-1"></i> Schedule a Visit </a></li>
		</ul>
		<div class="detail_1r1i text-start bg-light p-3 rounded_10 detail_1l4i1l">
			    <span><img src="img/8.jpg" alt="abc" class="rounded-circle me-3 float-start"></span>
		   <h6 class="mb-0 fw-bold  lh-base"> Eget Nulla <br> <span class="text-muted font_14 fw-normal">Company Agent</span></h6>
			  </div>
	   <input class="form-control rounded_10 border-0 bg-light mt-3" placeholder="Your Name" type="text">
	   <input class="form-control rounded_10 border-0 bg-light mt-3" placeholder="Your Email" type="text">
	   <input class="form-control rounded_10 border-0 bg-light mt-3" placeholder="Your Phone" type="text">
	   <textarea class="form-control rounded_10 border-0 bg-light form_text mt-3" placeholder="Yes I'am Interested"></textarea>
	   <h6 class="mb-4 mt-4"><a class="button d-block text-center" href="#">Send Email</a></h6>
	   <ul class="mb-0">
		  <li class="d-inline-block"><a class="button_1 font_14" href="#"><i class="fa fa-phone me-1"></i> Call Us </a></li>
		   <li class="d-inline-block ms-2"><a class="button_1 font_14" href="#"><i class="fa fa-whatsapp me-1"></i> Whatsapp </a></li>
		</ul>
		 </div>
		 <div class="detail_1r1 bg-white rounded_10 p-4 mt-4">
		  <h5>Listing Owner Details</h5>
		  <hr>
		  <div class="detail_1r1i  detail_1l4i1l">
			    <span><img src="img/9.jpg" alt="abc" class="rounded-circle me-3 float-start"></span>
		   <h6 class="mb-0 fw-bold  lh-base"> Eget Nulla <br> <span class="text-muted font_14 fw-normal"> <span class="text-warning me-1">
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			  <i class="fa fa-star"></i>
			 </span>
			 5.0 (50 Reviews)</span></h6>
			  </div>
		 <h6 class="mt-4 fw-bold">No of Listings <span class="pull-right fw-normal">04</span></h6><hr>
		  <h6 class="fw-bold">No of Bookings <span class="pull-right fw-normal">220</span></h6><hr>
		   <h6 class="fw-bold">Memeber on <span class="pull-right fw-normal">16 Jan 2023</span></h6><hr>
		    <h6 class="fw-bold mb-0">Verification <span class="pull-right fw-normal text-success">Verified</span></h6>
		 </div>
		 <div class="detail_1r2 bg-white rounded_10 p-4 mt-4">
		  <h5>Share Property</h5>
		 <hr>
		 <ul class="mb-0  tags">
	    <li class="d-inline-block"><a href="#"><i class="fa fa-facebook"></i></a></li>
		<li class="d-inline-block"><a href="#"><i class="fa fa-instagram"></i></a></li>
		<li class="d-inline-block"><a href="#"><i class="fa fa-behance"></i></a></li>
		<li class="d-inline-block"><a href="#"><i class="fa fa-twitter"></i></a></li>
		<li class="d-inline-block"><a href="#"><i class="fa fa-pinterest"></i></a></li>
		<li class="d-inline-block"><a href="#"><i class="fa fa-linkedin"></i></a></li>
	   </ul>
		 </div>
		 <div class="detail_1r2 bg-white rounded_10 p-4 mt-4">
		  <h5>Mortarage Calculator</h5>
		 <hr>
		 <h6 class="font_14 fw-bold">Total Amount ($)</h6>
		 <input class="form-control rounded_10 border-0 bg-light mt-2" placeholder="15000000" type="text">
		 <h6 class="font_14 fw-bold mt-3">Down Payment ($)</h6>
		 <input class="form-control rounded_10 border-0 bg-light mt-2" placeholder="100000" type="text">
		 <h6 class="font_14 fw-bold mt-3">Loan Terms (Years)</h6>
		 <input class="form-control rounded_10 border-0 bg-light mt-2" placeholder="3" type="text">
		  <h6 class="font_14 fw-bold mt-3">Interest Rate (%)</h6>
		 <input class="form-control rounded_10 border-0 bg-light mt-2" placeholder="14" type="text">
		 <h6 class="mb-4 mt-4"><a class="button d-block text-center" href="#">Send Email</a></h6>
		 <h6 class="mb-0 text-center fw-bold"><a class="col_red" href="#">Reset Form</a></h6>
		 </div>
		 <div class="detail_1r3  mt-4">
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
				    <img src="img/8.jpg" class="w-100 rounded-circle" alt="abc">
				 </div>
				</div>
			   </div>
			  </div>
			</div>
		 </div>
	   </div>
	  </div>
	 </div>
	 <div class="row work_h1  mb-4 mt-4">
		 <div class="col-md-12">
		   <h2>Similar Listings</h2>
		   <hr class="line">
		   <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmodtempor incididunt</p>
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