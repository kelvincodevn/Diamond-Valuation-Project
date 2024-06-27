<%-- 
    Document   : RequestList
    Created on : Jun 25, 2024, 12:35:19 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diamond Valuation Request List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="css/list-style.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">

    <link rel="stylesheet" href="assets/css/feathericon.min.css">
    <link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">

    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body style="background-color: #f2f5fa">
<div class="container">
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
                            <a class="dropdown-item" href="login.jsp">Logout</a>
                        </div>
                    </li>

                </ul>

            </div>
    
    <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li> <a href="index.jsp"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a> </li>
                            <li  class="active"> <a href="RequestList.jsp"><i class="fas fa-suitcase"></i> <span>Request</span></a> </li>
                            <li class="list-divider"></li>
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
        <div class="outer-box">
                <div class="content container-fluid">
                    <h2 class="page-title">Diamond Valuation Request List</h2>

                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="all-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">All ()</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="submitted-tab" data-toggle="tab" href="#submitted" role="tab" aria-controls="submitted" aria-selected="false">Submitted ()</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="inprogress-tab" data-toggle="tab" href="#inprogress" role="tab" aria-controls="inprogress" aria-selected="false">In progress ()</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="completed-tab" data-toggle="tab" href="#completed" role="tab" aria-controls="completed" aria-selected="false">Completed ()</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="cancelled-tab" data-toggle="tab" href="#cancelled" role="tab" aria-controls="cancelled" aria-selected="false">Cancelled ()</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="sealed-tab" data-toggle="tab" href="#sealed" role="tab" aria-controls="sealed" aria-selected="false">Sealed ()</a>
                        </li>
                    </ul>

                    <div class="filter-section">
                        <div class="row">
                            <div class="col-md-4">
                                <input type="text" class="form-control" placeholder="Request ID">
                            </div>
                            <div class="col-md-4">
                                <select class="form-control">
                                    <option selected>Requested date</option>
                                    <option value="1">Today</option>
                                    <option value="2">This week</option>
                                    <option value="3">This month</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <button class="btn btn-primary btn-filter">Filter</button>
                            </div>
                        </div>
                    </div>
                
    
                <div class="tab-content" id="myTabContent" style="border: none">
                    <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">Request ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Requested Date</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row">001</th>
                                    <td>John Doe</td>
                                    <td>01/06/2022</td>
                                    <td>In progress</td>
                                    <td>
                                        <div class="btn-wrapper">
                                            <a href="RequestDetail.jsp" class="btn btn-primary btn-sm">Detail</a>
                                            <a href="RequestTracking.jsp" class="btn btn-primary btn-sm">Tracking</a>
                                        </div>
                                    </td>
                                </tr>
                                <!-- Add more rows as needed -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="submitted" role="tabpanel" aria-labelledby="submitted-tab">
                        <!-- Content for "Submitted" tab -->
                    </div>
                    <div class="tab-pane fade" id="inprogress" role="tabpanel" aria-labelledby="inprogress-tab">
                        <!-- Content for "In progress" tab -->
                    </div>
                    <div class="tab-pane fade" id="completed" role="tabpanel" aria-labelledby="completed-tab">
                        <!-- Content for "Completed" tab -->
                    </div>
                    <div class="tab-pane fade" id="cancelled" role="tabpanel" aria-labelledby="cancelled-tab">
                        <!-- Content for "Cancelled" tab -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
