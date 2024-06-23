<%@page import="group6.entity.DiamondInfoDTO"%>
<!DOCTYPE html>
<html lang="en">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Diamond Valuation System</title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" href="assets/css/style.css"> </head>
    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
    <link href="css/home-style.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
    <!--    <link rel="stylesheet" href="css/diamond-check.css">-->
    <link rel="stylesheet" href="css/profile-style.css">
    <link rel="stylesheet" href="css/diamond-check-result.css">
    <!--        <style>
                body {
                    font-family: sans-serif;
                    margin: 0;
                    padding: 0;
                }
    
                .gia-report {
                    display: flex;
                    flex-wrap: wrap;
                    max-width: 800px;
                    margin: 20px auto;
                    padding: 20px;
                    border: 1px solid #ddd;
                    border-radius: 5px;
                }
    
                .gia-report h1 {
                    width: 100%;
                    text-align: center;
                    margin-bottom: 10px;
                    font-size: 20px;
                }
    
                .gia-report-info,
                .gia-report-details {
                    width: 48%;
                    padding: 10px;
                }
    
                .gia-report-info span {
                    font-weight: bold;
                    display: block;
                    margin-bottom: 5px;
                }
    
                .gia-report-details .detail {
                    display: flex;
                    justify-content: space-between;
                    margin-bottom: 5px;
                }
            </style>-->
</head>
<body>

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
                                <li class="nav-item active">
                                    <a class="nav-link" href="HomePage.jsp">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="AboutUs.jsp"> About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="MainController?btAction=ViewPricing"> Services </a>
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

                            <%                                          // Check if user is logged in via session or cookies
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
    <div class="gia-report">
        <%
            DiamondInfoDTO dia = (DiamondInfoDTO) request.getAttribute("DIAMOND");

        %>   

        <h1>GIA REPORT DETAILS</h1>
        <div class="gia-report-info">
            <!--            <span>Certificate Date</span>
                        <span>09/01/2023</span>-->
            <span>GIA Report Number</span>
            <span><%=dia.getDiaID()%></span>
            <span>Shape</span>
            <span><%=dia.getShape()%></span>
            <span>Measurements</span>
            <span><%=dia.getMeasurements()%> </span>
        </div>
        <div class="gia-report-details">
            <div class="detail">
                <span>Carat Weight</span>
                <span><%=dia.getCarat()%> carat</span>
            </div>
            <div class="detail">
                <span>Color Grade</span>
                <span><%=dia.getColor()%></span>
            </div>
            <div class="detail">
                <span>Clarity Grade</span>
                <span><%=dia.getClarity()%></span>
            </div>
            <div class="detail">
                <span>Cut Grade</span>
                <span><%=dia.getCut()%> </span>
            </div>
            <!--            <div class="detail">
                            <span>Cut Score®</span>
                            <span>9.4</span>
                        </div>-->
            <div class="detail">
                <span>Polish</span>
                <span><%=dia.getPolish()%></span>
            </div>
            <div class="detail">
                <span>Symmetry</span>
                <span><%=dia.getSymmetry()%></span>
            </div>
            <div class="detail">
                <span>Fluorescence</span>
                <span><%=dia.getFlourescence()%></span>
            </div>
            <!--            <div class="detail">
                            <span>Clarity Characteristics</span>
                            <span>Crystal, Feather, Needle, Pinpoint</span>
                        </div>-->
            <!--            <div class="detail">
                            <span>Inscription(s)</span>
                            <span>GIA 2474506136</span>
                        </div>-->
            <div class="detail">
                <span>Fair Price Estimate</span>
                <span>$${PRICE_CHECK}</span>
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
    <script src="js/diamond-check.js"></script>
</body>

</html>
