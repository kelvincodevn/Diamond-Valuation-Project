<%-- 
    Document   : register
    Created on : May 30, 2024, 7:45:18 AM
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
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" href="assets/css/style.css"> 
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
        <link href="css/home-style.css" rel="stylesheet" />
        <link href="css/responsive.css" rel="stylesheet" />
    </head>
    <%
        String userNameLenError = "";
        String passwordLenError = "";
        String confirmNotMatch = "";
        String fistNameLenError = "";
        String lastNameLenError = "";
        String accountExisted = "";
        String emailValidationError = "";
        String phoneValidationError = "";

        ErrorRegistration errors = (ErrorRegistration) request.getAttribute("ERRORS");
        if (errors != null) {
            userNameLenError = errors.getUserNameLenError();
            passwordLenError = errors.getPasswordLenError();
            confirmNotMatch = errors.getConfirmNotMatch();
            fistNameLenError = errors.getFirstNameLenError();
            lastNameLenError = errors.getLastNameLenError();
            accountExisted = errors.getAccountExisted();
            emailValidationError = errors.getEmailValidationError();
            phoneValidationError = errors.getPhoneValidationError();
        }
    %>

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
                            <a href="" class="contact_link1">
                                <img src="images/map.jpg">
                                <span>
                                    Lorem ipsum dolor sit amet,
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
                                        <a class="nav-link" href="#"> About</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="MainController?btAction=ViewPricing"> Services </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="DiamondCheck.jsp"> Diamond Check </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#"> Calculator </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Contact us</a>
                                    </li>
                                </ul>

                                <div class="auth-buttons">
                                    <button class="signup" onclick="location.href = 'register.jsp'">Sign Up</button>
                                    <button class="signin" onclick="location.href = 'login.jsp'">Sign in</button>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </header>
        </div>

        <div class="main-wrapper login-body">
            <div class="login-wrapper">
                <div class="container">
                    <div class="loginbox">
                        <div class="login-left"> 
                            <h3>Welcome to DVS!</h3>
                            <p>The best diamond valuation partner you can find out there!</p>
                            <img class="img-fluid" src="images/Image-2-1.png" alt="Logo"> 
                        </div>
                        <div class="login-right">
                            <div class="login-right-wrap">
                                <h1 class="mb-3">Register</h1>
                                <form action="MainController" method="post">    
                                    <div class="form-group">
                                        <input class="form-control" id="firstname" type="text" name="txtFirstName" value="${sessionScope.firstName}"  placeholder="Firstname"> 
                                        <font color="red">${requestScope.ERRORS.firstNameLenError}</font>
                                        <div class="error"></div>
                                    </div>  

                                    <div class="form-group">
                                        <input class="form-control" id="lastname" type="text" name="txtLastName" value="${sessionScope.lastName}" placeholder="Lastname"> 
                                        <font color="red">${requestScope.ERRORS.lastNameLenError}</font>
                                        <div class="error"></div>
                                    </div>  

                                    <div class="form-group">
                                        <input class="form-control" id="phonenumber" type="text" name="txtPhoneNumber" value="${sessionScope.phoneNumber}" placeholder="Phonenumber"> 
                                        <font color="red">${requestScope.ERRORS.phoneValidationError}</font>
                                        <div class="error"></div>
                                    </div>  

                                    <div class="form-group">
                                        <input class="form-control" id="username" type="text" name="txtUserName" value="${sessionScope.username}" placeholder="Username"> 
                                        <div class="error"></div>
                                        <font color="red">${requestScope.ERRORS.userNameLenError}</font>
                                        <font color="red"><p>${requestScope.ErrorMessage}</p></font>
                                    </div>                 
                                    <div class="form-group">
                                        <input class="form-control" id="email" type="text" name="txtEmail" value="${sessionScope.email}" placeholder="Email"> 
                                        <font color="red">${requestScope.ERRORS.emailValidationError}</font> 
                                        <div class="error"></div>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control"  id="password" type="password" name="txtPassword" value="${sessionScope.password}" placeholder="Password"> 
                                        <font color="red">${requestScope.ERRORS.passwordLenError}</font>
                                        <div class="error"></div>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="password2" type="password" name="txtConfirmPassword" value="${sessionScope.confirmPassword}" placeholder="Confirm Password"> 
                                        <font color="red">${requestScope.ERRORS.confirmNotMatch}</font>
                                        <div class="error"></div>
                                    </div>
                                    <div class="form-group mb-0">
                                        <button class="btn btn-primary btn-block" name = "btAction" type="submit" value="Signup">Register</button>
                                    </div>
                                </form>
                                <div class="login-or"> <span class="or-line"></span> <span class="span-or">or</span> </div>
                                <div class="social-login"> <span>Register with</span> <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a><a href="#" class="google"><i class="fab fa-google"></i></a> </div>
                                <div class="text-center dont-have">Already have an account? <a href="MainController?btAction=Signin">Login</a> </div>
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

        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/custom.js"></script>
        <script defer src="assets/js/index.js"></script> 
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/js/script.js"></script>
    </body>

</html>