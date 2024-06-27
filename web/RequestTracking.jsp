<%-- 
    Document   : RequestTracking
    Created on : Jun 27, 2024, 3:03:01 PM
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Detail Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
    <link rel="stylesheet" href="css/progess-bar.css">
    

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">

    <link rel="stylesheet" href="assets/css/feathericon.min.css">
    <link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">

    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <div class="container">
        <div class="header" style="box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1)">

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
    
            <div class="progress-container" style="margin-top: 100px; border: 2px solid; padding: 20px;  border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
                <div style="display: flex">
                    <a href="RequestList.jsp"><< Return to request list</a>
                    <div style="padding-left: 450px"><strong>REQUEST ID: 12345678910</strong></div>
                </div>
                <hr>
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
                    <br>
                    <div class="controls" style="padding-top: 100px">
                        <label for="step-select">Select Step:</label>
                        <select id="step-select">
                            <option value="0">Submitted</option>
                            <option value="1">Consulting</option>
                            <option value="2">Payment</option>
                            <option value="3">Sample Received</option>
                            <option value="4">Valuation in Progress</option>
                            <option value="5">Result Sent</option>
                            <option value="6">Order Status</option>
                        </select>
                        <button id="set-active">Set Active</button>
                        <button id="set-completed">Set Completed</button>
                        <button id="set-cancelled">Set Cancelled</button>
                        <button id="reset-progress">Reset</button>
                    </div>
                    <hr>
                    <div id="timestamps-container" class="p-3 border border-success rounded bg-light">
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

<script defer src="js/progressbar.js"></script>
<script src="js/progressbar.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

</body>
</html>
