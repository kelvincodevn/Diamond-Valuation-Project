<%-- 
    Document   : CustomerDashboard-Tracking
    Created on : Jun 11, 2024, 3:09:20 PM
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    
    String[] statuses = new String[7];
    for (int i = 0; i < statuses.length; i++) {
        statuses[i] = (String) request.getSession().getAttribute("stepStatus" + i);
        if (statuses[i] == null) {
            statuses[i] = ""; // Default to an empty string if not set
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
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/progess-bar.css">
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
              <a class="navbar-brand" href="CustomerHome.jsp">
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
                    <a class="nav-link" href="CustomerHome.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CustomerAbout.jsp"> About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CustomerValuation.jsp"> Services </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Calculator </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CustomerContact.jsp">Contact us</a>
                </li>
              </ul>
                
            <div class="profile-dropdown">
                <button class="profile-button">
                    <img src="assets/img/profiles/avatar-13.jpg" alt="Profile Picture">
                    <span style="color: white"><%= userName %></span>
                </button>
                <div class="profile-dropdown-content">
                    <a href="CustomerDashboard-Profile.jsp">Edit Profile</a>
                    <a href="#">Settings & Privacy</a>
                    <a href="login.jsp">Logout</a>
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
                <h5 class="text-center"><%= userName %></h5>
                <a href="CustomerDashboard-Profile.jsp">Profile</a>
                <a class="active" href="CustomerDashboard-Tracking.jsp">Valuation Tracking</a>
                <a href="CustomerDashboard-History.jsp">Valuation History</a>
                <a href="CustomerDashboard-Feedback.jsp">Services Feedback</a>
            </div>
            
            <div class="progress-container">
                <div id="progress-bar" class="progressbar">
                    <div class="step <%= statuses[0] %>">
                        <div class="icon"><i class="fas fa-hourglass-start"></i></div>
                        <div class="step-title">Submitted</div>
                    </div>
                    <div class="step <%= statuses[1] %>">
                        <div class="icon"><i class="fas fa-comments"></i></div>
                        <div class="step-title">Consulting</div>
                    </div>
                    <div class="step <%= statuses[2] %>">
                        <div class="icon"><i class="fas fa-credit-card"></i></div>
                        <div class="step-title">Payment</div>
                    </div>
                    <div class="step <%= statuses[3] %>">
                        <div class="icon"><i class="fas fa-vial"></i></div>
                        <div class="step-title">Sample Received</div>
                    </div>
                    <div class="step <%= statuses[4] %>">
                        <div class="icon"><i class="fas fa-cogs"></i></div>
                        <div class="step-title">Valuation in Progress</div>
                    </div>
                    <div class="step <%= statuses[5] %>">
                        <div class="icon"><i class="fas fa-envelope"></i></div>
                        <div class="step-title">Result Sent</div>
                    </div>
                    <div class="step <%= statuses[6] %>">
                        <div class="icon"><i class="fas fa-info-circle"></i></div>
                        <div class="step-title">Order Status</div>
                    </div>
                </div>
                <div id="timestamps-container" class="timestamps-container p-3 border border-success rounded bg-light">
                    <% 
                        for (int i = 0; i < 7; i++) {
                            String timestamp = (String) request.getSession().getAttribute("timestamp" + i);
                            if (timestamp != null) {
                    %>
                                <div class="timestamp">Step <%= i + 1 %>: <%= timestamp %></div>
                    <% 
                            }
                        }
                    %>
                </div>
            </div>

        </div>
    </div>

    
    
<section class="info_section ">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="info_logo">
              <a class="navbar-brand" href="CustomerHome.jsp">
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
                  <a href="CustomerHome.jsp">
                  Home
                </a>
              </li>
              <li>
                  <a href="CustomerAbout.jsp">
                  About Us
                </a>
              </li>
              <li>
                  <a href="CustomerValuation.jsp">
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
          
  <script src="js/progressbar.js"></script>
  <script src="js/update-img.js"></script>
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/custom.js"></script>
</body>
</html>
