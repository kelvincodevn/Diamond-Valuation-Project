<%-- 
    Document   : DiamondValuationRequest
    Created on : Jun 21, 2024, 7:26:17 AM
    Author     : DELL
--%>

<%@page import="group6.entity.UsersDTO"%>
<%@page import="group6.dao.RegistrationDAO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="group6.entity.ServiceTypeCoverageDTO"%>
<%@page import="group6.dao.ServiceTypeCoverageDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="group6.entity.ServiceTypeDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Diamond Valuation Request</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/request-form.css">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
        <link href="css/home-style.css" rel="stylesheet" />
        <link href="css/responsive.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/valuation-style.css">
        <link rel="stylesheet" href="css/profile-style.css">
        <link rel="stylesheet" href="css/customer-style.css">

        <style>
            .card-body {
                display: flex;
                flex-direction: column;
                align-items: center;
                text-align: left; /* This will center text inside the card body */
            }
        </style>
    </head>  
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
                                <img src="images/phone.jpg" width="30px" height="30px">
                                <span>
                                    Call : +01 1234567890
                                </span>
                            </a>
                            <a href="" class="contact_link3">
                                <img src="images/mail.jpg" width="30px" height="30px">
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

                            <!--                            -->
                            <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
                                <ul class="navbar-nav  ">
                                    <li class="nav-item">
                                        <a class="nav-link" href="HomePage.jsp">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="AboutUs.jsp"> About</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="MainController?btAction=ViewPricing"> Services</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="DiamondCheck.jsp"> Diamond Check </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="Calculate.jsp"> Calculator </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="ValuationHome.jsp"> Valuation Request</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Contact us</a>
                                    </li>
                                </ul>

                                <%
                                    String logOut = (String) request.getAttribute("LOGOUT"); // check if logout is requested
                                    String userNameID = (String) request.getAttribute("USERNAMEID"); // check if user is logged in
                                    String userName = (String) request.getAttribute("USERNAME");
                                    String password = (String) request.getAttribute("PASSWORD");
                                    String firstName = (String) request.getAttribute("FIRSTNAME");
                                    String lastName = (String) request.getAttribute("LASTNAME");
                                    String phoneNumber = (String) request.getAttribute("PHONENUMBER");
                                    String email = (String) request.getAttribute("EMAIL");
                                    Cookie[] checkCookies = request.getCookies();
                                    String checkUserNameID = null;
                                    String checkUsername = null;
                                    String checkPassword = null;
                                    String checkFirstName = null;
                                    String checkLastName = null;
                                    String checkEmail = null;
                                    String checkPhoneNumber = null;
                                    RegistrationDAO daoUser = new RegistrationDAO();
                                    UsersDTO user = new UsersDTO();
                                    if (checkCookies != null) {
                                        for (Cookie cookie : checkCookies) {
                                            String k = cookie.getName();
                                            String v = cookie.getValue();
                                            if (k.equals("USERNAMEID")) {
                                                checkUserNameID = v;
                                            } else if (k.equals("USERNAME")) {
                                                checkUsername = v;
                                            } else if (k.equals("PASSWORD")) {
                                                checkPassword = v;
                                            } else if (k.equals("FIRSTNAME")) {
                                                checkFirstName = v;
                                            } else if (k.equals("LASTNAME")) {
                                                checkLastName = v;
                                            } else if (k.equals("PHONENUMBER")) {
                                                checkPhoneNumber = v;
                                            } else if (k.equals("EMAIL")) {
                                                checkEmail = v;
                                            }
                                        }
                                    }

                                    // Check if user is logged in via session or cookies
                                    if ((userNameID != null || checkUserNameID != null) && logOut == null) {
                                        if (userNameID != null && userName != null) {
                                            checkUserNameID = userNameID;
                                            checkUsername = userName;
                                            checkPassword = password;
                                            checkFirstName = firstName;
                                            checkLastName = lastName;
                                            checkEmail = email;
                                            checkPhoneNumber = phoneNumber;
//                                            euser = daoUser.checkLogin(checkUsername, checkPassword);
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

        <div class="container">
            <div class="container mt-5">
                <form action="MainController" method="Post" id="valuation-form" class="mt-4">
                    <h1>Diamond Evaluation Request Form</h1>
                    <br>
                    <div> Please confirm your personal information and choose a valuation service to confirm the request</div>               
                    <br>
                    <hr>
                    <br>
                    <div class="form-row">
                        <input type="hidden" name="customerID" value="<%=checkUserNameID%>"/>
                        <div class="form-group col-md-6">
                            <label for="firstName">First Name *</label>
                            <input type="text" name="firstName" id="firstName" class="form-control" value="<%=checkFirstName%>" required readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="lastName">Last Name *</label>
                            <input type="text" name="lastName" id="lastName" class="form-control" value="<%=checkLastName%>" required readonly>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="email">Email *</label>
                            <input type="email" name="email" id="email" class="form-control" value="<%=checkEmail%>" required readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="phone">Phone *</label>
                            <input type="tel" name="phone" id="phone" class="form-control" value="<%=checkPhoneNumber%>" required readonly>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-12 text-center">
                            <button type="button"  onclick="location.href = 'CustomerDashboard-Profile.jsp'">Edit</button>
                        </div>
                    </div>    

                    <fieldset class="border p-4 rounded mt-4">
                        <legend class="w-auto">Pricing Plan:</legend>
                        <div class="card-deck">
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
                            <div class="card pricing-plan" id="<%=service.getServiceName().toLowerCase()%>" onclick="selectPlan('<%=service.getServiceName().toLowerCase()%>')">
                                <div class="card-body">
                                    <input type="hidden" name="serviceID" value="<%=service.getServiceTypeID()%>"/>
                                    <h2 class="card-title"><%=service.getServiceName()%></h2>
                                    <p class="card-text">$<%=service.getServicePrice()%></p>
                                    <ul class="list-unstyled">
                                        <%
                                            for (ServiceTypeCoverageDTO serviceTypeCoverage : listServiceTypeCoverage) {
                                        %> 
                                        <li><%=serviceTypeCoverage.getIncludedService()%></li>
                                            <%}%>
                                    </ul>
                                </div>
                            </div>
                            <%}%>

                            <!--                            <div class="card pricing-plan" id="advanced" onclick="selectPlan('advanced')">
                                                            <div class="card-body">
                                                                <h2 class="card-title">Advanced</h2>
                                                                <p class="card-text">$200.0</p>
                                                                <ul class="list-unstyled">
                                                                    <li>Comprehensive Valuation</li>
                                                                    <li>Include all the necessary details</li>
                                                                    <li>Expedited process within 3 days</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card pricing-plan" id="express" onclick="selectPlan('express')">
                                                            <div class="card-body">
                                                                <h2 class="card-title">Express</h2>
                                                                <p class="card-text">$300.0</p>
                                                                <ul class="list-unstyled">
                                                                    <li>Fastest Valuation</li>
                                                                    <li>Complete information package</li>
                                                                    <li>Immediate process within 1 day</li>
                                                                </ul>
                                                            </div>
                                                        </div>-->
                        </div>
                    </fieldset>
                    <input type="hidden" id="selected-plan" name="selected-plan" required>
                    <div class="form-row">
                        <div class="form-group col-md-12 text-center">
                            <button name="btAction" type="submit" value="RequestForm" class="btn btn-primary">Submit</button>
                        </div>
                    </div>


                </form>
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
                                    <a href="HomePage.jsp">
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="AboutUs.jsp">
                                        About Us
                                    </a>
                                </li>
                                <li>
                                    <a href="ValuationHome.jsp">
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
    </body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/request-form.js"></script>
</html>
