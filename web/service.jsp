<%-- 
    Document   : service
    Created on : Jun 11, 2024, 1:00:58 PM
    Author     : DELL
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="group6.dao.ServiceTypeCoverageDAO"%>
<%@page import="group6.entity.ServiceTypeCoverageDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="group6.entity.ServiceTypeDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Diamond Valuation Dashboard </title>

        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">

        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">

        <link rel="stylesheet" href="assets/css/style.css">


        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <title>Guarder</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
        <link href="css/home-style.css" rel="stylesheet" />
        <link href="css/responsive.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/profile-style.css">
        <link rel="stylesheet" href="css/customer-style.css">

    </head>
    <style>
        .flex-container {
            display: flex;
            min-height: 160vh;
            flex-direction: column;
        }

        .main-wrapper {
            flex: 1;
        }

    </style>
    <body class="sub_page">
        <div class="hero_area">
            <div class="hero_bg_box">
                <div class="img-box">
                    <img src="images/background1.jpg" alt="">
                </div>
            </div>

            <header class="header_section">
                <div class="header_top">
                    <div class="container-fluid">
                        <div class="contact_link-container">
                            <a href="https://www.google.com/maps/place/Trường+Đại+học+FPT+TP.+HCM/@10.8411276,106.809883,15z/data=!4m6!3m5!1s0x31752731176b07b1:0xb752b24b379bae5e!8m2!3d10.8411276!4d106.809883!16s%2Fg%2F11j2zx_fz_?entry=ttu" class="contact_link1" target="_blank">
                                <img src="images/map.jpg" width="30px" height="30px">
                                <span>  
                                    Đại học FPT HCM
                                </span>
                            </a>
                            <a href="" class="contact_link2">
                                <img src="images/phone.jpg">
                                <span>
                                    Call : +01 1234567890
                                </span>
                            </a>
                            <a href="" class="contact_link3">
                                <img src="images/mail.jpg">
                                <span>
                                    demo@gmail.com
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="header_bottom">
                    <div class="container-fluid">
                        <nav class="navbar navbar-expand-lg custom_nav-container">
                            <a class="navbar-brand" href="HomePage.jsp">
                                <span>
                                    DVS
                                </span>
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class=""></span>
                            </button>

                            <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
                                <ul class="navbar-nav  ">
                                    <li class="nav-item">
                                        <a class="nav-link" href="HomePage.jsp">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="AboutUs.jsp"> About</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="MainController?btAction=ViewPricing">Services<span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="DiamondCheck.jsp"> Diamond Check </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="Calculate.jsp"> Calculator </a>
                                    </li>
                                   <%
                                        String logOut = (String) request.getAttribute("LOGOUT"); // check if logout is requested
                                        String userNameID = (String) request.getAttribute("USERNAMEID"); // check if user is logged in
                                        String userName = (String) request.getAttribute("USERNAME");
                                        Cookie[] checkCookies = request.getCookies();
                                        String checkUserNameID = null;
                                        String checkUsername = null;

                                        if (checkCookies != null) {
                                            for (Cookie cookie : checkCookies) {
                                                String k = cookie.getName();
                                                String v = cookie.getValue();
                                                if (k.equals("USERNAMEID")) {
                                                    checkUserNameID = v;
                                                } else if (k.equals("USERNAME")) {
                                                    checkUsername = v;
                                                }
                                            }
                                        }
                                        if ((userNameID != null || checkUserNameID != null) && logOut == null) {
                                            if (userNameID != null && userName != null) {
                                                checkUserNameID = userNameID;
                                                checkUsername = userName;
                                            }
                                    %>
                                    <li class="nav-item">
                                        <a class="nav-link" href="MainController?btAction=ViewRequestForm"> Valuation Request </a>
                                    </li>
                                    <% } %>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Contact us</a>
                                    </li>
                                </ul>

                                <%
//                                    String logOut = (String) request.getAttribute("LOGOUT"); // check if logout is requested
//                                    String userNameID = (String) request.getAttribute("USERNAMEID"); // check if user is logged in
//                                    String userName = (String) request.getAttribute("USERNAME");
//                                    Cookie[] checkCookies = request.getCookies();
//                                    String checkUserNameID = null;
//                                    String checkUsername = null;
//
//                                    if (checkCookies != null) {
//                                        for (Cookie cookie : checkCookies) {
//                                            String k = cookie.getName();
//                                            String v = cookie.getValue();
//                                            if (k.equals("USERNAMEID")) {
//                                                checkUserNameID = v;
//                                            } else if (k.equals("USERNAME")) {
//                                                checkUsername = v;
//                                            }
//                                        }
//                                    }

                                    // Check if user is logged in via session or cookies
                                    if ((userNameID != null || checkUserNameID != null) && logOut == null) {
                                        if (userNameID != null && userName != null) {
                                            checkUserNameID = userNameID;
                                            checkUsername = userName;
                                        }
                                %>
                                <div class="profile-dropdown">
                                    <button class="profile-button">
                                        <img src="assets/img/profiles/avatar-13.jpg" alt="Profile Picture">
                                        <span style="color: white"><%= checkUsername%></span>
                                    </button>
                                    <div class="profile-dropdown-content">
                                        <a href="CustomerDashboard-Profile.jsp">Edit Profile</a>
                                        <a href="#">Settings & Privacy</a>
                                        <a href="MainController?btAction=Logout">Logout</a>
                                    </div>
                                </div>
                                <%
                                } else {
                                %>
                                <div class="auth-buttons">
                                    <button class="signup" onclick="location.href = 'register.jsp'">Sign Up</button>
                                    <button class="signin" onclick="location.href = 'login.jsp'">Sign in</button>
                                </div>
                                <%
                                    }
                                %>  
                            </div>
                        </nav>
                    </div>
                </div>
            </header>
        </div>
        <div class="flex-container">
            <div class="main-wrapper">
                <div class="page-wrapper">
                    <div class="content container-fluid">
                        <div class="page-header">
                            <div class="row align-items-center">
                                <div class="col">
                                    <div class="mt-5">
                                        <h4 class="card-title float-left mt-2">Pricing</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <section class="pricing py-5">
                                    <div class="container">
                                        <div class="row  mt-5">
                                            <%
                                                List<ServiceTypeDTO> listService = (List<ServiceTypeDTO>) request.getAttribute("LISTSERVICE");
                                                List<ServiceTypeCoverageDTO> listServiceTypeCoverage = new ArrayList();
                                                ServiceTypeCoverageDAO dao = new ServiceTypeCoverageDAO();
                                                for (ServiceTypeDTO service : listService) {
                                                    try {
                                                        listServiceTypeCoverage = dao.serviceListCoverage(service.getServiceTypeID());
                                                    } catch (SQLException | ClassNotFoundException ex) {
                                                        ex.printStackTrace();
                                                    }
                                            %>    
                                            <div class="col-lg-3">
                                                <div class="card mb-5 mb-lg-0">

                                                    <div class="card-body">
                                                        <h5 class="card-title text-muted text-uppercase text-center"><%=service.getServiceName()%></h5>
                                                        <h6 class="card-price text-center mt-3">$<%=service.getServicePrice()%><span class="period"></span>
                                                        </h6>
                                                        <hr>
                                                        <ul class="fa-ul">
                                                            <%
                                                                for (ServiceTypeCoverageDTO serviceTypeCoverage : listServiceTypeCoverage) {
                                                            %>   
                                                            <li><span class="fa-li"><i class="fas fa-check"></i></span>
                                                                    <%=serviceTypeCoverage.getIncludedService()%>
                                                            </li>
                                                            <% } %>     
                                                            <!--                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Free Wifi
                                                                                                                    </li>
                                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Air
                                                                                                                        Conditioning</li>
                                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Laundry
                                                                                                                    </li>
                                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Parking
                                                                                                                    </li>-->
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <% }%>

                                            <!--                                        <div class="col-lg-3">
                                                                                        <div class="card mb-5 mb-lg-0">
                                                                                            <div class="card-body">
                                                                                                <h5 class="card-title text-muted text-uppercase text-center">Double</h5>
                                                                                                <h6 class="card-price text-center mt-3">$25<span class="period"></span>
                                                                                                </h6>
                                                                                                <hr>
                                                                                                <ul class="fa-ul">
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Free
                                                                                                        Breakfast</li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Free Wifi
                                                                                                    </li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Air
                                                                                                        Conditioning</li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Laundry
                                                                                                    </li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Parking
                                                                                                    </li>
                                                                                                </ul>
                                                                                                <a href="pricing-edit.jsp" class="btn btn-block btn-primary text-uppercase">Edit</a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>-->

                                            <!--                                        <div class="col-lg-3">
                                                                                        <div class="card">
                                                                                            <div class="card-body">
                                                                                                <h5 class="card-title text-muted text-uppercase text-center">Family</h5>
                                                                                                <h6 class="card-price text-center mt-3">$35<span class="period"></span>
                                                                                                </h6>
                                                                                                <hr>
                                                                                                <ul class="fa-ul">
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Free
                                                                                                        Breakfast</li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Free Wifi
                                                                                                    </li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Air
                                                                                                        Conditioning</li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Laundry
                                                                                                    </li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Parking
                                                                                                    </li>
                                                                                                </ul>
                                                                                                <a href="pricing-edit.jsp" class="btn btn-block btn-primary text-uppercase">Edit</a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>-->

                                            <!--                                        <div class="col-lg-3">
                                                                                        <div class="card mb-5 mb-lg-0">
                                                                                            <div class="card-body">
                                                                                                <h5 class="card-title text-muted text-uppercase text-center">Double</h5>
                                                                                                <h6 class="card-price text-center mt-3">$25<span class="period"></span>
                                                                                                </h6>
                                                                                                <hr>
                                                                                                <ul class="fa-ul">
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Free
                                                                                                        Breakfast</li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Free Wifi
                                                                                                    </li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Air
                                                                                                        Conditioning</li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Laundry
                                                                                                    </li>
                                                                                                    <li><span class="fa-li"><i class="fas fa-check"></i></span>Parking
                                                                                                    </li>
                                                                                                </ul>
                                                                                                <a href="pricing-edit.jsp" class="btn btn-block btn-primary text-uppercase">Edit</a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>-->

                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <section class="info_section ">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="info_logo">
                            <a class="navbar-brand" href="HomePage.jsp">
                                <span>
                                    DVS
                                </span>
                            </a>
                            <p>
                                dolor sit amet, consectetur magna aliqua. Ut enim ad minim veniam, quisdotempor incididunt r
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_links">
                            <h5>
                                Useful Link
                            </h5>
                            <ul>
                                <li>
                                    <a href="">
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        About Us
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        Services
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_info">
                            <h5>
                                Contact Us
                            </h5>
                        </div>
                        <div class="info_contact">
                            <a href="" class="">
                                <span>
                                    Lorem ipsum dolor sit amet,
                                </span>
                            </a>
                            <a href="" class="">
                                <span>
                                    Call : +01 1234567890
                                </span>
                            </a>
                            <a href="" class="">
                                <span>
                                    demo@gmail.com
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_form ">
                            <h5>
                                Newsletter
                            </h5>
                            <form action="#">
                                <input type="email" placeholder="Enter your email">
                                <button>
                                    Subscribe
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer class="container-fluid footer_section">
            <p>
                &copy; <span id="currentYear"></span> All Rights Reserved.
            </p>
        </footer>

        <script defer src="assets/js/validationLogin.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/custom.js"></script>
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/js/script.js"></script>
        <script src="assets/js/jquery-3.5.1.min.js"></script>

        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/raphael/raphael.min.js"></script>


        <script src="assets/js/script.js"></script>
    </body>
</html>
