﻿<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Diamond Valuation Dashboard </title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.jpg">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" href="assets/css/style.css"> </head>

    <body>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="index.jsp" class="logo"> <img src="images/Kingsman logo.jpg" width="50" height="70" alt="logo"> <span class="logoclass">DIAMOND VALUATION</span> </a>
                    <a href="index.jsp" class="logo logo-small"> <img src="assets/img/hotel_logo.png" alt="Logo" width="30" height="30"> </a>
                </div>
                <a href="javascript:void(0);" id="toggle_btn"> <i class="fe fe-text-align-left"></i> </a>
                <a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i> </a>
                <ul class="nav user-menu">
                    <li class="nav-item dropdown noti-dropdown">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <i class="fe fe-bell"></i> <span class="badge badge-pill">3</span> </a>
                        <div class="dropdown-menu notifications">
                            <div class="topnav-dropdown-header"> <span class="notification-title">Notifications</span> <a href="javascript:void(0)" class="clear-noti"> Clear All </a> </div>
                            <div class="noti-content">
                                <ul class="notification-list">
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media"> <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-02.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Carlson Tech</span> has approved <span class="noti-title">your estimate</span></p>
                                                    <p class="noti-time"><span class="notification-time">4 mins ago</span> </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media"> <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-11.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">International Software
                                                            Inc</span> has sent you a invoice in the amount of <span class="noti-title">$218</span></p>
                                                    <p class="noti-time"><span class="notification-time">6 mins ago</span> </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media"> <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-17.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">John Hendry</span> sent a cancellation request <span class="noti-title">Apple iPhone
                                                            XR</span></p>
                                                    <p class="noti-time"><span class="notification-time">8 mins ago</span> </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media"> <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-13.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Mercury Software
                                                            Inc</span> added a new product <span class="noti-title">Apple
                                                            MacBook Pro</span></p>
                                                    <p class="noti-time"><span class="notification-time">12 mins ago</span> </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="topnav-dropdown-footer"> <a href="#">View all Notifications</a> </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar-01.jpg" width="31" alt="Soeng Souy"></span> </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm"> <img src="assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle"> </div>
                                <div class="user-text">
                                    <h6>Soeng Souy</h6>
                                    <p class="text-muted mb-0">Administrator</p>
                                </div>
                            </div> <a class="dropdown-item" href="profile.jsp">My Profile</a> <a class="dropdown-item" href="settings.jsp">Account Settings</a> <a class="dropdown-item" href="MainController?btAction=Logout">Logout</a> </div>
                    </li>
                </ul>
                <div class="top-nav-search">
                    <form>
                        <input type="text" class="form-control" placeholder="Search here">
                        <button class="btn" type="submit"><i class="fas fa-search"></i></button>
                    </form>
                </div>
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
            <%
                Cookie[] cookies = request.getCookies();
                String firstName = null;
                String lastName = null;
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        String k = cookie.getName();
                        String v = cookie.getValue();
                        if (k.equals("FIRSTNAME")) {
                            firstName = v;
                        }else if(k.equals("LASTNAME")) {
                            lastName = v;
                        }
                    }
                }
            %>   
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-sm-12 mt-5">
                                <h3 class="page-title mt-3">Welcome back <%=firstName%> <%=lastName%>!</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item active">Dashboard</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card board1 fill">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <div>
                                            <h3 class="card_widget_header">236</h3>
                                            <h6 class="text-muted">Total request</h6> </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-plus">
                                                <path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="8.5" cy="7" r="4"></circle>
                                                <line x1="20" y1="8" x2="20" y2="14"></line>
                                                <line x1="23" y1="11" x2="17" y2="11"></line>
                                                </svg></span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card board1 fill">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <div>
                                            <h3 class="card_widget_header">180</h3>
                                            <h6 class="text-muted">Available Rooms</h6> </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-dollar-sign">
                                                <line x1="12" y1="1" x2="12" y2="23"></line>
                                                <path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path>
                                                </svg></span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card board1 fill">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <div>
                                            <h3 class="card_widget_header">1538</h3>
                                            <h6 class="text-muted">Enquiry</h6> </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-plus">
                                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z">
                                                </path>
                                                <polyline points="14 2 14 8 20 8"></polyline>
                                                <line x1="12" y1="18" x2="12" y2="12"></line>
                                                <line x1="9" y1="15" x2="15" y2="15"></line>
                                                </svg></span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card board1 fill">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <div>
                                            <h3 class="card_widget_header">364</h3>
                                            <h6 class="text-muted">Collections</h6> </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe">
                                                <circle cx="12" cy="12" r="10"></circle>
                                                <line x1="2" y1="12" x2="22" y2="12"></line>
                                                <path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z">
                                                </path>
                                                </svg></span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-lg-6">
                            <div class="card card-chart">
                                <div class="card-header">
                                    <h4 class="card-title">VISITORS</h4> </div>
                                <div class="card-body">
                                    <div id="line-chart"></div>
                                </div>
                            </div>
                        </div>
                        
                       
                        <div class="col-md-12 col-lg-6">
                            <div class="card card-chart">
                                <div class="card-header">
                                    <h4 class="card-title">ROOMS BOOKED</h4> </div>
                                <div class="card-body">
                                    <div id="donut-chart"></div>
                                </div>
                            </div>
                        </div>
                        
                        
                    </div>
                    <div class="row">
                        <div class="col-md-12 d-flex">
                            <div class="card card-table flex-fill">
                                <div class="card-header">
                                    <h4 class="card-title float-left mt-2">request</h4>
                                    <button type="button" class="btn btn-primary float-right veiwbutton">Veiw All</button>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-center">
                                            <thead>
                                                <tr>
                                                    <th>request ID</th>
                                                    <th>Name</th>
                                                    <th>Email ID</th>
                                                    <th>Aadhar Number</th>
                                                    <th class="text-center">Room Type</th>
                                                    <th class="text-right">Number</th>
                                                    <th class="text-center">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-nowrap">
                                                        <div>BKG-0001</div>
                                                    </td>
                                                    <td class="text-nowrap">Tommy Bernal</td>
                                                    <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="3743585a5a4e55524559565b77524f565a475b521954585a">[email&#160;protected]</a></td>
                                                    <td>12414786454545</td>
                                                    <td class="text-center">Double</td>
                                                    <td class="text-right">
                                                        <div>631-254-6480</div>
                                                    </td>
                                                    <td class="text-center"> <span class="badge badge-pill bg-success inv-badge">INACTIVE</span> </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-nowrap">
                                                        <div>BKG-0002</div>
                                                    </td>
                                                    <td class="text-nowrap">Ellen Thill</td>
                                                    <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="89fbe0eae1e8fbedebfbe6ebfafdc9ecf1e8e4f9e5eca7eae6e4">[email&#160;protected]</a></td>
                                                    <td>5456223232322</td>
                                                    <td class="text-center">Double</td>
                                                    <td class="text-right">
                                                        <div>830-468-1042</div>
                                                    </td>
                                                    <td class="text-center"> <span class="badge badge-pill bg-success inv-badge">INACTIVE</span> </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-nowrap">
                                                        <div>BKG-0003</div>
                                                    </td>
                                                    <td class="text-nowrap">Corina Kelsey</td>
                                                    <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="76131a1a1318021e1f1a1a36130e171b061a135815191b">[email&#160;protected]</a></td>
                                                    <td>454543232625</td>
                                                    <td class="text-center">Single</td>
                                                    <td class="text-right">
                                                        <div>508-335-5531</div>
                                                    </td>
                                                    <td class="text-center"> <span class="badge badge-pill bg-success inv-badge">INACTIVE</span> </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-nowrap">
                                                        <div>BKG-0004</div>
                                                    </td>
                                                    <td class="text-nowrap">Carolyn Lane</td>
                                                    <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="50333f22393e313b353c23352910373d31393c7e333f3d">[email&#160;protected]</a></td>
                                                    <td>2368989562621</td>
                                                    <td class="text-center">Double</td>
                                                    <td class="text-right">
                                                        <div>262-260-1170</div>
                                                    </td>
                                                    <td class="text-center"> <span class="badge badge-pill bg-success inv-badge">INACTIVE</span> </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-nowrap">
                                                        <div>BKG-0005</div>
                                                    </td>
                                                    <td class="text-nowrap">Denise</td>
                                                    <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="1c7f7d6e73706572707d72795c7b717d7570327f7371">[email&#160;protected]</a></td>
                                                    <td>3245455582287</td>
                                                    <td class="text-center">Single</td>
                                                    <td class="text-right">
                                                        <div>570-458-0070</div>
                                                    </td>
                                                    <td class="text-center"> <span class="badge badge-pill bg-success inv-badge">INACTIVE</span> </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/raphael/raphael.min.js"></script>
        <script src="assets/plugins/morris/morris.min.js"></script>
        <script src="assets/js/chart.morris.js"></script>
        <script src="assets/js/script.js"></script>
    </body>

</html>



