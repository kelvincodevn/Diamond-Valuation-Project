<%-- 
    Document   : CustomerHome
    Created on : Jun 15, 2024, 1:22:28 PM
    Author     : Admin
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/profile-style.css">
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
                <li class="nav-item active">
                    <a class="nav-link" href="CustomerHome.jsp">Home <span class="sr-only">(current)</span></a>
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
                  <a class="nav-link" href="#">Contact us</a>
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

    <section class=" slider_section ">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container">
              <div class="row">
                <div class="col-md-7">
                  <div class="detail-box">
                    <h1>
                      Your Saftey <br>
                      <span>
                        Our Responsibility
                      </span>
                    </h1>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                      sed do eiusmod magna aliqua. Ut enim ad minim veniam
                    </p>
                    <div class="btn-box">
                        <a href="CustomerAbout.jsp" class="btn-1"> Read more </a>
                        <a href="CustomerValuation.jsp" class="btn-2">Valuate</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container">
              <div class="row">
                <div class="col-md-7">
                  <div class="detail-box">
                    <h1>
                      Your Saftey <br>
                      <span>
                        Our Responsibility
                      </span>
                    </h1>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                      sed do eiusmod magna aliqua. Ut enim ad minim veniam
                    </p>
                    <div class="btn-box">
                        <a href="CustomerAbout.jsp" class="btn-1"> Read more </a>
                      <a href="CustomerValuation.jsp" class="btn-2">Valuate</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container">
              <div class="row">
                <div class="col-md-7">
                  <div class="detail-box">
                    <h1>
                      Your Saftey <br>
                      <span>
                        Our Responsibility
                      </span>
                    </h1>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                      sed do eiusmod magna aliqua. Ut enim ad minim veniam
                    </p>
                    <div class="btn-box">
                        <a href="CustomerAbout.jsp" class="btn-1"> Read more </a>
                      <a href="CustomerValuation.jsp" class="btn-2">Valuate</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container idicator_container">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
        </div>
      </div>
    </section>
  </div>
    
  <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6 px-0">
          <div class="img_container">
            <div class="img-box">
                <img src="images/diamond-inspection.jpg" alt="" />
            </div>
          </div>
        </div>
        <div class="col-md-6 px-0">
          <div class="detail-box">
            <div class="heading_container ">
              <h2>
                Who Are We?
              </h2>
            </div>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
              enim ad minim veniam, quis nostrud exercitation ullamco laboris
              nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
              in reprehenderit in voluptate velit
            </p>
            <div class="btn-box">
                <a href="CustomerAbout.jsp">
                Read More
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>  

  <section class="client_section layout_padding">
    <div class="container ">
      <div class="heading_container heading_center">
        <h2>
          Client feedbacks
        </h2>
      </div>
      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="box">
              <div class="img-box">
                  <img src="images/client1.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Alex B
                </h4>
                <p>
                  Highly Recommend DVS. I am VERY grateful to DVS for saving me from a would-be terrible purchase. Highly recommend!
                </p>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="box">
              <div class="img-box">
                  <img src="images/client2.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Igor G
                </h4>
                <p>
                  DVS is a Tremendous Resource. The cut score was a terrific way to hone in on the best candidates when faced with the overwhelming number of options available online.
                </p>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="box">
              <div class="img-box">
                  <img src="images/client3.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Kim V
                </h4>
                <p>
                  The Most Beautiful Diamond I’ve Ever Seen! By using the DVS calculator, I was able to find the best cut diamond at the best price. My diamond is breathtaking.
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel_btn-box">
          <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </section>
    
<section class="contact_section layout_padding">
    <div class="contact_bg_box">
      <div class="img-box">
          <img src="images/background3.jpg" alt="">
      </div>
    </div>
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Get In touch
        </h2>
      </div>
      <div class="">
        <div class="row">
          <div class="col-md-7 mx-auto">
            <form action="#">
              <div class="contact_form-container">
                <div>
                  <div>
                    <input type="text" placeholder="Full Name" />
                  </div>
                  <div>
                    <input type="email" placeholder="Email " />
                  </div>
                  <div>
                    <input type="text" placeholder="Phone Number" />
                  </div>
                  <div class="">
                    <input type="text" placeholder="Message" class="message_input" />
                  </div>
                  <div class="btn-box ">
                    <button type="submit">
                      Send
                    </button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>    
    
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

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/custom.js"></script>
</body>
</html>
