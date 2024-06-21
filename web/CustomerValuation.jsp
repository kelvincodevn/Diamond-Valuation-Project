<%-- 
    Document   : CustomerValuation
    Created on : Jun 17, 2024, 12:07:20 PM
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
    <link rel="stylesheet" type="text/css" href="css/valuation-style.css">
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
                <li class="nav-item">
                    <a class="nav-link" href="CustomerAbout.jsp"> About</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="CustomerValuation.jsp"> Services <span class="sr-only">(current)</span></a>
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
            <form action="submitValuation" method="post" enctype="multipart/form-data">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="reportType">Report or Appraisal Type</label>
                    <select name="reportType" id="reportType" class="form-control">
                        <option value="">Select</option>
                        <option value="Not Certified">Not Certified</option>
                        <option value="AGS">AGS</option>
                        <option value="GIA">GIA</option>
                        <option value="IGI">IGI</option>
                        <option value="Tiffany Certified">Tiffany Certified</option>
                        <option value="EGL">EGL</option>
                        <option value="Jewelers Appraisal">Jewelers Appraisal</option>
                        <option value="Insurance Appraisal">Insurance Appraisal</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="reportNumber">Report or Appraisal Number</label>
                    <input type="text" name="reportNumber" id="reportNumber" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <div>
                <label for="uploadReport">Upload your Report or Appraisal</label>
                <input type="file" name="uploadReport" id="uploadReport" class="form-control-file" accept=".jpg,.jpeg,.png,.pdf,.bmp">
                </div>
                <div>Accept file types: jpg, jpeg, png, pdf, bmp</div>
                <br>
                <div>Certificates and appraisals enable us to provide a higher and more accurate price estimate. If you have a diamond appraisal or grading report, please upload it.</div>
            <br>
            <hr>
            <br>
            <div class="form-group">
                <label>Select the Shape of Your Diamond *</label>
                <div class="form-row">
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapeRound" value="Round" required>
                            <img src="images/round.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapeRound">Round</label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapeOval" value="Oval">
                            <img src="images/oval.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapeOval">Oval</label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapeHeart" value="Heart">
                            <img src="images/heart.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapeHeart">Heart</label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapePrincess" value="Princess">
                            <img src="images/princess.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapePrincess">Princess</label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapeCushion" value="Cushion">
                            <img src="images/cushion.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapeCushion">Cushion</label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapeBaguette" value="Baguette">
                            <img src="images/baguette.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapeBaguette">Baguette</label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapeEmerald" value="Emerald">
                            <img src="images/emerald.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapeEmerald">Emerald</label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapeRadiant" value="Radiant">
                            <img src="images/radiant.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapeRadiant">Radiant</label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapePear" value="Pear">
                            <img src="images/pear.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapePear">Pear</label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="shape" id="shapeMarquise" value="Marquise">
                            <img src="images/marquise.jpg" style="width: 100px; height: 100px">
                            <label class="form-check-label" for="shapeMarquise">Marquise</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                    <label for="caratWeight">Carat Weight of Diamond *</label>
                    <input type="number" step="0.01" name="caratWeight" id="caratWeight" class="form-control" required>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="clarity">Clarity of Diamond *</label>
                    <select name="clarity" id="clarity" class="form-control" required>
                        <option value="">Select</option>
                        <option value="Not Sure">Not Sure</option>
                        <option value="FL">FL</option>
                        <option value="IF">IF</option>
                        <option value="VVS1">VVS1</option>
                        <option value="VVS2">VVS2</option>
                        <option value="VS1">VS1</option>
                        <option value="VS2">VS2</option>
                        <option value="SI1">SI1</option>
                        <option value="SI2">SI2</option>
                        <option value="SI3">SI3</option>
                        <option value="I1">I1</option>
                        <option value="I2">I2</option>
                        <option value="I3">I3</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="color">Color of Diamond *</label>
                    <select name="color" id="color" class="form-control" required>
                        <option value="">Select</option>
                        <option value="D">D</option>
                        <option value="E">E</option>
                        <option value="F">F</option>
                        <option value="G">G</option>
                        <option value="H">H</option>
                        <option value="I">I</option>
                        <option value="K">K</option>
                        <option value="L">L</option>
                        <option value="M">M</option>
                        <option value="N">N</option>
                        <option value="O">O</option>
                        <option value="P">P</option>
                        <option value="Fancy">Fancy</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="cut">Cut of Diamond *</label>
                    <select name="cut" id="cut" class="form-control" required>
                        <option value="">Select</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                        <option value="VGood">Very Good</option>
                        <option value="Excellent">Excellent</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="symmetry">Symmetry of Diamond *</label>
                    <select name="symmetry" id="symmetry" class="form-control" required>
                        <option value="">Select</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                        <option value="VGood">Very Good</option>
                        <option value="Excellent">Excellent</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="polish">Polish of Diamond *</label>
                    <select name="polish" id="polish" class="form-control" required>
                        <option value="">Select</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                        <option value="VGood">Very Good</option>
                        <option value="Excellent">Excellent</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="fluorescence">Fluorescence of Diamond *</label>
                    <select name="fluorescence" id="fluorescence" class="form-control" required>
                        <option value="">Select</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                        <option value="VGood">Very Good</option>
                        <option value="Excellent">Excellent</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="measurement">Measurement *</label>
                <input type="text" name="measurement" id="measurement" class="form-control" pattern="\d+x\d+x\d+" title="Please enter a measurement in the format numberxnumberxnumber (e.g., 10x20x30)" required>
                <p id="measurement-error" style="color: red; display: none;">Wrong input format. Please use the format numberxnumberxnumber (e.g., 10x20x30).</p>
                <div>Enter in the format "number"x"number"x"number" (e.g., 10x20x30)</div>
            </div>
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
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <br>
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
