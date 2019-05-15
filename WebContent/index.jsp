<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <!-- ========== Meta Tags ========== -->
    <meta charset="UTF-8">
    <meta name="description" content="Evento -Event Html Template">
    <meta name="keywords" content="Evento , Event , Html, Template">
    <meta name="author" content="ColorLib">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- ========== Title ========== -->
    <title>Shaadi Mubarak</title>
    <!-- ========== Favicon Ico ========== -->
    <!--<link rel="icon" href="fav.ico">-->
    <!-- ========== STYLESHEETS ========== -->
    <!-- Bootstrap CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Fonts Icon CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/et-line.css" rel="stylesheet">
    <link href="assets/css/ionicons.min.css" rel="stylesheet">
    <!-- Carousel CSS -->
    <link href="assets/css/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/css/owl.theme.default.min.css" rel="stylesheet">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">
    <title>Shaadi Mubarak</title>
</head>
<body>
<div class="loader">
    <div class="loader-outter"></div>
    <div class="loader-inner"></div>
</div>

<!--header start here -->
<header class="header navbar fixed-top navbar-expand-md">
    <div class="container">
        <a class="navbar-brand logo" href="index.jsp">
        <!--<img src="assets/img/logo(1).png" alt="Shaadi Mubarak"/>-->
        <h6>Shaadi Mubarak</h6>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#headernav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="lnr lnr-text-align-right"></span>
        </button>
        <div class="collapse navbar-collapse flex-sm-row-reverse" id="headernav">
            <ul class=" nav navbar-nav menu">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Home</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link " href="Caterer">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="Contact.html">Contact</a>
                </li>
                 
                <%
                 //session = request.getSession();
    		     response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
                if(session.getAttribute("uname") == null){ %>
                <li class="nav-item">
                 
           
                       <a class="nav-link" href="register.html">Register</a>
               
                </li>
                <li class="nav-item">
                       <a class="nav-link " href="login.html">Login</a>
                </li> <%} 
                else{
                	%>
                <li class="nav-item">
                    <a class="nav-link " href="CartServlet">Cart</a>
                </li>
                <li class="nav-item">
                       <a class="nav-link " href="LogoutServlet">Logout</a>
                </li>
                <%
                } 
                %>
            </ul>
        </div>
    </div>
</header>
<!--header end here-->

<!--cover section slider -->
<section id="home" class="home-cover">
    <div class="cover_slider owl-carousel owl-theme">
        <div class="cover_item" style="background: url('assets/img/bg/back1.jpg');">
             <div class="slider_content">
                <div class="slider-content-inner">
                    <div class="container">
                        <div class="slider-content-center">
                            <h2 class="cover-title">
                                ALL IN ONE PLACE.
                            </h2>
                            <strong class="cover-xl-text">SHAADi<br>MUBARAK</strong>
                            <p class="cover-date">
                                YOUR GATEWAY TO SUCCESSFUL WEDDING.
                            </p>
                            <a href="Caterer" class=" btn btn-primary btn-rounded" >
                               Have a look!
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
</section>
<!--cover section slider end -->






        <!--event features-->
        <div class="row justify-content-center mt30">
            <div class="col-12 col-md-6 col-lg-3">
                <div class="icon_box_one">
                    <i class="lnr lnr-crop"></i>
                    <div class="content">
                       <h4>All Products</h4>
                        <p>
All products under one roof. So you don't have to look everywhere.                        </p>
                        <a href="Caterer">Take a look</a>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-3">
                <div class="icon_box_one">
                    <i class="lnr lnr-rocket"></i>
                    <div class="content">
                        <h4>Trending</h4>
                        <p>
                        Products that have made their way
                         into maximum number of carts.
                        </p>
                        <a href="TrendingServlet">Take a look</a>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-3">
                <div class="icon_box_one">
                    <i class="lnr lnr-briefcase"></i>
                    <div class="content">
                        <h4>Budget Friendly</h4>
                        <p>
Products that are light on pocket, but heavy on quality.
                        </p>
                        <a href="BudgetServet">Take a look</a>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-3">
                <div class="icon_box_one">
                    <i class="lnr lnr-heart"></i>
                    <div class="content">
                        <h4>Trusted</h4>
                        <p>
Products that have gathered most number of stars from our customers.
                        </p>
                        <a href="TrustedServlet">Take a look</a>
                    </div>
                </div>
            </div>
        </div>
        <!--event features end-->
   
<!--about the event end -->


<!--speaker section-->
<section class="pb100">
    <div class="container">
        <div class="section_title mb50">
            <h3 class="title">
               OUR SERVICES
            </h3>
        </div>
    </div>
    <div class="row justify-content-center no-gutters">
 <div class="col-md-3 col-sm-6">
            <div class="speaker_box">
                <div class="speaker_img">
                           <a href="Caterer?id=1">
                    <img src="assets/img/speakers/ret.png" alt="speaker name">
                    <div class="info_box">
                        <h5 class="name">CATERERS</h5>
                        <p class="position">Food</p>
                    </div></a>
                </div>
            </div>
        </div>
                <div class="col-md-3 col-sm-6">
            <div class="speaker_box">
                <div class="speaker_img"><a href="Caterer?id=2">
                    <img src="assets/img/speakers/cam.png" alt="speaker name">
                    <div class="info_box">
                        <h5 class="name">PHOTOGRAPHY</h5>
                        <p class="position">Wedding shoot</p>
                    </div></a>
                </div>
            </div>

        </div>
        <div class="col-md-3 col-sm-6">
            <div class="speaker_box">
                <div class="speaker_img"><a href="Caterer?id=3">
                    <img src="assets/img/speakers/func.png" alt="speaker name">
                    <div class="info_box">
                        <h5 class="name">FUNCTION HALL</h5>
                        <p class="position">Function hall</p>
                    </div></a>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="speaker_box">
                <div class="speaker_img"><a href="Caterer?id=4">
                    <img src="assets/img/speakers/dance.png" alt="speaker name">
                    <div class="info_box">
                        <h5 class="name">CHOREOGRAPHY</h5>
                        <p class="position">Sangeet, Couple dance</p>
                    </div></a>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="speaker_box">
                <div class="speaker_img"><a href="Caterer?id=5">
                    <img src="assets/img/speakers/plan.png" alt="speaker name">
                    <div class="info_box">
                        <h5 class="name">WEDDING PLANNERS</h5>
                        <p class="position">Handle all</p>
                    </div></a>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="speaker_box">
                <div class="speaker_img"><a href="Caterer?id=6">
                    <img src="assets/img/speakers/design.png" alt="speaker name">
                    <div class="info_box">
                        <h5 class="name">DESIGNERS</h5>
                        <p class="position">Bride and Groom wears</p>
                    </div></a>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="speaker_box">
                <div class="speaker_img"><a href="Caterer?id=7">
                    <img src="assets/img/speakers/invite.png" alt="speaker name">
                    <div class="info_box">
                        <h5 class="name">INVITATION CARD</h5>
                        <p class="position">Cards</p>
                    </div></a>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="speaker_box">
                <div class="speaker_img"><a href="Caterer?id=8">
                    <img src="assets/img/speakers/decor.png" alt="speaker name">
                    <div class="info_box">
                        <h5 class="name">DECORATION</h5>
                        <p class="position">Decorate</p>
                    </div></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--speaker section end -->



<!--brands section -->
<section class="bg-gray pt100 pb100">
    <div class="container">
        <div class="section_title mb50">
            <h3 class="title">
                our partners
            </h3>
        </div>
        <div class="brand_carousel owl-carousel">
            <div class="brand_item text-center">
                <img src="assets/img/brands/b1.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/b2.png" alt="brand">
            </div>

            <div class="brand_item text-center">
                <img src="assets/img/brands/b3.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/b4.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/b5.png" alt="brand">
            </div>
        </div>
    </div>
</section>
<!--brands section end-->
<!--about the event -->
<section class="pt100 pb100">
    <div class="container">
        <div class="section_title">
            <h3 class="title">
                About Us
            </h3>
        </div>
        <div class="row justify-content-center">
            <div class="col-12 col-md-6">
                <p>
                    Looking into the next step we see it’s about Your Wedding theme or Style. By now your research is done, and you have an idea about what you want. You have different themes like Fairytale, Outdoor, even a Circus. Yes I said a circus, keep in mind it is still your day. You can go simple or you can go Big. It’s up to you. Now with you themes out of the way you can think about what your colors you want in your wedding. Colors will help you tie your ideas together, and your theme to light. Colors affect your bride maid dresses, service hall, reception materials, and even flowers.
                </p>
            </div>
            <div class="col-12 col-md-6">
                <p>
                    Comparing with the other personal events, such as birthday, anniversaries, wedding is more complicated, because it involves friends and families and a range of related service activities covering from catering to entertainments (Shone & Parry, 2004). In order to make sure everything goes smoothly in the wedding day, most of the prospective couples would like to plan the wedding in sometimes year in advance. Both brides and grooms put much effort into the wedding preparation including the venue selection, honeymoon booking and dress design etc. 
                </p>
            </div>
        </div>
 </div>
</section>
<!--get tickets section -->
<section class="bg-img pt100 pb100" style="background-image: url('assets/img/bg/tickets.png');">
    <div class="container">
        <div class="section_title mb30">
            <h3 class="title color-light">
                CONFUSED??
                <br>WE CAN HELP YOU OUT!!</br>
            </h3>
        </div>
        <div class="row justify-content-center align-items-center">

            <div class="col-md-3 text-md-right text-center">
                <a href="#" class="btn btn-primary btn-rounded mt30">CONTACT US</a>
            </div>
        </div>
    </div>
</section>

<!--get tickets section end-->

<!--footer start -->
<footer>
    <div class="container">
        <div class="row justify-content-center">




            <div class="col-12 col-md-4">
                <div class="footer_box">
                    <div class="footer_header">
                        <h4 class="footer_title">
                            subscribe to our newsletter
                        </h4>
                    </div>
                    <div class="footer_box_body">
                        <div class="newsletter_form">
                            <input type="email" class="form-control" placeholder="E-Mail here">
                            <button class="btn btn-rounded btn-block btn-primary">SUBSCRIBE</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="copyright_footer">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-12">

            </div>
            <div class="col-12 col-md-6 ">
                <ul class="footer_menu">
                    <li>
                        <a href="index.jsp">Home</a>
                    </li>
                  
                    <li>
                        <a href="Contact.html">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--footer end -->

<!-- jquery -->
<script src="assets/js/jquery.min.js"></script>
<!-- bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<!--slick carousel -->
<script src="assets/js/owl.carousel.min.js"></script>
<!--parallax -->
<script src="assets/js/parallax.min.js"></script>
<!--Counter up -->
<script src="assets/js/jquery.counterup.min.js"></script>
<!--Counter down -->
<script src="assets/js/jquery.countdown.min.js"></script>
<!-- WOW JS -->
<script src="assets/js/wow.min.js"></script>
<!-- Custom js -->
<script src="assets/js/main.js"></script>
</body>
</html>
