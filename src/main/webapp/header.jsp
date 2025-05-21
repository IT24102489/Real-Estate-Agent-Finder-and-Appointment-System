<!-- header.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="robots" content="noindex,nofollow" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Prop Estate</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
	<link href="css/contact.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans&display=swap" rel="stylesheet">
	<script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>
<section id="header">
<nav class="navbar navbar-expand-md navbar-light bg-white shadow_box" id="navbar_sticky">
  <div class="container-xl">
    <a class="text-black p-0 navbar-brand fw-bold logo_position_rel" href="index.jsp"> Estate <i class="fa fa-home col_blue me-1 logo_position_abs"></i> &nbsp;<span class="col_red">Agent</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mb-0 nav_left">
        <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Property</a>
          <ul class="dropdown-menu drop_1">
            <li><a class="dropdown-item" href="list.jsp">Property</a></li>
            <li><a class="dropdown-item border-0" href="detail.jsp">Property Detail</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Agent</a>
          <ul class="dropdown-menu drop_1">
            <li><a class="dropdown-item" href="agent.jsp">Agent</a></li>
            <li><a class="dropdown-item border-0" href="agent_detail.jsp">Agent Detail</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle dropdown_search nav_hide" href="#" role="button" data-bs-toggle="dropdown">
            <i class="fa fa-search"></i>
          </a>
          <ul class="dropdown-menu drop_2 p-3">
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
        <li class="nav-item"><a class="nav-link button mx-3" href="register.jsp"><i class="fa fa-user-plus me-1"></i> sign in</a></li>
      </ul>
    </div>
  </div>
</nav>
</section>
