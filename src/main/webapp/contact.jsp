<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<link href="css/contact.css" rel="stylesheet">
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
						<a class="nav-link button mx-3" href="register.jsp"><i class="fa fa-user-plus me-1"></i> sign in  </a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</section>

<section id="center" class="center_cont">
	<div class="center_om bg_backo">
		<div class="container-xl">
			<div class="row center_o1 m-auto text-center">
				<div class="col-md-12">
					<h2 class="text-white">Contact Us</h2>
					<h6 class="text-white mb-0 mt-3"><a class="text-white" href="#">Home</a> <span class="mx-2 text-warning">/</span> Contact Us </h6>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="contact" class="p_3 bg-light">
	<div class="container-xl">
		<div class="contact_1 row">
			<div class="col-md-6">
				<div class="contact_1l">
					<div class="contact_1l1 bg-white p-4">
						<h4>Talk to Member of Sales Team</h4>
						<p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis ligula eu lectus vulputate porttitor sed feugiat nunc. Mauris ac consectetur ante,</p>
						<h6 class="mb-0"><a class="button" href="#">Contact Sales</a></h6>
					</div>
					<div class="contact_1l1 bg-white p-4 mt-4">
						<h4>Product & Account Support</h4>
						<p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis ligula eu lectus vulputate porttitor sed feugiat nunc. Mauris ac consectetur ante,</p>
						<h6 class="mb-0"><a class="button" href="#">Go to  Faq</a></h6>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="contact_1r mt-3">
					<img src="img/30.jpg" class="w-100 rounded_10" alt="abc">
				</div>
			</div>
		</div>

	</div>
</section>

<section id="contact_o" class="p_3">
	<div class="container-xl">
		<div class="contact_2 row">
			<div class="col-md-6">
				<div class="contact_2l border_1 p-4">
					<h4>Get In Touch</h4>
					<hr>
					<form action="ContactServlet" method="post">
						<div class="contact_2li row">
							<div class="col-md-12">
								<div class="contact_2lil">
									<h6 class="fw-bold font_14 mb-2">Your Name</h6>
									<input class="form-control rounded_10 border-0 bg-light" placeholder="Your Name" type="text" name="name">
								</div>
							</div>
						</div>
						<div class="contact_2li row mt-4">
							<div class="col-md-6">
								<div class="contact_2lil">
									<h6 class="fw-bold font_14 mb-2">Phone Number</h6>
									<input class="form-control rounded_10 border-0 bg-light" placeholder="Your Phone" type="text" name="phone">
								</div>
							</div>
							<div class="col-md-6">
								<div class="contact_2lil">
									<h6 class="fw-bold font_14 mb-2">Email Address</h6>
									<input class="form-control rounded_10 border-0 bg-light" placeholder="Your Email" type="text" name="email">
								</div>
							</div>
						</div>
						<div class="contact_2li row mt-4">
							<div class="col-md-6">
								<div class="contact_2lil">
									<h6 class="fw-bold font_14 mb-2">Country</h6>
									<select class="form-select border-0 rounded_10 bg-light" aria-label="Default select example" name="country">
										<option selected="">Select</option>
										<option value="1">India</option>
										<option value="2">Australia</option>
										<option value="3">Oman</option>
										<option value="4">Qatar</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="contact_2lil">
									<h6 class="fw-bold font_14 mb-2">Subject</h6>
									<input class="form-control rounded_10 border-0 bg-light" placeholder="Enter Subject" type="text" name="subject">
								</div>
							</div>
						</div>
						<div class="contact_2li row mt-4">
							<div class="col-md-12">
								<div class="contact_2lil">
									<h6 class="fw-bold font_14 mb-2">Description</h6>
									<textarea class="form-control rounded_10 border-0 bg-light form_text" placeholder="Comments" name="message"></textarea>
									<h6 class="mb-0 mt-3 center_sm"><button type="submit" class="button">Submit Enquiry</button></h6>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-6">
				<div class="contact_2r">
					<h4 class="mb-4">Contact Details</h4>
					<div class="contact_2ri row">
						<div class="col-md-2 col-2">
							<div class="contact_2ril">
								<span class="d-inline-block border_1 text-center col_blue fs-4 rounded_10"><i class="fa fa-phone"></i></span>
							</div>
						</div>
						<div class="col-md-10 col-10">
							<div class="contact_2rir">
								<h5>Call Us At</h5>
								<h6 class="mb-0"><a href="#">+123 4567 890</a>, <a href="#"> +123 4567 890</a></h6>
							</div>
						</div>
					</div>
					<div class="contact_2ri row mt-4">
						<div class="col-md-2 col-2">
							<div class="contact_2ril">
								<span class="d-inline-block border_1 text-center col_blue fs-4 rounded_10"><i class="fa fa-envelope"></i></span>
							</div>
						</div>
						<div class="col-md-10 col-10">
							<div class="contact_2rir">
								<h5>Email Us</h5>
								<h6 class="mb-0"><a href="#">info@gmail.com</a> </h6>
							</div>
						</div>
					</div>
					<div class="contact_2ri row mt-4">
						<div class="col-md-2 col-2">
							<div class="contact_2ril">
								<span class="d-inline-block border_1 text-center col_blue fs-4 rounded_10"><i class="fa fa-map"></i></span>
							</div>
						</div>
						<div class="col-md-10 col-10">
							<div class="contact_2rir">
								<h5>Location</h5>
								<h6 class="mb-0">JK. Lorem Kaya, No.12, Porta United States </h6>
							</div>
						</div>
					</div>
					<h4 class="mt-4 mb-4">Find Us On</h4>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114964.53925916665!2d-80.29949920266738!3d25.782390733064336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88d9b0a20ec8c111%3A0xff96f271ddad4f65!2sMiami%2C+FL%2C+USA!5e0!3m2!1sen!2sin!4v1530774403788" height="330" style="border:0; width:100%;" allowfullscreen=""></iframe>
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