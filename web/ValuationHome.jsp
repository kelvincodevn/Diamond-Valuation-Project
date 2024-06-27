<%-- 
    Document   : ValuationHome
    Created on : May 25, 2024, 8:43:33 AM
    Author     : DELL
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" type="text/css" href="css/valuation-style.css">
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
                    <a class="nav-link" href="AboutUs.jsp"> About</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="ValuationHome.jsp"> Services <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Calculator </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ContactUs.jsp">Contact us</a>
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
    
    <div>
        <div class="container">
            <br>
            <h1>Diamond Evaluation Request Form</h1>
            <br>
            <div> Please tell us about the diamond you want to valuate and enter details below to receive a feedback from DVS.</div>
            <br>
            <div>Full appraisal detail form</div>
            <br>
            <hr>
            <br>
            
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="firstName">First Name *</label>
                    <input type="text" name="firstName" id="firstName" class="form-control" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="lastName">Last Name *</label>
                    <input type="text" name="lastName" id="lastName" class="form-control" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="email">Email *</label>
                    <input type="email" name="email" id="email" class="form-control" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="phone">Phone *</label>
                    <input type="tel" name="phone" id="phone" class="form-control" required>
                </div>
            </div>
            <hr>
            <label for="service">Choose type of service </label>
            <br>
            <br>
            <div class="row">
                <div class="col-md-4">
                    <div class="card pricing-card" onclick="chooseService('Basic', this)">
                        <div class="card-body">
                            <h5 class="card-title">BASIC</h5>
                            <h6 class="card-price">$100.0</h6>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>✔ Accurate Valuation</li>
                                <li>✔ Contain all the critical information</li>
                                <li>✔ Following the qualified process within 6 days</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card pricing-card" onclick="chooseService('Advanced', this)">
                        <div class="card-body">
                            <h5 class="card-title">ADVANCED</h5>
                            <h6 class="card-price">$200.0</h6>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>✔ Accurate Valuation</li>
                                <li>✔ Contain all the critical information</li>
                                <li>✔ Provide information upon individual request</li>
                                <li>✔ Following the qualified process within 4 days</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card pricing-card" onclick="chooseService('Express', this)">
                        <div class="card-body">
                            <h5 class="card-title">EXPRESS</h5>
                            <h6 class="card-price">$150.0</h6>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>✔ Accurate Valuation</li>
                                <li>✔ Contain all the critical information</li>
                                <li>✔ Provide information upon individual request</li>
                                <li>✔ Provide extra consulting</li>
                                <li>✔ Following the qualified process within 36 hours</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <br>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <br>
        </div>
        <br>
        <br>
        <br>
        
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
    
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="js/chooseService.js"></script>
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/custom.js"></script>
</body>
</html>
