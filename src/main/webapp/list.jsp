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
          <a class="nav-link button mx-3" href="register.jsp"><i class="fa fa-user-plus me-1"></i> sign in </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</section>

<section id="center" class="center_list">
   <div class="center_om bg_backo">
     <div class="container-xl">
  <div class="row center_o1 m-auto text-center">
     <div class="col-md-12">
	     <h2 class="text-white">Buy Property</h2>
		  <h6 class="text-white mb-0 mt-3"><a class="text-white" href="#">Home</a> <span class="mx-2 text-warning">/</span> Buy Property </h6>
	 </div>
  </div>
 </div>
   </div>   
</section>

<section id="list" class="p_3 bg-light">
   <div class="container-xl">
	 <div class="row list_1 shadow_box p-4 px-3 shadow_box mx-0 bg-white">
		 <div class="col-md-4">
          <div class="list_1l">
		   <p class="mb-0 mt-3">Showing result 09 of 105</p>
		  </div>		 
		 </div>
		 <div class="col-md-8">
          <div class="list_1r">
		   <div class="list_1ri row">
		    <div class="col-md-6">
			 <div class="list_1ril">
			  <h6 class="mb-0 float-start me-3 mt-3 fw-bold">Sort By</h6>
			  <select class="form-select  rounded_10 bg-light border-0" aria-label="Default select example">
  <option selected="">Default</option>
  <option value="1">A-Z</option>
  <option value="2">Z-A</option>
</select>
			 </div>
			</div>
			<div class="col-md-6">
			 <div class="list_1ril">
			  <h6 class="mb-0 float-start me-3 mt-3 fw-bold">Price Range</h6>
			  <select class="form-select  rounded_10 bg-light border-0" aria-label="Default select example">
  <option selected="">Low to High</option>
  <option value="1">High to Low</option>
</select>
			 </div>
			</div>
		   </div>
		  </div>		 
		 </div>
	 </div>
	 <div class="row sale_1  mt-4">
		 <div class="col-md-4">
		   <div class="sale_1m">
		    <div class="sale_1m1 position-relative">
			  <div class="sale_1m1i">
			    <div class="grid clearfix">
				  <figure class="effect-jazz mb-0">
					<a href="detail.jsp"><img src="img/2.jpg" class="w-100" alt="abc"></a>
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
				   <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="detail.html"><i class="fa fa-heart-o"></i></a></span>
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
			 <h4 class="mt-3 mb-3"><a href="detail.jsp">Minimalist and bright flat</a></h4>
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
					<a href="detail.jsp"><img src="img/3.jpg" class="w-100" alt="abc"></a>
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
				   <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="detail.html"><i class="fa fa-heart-o"></i></a></span>
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
			 <h4 class="mt-3 mb-3"><a href="detail.jsp">Place perfect for nature</a></h4>
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
					<a href="detail.jsp"><img src="img/4.jpg" class="w-100" alt="abc"></a>
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
				   <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="detail.html"><i class="fa fa-heart-o"></i></a></span>
				 </div>
				</div>
			   </div>
			  </div>
			  <div class="sale_1m1i2 position-absolute bottom-0 w-100 p-3">
			    <div class="sale_1m1i2 row">
			    <div class="col-md-9 col-9">
				 <div class="sale_1m1i2l">
				  <h5 class="text-white mb-0 mt-4">$50,000</h5>
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
			 <h4 class="mt-3 mb-3"><a href="detail.jsp">Summer House</a></h4>
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
	 <div class="row sale_1 mt-4">
		 <div class="col-md-4">
		   <div class="sale_1m">
		    <div class="sale_1m1 position-relative">
			  <div class="sale_1m1i">
			    <div class="grid clearfix">
				  <figure class="effect-jazz mb-0">
					<a href="detail.jsp"><img src="img/5.jpg" class="w-100" alt="abc"></a>
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
				   <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="detail.html"><i class="fa fa-heart-o"></i></a></span>
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
			 <h4 class="mt-3 mb-3"><a href="detail.jsp">Minimalist and bright flat</a></h4>
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
					<a href="detail.jsp"><img src="img/6.jpg" class="w-100" alt="abc"></a>
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
				   <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="detail.html"><i class="fa fa-heart-o"></i></a></span>
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
			 <h4 class="mt-3 mb-3"><a href="detail.jsp">Place perfect for nature</a></h4>
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
					<a href="detail.jsp"><img src="img/7.jpg" class="w-100" alt="abc"></a>
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
				   <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="detail.html"><i class="fa fa-heart-o"></i></a></span>
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
			 <h4 class="mt-3 mb-3"><a href="detail.jsp">Summer House</a></h4>
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
	  <div class="row sale_1  mt-4">
		 <div class="col-md-4">
		   <div class="sale_1m">
		    <div class="sale_1m1 position-relative">
			  <div class="sale_1m1i">
			    <div class="grid clearfix">
				  <figure class="effect-jazz mb-0">
					<a href="detail.jsp"><img src="img/24.jpg" class="w-100" alt="abc"></a>
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
				   <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="detail.html"><i class="fa fa-heart-o"></i></a></span>
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
			 <h4 class="mt-3 mb-3"><a href="detail.jsp">Minimalist and bright flat</a></h4>
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
					<a href="detail.jsp"><img src="img/25.jpg" class="w-100" alt="abc"></a>
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
				   <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="detail.html"><i class="fa fa-heart-o"></i></a></span>
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
			 <h4 class="mt-3 mb-3"><a href="detail.jsp">Place perfect for nature</a></h4>
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
					<a href="detail.jsp"><img src="img/26.jpg" class="w-100" alt="abc"></a>
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
				   <span class="d-inline-block"><a class="bg-success d-block  text-white rounded-circle font_14 text-center" href="detail.html"><i class="fa fa-heart-o"></i></a></span>
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
			 <h4 class="mt-3 mb-3"><a href="detail.jsp">Summer House</a></h4>
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
	  <div class="pages  text-center mt-4 row">
		 <div class="col-md-12">
		   <ul class="mb-0">
			<li><a href="detail.jsp"><i class="fa fa-chevron-left"></i></a></li>
			<li><a class="act" href="detail.jsp">1</a></li>
			<li><a href="detail.jsp">2</a></li>
			<li><a href="detail.jsp">3</a></li>
			<li><a href="detail.jsp">4</a></li>
			<li><a href="detail.jsp">5</a></li>
			<li><a href="detail.jsp">6</a></li>
			<li><a href="detail.jsp"><i class="fa fa-chevron-right"></i></a></li>
		   </ul>
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