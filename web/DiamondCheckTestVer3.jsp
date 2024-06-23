<%-- 
    Document   : login
    Created on : May 30, 2024, 7:45:05 AM
    Author     : DELL
--%>

<%@page import="group6.dao.ErrorRegistration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
</head>
<style>
    .diamond-container {
        max-width: 800px;
        margin: 50px auto;
        padding: 30px;
        background-color: #f9f9f9;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    .diamond-container h1 {
        font-size: 2.5em;
        color: #333;
        margin-bottom: 20px;
    }

    .diamond-container .highlight {
        color: #6a5acd;
    }

    .diamond-container p {
        font-size: 1.2em;
        color: #666;
        margin-bottom: 30px;
    }

    .diamond-container p a {
        color: #6a5acd;
        text-decoration: none;
        font-weight: bold;
    }

    .diamond-container .search-bar {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 10px;
    }

    .diamond-container .search-bar input {
        padding: 10px;
        width: 300px;
        border: 2px solid #ddd;
        border-radius: 5px;
        font-size: 1em;
    }

    .diamond-container .search-bar button {
        padding: 10px 20px;
        border: none;
        background-color: #6a5acd;
        color: white;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1em;
    }

    .diamond-container .search-bar button:hover {
        background-color: #5a4db1;
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

    <div class="diamond-container">
        <%
            String inputDiamondCheckError = "";

            ErrorRegistration errors = (ErrorRegistration) request.getAttribute("ERRORS");
            if (errors != null) {
                inputDiamondCheckError = errors.getDiamondCheckError();
            }
        %>

        <h1>Check any diamond's <span class="highlight">price & quality</span></h1>
        <p>Transact with confidence — get fair price, cut score, visual carat and more <a href="#">for free</a></p>
        <form action="MainController" method="Post">
            <div class="search-bar">
                <input type="text" name="ID" value="${param.ID}" id="certificateId" placeholder="Enter Certificate ID">
                <button type="submit" name="btAction" value="CheckDiamond">Run free check</button>
            </div>
            <%
                String errorInput = (String) request.getAttribute("INVALID");
            %>    
            <font color="red"><p>${requestScope.INVALID}</p></font>
        </form>
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