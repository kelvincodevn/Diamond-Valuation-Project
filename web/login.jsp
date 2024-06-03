<%-- 
    Document   : login
    Created on : May 30, 2024, 7:45:05 AM
    Author     : DELL
--%>

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
</head>
<style>
  
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
                    <li class="nav-link" href="#">
                      <a class="nav-link" href="HomePage.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#"> About</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#"> Services </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#"> Calculator </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Contact us</a>
                    </li>
                  </ul>
                    
                <div class="auth-buttons">
                    <button class="signup" onclick="location.href='register.jsp'">Sign Up</button>
                    <button class="signin" onclick="location.href='login.jsp'">Sign in</button>
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
                            <h1>Login</h1>
                            <p class="account-subtitle">Let's have a good deal today</p>
                            <form action="MainController" method="post">
                                <div class="form-group">
                                    <input class="form-control" id="username" type="text" name="txtUsername" placeholder="Username"> 
                                    <div class="error"></div>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="password" type="password"  name="txtPassword"  placeholder="Password"> 
                                    <div class="error"></div>
                                </div>
                                <%
                                    String errorSignIn = (String) request.getAttribute("INVALID");
                                %>    
                                <font color="red"><p>${requestScope.INVALID}</p></font>
                                <div class="form-group">
                                    <button class="btn btn-primary btn-block" name = "btAction" type="submit" value="Signin">Login</button>
                                </div>
                            </form>
                            <div class="text-center forgotpass"><a href="forgot-password.html">Forgot Password?</a> </div>
                            <div class="login-or"> <span class="or-line"></span> <span class="span-or">or</span> </div>
                            <div class="social-login"> <span>Login with</span> <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a><a href="#" class="google"><i class="fab fa-google"></i></a> </div>
                            <div class="text-center dont-have">Don’t have an account? <a href="MainController?btAction=Signup">Register</a></div>
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
</body>

</html>
