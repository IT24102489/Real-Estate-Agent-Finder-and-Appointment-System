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

<style>
     body {
        margin: 0;
        padding: 0;
        min-height: 100vh;
        position: relative;
        font-family: 'Plus Jakarta Sans', sans-serif;
        color: white;
        overflow-x: hidden;
    }

    body::before {
        content: "";
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: url("https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=1080&w=1920") center/cover no-repeat;
        filter: blur(8px) brightness(0.4); /* Blurs the background and darkens it slightly */
        z-index: -1;
    }


</style>
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
                        <a class="nav-link active" aria-current="page" href="index.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="agent_add.jsp">Agent Listing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="agent_view.jsp">Agent Details</a>
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
            </div>
        </div>
    </nav>
</section>

<section id="center" class="center_h">
    <div class="center_om">
        <div class="container-xl">
            <div class="row center_h1">
                <div class="col-md-12">
                    <h1 class="text-white font_50">Agent Listing Management  <br> <span class="col_blue"></span></h1>
                    <p class="text-white mt-3 fs-5">We have more than 100+ listings for you to choose...</p>
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

</body>
</html>
