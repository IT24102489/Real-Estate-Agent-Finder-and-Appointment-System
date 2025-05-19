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
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Property
          </a>
          <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="list.jsp"> Property</a></li>
            <li><a class="dropdown-item border-0" href="detail.jsp"> Property Detail</a></li>
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
          <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Pages
          </a>
          <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
		   <li><a class="dropdown-item" href="pricing.html"> Pricing</a></li>
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

<section id="center" class="center_price">
   <div class="center_om bg_backo">
     <div class="container-xl">
  <div class="row center_o1 m-auto text-center">
     <div class="col-md-12">
	         <h2 class="text-white">Pricing Plan</h2>
		  <h6 class="text-white mb-0 mt-3"><a class="text-white" href="#">Home</a> <span class="mx-2 text-warning">/</span> Pricing Plan </h6>
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
		 <h4 class="plan_red">Standard</h4>
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
		 <h4 class="plan_green">Professional</h4>
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
		 <h4 class="plan_orange">Enterprise</h4>
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
		 <h4 class="plan_blue">Popular</h4>
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
		 <h4 class="plan_red">New Plan</h4>
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