<%-- 
    Document   : CustomerAbout
    Created on : Jun 17, 2024, 12:07:40 PM
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
                <li class="nav-item active">
                    <a class="nav-link" href="CustomerAbout.jsp"> About <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CustomerValuation.jsp"> Services</a>
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
    
    <div>
        <div class="container mt-5">
    <h1 class="text-center mb-4">About Diamond Valuation System (DVS)</h1>

    <section id="introduction">
        <h2 class="section-title">Introduction</h2>
        <p>Welcome to the Diamond Valuation System (DVS), where we revolutionize the way diamonds are valued. Our state-of-the-art system leverages advanced technology and expert knowledge to provide accurate, reliable, and transparent diamond valuations.</p>
        <p><strong>Mission:</strong> To provide the most accurate and trustworthy diamond valuations, empowering both buyers and sellers to make informed decisions.</p>
    </section>
    <hr>
    <section id="history" class="mt-5">
        <h2 class="section-title">Our History</h2>
        <p>DVS was founded in 20XX by a team of gemologists and tech enthusiasts who saw a need for a more reliable diamond valuation process. Over the years, we have continually improved our algorithms and expanded our database, making DVS a leader in the diamond valuation industry.</p>
    </section>

    <section id="team" class="mt-5">
        <h2 class="section-title">Meet the Team</h2>
        <div class="row">
            <div class="col-md-4 text-center team-member">
                <img src="images/client1.jpg" alt="Jane Doe" class="img-fluid rounded-circle mb-2">
                <h3>Jane Doe</h3>
                <p>CEO & Founder</p>
                <p>Jane has over 20 years of experience in the diamond industry and a passion for innovation.</p>
            </div>
            <div class="col-md-4 text-center team-member">
                <img src="images/client2.jpg" alt="John Smith" class="img-fluid rounded-circle mb-2">
                <h3>John Smith</h3>
                <p>CTO</p>
                <p>John leads the tech team, ensuring that DVS remains at the forefront of diamond valuation technology.</p>
            </div>
            <div class="col-md-4 text-center team-member">
                <img src="images/client3.jpg" alt="Alice Johnson" class="img-fluid rounded-circle mb-2">
                <h3>Alice Johnson</h3>
                <p>Chief Gemologist</p>
                <p>Alice brings her extensive knowledge of diamonds to ensure the highest standards of accuracy in our valuations.</p>
            </div>
        </div>
    </section>
    <hr>
    <section id="values" class="mt-5">
        <h2 class="section-title">Our Values</h2>
        <p>At DVS, we are committed to:</p>
        <ul>
            <li>Accuracy: Providing the most precise valuations using cutting-edge technology.</li>
            <li>Transparency: Ensuring all valuations are clear and understandable.</li>
            <li>Integrity: Upholding the highest ethical standards in all our operations.</li>
            <li>Innovation: Continuously improving our system to stay ahead of industry trends.</li>
        </ul>
    </section>

    <section id="services" class="mt-5">
        <h2 class="section-title">What We Offer</h2>
        <p>DVS provides a comprehensive suite of services designed to meet the needs of both diamond buyers and sellers, including:</p>
        <ul>
            <li>Accurate Diamond Valuations: Utilizing advanced algorithms and extensive databases.</li>
            <li>Certification: Issuing trusted certificates for diamond authenticity and quality.</li>
            <li>Market Analysis: Offering insights into current market trends and pricing.</li>
            <li>Consultation: Providing expert advice to help you make informed decisions.</li>
        </ul>
    </section>

    <section id="impact" class="mt-5">
        <h2 class="section-title">Our Impact</h2>
        <p>Since our inception, DVS has helped thousands of clients achieve fair valuations for their diamonds. Our success stories include:</p>
        <ul>
            <li>Aiding sellers in getting top market prices for their diamonds.</li>
            <li>Assisting buyers in finding diamonds that offer the best value for their investment.</li>
            <li>Supporting industry professionals with reliable valuation tools and data.</li>
        </ul>
    </section>
    <hr>
    <section id="contact" class="mt-5">
        <h2 class="section-title">Contact Us</h2>
        <p>We are here to help you with all your diamond valuation needs. Reach out to us at:</p>
        <p>Address: FPTU HCM</p>
        <p>Email: <a href="#">demo@gmail.com</a></p>
        <p>Phone: +01 1234567890</p>
        <p>Follow us on <a href="#" target="_blank">Twitter</a>, <a href="#" target="_blank">Facebook</a>, and <a href="#" target="_blank">LinkedIn</a>.</p>
    </section>

    <section id="media" class="mt-5">
        <h2 class="section-title">Media & Press</h2>
        <p>DVS has been featured in numerous publications and has received several industry awards, including:</p>
        <ul>
            <li>Best Diamond Valuation Service 20XX - Gem Awards</li>
            <li>Innovator of the Year 20XX - Diamond Industry Magazine</li>
        </ul>
    </section>
    <hr>
    <section id="cta" class="mt-5 text-center">
        <h2 class="section-title">Get Involved</h2>
        <p><a href="CustomerContact.jsp" class="btn btn-primary">Contact Us</a></p>
    </section>
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
    
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/custom.js"></script>
</body>
</html>
