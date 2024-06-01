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
        <link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">

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
                            <a class="dropdown-item" href="login.jsp">Logout</a>
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
						<li class="submenu"> <a href="#"><i class="fas fa-suitcase"></i> <span> Request </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="MainController?btAction=ViewRequestList"> All Request </a></li>
							</ul>
						</li>
						<li class="submenu"> <a href="#"><i class="fas fa-user"></i> <span> Customers </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="MainController?btAction=ViewCustomer"> All customers </a></li>
								<li><a href="customer-edit.jsp"> Edit Customer </a></li>
								<li><a href="customer-add.jsp"> Add Customer </a></li>
							</ul>
						</li>
					
						<li class="submenu"> <a href="#"><i class="fas fa-user"></i> <span> Staff </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="MainController?btAction=ViewStaff">All Staff </a></li>
								<li><a href="staff-edit.jsp"> Edit Staff </a></li>
								<li><a href="staff-add.jsp"> Add Staff </a></li>
							</ul>
						</li>
						<li> <a href="pricing.jsp"><i class="far fa-money-bill-alt"></i> <span>Pricing</span></a> </li>
						
						<li class="submenu"> <a href="#"><i class="fas fa-user"></i> <span> Employees </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="employees.jsp">Employees List </a></li>
							</ul>
						</li>
						
						<li class="submenu"> <a href="#"><i class="fe fe-table"></i> <span> Reports </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="expense-reports.jsp">Expense Report </a></li>
								<li><a href="invoice-reports.jsp">Invoice Report </a></li>
							</ul>
						</li>
						<li> <a href="settings.jsp"><i class="fas fa-cog"></i> <span>Settings</span></a> </li>
						<li class="list-divider"></li>
						<li class="list-divider"></li>
					</ul>
				</div>
			</div>
		</div>


            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <div class="mt-5">
                                    <h4 class="card-title float-left mt-2">Pricing</h4>
                                    <a href="pricing-add.jsp" class="btn btn-primary float-right veiwbutton">Add
                                        Pricing</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <section class="pricing py-5">
                                <div class="container">
                                    <div class="row  mt-5">

                                        <div class="col-lg-3">
                                            <div class="card mb-5 mb-lg-0">
                                                <div class="card-body">
                                                    <h5 class="card-title text-muted text-uppercase text-center">Single</h5>
                                                    <h6 class="card-price text-center mt-3">$15<span class="period"></span>
                                                    </h6>
                                                    <hr>
                                                    <ul class="fa-ul">
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Free
                                                            Breakfast</li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Free Wifi
                                                        </li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Air
                                                            Conditioning</li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Laundry
                                                        </li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Parking
                                                        </li>
                                                    </ul>
                                                    <a href="pricing-edit.jsp" class="btn btn-block btn-primary text-uppercase">Edit</a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-3">
                                            <div class="card mb-5 mb-lg-0">
                                                <div class="card-body">
                                                    <h5 class="card-title text-muted text-uppercase text-center">Double</h5>
                                                    <h6 class="card-price text-center mt-3">$25<span class="period"></span>
                                                    </h6>
                                                    <hr>
                                                    <ul class="fa-ul">
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Free
                                                            Breakfast</li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Free Wifi
                                                        </li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Air
                                                            Conditioning</li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Laundry
                                                        </li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Parking
                                                        </li>
                                                    </ul>
                                                    <a href="pricing-edit.jsp" class="btn btn-block btn-primary text-uppercase">Edit</a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-3">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title text-muted text-uppercase text-center">Family</h5>
                                                    <h6 class="card-price text-center mt-3">$35<span class="period"></span>
                                                    </h6>
                                                    <hr>
                                                    <ul class="fa-ul">
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Free
                                                            Breakfast</li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Free Wifi
                                                        </li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Air
                                                            Conditioning</li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Laundry
                                                        </li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Parking
                                                        </li>
                                                    </ul>
                                                    <a href="pricing-edit.jsp" class="btn btn-block btn-primary text-uppercase">Edit</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="card mb-5 mb-lg-0">
                                                <div class="card-body">
                                                    <h5 class="card-title text-muted text-uppercase text-center">Double</h5>
                                                    <h6 class="card-price text-center mt-3">$25<span class="period"></span>
                                                    </h6>
                                                    <hr>
                                                    <ul class="fa-ul">
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Free
                                                            Breakfast</li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Free Wifi
                                                        </li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Air
                                                            Conditioning</li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Laundry
                                                        </li>
                                                        <li><span class="fa-li"><i class="fas fa-check"></i></span>Parking
                                                        </li>
                                                    </ul>
                                                    <a href="pricing-edit.jsp" class="btn btn-block btn-primary text-uppercase">Edit</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <script src="assets/js/jquery-3.5.1.min.js"></script>

        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/raphael/raphael.min.js"></script>


        <script src="assets/js/script.js"></script>
    </body>
</html>


