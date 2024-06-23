<%@page import="java.sql.SQLException"%>
<%@page import="group6.entity.UsersDTO"%>
<%@page import="group6.dao.RegistrationDAO"%>
<%@page import="group6.dao.ErrorRegistration"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Diamond Valuation Dashboard </title>

        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">

        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/css/style.css">

    </head>
    <body>

        <div class="main-wrapper">

            <div class="header">

                <div class="header-left">
                    <a href="index.jsp" class="logo">
                        <img src="assets/img/hotel_logo.png" width="50" height="70" alt="logo">
                        <span class="logoclass">DIAMOND VALUATION</span>
                    </a>
                    <a href="index.jsp" class="logo logo-small">
                        <img src="assets/img/hotel_logo.png" alt="Logo" width="30" height="30">
                    </a>
                </div>

                <a href="javascript:void(0);" id="toggle_btn">
                    <i class="fe fe-text-align-left"></i>
                </a>

                <a class="mobile_btn" id="mobile_btn">
                    <i class="fas fa-bars"></i>
                </a>


                <ul class="nav user-menu">

                    <li class="nav-item dropdown noti-dropdown">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <i class="fe fe-bell"></i> <span class="badge badge-pill">3</span>
                        </a>
                        <div class="dropdown-menu notifications">
                            <div class="topnav-dropdown-header">
                                <span class="notification-title">Notifications</span>
                                <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
                            </div>
                            <div class="noti-content">
                                <ul class="notification-list">
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-02.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Carlson Tech</span> has
                                                        approved <span class="noti-title">your estimate</span></p>
                                                    <p class="noti-time"><span class="notification-time">4 mins ago</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-11.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">International Software
                                                            Inc</span> has sent you a invoice in the amount of <span class="noti-title">$218</span></p>
                                                    <p class="noti-time"><span class="notification-time">6 mins ago</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-17.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">John Hendry</span> sent
                                                        a cancellation request <span class="noti-title">Apple iPhone
                                                            XR</span></p>
                                                    <p class="noti-time"><span class="notification-time">8 mins ago</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-13.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Mercury Software
                                                            Inc</span> added a new product <span class="noti-title">Apple
                                                            MacBook Pro</span></p>
                                                    <p class="noti-time"><span class="notification-time">12 mins ago</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="topnav-dropdown-footer">
                                <a href="#">View all Notifications</a>
                            </div>
                        </div>
                    </li>


                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar-01.jpg" width="31" alt="Soeng Souy"></span>
                        </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm">
                                    <img src="assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
                                </div>
                                <div class="user-text">
                                    <h6>Soeng Souy</h6>
                                    <p class="text-muted mb-0">Administrator</p>
                                </div>
                            </div>
                            <a class="dropdown-item" href="profile.jsp">My Profile</a>
                            <a class="dropdown-item" href="settings.jsp">Account Settings</a>
                            <a class="dropdown-item" href="MainController?btAction=Logout">Logout</a>
                        </div>
                    </li>

                </ul>

            </div>


            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="active"> <a href="index.jsp"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a> </li>
                            <li class="list-divider"></li>
                            <li> <a href="MainController?btAction=ViewRequestList"><i class="fas fa-suitcase"></i> <span>Request</span></a> </li>
                            <li> <a href="MainController?btAction=ViewCustomer"><i class="fas fa-user"></i> <span>Customers</span></a> </li>
                            <li> <a href="MainController?btAction=ViewStaff"><i class="fas fa-user"></i> <span>Employees</span></a> </li>
                            <li> <a href="MainController?btAction=ViewService"><i class="far fa-money-bill-alt"></i> <span>Pricing</span></a> </li>

                            <li class="submenu"> <a href="#"><i class="fe fe-table"></i> <span> Reports </span> <span class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="CommitmentPaper.jsp">Commitment Paper </a></li>
                                    <li><a href="SealingRecord.jsp">Sealing Record </a></li>
                                    <li><a href="ValuationReceipt.jsp">Sealing Receipt </a></li>
                                    <li><a href="ValuationReport.jsp">Valuation Report </a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title mt-5">Edit Profile</h3>
                            </div>
                        </div>
                    </div>
                    <div class="box inform_css">
                        <p class="card-title title_menu">Basic Informations</p>
                        <div class="row">
                            <div class="col-lg-12">
                                <%
                                    Cookie[] cookies = request.getCookies();
                                    RegistrationDAO dao = new RegistrationDAO();
                                    UsersDTO user = new UsersDTO();
                                    String userID = null;
                                    try {
                                        if (cookies != null) {
                                            for (Cookie cookie : cookies) {
                                                String k = cookie.getName();
                                                String v = cookie.getValue();
                                                if (k.equals("USERNAMEID")) {
                                                    userID = v;
                                                }
                                            }
                                        }
                                        if (userID != null) {
                                            user = dao.viewProfile(userID);
                                        }
                                    } catch (SQLException | ClassNotFoundException ex) {
                                        ex.printStackTrace();
                                    }

                                    String userNameLenError = "";
                                    String fistNameLenError = "";
                                    String lastNameLenError = "";
                                    String accountExisted = "";
                                    String emailValidationError = "";
                                    String phoneValidationError = "";

                                    ErrorRegistration errors = (ErrorRegistration) request.getAttribute("ERRORS");
                                    if (errors != null) {
                                        userNameLenError = errors.getUserNameLenError();                                     
                                        fistNameLenError = errors.getFirstNameLenError();
                                        lastNameLenError = errors.getLastNameLenError();
                                        accountExisted = errors.getAccountExisted();
                                        emailValidationError = errors.getEmailValidationError();
                                        phoneValidationError = errors.getPhoneValidationError();
                                    }
                                %>
                                <form action="MainController" method="post">
                                    <div class="row formtype">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Username</label>
                                                <input class="form-control" name="txtUserName" type="text" value="<%=user.getUserName()%>">
                                                <font color="red">${requestScope.ERRORS.userNameLenError}</font>
                                                <font color="red"><p>${requestScope.ErrorMessage}</p></font>
                                            </div>
                                        </div> 
                                        <div class="col-md-4">                                           
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <input class="form-control" name="txtFirstName" type="text" value="<%=user.getFirstName()%>">
                                                  <font color="red">${requestScope.ERRORS.firstNameLenError}</font>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input class="form-control" name="txtLastName" type="text" value="<%=user.getLastName()%>">
                                                 <font color="red">${requestScope.ERRORS.lastNameLenError}</font>
                                            </div>
                                        </div>    
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input class="form-control" name="txtEmail" type="text" value="<%=user.getEmail()%>">
                                                <font color="red">${requestScope.ERRORS.emailValidationError}</font> 
                                            </div>
                                        </div> 
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Phone number</label>
                                                <input class="form-control" name="txtPhoneNumber" type="text" value="<%=user.getPhoneNumber()%>">
                                                <font color="red">${requestScope.ERRORS.phoneValidationError}</font>
                                            </div>
                                        </div>                                       
                                    </div>
                            </div>
                        </div>
                    </div>
                    <!--                    <button type="submit" class="btn btn-primary buttonedit mt-3">Save</button>-->
                    <input type="submit" name="btAction" value="Save" class="btn btn-primary buttonedit mt-3">
                    </form>

                </div>
            </div>

        </div>


        <script src="assets/js/jquery-3.5.1.min.js"></script>

        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/moment.min.js"></script>

        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>


        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>

        <script src="assets/js/script.js"></script>
        <script>
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT'

                });
            });
        </script>
    </body>
</html>


