<%-- 
    Document   : CustomerDashboard-History
    Created on : Jun 11, 2024, 3:15:16 PM
    Author     : Admin
--%>

<%@page import="group6.entity.ValuationRequestDTO"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    Cookie[] cookies = request.getCookies();
    String userName = "Username";
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("USERNAME")) {
                userName = cookie.getValue();
            }
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
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
        <link rel="stylesheet" href="css/profile-style.css">
        <link rel="stylesheet" href="css/customer-style.css">
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

                            <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
                                <ul class="navbar-nav  ">
                                    <li class="nav-item">
                                        <a class="nav-link" href="HomePage.jsp">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#"> About</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="ValuationHome.jsp"> Services </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#"> Calculator </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Contact us</a>
                                    </li>
                                </ul>

                                <div class="profile-dropdown">
                                    <button class="profile-button">
                                        <img src="assets/img/profiles/avatar-13.jpg" alt="Profile Picture">
                                        <span style="color: white"><%= userName%></span>
                                    </button>
                                    <div class="profile-dropdown-content">
                                        <a href="CustomerDashboard-Profile.jsp">Edit Profile</a>
                                        <a href="#">Settings & Privacy</a>
                                        <a href="LogOutServlet">Logout</a>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </header>
        </div>

        <div class="main-container">
            <div class="content">

                <!-- User Profile Sidebar -->
                <div class="profile-sidebar">
                    <img src="assets/img/profiles/avatar-13.jpg" alt="Profile Picture">
                    <h5 class="text-center"><%=userName%></h5>
                     <script type="text/javascript">
                        function redirect() {
                            window.location.href = 'createRequest.jsp';
                        }
                    </script>
                    <button type="button" onclick="redirect()">Create new Request</button>
                    <a href="CustomerDashboard-Profile.jsp">Profile</a>
                    <!--                    <a href="CustomerDashboard-Tracking.jsp">Valuation Tracking</a>-->
                    <a class="active" href="ViewRequestServlet">Valuation History</a>
                    <a href="CustomerDashboard-Feedback.jsp">Services Feedback</a>
                </div>

                <div class="table-responsive">

                    <table class="datatable table table-stripped table table-hover table-center mb-0">
                        <%
                            List<ValuationRequestDTO> view = (List<ValuationRequestDTO>) request.getAttribute("ALLREQUEST");
//                            view = null;s
                        %>
                        <thead>
                            <tr>
                                <th>Request ID</th>
                                <th>Diamond ID</th>
                                <th>Created Date</th>
                                <th>Last update</th>
                                <th>Status</th>
                                <th>Detail</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                if (view != null) {
                                    for (ValuationRequestDTO rq : view) {
                            %>
                            <tr>
                                <td><%= rq.getRequestID()%></td>
                                <% if (rq.getDiaID() == null) { %> 
                                <td>-</td>
                                <% } else {%>
                                <td><%= rq.getDiaID()%></td>
                                <% }%>
                                <td><%= rq.getCreated()%></td>
                                <td><%= rq.getLastUpdate()%></td>
                                <td><%= rq.getStateID()%> </td>
                                <td><script type="text/javascript">
                                    function redirect() {
                                        window.location.href = 'CustomerDashboard-Tracking.jsp';
                                    }
                                    </script>
                                    <button type="button" onclick="redirect()">Tracking</button> </td>
                            </tr>
                            <%
                                }
//                            } else if (view.size() == 0) {
                            %>
<!--//                            <tr>
//                                <td colspan="4">No requests found</td>
//                            </tr>-->
                            <%
                            }
                                else {
                            %>
                            <tr>
                                <td colspan="4">No requests found</td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
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

        <script src="js/update-img.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>
