<%-- 
    Document   : Calculate
    Created on : Jun 12, 2024, 10:52:03 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <link rel="stylesheet" href="assets/css/style.css"> 
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
        <link href="css/home-style.css" rel="stylesheet" />
        <link href="css/responsive.css" rel="stylesheet" />
        
        <link rel="stylesheet" href="css/profile-style.css">
        <link rel="stylesheet" href="css/customer-style.css">

        <script>
            function updateCaratValue(value) {
                document.getElementById('caratValue').innerText = value;
            }
            window.onload = function () {
                updateCaratValue(document.getElementById('caratSlider').value);
            };
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                background-color: #f8f9fa;
                padding-top: 20px;
            }
            .characteristic {
                margin-bottom: 20px;
            }
            .slider-container {
                display: flex;
                align-items: center;
            }
            #caratValue {
                margin-left: 10px;
                font-weight: bold;
            }
            .form-group label {
                margin-right: 20px;
            }
            h3 {
                margin-bottom: 15px;
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
        <div class="container">
            <h1 class="text-center mb-4">Diamond Price Calculator</h1>
            <form action="MainController">
                <!-- Natural or Lab Grown -->
                <div class="characteristic">
                    <h3>Type</h3>
                    <label><input type="radio" name="type" value="Natural" checked<c:if test="${param.type == 'Natural'}">checked</c:if> > Natural</label>
                    <label><input type="radio" name="type" value="Lab Grown" <c:if test="${param.type == 'Lab Grown'}">checked</c:if> > Lab Grown</label>
                    </div>

                    <!-- Shape -->
                    <div class="characteristic">
                        <h3>Shape</h3>
                        <label><input type="radio" name="shape" value="Round" checked <c:if test="${param.shape == 'Round'}">checked</c:if> > Round</label>
                    <label><input type="radio" name="shape" value="Cushion" <c:if test="${param.shape == 'Cushion'}">checked</c:if> > Cushion</label>
                    <label><input type="radio" name="shape" value="Emerald" <c:if test="${param.shape == 'Emerald'}">checked</c:if> > Emerald</label>
                    <label><input type="radio" name="shape" value="Oval" <c:if test="${param.shape == 'Oval'}">checked</c:if> > Oval</label>
                    <label><input type="radio" name="shape" value="Princess" <c:if test="${param.shape == 'Princess'}">checked</c:if>> Princess</label>
                    <label><input type="radio" name="shape" value="Pear" <c:if test="${param.shape == 'Pear'}">checked</c:if> > Pear</label>
                    <label><input type="radio" name="shape" value="Radiant" <c:if test="${param.shape == 'Radiant'}">checked</c:if> > Radiant</label>
                    <label><input type="radio" name="shape" value="Marquise" <c:if test="${param.shape == 'Marquise'}">checked</c:if> > Marquise</label>
                    <label><input type="radio" name="shape" value="Asscher" <c:if test="${param.shape == 'Asscher'}">checked</c:if> > Asscher</label>
                    <label><input type="radio" name="shape" value="Heart" <c:if test="${param.shape == 'Heart'}">checked</c:if> > Heart</label>
                    </div>
                    <!-- Carat -->
                    <div class="characteristic">
                        <h3>Carat</h3>
                        <div class="slider-container">
                            <input type="range" name="carat" id="caratSlider" min="0.05" max="5" step="0.01" value="<c:out value='${param.carat}' default='2.45'/>" oninput="updateCaratValue(this.value)">
                        <span id="caratValue"><c:out value="${param.carat}" default="2.45"/></span>
                    </div>
                </div>

                <!-- Color -->
                <div class="characteristic">
                    <h3>Color</h3>
                    <label><input type="radio" name="color" value="M" checked<c:if test="${param.color == 'M'}">checked</c:if> > M</label>
                    <label><input type="radio" name="color" value="L" <c:if test="${param.color == 'L'}">checked</c:if> > L</label>
                    <label><input type="radio" name="color" value="K" <c:if test="${param.color == 'K'}">checked</c:if> > K</label>
                    <label><input type="radio" name="color" value="J" <c:if test="${param.color == 'J'}">checked</c:if> > J</label>
                    <label><input type="radio" name="color" value="I" <c:if test="${param.color == 'I'}">checked</c:if> > I</label>
                    <label><input type="radio" name="color" value="H" <c:if test="${param.color == 'H'}">checked</c:if> > H</label>
                    <label><input type="radio" name="color" value="G" <c:if test="${param.color == 'G'}">checked</c:if> > G</label>
                    <label><input type="radio" name="color" value="F" <c:if test="${param.color == 'F'}">checked</c:if> > F</label>
                    <label><input type="radio" name="color" value="E" <c:if test="${param.color == 'E'}">checked</c:if> > E</label>
                    <label><input type="radio" name="color" value="D" <c:if test="${param.color == 'D'}">checked</c:if> > D</label>
                    </div>

                    <!-- Clarity -->
                    <div class="characteristic">
                        <h3>Clarity</h3>
                        <label><input type="radio" name="clarity" value="SI2" checked <c:if test="${param.clarity == 'SI2'}">checked</c:if> > SI2</label>
                    <label><input type="radio" name="clarity" value="SI1" <c:if test="${param.clarity == 'SI1'}">checked</c:if> > SI1</label>
                    <label><input type="radio" name="clarity" value="VS2" <c:if test="${param.clarity == 'VS2'}">checked</c:if> > VS2</label>
                    <label><input type="radio" name="clarity" value="VS1" <c:if test="${param.clarity == 'VS1'}">checked</c:if> > VS1</label>
                    <label><input type="radio" name="clarity" value="VVS2" <c:if test="${param.clarity == 'VVS2'}">checked</c:if> > VVS2</label>
                    <label><input type="radio" name="clarity" value="VVS1" <c:if test="${param.clarity == 'VVS1'}">checked</c:if> > VVS1</label>
                    <label><input type="radio" name="clarity" value="IF" <c:if test="${param.clarity == 'IF'}">checked</c:if> > IF</label>
                    <label><input type="radio" name="clarity" value="FL" <c:if test="${param.clarity == 'FL'}">checked</c:if> > FL</label>
                    </div>

                    <!-- Cut -->
                    <div class="characteristic">
                        <h3>Cut</h3>
                        <label><input type="radio" name="cut" value="Fair" checked<c:if test="${param.cut == 'Fair'}">checked</c:if> > Fair</label>
                    <label><input type="radio" name="cut" value="Good" <c:if test="${param.cut == 'Good'}">checked</c:if> > Good</label>
                    <label><input type="radio" name="cut" value="V.Good" <c:if test="${param.cut == 'V.Good'}">checked</c:if> > V.Good</label>
                    <label><input type="radio" name="cut" value="EX." <c:if test="${param.cut == 'EX.'}">checked</c:if> > EX.</label>
                    </div>

                    <!-- Symmetry -->
                    <div class="characteristic">
                        <h3>Symmetry</h3>
                        <label><input type="radio" name="symmetry" value="Fair" checked<c:if test="${param.symmetry == 'Fair'}">checked</c:if> > Fair</label>
                    <label><input type="radio" name="symmetry" value="Good" <c:if test="${param.symmetry == 'Good'}">checked</c:if> > Good</label>
                    <label><input type="radio" name="symmetry" value="V.Good" <c:if test="${param.symmetry == 'V.Good'}">checked</c:if> > V.Good</label>
                    <label><input type="radio" name="symmetry" value="EX." <c:if test="${param.symmetry == 'EX.'}">checked</c:if> > EX.</label>
                    </div>

                    <!-- Polish -->
                    <div class="characteristic">
                        <h3>Polish</h3>
                        <label><input type="radio" name="polish" value="Fair"checked <c:if test="${param.polish == 'Fair'}">checked</c:if> > Fair</label>
                    <label><input type="radio" name="polish" value="Good" <c:if test="${param.polish == 'Good'}">checked</c:if> > Good</label>
                    <label><input type="radio" name="polish" value="V.Good" <c:if test="${param.polish == 'V.Good'}">checked</c:if> > V.Good</label>
                    <label><input type="radio" name="polish" value="EX." <c:if test="${param.polish == 'EX.'}">checked</c:if> > EX.</label>
                    </div>

                    <!-- Fluorescence -->
                    <div class="characteristic">
                        <h3>Fluorescence</h3>
                        <label><input type="radio" name="fluorescence" value="VSTG"checked <c:if test="${param.fluorescence == 'VSTG'}">checked</c:if> > VSTG</label>
                    <label><input type="radio" name="fluorescence" value="STG" <c:if test="${param.fluorescence == 'STG'}">checked</c:if> > STG</label>
                    <label><input type="radio" name="fluorescence" value="MED" <c:if test="${param.fluorescence == 'MED'}">checked</c:if> > MED</label>
                    <label><input type="radio" name="fluorescence" value="FNT" <c:if test="${param.fluorescence == 'FNT'}">checked</c:if> > FNT</label>
                    <label><input type="radio" name="fluorescence" value="NON" <c:if test="${param.fluorescence == 'NON'}">checked</c:if> > NON</label>
                    </div>

                    <!-- Submit Button -->
                    <div class="characteristic">
                        <button type="submit" name="btAction" value="Calculate">Submit</button>
                    </div>
                </form>
            <%
                String price = (String) request.getAttribute("PRICE");
                if (price != null) {

            %>
            <label>Price: <%=price%>$</label>
            <%
                }
            %>
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
