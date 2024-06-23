

<%@page import="group6.entity.DiamondInfoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="font-body">
    <head>
        <title>Free Diamond Check</title>

        <meta charset="utf-8" />

        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes viewport-fit=cover" />


        <meta name="description" content="Get a free fair price and quality check for any GIA or IGI Certified diamond. Our custom analysis will give you the confidence to make your purchase.">

        <meta name="environment">
        <meta name="referrer" content="unsafe-url">
        <meta name="application-name" content="StoneAlgo" />
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-title" content="StoneAlgo" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <title>Guarder</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
        <link href="css/home-style.css" rel="stylesheet" />
        <link href="css/responsive.css" rel="stylesheet" />

        <link rel="canonical" href="https://www.stonealgo.com/diamond-details/">


        <link rel="dns-prefetch" href="//widget.intercom.io">
        <link rel="preconnect" href="https://stonealgo-3.b-cdn.net">
        <link rel="preconnect" href="https://cdn.amplitude.com">
        <link rel="preconnect" href="https://connect.facebook.net">
        <link rel="preconnect" href="https://www.googletagmanager.com">

        <link rel="apple-touch-icon" href="https://stonealgo-3.b-cdn.net/static/dist/favicon/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="180x180" href="https://stonealgo-3.b-cdn.net/static/dist/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="https://stonealgo-3.b-cdn.net/static/dist/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="https://stonealgo-3.b-cdn.net/static/dist/favicon/favicon-16x16.png">

        <link rel="stylesheet" href="css/profile-style.css">
        <link rel="stylesheet" href="css/customer-style.css">


        <meta property="og:title" content="Free Diamond Check">
        <meta property="og:url" content="https://www.stonealgo.com/diamond-details/">
        <meta property="og:type" content="website">
        <meta property="og:image" content="https://stonealgo-3.b-cdn.net/static/dist/images/og/diamond_check_og.png" />

        <style>
            /* Custom styles to avoid conflicts */
            .header_bottom {
                position: relative;
                z-index: 10;
            }
            .relative {
                position: relative;
                z-index: 5;
            }
        </style>







        <link href="https://stonealgo-3.b-cdn.net/static/dist/bundles/sa_next_global-37824afe61b1fb207ac9.css" rel="stylesheet" />
        <!--        <link href="css/diamondCheck.css" rel="stylesheet"/>-->
        <link href="https://stonealgo-3.b-cdn.net/static/dist/bundles/sa_diamond_detail_landing-37824afe61b1fb207ac9.css" rel="stylesheet" />


        <script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=tlHqfQAHIgKAr5_Ea_3BJt60V99jnywf9Pt_ag-h-pWZij35JYPs9IN1l4NfBAJhTCVlMynUDqtW8UjKnnOzTw" charset="UTF-8"></script><style>    
            /* roboto-300 - latin */
            @font-face {
                font-family: 'Roboto';
                font-style: normal;
                font-weight: 300;
                font-display: swap;
                src: url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-300.eot'); /* IE9 Compat Modes */
                src: local(''),
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-300.eot%3F%23iefix') format('embedded-opentype'), /* IE6-IE8 */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-300.woff2') format('woff2'), /* Super Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-300.woff') format('woff'), /* Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-300.ttf') format('truetype'), /* Safari, Android, iOS */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-300.svg%23Roboto') format('svg'); /* Legacy iOS */
            }
            /* roboto-italic - latin */
            @font-face {
                font-family: 'Roboto';
                font-style: italic;
                font-weight: 400;
                font-display: swap;
                src: url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-italic.eot'); /* IE9 Compat Modes */
                src: local(''),
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-italic.eot%3F%23iefix') format('embedded-opentype'), /* IE6-IE8 */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-italic.woff2') format('woff2'), /* Super Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-italic.woff') format('woff'), /* Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-italic.ttf') format('truetype'), /* Safari, Android, iOS */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-italic.svg%23Roboto') format('svg'); /* Legacy iOS */
            }
            /* roboto-regular - latin */
            @font-face {
                font-family: 'Roboto';
                font-style: normal;
                font-weight: 400;
                font-display: swap;
                src: url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-regular.eot'); /* IE9 Compat Modes */
                src: local(''),
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-regular.eot%3F%23iefix') format('embedded-opentype'), /* IE6-IE8 */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-regular.woff2') format('woff2'), /* Super Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-regular.woff') format('woff'), /* Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-regular.ttf') format('truetype'), /* Safari, Android, iOS */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-regular.svg%23Roboto') format('svg'); /* Legacy iOS */
            }
            /* roboto-500 - latin */
            @font-face {
                font-family: 'Roboto';
                font-style: normal;
                font-weight: 500;
                font-display: swap;
                src: url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-500.eot'); /* IE9 Compat Modes */
                src: local(''),
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-500.eot%3F%23iefix') format('embedded-opentype'), /* IE6-IE8 */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-500.woff2') format('woff2'), /* Super Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-500.woff2') format('woff2'), /* Super Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-500.woff') format('woff'), /* Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-500.ttf') format('truetype'), /* Safari, Android, iOS */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-500.svg%23Roboto') format('svg'); /* Legacy iOS */
            }
            /* roboto-700 - latin */
            @font-face {
                font-family: 'Roboto';
                font-style: normal;
                font-weight: 700;
                font-display: swap;
                src: url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-700.eot'); /* IE9 Compat Modes */
                src: local(''),
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-700.eot%3F%23iefix') format('embedded-opentype'), /* IE6-IE8 */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-700.woff2') format('woff2'), /* Super Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-700.woff') format('woff'), /* Modern Browsers */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-700.ttf') format('truetype'), /* Safari, Android, iOS */
                    url('https://stonealgo-3.b-cdn.net/static/dist/fonts/roboto-v30-latin-700.svg%23Roboto') format('svg'); /* Legacy iOS */
            }
        </style>





        <!-- HTML5 shim, for IE6-8 support of HTML elements -->
        <!--[if lt IE 9]>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
        <![endif]-->


        <!-- Google tag (gtag.js) -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-V004D0X8N2"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'G-V004D0X8N2');
            gtag('config', 'AW-846344721', {'transport_type': 'beacon'});
        </script>



        <meta name="msvalidate.01" content="2F1442172B5B8C579BC32730A617A021" />

        <script type="text/javascript">
            (function (e, t) {
                var r = e.amplitude || {_q: [], _iq: {}};
                var n = t.createElement("script")
                        ;
                n.type = "text/javascript"
                        ;
                n.integrity = "sha384-6T8z7Vvm13muXGhlR32onvIziA0TswSKafDQHgmkf6zD2ALZZeFokLI4rPVlAFyK"
                        ;
                n.crossOrigin = "anonymous";
                n.async = true
                        ;
                n.src = "https://cdn.amplitude.com/libs/amplitude-8.18.4-min.gz.js"
                        ;
                n.onload = function () {
                    if (!e.amplitude.runQueuedFunctions) {
                        console.log("[Amplitude] Error: could not load SDK")
                    }
                }
                ;
                var s = t.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(n, s)
                        ;
                function i(e, t) {
                    e.prototype[t] = function () {
                        this._q.push([t].concat(Array.prototype.slice.call(arguments, 0)));
                        return this
                    }
                }
                var o = function () {
                    this._q = [];
                    return this
                }
                ;
                var a = ["add", "append", "clearAll", "prepend", "set", "setOnce", "unset", "preInsert", "postInsert", "remove"]
                        ;
                for (var c = 0; c < a.length; c++) {
                    i(o, a[c])
                }
                r.Identify = o;
                var u = function () {
                    this._q = []
                            ;
                    return this
                }
                ;
                var p = ["setProductId", "setQuantity", "setPrice", "setRevenueType", "setEventProperties"]
                        ;
                for (var l = 0; l < p.length; l++) {
                    i(u, p[l])
                }
                r.Revenue = u
                        ;
                var d = ["init", "logEvent", "logRevenue", "setUserId", "setUserProperties", "setOptOut", "setVersionName", "setDomain", "setDeviceId", "enableTracking", "setGlobalUserProperties", "identify", "clearUserProperties", "setGroup", "logRevenueV2", "regenerateDeviceId", "groupIdentify", "onInit", "logEventWithTimestamp", "logEventWithGroups", "setSessionId", "resetSessionId", "setLibrary", "setTransport"]
                        ;
                function v(e) {
                    function t(t) {
                        e[t] = function () {
                            e._q.push([t].concat(Array.prototype.slice.call(arguments, 0)))
                        }
                    }
                    for (var r = 0; r < d.length; r++) {
                        t(d[r])
                    }
                }
                v(r);
                r.getInstance = function (e) {
                    e = (!e || e.length === 0 ? "$default_instance" : e).toLowerCase()
                            ;
                    if (!Object.prototype.hasOwnProperty.call(r._iq, e)) {
                        r._iq[e] = {_q: []};
                        v(r._iq[e])
                    }
                    return r._iq[e]
                };
                e.amplitude = r
            })(window, document);

            amplitude.getInstance().init('3a5afa5f24a6067f0bf5130c0b200d0e', '', {
                // optional configuration options
                includeUtm: true,
                includeReferrer: true,
                includeGclid: true,
                includeFbclid: true,
                saveParamsReferrerOncePerSession: true,
                unsetParamsReferrerOnNewSession: true,
                sessionTimeout: 60 * 60 * 1000
            });
        </script>

        <meta name="facebook-domain-verification" content="d5sb84395glawfn8s3swkwihk7y7bi" />

        <script>
            (function () {
                window.onpageshow = function (event) {
                    if (event.persisted) {
                        window.location.reload();
                    }
                };
            })();
        </script>
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
                            <a href="" class="contact_link1">
                                <img src="images/map.jpg">
                                <span>
                                    Lorem ipsum dolor sit amet,
                                </span>
                            </a>
                            <a href="" class="contact_link2">
                                <img src="images/phone.jpg">
                                <span>
                                    Call : +01 1234567890
                                </span>
                            </a>
                            <a href="" class="contact_link3">
                                <img src="images/mail.jpg">
                                <span>
                                    demo@gmail.com
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
                <!--                <div class="header_bottom">
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
                                                <ul class="navbar-nav">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="HomePage.jsp">Home</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="#"> About</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="MainController?btAction=ViewPricing"> Services </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="#"> Diamond Check </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="MainController?btAction=ViewPricing"> Calculator </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="#">Contact us</a>
                                                    </li>
                                                </ul>
                
                                                <div class="auth-buttons">
                                                    <button class="signup" onclick="location.href = 'register.jsp'">Sign Up</button>
                                                    <button class="signin" onclick="location.href = 'login.jsp'">Sign in</button>
                                                </div>
                                            </div>
                                        </nav>
                                    </div>
                                </div>-->
            </header>
        </div>



        <input type="hidden" name="csrfmiddlewaretoken" value="jhzKUbNbHAEngxZKMBsVsk5h4bVd0qCJi0SZ7Q1fFku8D2yxSWyfeOJlslq0Fsbx">
        <div class="bg-100%-auto bg-no-repeat min-h-screen" >

            <div id="sa-loading_block_site" class="inset-0 opacity-50 bg-gray-100 fixed init hidden z-1001 "></div>










            <!--            <header class="max-h-screen main-header sticky shadow sm:shadow-none py-3 top-0 left-0 z-1000 w-full bg-white transition-all lg:overflow-visible lg:py-6">-->
            <div class="relative bg-white">
                <div class="mx-auto px-4 md:px-8 lg-med:px-12 max-w-[2024px] uppercase">
                    <div class="relative flex-1 flex items-center justify-start ">

                        <div class="flex justify-start lg:w-0 lg:flex-1 ">
                            <a href="HomePage.jsp" data-link_name='home page' class="sa-nav_link"><span class="sr-only">DVS</span><img class="block lg:hidden h-7 w-auto rounded sm:h-10" width="104" height="24" src="https://stonealgo-3.b-cdn.net/static/dist/next/images/StoneAlgo%20Logo.svg?width=104&height=24" alt="StoneAlgo Logo" /></a>
                            <a href="HomePage.jsp" data-link_name='home page' class="sa-nav_link"><span class="sr-only">DVS</span><img class="hidden lg:block h-8 w-auto rounded sm:h-8" width="138" height="32" src="https://stonealgo-3.b-cdn.net/static/dist/next/images/logo.svg?width=138&height=32" alt="StoneAlgo Logo" /></a>
                        </div>

                        <nav class="relative">
                            <ul class="nav-list hidden lg:flex space-x-6 xl:space-x-10 m-0">
                                <li><a class="sa-nav_link" data-link_name='home' href="HomePage.jsp">Home</a></li>
                                <li><a class="sa-nav_link" data-link_name='about' href="#">About</a></li>
                                <li><a class="sa-nav_link" data-link_name='services' href="MainController?btAction=ViewPricing">Services</a></li>
                                <!--                                <li><a class="sa-nav_link" data-link_name='search' href="/diamond-search/">Search</a></li>-->

                                <li><a class="sa-nav_link" data-link_name='free check' href="DiamondCheck.jsp">Diamond Check</a></li>
                                <li><a class="sa-nav_link" data-link_name='calculator' href="Calculate.jsp">Calculator</a></li>
                                <li><a class="sa-nav_link" data-link_name='prices' href="#">Contact Us</a></li>
                                    <%
                                        String logOut = (String) request.getAttribute("LOGOUT"); // check if logout is requested
                                        String userNameID = (String) request.getAttribute("USERNAMEID"); // check if user is logged in
                                        String userName = (String) request.getAttribute("USERNAME");
                                        Cookie[] checkCookies = request.getCookies();
                                        String checkUserNameID = null;
                                        String checkUsername = null;

                                        if (checkCookies != null) {
                                            for (Cookie cookie : checkCookies) {
                                                String k = cookie.getName();
                                                String v = cookie.getValue();
                                                if (k.equals("USERNAMEID")) {
                                                    checkUserNameID = v;
                                                } else if (k.equals("USERNAME")) {
                                                    checkUsername = v;
                                                }
                                            }
                                        }

                                        // Check if user is logged in via session or cookies
                                        if ((userNameID != null || checkUserNameID != null) && logOut == null) {
                                            if (userNameID != null && userName != null) {
                                                checkUserNameID = userNameID;
                                                checkUsername = userName;
                                            }
                                    %>
                                <div class="profile-dropdown">
                                    <button class="profile-button">
                                        <img src="assets/img/profiles/avatar-13.jpg" alt="Profile Picture">
                                        <span style="color: white"><%= checkUsername%></span>
                                    </button>
                                    <div class="profile-dropdown-content">
                                        <a href="CustomerDashboard-Profile.jsp">Edit Profile</a>
                                        <a href="#">Settings & Privacy</a>
                                        <a href="MainController?btAction=Logout">Logout</a>
                                    </div>
                                </div>
                                <%
                                } else {
                                %>
                                <div class="auth-buttons">
                                    <button class="signup" onclick="location.href = 'register.jsp'">Sign Up</button>
                                    <button class="signin" onclick="location.href = 'login.jsp'">Sign in</button>
                                </div>
                                <%
                                    }
                                %>  
                            </ul>

                        </nav>
                        <!--                                                        <div class="absolute lg:static inset-y-0 right-0 lg:flex-1 xl:w-0 top-[-5px]">
                                                                                    <ul class="nav-list-right flex items-center justify-end m-0" id="sa-nav">
                                                                                        <li>
                                                                                            <a id="sa-nav_vault" href="/vault/" data-link_name='vault' class="sa-nav_inactive sa-nav_link" aria-label="Vault">
                                                                                                <span class="hidden lg-med:inline-flex">
                                                                                                    Vault
                                                                                                </span>
                                                    
                                                                                                <span class="inline-flex lg-med:hidden">
                                                                                                    <svg class="h-6 w-6 sm:h-7 sm:w-7 sm:mr-1" viewBox="0 0 512 512"><path d="M315.998 260c-5.52 0-10 4.48-10 10s4.48 10 10 10 10-4.48 10-10-4.48-10-10-10z"/><path d="M2.492 236.598c.027.031.051.066.079.096l.011.014 246 272c1.833 2.027 4.611 3.292 7.417 3.292 2.797 0 5.57-1.251 7.417-3.292l246-272 .011-.014c.028-.031.051-.065.079-.096a9.992 9.992 0 00.38-12.732c-.028-.036-.049-.077-.078-.113l-80-100a10 10 0 00-7.809-3.753h-332a10.001 10.001 0 00-7.809 3.753l-80 100c-.029.036-.049.076-.078.113a9.997 9.997 0 00.38 12.732zM201.66 140h108.677l48 80H153.66l48-80zm-50.32 100h209.316L255.998 477.226 151.34 240zm231.177 0h96.955L290.179 449.298 382.517 240zm-253.037 0l92.337 209.298L32.525 240h96.955zm351.712-20H381.66l-48-80h83.532l64 80zM94.804 140h83.532l-48 80H30.804l64-80z"/><path d="M275.998 260h-74.22c-5.523 0-10 4.477-10 10s4.477 10 10 10h74.22c5.523 0 10-4.477 10-10s-4.477-10-10-10zM255.998 80c5.523 0 10-4.477 10-10V10c0-5.523-4.477-10-10-10s-10 4.477-10 10v60c0 5.523 4.477 10 10 10zM323.07 77.071l40-40c3.905-3.905 3.905-10.237 0-14.143s-10.237-3.905-14.143 0l-40 40c-3.905 3.905-3.905 10.237 0 14.143 3.905 3.905 10.237 3.906 14.143 0zM188.927 77.071c3.905 3.905 10.237 3.905 14.143 0 3.905-3.905 3.905-10.237 0-14.143l-40-40c-3.905-3.905-10.237-3.905-14.143 0s-3.905 10.237 0 14.143l40 40z"/></svg>
                                                                                                </span>
                                                    
                                                    
                                                                                                <span class="px-1 py-0.5 rounded-full text-xxs font-medium leading-4 bg-purple-100 text-purple-800 align-top">
                                                                                                    2
                                                                                                </span>
                                                    
                                                                                            </a>
                                                                                        </li>
                                                                                        <li>
                                                    
                                                                                            <button aria-label="Sign In">
                                                                                                <div data-link_name='login' data-modal_open="true" data-modal_type="login" class="sa-nav_inactive sa-nav_link hidden whitespace-nowrap lg:inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700"> Sign in </div>
                                                                                            </button>
                                                    
                                                    
                                                                                            <button onclick="x_nav()" aria-label="Navigation menu" type="button" class="bg-white cursor-pointer rounded-md p-2 inline-flex lg:hidden items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500">
                                                                                                <svg id="sa-btn_open" class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                                                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                                                                                                </svg>
                                                                                            </button>
                                                                                        </li>
                                                                                    </ul>        
                                                                                </div>-->
                    </div>
                </div>

                <div id="sa-mobile_menu_holder" class="fixed inset-0 transition transform origin-top-right hidden lg-med:hidden">
                    <div class="w-full h-full bg-white divide-y-2 divide-gray-50">
                        <div class="pt-5 pb-6 px-5">
                            <!--                                <div class="flex items-center justify-between">
                                                                <div>
                                                                    <img class="h-8 w-auto" src="https://stonealgo-3.b-cdn.net/static/dist/img/marketing_logo-small.jpg" alt="Workflow">
                                                                </div>
                                                                <div class="-mr-2">
                                                                    <button aria-label="Close Menu" onclick="x_nav()" type="button" class="bg-white rounded-full p-2 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500">
                                                                        <svg id="sa-btn_close" class="h-6 w-6 hidden" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                                                                        </svg>
                                                                    </button>
                                                                </div>                    
                                                            </div>-->


                            <!--                                <div class="mt-6">
                                                                <nav class="grid gap-y-8">
                                                                    <a href="/diamond-search/" class="-m-3 p-3 flex items-center rounded-md hover:bg-gray-50">
                                                                        <svg class="flex-shrink-0 h-6 w-6 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>                        
                                                                        <span class="ml-3 text-base font-medium text-gray-900"> Search </span>
                                                                    </a>
                            
                                                                    <a href="/diamond-details/" class="-m-3 p-3 flex items-center rounded-md hover:bg-gray-50">                        
                                                                        <svg class="flex-shrink-0 h-6 w-6 text-indigo-600" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
                                                                        </svg>
                                                                        <span class="ml-3 text-base font-medium text-gray-900"> Diamond Check </span>
                                                                    </a>
                            
                                                                    <a href="/diamond-prices/" class="-m-3 p-3 flex items-center rounded-md hover:bg-gray-50">
                                                                        <svg class="flex-shrink-0 h-6 w-6 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 12l3-3 3 3 4-4M8 21l4-4 4 4M3 4h18M4 4h16v12a1 1 0 01-1 1H5a1 1 0 01-1-1V4z"></path></svg>                        
                                                                        <span class="ml-3 text-base font-medium text-gray-900"> Prices </span>
                                                                    </a>
                            
                                                                    <a href="/diamond-price-calculator/" class="-m-3 p-3 flex items-center rounded-md hover:bg-gray-50">
                                                                        <svg class="flex-shrink-0 h-6 w-6 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 7h6m0 10v-3m-3 3h.01M9 17h.01M9 14h.01M12 14h.01M15 11h.01M12 11h.01M9 11h.01M7 21h10a2 2 0 002-2V5a2 2 0 00-2-2H7a2 2 0 00-2 2v14a2 2 0 002 2z"></path></svg>
                                                                        <span class="ml-3 text-base font-medium text-gray-900"> Price Calculator </span>
                                                                    </a>
                            
                                                                    <a href="/lab-grown-diamonds/" class="-m-3 p-3 flex items-center rounded-md hover:bg-gray-50">
                                                                        <svg class="flex-shrink-0 h-6 w-6 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path></svg>                        
                                                                        <span class="ml-3 text-base font-medium text-gray-900"> Lab Grown </span>
                                                                    </a>
                            
                                                                    <a href="/blog/" class="-m-3 p-3 flex items-center rounded-md hover:bg-gray-50">
                                                                        <svg class="flex-shrink-0 h-6 w-6 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M12 14l9-5-9-5-9 5 9 5z"></path><path d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 14l9-5-9-5-9 5 9 5zm0 0l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14zm-4 6v-7.5l4-2.222"></path></svg>
                                                                        <span class="ml-3 text-base font-medium text-gray-900"> Learning Center </span>
                                                                    </a>
                            
                            
                                                                    <a href="/local-jewelers/" class="-m-3 p-3 flex items-center rounded-md hover:bg-gray-50">
                                                                        <svg class="flex-shrink-0 h-6 w-6 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path></svg>
                                                                        <span class="ml-3 text-base font-medium text-gray-900"> Local Jewelers </span>
                                                                    </a>
                                                                </nav>
                                                            </div>-->


                        </div>
                        <!--                            <div class="py-6 space-y-6 divide-y-2 divide-gray-50">
                                                        <div class="grid grid-cols-2 gap-y-4 gap-x-8 px-5">
                                                            <a href="/diamond-questionnaire/" class="text-base font-medium text-gray-900 hover:text-gray-700"> Search Assistant </a>
                        
                                                            <a href="/frequently-asked-questions/" class="text-base font-medium text-gray-900 hover:text-gray-700"> FAQ </a>                
                        
                                                            <a href="/blog/section/diamond-ring-guides" class="text-base font-medium text-gray-900 hover:text-gray-700"> Guides </a>
                        
                                                            <a href="/about/" class="text-base font-medium text-gray-900 hover:text-gray-700"> About </a>
                        
                                                            <a href="/vault/" class="text-base font-medium text-gray-900 hover:text-gray-700"> Vault </a>
                        
                                                            <a href="/privacy-policy/" class="text-base font-medium text-gray-900 hover:text-gray-700"> Privacy </a>
                                                        </div>
                                                        <div id="sa-nav_mobile" class="grid grid-cols-1 gap-y-4 gap-x-8 px-5">
                        
                                                            <div data-link_name='login' data-modal_open="true" data-modal_type="login" class="w-full flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700"> Sign in </div>
                                                            <p class="mt-6 text-center text-base font-medium text-gray-500">
                                                                Don't have an account?
                                                                <a href="/accounts/signup/" class="text-indigo-600 hover:text-indigo-500"> Sign up </a>
                                                            </p>
                        
                                                        </div>
                                                    </div>-->
                    </div>
                </div>
            </div>

            <script>
                function x_nav() {
                    var x_menu = document.getElementById('sa-mobile_menu_holder')
                    x_menu.classList.toggle("hidden");

                    var x_btn_open = document.getElementById('sa-btn_open')
                    var x_btn_close = document.getElementById('sa-btn_close')
                    x_btn_open.classList.toggle("hidden")
                    x_btn_close.classList.toggle("hidden")
                }
            </script>



            <div id="sa-progress" class="linear-progress-material small w-full lg:w-1/2 absolute bottom-[-1px] lg:bottom-[10px] mx-auto text-center left-0 right-0 hidden">
                <div class="bar bar1"></div>
                <div class="bar bar2"></div>
            </div>
            <!--            </header>-->




            <div class="landing-container">
                <div id="sa-blocker" class="top-12 sm:top-16" style="position: fixed; bottom: 0; left: 0; right: 0; background: #fff; z-index: 999;"></div>

                <div class="relative overflow-hidden">
                    <main>
                        <!-- Hero section -->
                        <div class="relative isolate pt-8 sm:pt-14">
                            <svg class="absolute inset-0 -z-10 h-full w-full stroke-gray-200 [mask-image:radial-gradient(100%_100%_at_top_right,white,transparent)]" aria-hidden="true">
                            <defs>
                            <pattern id="83fd4e5a-9d52-42fc-97b6-718e5d7ee527" width="50" height="50" x="50%" y="-1" patternUnits="userSpaceOnUse">
                                <path d="M100 200V.5M.5 .5H200" fill="none" />
                            </pattern>
                            </defs>
                            <svg x="50%" y="-1" class="overflow-visible fill-gray-50">
                            <path d="M-100.5 0h201v201h-201Z M699.5 0h201v201h-201Z M499.5 400h201v201h-201Z M-300.5 600h201v201h-201Z" stroke-width="0" />
                            </svg>
                            <rect width="50%" height="50%" stroke-width="0" fill="url(#83fd4e5a-9d52-42fc-97b6-718e5d7ee527)" />
                            </svg>


                            <!--                                    <p class="mt-4 text-6xl text-center lg:text-left tracking-tight font-extrabold text-white sm:mt-5 sm:text-6xl lg:mt-6 xl:text-6xl">
                                                                    <span class="block text-gray-900">Check any diamond's</span>
                                                                    <span class="block text-indigo-400">price & quality</span>
                                                                </p>-->

                            <!--                                    <p class="mt-6 text-lg leading-8 text-gray-600 text-center lg:text-left font-normal">Transact with confidence ? get fair price, cut score, visual carat and more <span class="underline underline-offset-4 font-medium decoration-indigo-400 decoration-2">for free</span></p>-->
                            <!--                                    <div class="mt-10 flex items-center gap-x-6 hidden">
                                                                    <a href="#" class="rounded-md bg-indigo-600 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Get started</a>
                                                                    <a href="#" class="text-sm font-semibold leading-6 text-gray-900">Learn more <span aria-hidden="true">?</span></a>
                                                                </div>-->





                            <!--                                            <div id="sa-check_fail" style="display: none; color: salmon; padding-bottom: 10px;">We could not locate this report number. If you're sure it is correct give us a <a href="javascript:void(0)" id="sa-check_fail_chat">chat</a> and we will look into it.</div>
                                                                        <div id="sa-service_down" style="display: none; color: salmon; padding-bottom: 10px;">Hmmm...there may be an issue. We couldn't look up this report number. Give us a <a href="javascript:void(0)" id="sa-service_down_chat">chat</a> and we will look into it.</div>-->                                            
                            <input id="sa-cert_id" type="hidden">                                                      
                            <!--                                <div class="mt-16 sm:mt-24 lg:mt-0 lg:flex-shrink-0 lg:flex-grow">
                                                                <div class="mx-auto w-[22.875rem] max-w-full drop-shadow-xl">
                                                                    <img class="" src="https://stonealgo-3.b-cdn.net/static/dist/img/dd_2.webp" alt="StoneAlgo diamond produce page example" />
                                                                </div>
                                                            </div>-->

                        </div>
                    </main>
                </div>



                <!-- Main Product Info -->
                <%
                    DiamondInfoDTO dia = (DiamondInfoDTO) request.getAttribute("DIAMOND");

                %>   
                <div class="mt-4 lg:mt-0 col-span-2">

                    <div class="max-w-3xl mx-auto px-2 sm:px-0 text-xl font-medium tracking-tight text-gray-700 flex flex-wrap justify-start items-center">
                        <h1 class="text-left text-xl font-medium sm:tracking-tight text-gray-700">

                            GIA ID <%=dia.getDiaID()%>

                        </h1>

                        <span class="sm:mx-2"></span>


                        <span class="hidden sm:block rounded-md bg-green-50 px-2 py-1 text-xs sm:text-sm tracking-normal font-medium text-green-600 ring-1 ring-inset ring-green-600/20"><%=dia.getOrigin()%> Diamond</span>
                        <span class="block sm:hidden rounded-md bg-green-50 px-2 py-1 text-xs sm:text-sm tracking-normal font-medium text-green-600 ring-1 ring-inset ring-green-600/20 ml-3">Natural ?</span>


                        <span class="sm:mx-2"></span>


                    </div>

                    <div class="max-w-3xl mx-auto px-4 sm:px-0 mt-2 sm:mt-6 sm:flex sm:justify-between">
                        <div class="sr-only">Product information</div>


                        <div class="min-w-0 flex-auto">
                            <div class="flex items-center gap-x-1">
                                <div class="flex-none rounded-full p-1 pl-0 text-gray-300 bg-gray-100/10">
                                    <div class="h-2 w-2 rounded-full bg-current"></div>
                                </div>
                                <div class="min-w-0 text-base font-medium leading-6 text-gray-900">
                                    <div class="flex gap-x-2">
                                        <span class="truncate">Off market</span>
                                        <span class="text-gray-300">|</span>
                                        <c:set var= "price" value="${requestScope.PRICE_CHECK}"/>
                                        <c:if test="${price != null}">
                                            <div class="whitespace-nowrap"><div>Fair Price Estimate: <span class="text-indigo-600">$${price}</span></div></div>
                                        </c:if>                                                                             
                                        <!-- <span class="absolute inset-0"></span> -->
                                    </div>
                                </div>
                            </div>

                            <div class="mt-1">
                                <div class="flex items-center gap-x-1">
                                    <div class="flex-none rounded-full p-1 pl-0 text-gray-300 bg-gray-100/10">
                                        <div class="h-2 w-2 rounded-full bg-current"></div>
                                    </div>
                                    <div class="min-w-0 text-sm font-medium leading-6 text-gray-900">
                                        <div class="flex gap-x-2">
                                            <span class="">Estimate Range: <span class="text-indigo-600">$5,439 - $8,699</span></span>
                                        </div>
                                    </div>                      
                                </div>
                            </div>

                            <!--                            <div class="mt-1 flex items-center gap-x-2.5 text-sm leading-5 text-gray-400 font-normal">
                                                            <p class="truncate italic">Not currently listed on StoneAlgo</p>
                                                            <svg viewBox="0 0 2 2" class="h-1 w-1 flex-none fill-gray-400">
                                                            <circle cx="1" cy="1" r="1" />
                                                            </svg>
                                                            <a href="/diamond-search/s/3e7d434e2818c5b6c93395caa67ef2f1" target="_blank" data-source="d_details_see_similar" data-search_similar="true" class="whitespace-nowrap cursor-pointer">See similar ?</a>
                                                        </div>-->
                        </div>

                    </div>

                    <!-- Desktop Algo Scores -->
                    <div class="hidden sm:block bg-white max-w-3xl px-4 sm:px-0 mx-auto mt-4 sm:mt-6 border-2 border-solid border-indigo-600 rounded-md">
                        <div class="mt-0 grid gap-2.5 grid-cols-4 sm:grid sm:gap-3 sm:grid-cols-4">

                            <div class="rounded-lg flex-1">
                                <div class="py-2">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 text-center ">
                                                    <div data-tooltip="true" data-tooltip_id="19" class="dropdown-wrap relative">
                                                        <button class="block mx-auto font-bold leading-tight relative px-0 sm:px-4">
                                                            <span class="text-xs leading-5 font-medium truncate text-center pr-4 sm:pr-0">Fair Price</span>
                                                            <span class="inline-block absolute top-0 -right-[2px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                </dt>
                                                <dd>
                                                    <div class="text-base leading-6 font-medium text-indigo-600 text-center flex-auto">
                                                        <div>
                                                            <c:set var= "price" value="${requestScope.PRICE_CHECK}"/>
                                                            <c:if test="${price != null}">
                                                                $${price}
                                                            </c:if>
                                                            
                                                        </div>

                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 text-center ">
                                                    <div data-tooltip="true" data-tooltip_id="15" class="dropdown-wrap relative">
                                                        <button class="block mx-auto font-bold leading-tight relative px-0 sm:px-4">
                                                            <span class="text-xs leading-5 font-medium truncate text-center pr-4 sm:pr-0">Cut Grade</span>
                                                            <span class="inline-block absolute top-0 -right-[2px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                </dt>
                                                <dd>
                                                    <div class="text-base leading-6 font-medium text-indigo-600 text-center">
                                                        <%=dia.getCut()%>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 text-center truncate ">
                                                    <div data-tooltip="true" data-tooltip_id="8" class="dropdown-wrap relative">
                                                        <button class="block mx-auto font-bold leading-tight relative px-0 sm:px-4">
                                                            <span class="text-xs leading-5 font-medium truncate text-center pr-4 sm:pr-0">Visual Carat</span>
                                                            <span class="inline-block absolute top-0 -right-[1px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                </dt>
                                                <dd>
                                                    <div class="text-base leading-6 font-medium text-indigo-600 text-center">
                                                        <%=dia.getCarat()%> ct.
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 truncate text-center ">
                                                    <div data-tooltip="true" data-tooltip_id="98" class="dropdown-wrap relative">
                                                        <button class="block mx-auto font-bold leading-tight relative px-0 sm:px-4">
                                                            <span class="text-xs leading-5 font-medium truncate text-center pr-4 sm:pr-0">Concerns</span>
                                                            <span class="inline-block absolute top-0 -right-[1px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                </dt>
                                                <dd>
                                                    <div data-page_nav="true" data-nav_target="2" data-nav_source="2_0" class="text-base leading-6 font-medium text-gray-900 text-center cursor-pointer">
                                                        <span class="inline-flex h-6 w-6 items-center justify-center rounded-full bg-green-600">
                                                            <span class="text-sm font-medium leading-none text-white">0</span>
                                                        </span>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- Desktop Diamond Details -->
                    <div class="hidden sm:block bg-white max-w-3xl px-4 sm:px-0 mx-auto mt-4 sm:mt-6 border border-solid border-gray-300 rounded-md">
                        <div class="text-xl font-medium text-gray-900 text-center sm:mt-2 hidden">
                            Diamond Details
                        </div>
                        <div class="mt-0 grid gap-2.5 grid-cols-4 sm:grid sm:gap-0 sm:grid-cols-4">

                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2 px-2 sm:px-4 lg:px-2 xl:px-4">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 truncate text-center ">
                                                    Shape
                                                </dt>
                                                <dd>
                                                    <div id="" class="text-base leading-6 font-medium text-gray-900 text-center">
                                                        <%=dia.getShape()%>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2 px-2 sm:px-4 lg:px-2 xl:px-4">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 truncate text-center ">
                                                    Carat
                                                </dt>
                                                <dd>
                                                    <div id="" class="text-base leading-6 font-medium text-gray-900 text-center">
                                                        <%=dia.getCarat()%> ct.
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2 px-2 sm:px-4 lg:px-2 xl:px-4">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 truncate text-center ">
                                                    Color
                                                </dt>
                                                <dd>
                                                    <div id="" class="text-base leading-6 font-medium text-gray-900 text-center truncate">
                                                        <%=dia.getColor()%>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2 px-2 sm:px-4 lg:px-2 xl:px-4">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 truncate text-center ">
                                                    Clarity
                                                </dt>
                                                <dd>
                                                    <div id="" class="text-base leading-6 font-medium text-gray-900 text-center">
                                                        <%=dia.getClarity()%>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2 px-2 sm:px-4 lg:px-2 xl:px-4">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 truncate text-center ">
                                                    Fluorescence
                                                </dt>
                                                <dd>
                                                    <div id="" class="text-base leading-6 font-medium text-gray-900 text-center">
                                                        <%=dia.getFlourescence()%>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2 px-2 sm:px-4 lg:px-2 xl:px-4">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 truncate text-center ">
                                                    Symmetry
                                                </dt>
                                                <dd>
                                                    <div id="" class="text-base leading-6 font-medium text-gray-900 text-center">
                                                        <%=dia.getSymmetry()%>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2 px-2 sm:px-4 lg:px-2 xl:px-4">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 truncate text-center ">
                                                    Polish
                                                </dt>
                                                <dd>
                                                    <div id="" class="text-base leading-6 font-medium text-gray-900 text-center truncate">
                                                        <%=dia.getPolish()%>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="overflow-hidden rounded-lg flex-1">
                                <div class="py-2 px-2 sm:px-4 lg:px-2 xl:px-4">
                                    <div class="flex items-center">
                                        <div class="ml-0 sm:w-0 flex-1">
                                            <dl>
                                                <dt class="text-xs leading-5 font-medium text-gray-400 truncate text-center ">
                                                    Cert. Lab
                                                </dt>
                                                <dd>
                                                    <div id="" class="text-base leading-6 font-medium text-gray-900 text-center truncate">
                                                        GIA
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--                        <div data-page_nav="true" data-nav_target="2" data-nav_source="2_2" class="w-fit mx-auto underline underline-offset-1 text-blue-600 text-sm mt-0 mb-2 text-center font-normal cursor-pointer">View Interactive Certificate</div>-->
                    </div>

                    <!-- Primary Btn -->
                    <div class="mt-6 px-4 sm:px-0 max-w-3xl mx-auto">
                        <div class="sm:grid sm:grid-cols-6 sm:items-start">


                            <div class="block max-w-md sm:w-full sm:col-span-6 mx-auto">

                                <a id="sa-another_check" data-run_free_check="true" data-source="no_jeweler" href="DiamondCheck.jsp">
                                    <button type="button" class="w-full bg-indigo-100 border border-transparent rounded-md py-3 px-6 2xl:px-8 text-base font-medium text-indigo-700 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-50 focus:ring-indigo-500 mb-3">
                                        Run another check
                                    </button>
                                </a>
                                <!--                                <div class="bg-gray-100 border-l-4 gray-yellow-400 p-4 mt-3 mb-2 hidden sm:block col-span-1">
                                                                    <div class="flex">
                                                                        <div class="flex-shrink-0">
                                                                            <svg class="h-5 w-5 text-yellow-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                                                            <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z" clip-rule="evenodd" />
                                                                            </svg>
                                                                        </div>
                                                                        <div class="ml-3">
                                                                            <p class="text-sm text-gray-700">
                                                                                This diamond isn't on our marketplace.
                                                                                <a href="/diamond-search/s/3e7d434e2818c5b6c93395caa67ef2f1" target="_blank" data-source="d_details_see_similar" data-search_similar="true" class="font-medium underline text-gray-700 hover:text-gray-600"> Click to search similar diamonds ? </a>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>-->
                            </div>

                        </div>


                    </div>

                    <!-- Diamond Details -->
                    <section id="sa-section_details" class="py-6 sm:py-12">
                        <div class="mx-auto max-w-5xl px-2 sm:px-6 text-center lg:max-w-7xl lg:px-8">
                            <div class="text-2xl font-semibold py-6"> Diamond Details</div>
                            <div class="">

                                <!-- Cert -->
                                <div class="bg-white md:grid md:grid-cols-2 gap-x-4 lg:gap-x-8 gap-y-2">







                                    <!-- Row 1 -->
                                    <div class="order-0 col-span-1 ">
                                        <div class="bg-secondary-700 uppercase text-white py-1.5 pl-3 text-left">GIA Report Details</div>
                                        <div class="grid grid-cols-2 gap-x-2 text-sm lg:text-base">
                                            <div class="pl-2 font-normal text-gray-500">
                                                <!--                                                <div class="pt-2 text-left">
                                                                                                    <div data-tooltip="true" data-tooltip_id="110" class="dropdown-wrap relative">
                                                                                                        <button class="block relative">
                                                                                                            <span class="">Certificate Date</span>
                                                                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                                                                </svg>
                                                                                                            </span>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                </div>-->
                                                <div class="pt-2 text-left">
                                                    <div data-tooltip="true" data-tooltip_id="111" class="dropdown-wrap relative">
                                                        <button class="block relative">
                                                            <span class="">GIA Report Number</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="pt-2 text-left">
                                                    <div data-tooltip="true" data-tooltip_id="112" class="dropdown-wrap relative">
                                                        <button class="block relative">
                                                            <span class="">Shape</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>                    
                                                </div>
                                                <div class="pt-2 text-left">
                                                    <div data-tooltip="true" data-tooltip_id="113" class="dropdown-wrap relative">
                                                        <button class="block relative">
                                                            <span class="">Measurements</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>                              
                                                            </span>
                                                        </button>
                                                    </div>                    
                                                </div>
                                            </div>
                                            <div class="pr-2">
                                                <!--                                                <div class="text-gray-900 pt-2 text-right">09/01/2023</div> -->
                                                <div class="text-gray-900 pt-2 text-right"><%=dia.getDiaID()%></div>
                                                <div class="text-gray-900 pt-2 text-right ">


                                                    <span class=""><%=dia.getShape()%></span>

                                                </div>
                                                <div class="text-gray-900 pt-2 text-right"><%=dia.getMeasurements()%></div>
                                            </div>
                                        </div>

                                        <div class="bg-secondary-700 uppercase text-white py-1.5 pl-3 text-left mt-2">Grading Results</div>
                                        <div class="grid grid-cols-2 gap-x-2 text-sm lg:text-base">
                                            <div class="pl-2 font-normal text-gray-500">
                                                <div class="pt-2 text-left">
                                                    <div data-tooltip="true" data-tooltip_id="109" class="dropdown-wrap relative">
                                                        <button class="block relative">
                                                            <span class="">Carat Weight</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>                    
                                                </div>
                                                <div class="pt-2 text-left">
                                                    <div data-tooltip="true" data-tooltip_id="108" class="dropdown-wrap relative">
                                                        <button class="block relative">
                                                            <span class="">Color Grade</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="pt-2 text-left">
                                                    <div data-tooltip="true" data-tooltip_id="107" class="dropdown-wrap relative">
                                                        <button class="block relative">
                                                            <span class="">Clarity Grade</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>                    
                                                </div>
                                                <div class="pt-2 text-left">
                                                    <div data-tooltip="true" data-tooltip_id="106" class="dropdown-wrap relative">
                                                        <button class="block relative">
                                                            <span class="">Cut Grade</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                </div>

                                                <!--                                                <div class="pt-2 text-left">
                                                                                                    <div data-tooltip="true" data-tooltip_id="15" class="dropdown-wrap relative">
                                                                                                        <button class="block relative">
                                                                                                            <span class="">Cut Score®</span>
                                                                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                                                                </svg>
                                                                                                            </span>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                </div>-->

                                            </div>
                                            <div class="pr-2">
                                                <div class="text-gray-900 pt-2 text-right"><%=dia.getCarat()%></div>                  

                                                <div class="text-gray-900 pt-2 text-right ">

                                                    <span class=""><%=dia.getColor()%></span>

                                                </div>

                                                <div class="text-gray-900 pt-2 text-right ">

                                                    <span class=""><%=dia.getClarity()%></span>

                                                </div>
                                                <div class="text-gray-900 pt-2 text-right"> <%=dia.getCut()%> </div>

                                                <!--
                                                                                                <div class="text-gray-900 pt-2 text-right ">
                                                
                                                                                                    <span class="text-gray-900 pt-2 text-right">9.4</span>
                                                
                                                                                                </div>-->

                                            </div>
                                        </div>
                                    </div>

                                    <!-- Row 2 -->
                                    <div class="order-2 col-span-1 ">
                                        <div class="bg-secondary-700 uppercase text-white py-1.5 pl-3 text-left mt-2">Additional Grading Information</div>

                                        <div class="grid grid-rows gap-x-2 text-sm lg:text-base">
                                            <div class="pl-2 pr-2 font-normal text-gray-500">
                                                <div class="grid grid-cols-2 gap-x-2">
                                                    <div data-tooltip="true" data-tooltip_id="101" class="dropdown-wrap relative pt-2">
                                                        <button class="block relative">
                                                            <span class="">Polish</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                    <div class="text-gray-900 pt-2 text-right font-medium ">                      

                                                        <span class="text-gray-900 text-right font-medium "><%=dia.getPolish()%></span>

                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-2 gap-x-2">
                                                    <div data-tooltip="true" data-tooltip_id="100" class="dropdown-wrap relative pt-2">
                                                        <button class="block relative">
                                                            <span class="">Symmetry</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                    <div class="text-gray-900 pt-2 text-right font-medium ">                      

                                                        <span class="text-gray-900 text-right font-medium "><%=dia.getSymmetry()%></span>

                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-2 gap-x-2">
                                                    <div data-tooltip="true" data-tooltip_id="102" class="dropdown-wrap relative pt-2">
                                                        <button class="block relative">
                                                            <span class="">Fluorescence</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>

                                                    <div class="text-gray-900 text-right pt-2 ">

                                                        <span class="text-gray-900 text-right font-medium "><%=dia.getFlourescence()%></span>

                                                    </div>  

                                                </div>
                                                <!--                                                <div class="grid grid-cols-2 gap-x-2">
                                                                                                    <div data-tooltip="true" data-tooltip_id="103" class="dropdown-wrap relative pt-2">
                                                                                                        <button class="block relative">
                                                                                                            <span class="">Clarity Characteristics</span>
                                                                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                                                                </svg>
                                                                                                            </span>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div class="text-gray-900 pt-2 text-right font-medium ">
                                                
                                                                                                        Crystal,  Feather,  Needle,  Pinpoint
                                                
                                                                                                    </div>
                                                                                                </div>-->
                                                <div class="grid grid-cols-2 gap-x-2">
                                                    <div data-tooltip="true" data-tooltip_id="104" class="dropdown-wrap relative pt-2">
                                                        <button class="block relative">
                                                            <span class="">Inscription(s)</span>
                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                </svg>
                                                            </span>
                                                        </button>
                                                    </div>
                                                    <div class="text-gray-900 pt-2 text-right font-medium">GIA <%=dia.getDiaID()%></div>
                                                </div>
                                                <!--                                                <div class="grid grid-cols-2 gap-x-2">
                                                                                                    <div data-tooltip="true" data-tooltip_id="105" class="dropdown-wrap relative pt-2">
                                                                                                        <button class="block relative">
                                                                                                            <span class="">Comments</span>
                                                                                                            <span class="inline-block absolute top-0 -right-[16px] ">
                                                                                                                <svg fill="none" viewBox="0 0 24 24" width="14" height="14" stroke-width="1.5" stroke="currentColor" class="text-gray-500">
                                                                                                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                                                                                                                </svg>
                                                                                                            </span>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div class="text-gray-900 pt-2 text-right font-medium">Clouds are not shown.</div>
                                                                                                </div>                  -->
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Row 1 -->
                                    <!--                                    <div class="order-1 col-span-1 ">
                                                                            <div class="bg-secondary-700 uppercase text-white py-1.5 pl-3 text-left mt-2 md:mt-0">Proportions</div>
                                    
                                    
                                    
                                    
                                                                            <div class="grid grid-cols-1 py-6 relative">
                                                                                <div data-btn_more_prop="true" class="absolute inline-block top-2 sm:top-6 right-2 sm:right-4 cursor-pointer">
                                                                                    <div class="order-first flex-none rounded-full bg-indigo-400/10 px-2 py-1 text-xs font-medium text-indigo-400 ring-1 ring-inset ring-indigo-400/30 sm:order-none">Show more</div>
                                                                                </div>
                                                                                <div class="px-16 sm:px-36 md:px-16 xl:px-32">
                                                                                    <img src="https://stonealgo-cert.b-cdn.net/img/img_prop-53d827c57a7a0d79f823a43c226fca6b.jpg" class="w-full h-full object-center object-cover select-none"/>
                                                                                </div>
                                                                            </div>
                                    
                                    
                                                                            <div id="sa-enhanced_prop" class="select-none mx-2 px-2" style="display:none;" >
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                                                                <div class="grid gap-4 grid-cols-3 justify-items-center sm:grid-cols-5">
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="114" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">table pct</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">56%</div>
                                                                                    </div>
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="115" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">depth pct</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">62.30%</div>
                                                                                    </div>
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="119" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">pav. depth</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">42.50%</div>
                                                                                    </div>
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="118" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">pav. angle</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">40.6&deg</div>
                                                                                    </div>
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="117" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">crown height</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">15.50%</div>
                                                                                    </div>
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="116" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">crown angle</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">35.5&deg</div>
                                                                                    </div>                  
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="121" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">lower half pct</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">80%</div>
                                                                                    </div>
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="122" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">star length pct</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">50%</div>
                                                                                    </div>
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="120" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">girdle pct</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">4%</div>
                                                                                    </div>
                                                                                    <div class="block">
                                                                                        <span class="inline-flex items-center rounded-md truncate bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                            <div data-tooltip="true" data-tooltip_id="123" class="dropdown-wrap relative">
                                                                                                <button class="block relative">
                                                                                                    <span class="">culet</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </span>
                                                                                        <div class="font-mono text-sm leading-6 text-gray-400">None</div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                    -->
                                    <!-- Row 2 -->
                                    <!--                                    <div class="order-3 col-span-1 mb-2">
                                                                            <div class="bg-secondary-700 uppercase text-white py-1.5 pl-3 text-left mt-2">
                                                                                <span>Clarity Characteristics</span> 
                                    
                                                                            </div>
                                    
                                                                            <div class="grid grid-cols-1 pt-6 pb-2">
                                                                                <div class="px-16 sm:px-36 md:px-16 xl:px-32">
                                                                                    <img src="https://stonealgo-cert.b-cdn.net/img/img_plot-53d827c57a7a0d79f823a43c226fca6b.jpg" class="w-full h-full object-center object-cover select-none"/>
                                                                                </div>
                                                                            </div>
                                    
                                    
                                    
                                    
                                                                            <div class="pb-8 px-2 lg:pb-0 grid grid-cols-3 gap-3 lg:grid-cols-4">
                                    
                                    
                                                                                <div class="rounded-md bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                    <div data-tooltip="true" data-tooltip_id="79" class="dropdown-wrap relative ">
                                                                                        <div class="flex justify-center items-center sm:flex-1 space-x-2">
                                                                                            <img src="https://stonealgo-3.b-cdn.net/static/dist/img/inclusions/crystal.png" class="h-6 w-6 object-center object-cover select-none"/>
                                                                                            <span class="ml-1 truncate relative">
                                                                                                Crystal
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                    
                                    
                                    
                                                                                <div class="rounded-md bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                    <div data-tooltip="true" data-tooltip_id="78" class="dropdown-wrap relative ">
                                                                                        <div class="flex justify-center items-center sm:flex-1 space-x-2">
                                                                                            <img src="https://stonealgo-3.b-cdn.net/static/dist/img/inclusions/feather.png" class="h-6 w-6 object-center object-cover select-none"/>
                                                                                            <span class="ml-1 truncate relative">
                                                                                                Feather
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                    
                                    
                                    
                                                                                <div class="rounded-md bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                    <div data-tooltip="true" data-tooltip_id="82" class="dropdown-wrap relative ">
                                                                                        <div class="flex justify-center items-center sm:flex-1 space-x-2">
                                                                                            <img src="https://stonealgo-3.b-cdn.net/static/dist/img/inclusions/needle.png" class="h-6 w-6 object-center object-cover select-none"/>
                                                                                            <span class="ml-1 truncate relative">
                                                                                                Needle
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                    
                                    
                                    
                                                                                <div class="rounded-md bg-gray-400/10 px-2 py-1 text-xs font-medium text-gray-400 ring-1 ring-inset ring-gray-400/20 hover:bg-gray-200 cursor-pointer duration-300 transition-all">
                                                                                    <div data-tooltip="true" data-tooltip_id="91" class="dropdown-wrap relative ">
                                                                                        <div class="flex justify-center items-center sm:flex-1 space-x-2">
                                                                                            <img src="https://stonealgo-3.b-cdn.net/static/dist/img/inclusions/pinpoint.png" class="h-6 w-6 object-center object-cover select-none"/>
                                                                                            <span class="ml-1 truncate relative">
                                                                                                Pinpoint
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                    
                                    
                                                                            </div>
                                                                        </div>-->

                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Diamond Detail Part
                    
                                    </div>
                                </div>
                                <div class="bg-white overflow-hidden">
                                    <div class="relative max-w-7xl mx-auto py-16 px-4 sm:px-6 lg:px-8">
                                        <div class="hidden lg:block bg-gray-50 absolute top-2px bottom-0 left-3/4 w-screen"></div>
                                        <div class="mx-auto text-base max-w-prose lg:max-w-none">
                                            <p class="text-base leading-6 text-indigo-600 font-semibold tracking-wide uppercase">StoneAlgo</p>
                                            <h1 class="mt-2 mb-8 text-3xl leading-8 font-extrabold tracking-tight text-gray-900 sm:text-4xl sm:leading-10">GIA Price & Quality Check</h1>
                                        </div>
                                        <div class="lg:grid lg:grid-cols-2 lg:gap-8">
                    <!--                            <div class="relative mb-8 lg:mb-0 lg:row-start-1 lg:col-start-2">
                                                    <svg class="hidden lg:block absolute top-0 right-0 -mt-20 -mr-20" width="404" height="384" fill="none" viewBox="0 0 404 384">
                                                    <defs>
                                                    <pattern id="de316486-4a29-4312-bdfc-fbce2132a2c1" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
                                                        <rect x="0" y="0" width="4" height="4" class="text-gray-200" fill="currentColor" />
                                                    </pattern>
                                                    </defs>
                                                    <rect width="404" height="384" fill="url(#de316486-4a29-4312-bdfc-fbce2132a2c1)" />
                                                    </svg>
                                                    <div class="relative text-base mx-auto max-w-prose lg:max-w-none">
                                                        <figure>
                                                            <div class="relative pb-7/12 lg:pb-0">
                                                                <img loading="lazy" src="https://stonealgo-3.b-cdn.net/static/dist/img/hs_price_chart.webp" alt="Diamond Price Chart" width="1184" height="1376" class="rounded-lg shadow-lg object-cover object-center absolute inset-0 w-full h-full lg:static lg:h-auto">
                                                            </div>
                                                            <figcaption class="mt-3 text-sm text-gray-500 hidden lg:flex">
                                                                <svg class="flex-none w-5 h-5 mr-2 text-gray-400" viewBox="0 0 20 20" fill="currentColor">
                                                                <path fill-rule="evenodd" d="M4 5a2 2 0 00-2 2v8a2 2 0 002 2h12a2 2 0 002-2V7a2 2 0 00-2-2h-1.586a1 1 0 01-.707-.293l-1.121-1.121A2 2 0 0011.172 3H8.828a2 2 0 00-1.414.586L6.293 4.707A1 1 0 015.586 5H4zm6 9a3 3 0 100-6 3 3 0 000 6z" clip-rule="evenodd" />
                                                                </svg>
                                                                StoneAlgo GIA Check Page
                                                            </figcaption>
                                                        </figure>
                                                    </div>
                                                </div>-->
                    <!--                        <div>
                                                <div class="text-base max-w-prose mx-auto lg:max-w-none">
                                                    <h2 class="text-lg leading-7 text-gray-500 font-normal mb-5">Use our GIA Check tool to automatically verify the Fair Price, Cut Score, and Visual Carat size of any GIA certified loose diamond. Simply enter the GIA report number (found on the diamond?s GIA Certificate) and you?ll receive custom analysis of your diamond. We?ll also run a diamond certificate check on the GIA?s website and show you all of the details on your diamond to help ensure have all of the info you need in one place.</h2>
                                                </div>
                                                <div class="prose text-gray-500 font-normal mx-auto lg:max-w-none lg:row-start-1 lg:col-start-1">
                                                    <h2>Diamond Price Estimates</h2>
                                                    <p>StoneAlgo?s Fair Price estimates are the most advanced in the diamond industry, providing shoppers with more confidence and a better understanding of any GIA certified diamond?s fair value.</p>
                    
                                                    <h2>Diamond Deal Ratings</h2>
                                                    <p>We rate every diamond based on its Fair Price estimate to help you better understand if it?s truly a great deal. StoneAlgo indexes over 2,000,000 diamond prices daily to ensure these deal ratings are fair and accurate.</p>
                    
                                                    <h2>Cut Score</h2>
                                                    <p>Available only for round diamonds, our cut score takes diamond cut grades to the next level. While the GIA, AGS, IGI, EGL, and other grading agencies each have their own unique grading systems, StoneAlgo?s cut score is an unbiased and far more precise indicator of a diamond?s light performance. Go beyond ?Excellent vs. Ideal Cut diamonds? and find a nearly perfect 9.0+ Cut Score to ensure your diamond sparkles like crazy. Read more about our <a style="text-decoration: none; color: #1a73e8;" href="https://www.stonealgo.com/blog/how-stonealgos-cut-quality-score-really-works/">Diamond Cut Score</a>.</p>
                    
                                                    <h2>Diamond Price Charts</h2>
                                                    <p>StoneAlgo shows live diamond price charts for every diamond we have ever had in our database, showing the price that diamond was listed for at the jewelers we work with. If we haven?t seen the diamond, we?ll show you the average price of similar diamonds we?ve tracked in our database historically.</p>
                    
                                                    <h2>Diamond Price Alerts</h2>
                                                    <p>Never miss a diamond price change with our custom price alerts. Simply click on the bell icon or the diamond price chart to set a diamond price alert and we?ll e-mail you if the diamond drops below your price point.</p>
                    
                                                    <h2>Add To Vault</h2>
                                                    <p>Bookmark any diamond to add it to your vault so you can easily add notes, track prices, and manage your favorite diamonds. Easily run GIA certificate verifications from your custom Vault dashboard to see a GIA Check anytime.</p>
                    
                                                    <h2>Diamond Color and Fluorescence Combinations</h2>
                                                    <p>Certain diamond color grades pair well with faint or medium fluorescence and our experts will let you know if your diamond exhibits the perfect combination of color and fluorescence grade.</p>
                    
                                                    <h2>Search Similar Diamonds</h2>
                                                    <p>If we can?t find your diamond in our database our diamond search engine will automatically scan the market and generate a customized search so you can see the best prices on diamonds like yours.</p>
                    
                                                    <h2>Real, Expert Advice</h2>
                                                    <p>Chat us anytime using the Ask Us button and we?ll give you personalized diamond buying advice to make sure you find the perfect GIA certified diamond at a fair price. We can assist you with a GIA certificate lookup if you?re having any problems or answer crazy specific diamond questions.</p>
                                                </div>
                                            </div>-->
                </div>
            </div>
        </div>

    </div>

    <div id="sa-modal" class="fixed inset-0 inset-x-0 px-1 xxs:px-4 pb-6 xxs:inset-0 xxs:p-0 xxs:flex xxs:items-center xxs:justify-center init-state">

        <div data-modal_close="true" id="sa-modal_overlay" class="fixed inset-0 transition-opacity backdrop-blur-sm bg-white/30 init-state">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>

        <div id="sa-modal_content_holder" class="bg-white rounded-lg overflow-hidden shadow-xl transform transition-all sm:max-w-3xl sm:w-full init-state sm:top-auto relative max-h-v85 overflow-y-auto">
            <div data-modal_close="true" data-close="btn" class="z-20 w-10 h-10 p-3 inline-block cursor-pointer text-gray-650 absolute top-2 right-1 hover:text-primary-500 hover:bg-gray-300 rounded-full">
                <svg class="block mx-auto" width="14" height="14" viewBox="0 0 14 14" fill="none"
                     xmlns="http://www.w3.org/2000/svg">
                <path
                    d="M14 1.41L12.59 0L7 5.59L1.41 0L0 1.41L5.59 7L0 12.59L1.41 14L7 8.41L12.59 14L14 12.59L8.41 7L14 1.41Z"
                    fill="currentColor" />
                </svg>
            </div>
            <div id='sa-modal_loading' class="inset-0 relative hidden transform transition-all duration-150 ease-in-out">
                <div class="sk-circle">
                    <div class="sk-circle1 sk-child"></div>
                    <div class="sk-circle2 sk-child"></div>
                    <div class="sk-circle3 sk-child"></div>
                    <div class="sk-circle4 sk-child"></div>
                    <div class="sk-circle5 sk-child"></div>
                    <div class="sk-circle6 sk-child"></div>
                    <div class="sk-circle7 sk-child"></div>
                    <div class="sk-circle8 sk-child"></div>
                    <div class="sk-circle9 sk-child"></div>
                    <div class="sk-circle10 sk-child"></div>
                    <div class="sk-circle11 sk-child"></div>
                    <div class="sk-circle12 sk-child"></div>
                </div>
            </div>
            <div id="sa-modal_content" class="transform transition-all duration-150 ease-in-out"></div>
        </div>
    </div>





    <div id="sa-notification" class="fixed inset-0 flex items-end justify-center px-4 py-6 pointer-events-none sm:px-6 sm:py-20 sm:items-start sm:justify-end init-state">
        <!--
         Notification panel, show/hide based on alert state.
     
         Entering: "transform ease-out duration-300 transition"
           From: "translate-y-2 opacity-0 sm:translate-y-0 sm:translate-x-2"
           To: "translate-y-0 opacity-100 sm:translate-x-0"
         Leaving: "transition ease-in duration-100"
           From: "opacity-100"
           To: "opacity-0"
        -->
        <div class="max-w-sm w-full bg-gray-500 shadow-lg rounded-lg pointer-events-auto">
            <div class="rounded-lg shadow-xs overflow-hidden">
                <div class="p-4">
                    <div class="flex items-start">
                        <div class="flex-shrink-0">
                            <svg id="sa-notification_success" class="h-6 w-6 text-green-400 hidden" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                            </svg>            
                            <svg id="sa-notification_warning" class="h-6 w-6 text-red-400 hidden" fill="none" viewBox="0 0 20 20" stroke="currentColor">
                            <path d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" fill-rule="evenodd"></path>
                            </svg>
                        </div>
                        <div class="ml-3 w-0 flex-1 pt-0.5">
                            <p id="sa-notification_main" class="text-sm leading-5 font-medium text-white">

                            </p>
                            <p id="sa-notification_sub" class="mt-1 text-sm leading-5 font-normal text-gray-100">

                            </p>
                        </div>
                        <div class="ml-4 flex-shrink-0 flex">
                            <button id="sa-notification_dismiss" class="inline-flex text-red-400 focus:outline-none focus:text-red-500 transition ease-in-out duration-150">
                                <span class="sr-only">Close</span>  
                                <svg class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"/>
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>   
    </div>






    <!--            <div class="bg-gray-100 relative">
                    <div class="max-w-screen-xl mx-auto py-12 px-4 sm:px-6 lg:py-16 lg:px-8">
                        <div class="xl:grid xl:grid-cols-3 xl:gap-8">
                            <div class="xl:col-span-1">          
                                <img loading="lazy" class="h-10 rounded" height='40' width='40' src="https://stonealgo-3.b-cdn.net/static/dist/img/marketing_logo.jpg?width=40&height=40" alt="StoneAlgo Logo" />
                                <p class="mt-8 text-gray-500 text-base leading-6 font-semibold">
                                    The world's largest diamond marketplace.
                                </p>
                                <div class="mt-8 flex">
                                    <a href="https://www.facebook.com/StoneAlgo/" class="text-gray-400 hover:text-gray-500">
                                        <span class="sr-only">Facebook</span>
                                        <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                                        <path fill-rule="evenodd" d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z" clip-rule="evenodd"/>
                                        </svg>
                                    </a>
                                    <a href="https://www.instagram.com/stonealgo_diamonds/" class="ml-6 text-gray-400 hover:text-gray-500">
                                        <span class="sr-only">Instagram</span>
                                        <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                                        <path fill-rule="evenodd" d="M12.315 2c2.43 0 2.784.013 3.808.06 1.064.049 1.791.218 2.427.465a4.902 4.902 0 011.772 1.153 4.902 4.902 0 011.153 1.772c.247.636.416 1.363.465 2.427.048 1.067.06 1.407.06 4.123v.08c0 2.643-.012 2.987-.06 4.043-.049 1.064-.218 1.791-.465 2.427a4.902 4.902 0 01-1.153 1.772 4.902 4.902 0 01-1.772 1.153c-.636.247-1.363.416-2.427.465-1.067.048-1.407.06-4.123.06h-.08c-2.643 0-2.987-.012-4.043-.06-1.064-.049-1.791-.218-2.427-.465a4.902 4.902 0 01-1.772-1.153 4.902 4.902 0 01-1.153-1.772c-.247-.636-.416-1.363-.465-2.427-.047-1.024-.06-1.379-.06-3.808v-.63c0-2.43.013-2.784.06-3.808.049-1.064.218-1.791.465-2.427a4.902 4.902 0 011.153-1.772A4.902 4.902 0 015.45 2.525c.636-.247 1.363-.416 2.427-.465C8.901 2.013 9.256 2 11.685 2h.63zm-.081 1.802h-.468c-2.456 0-2.784.011-3.807.058-.975.045-1.504.207-1.857.344-.467.182-.8.398-1.15.748-.35.35-.566.683-.748 1.15-.137.353-.3.882-.344 1.857-.047 1.023-.058 1.351-.058 3.807v.468c0 2.456.011 2.784.058 3.807.045.975.207 1.504.344 1.857.182.466.399.8.748 1.15.35.35.683.566 1.15.748.353.137.882.3 1.857.344 1.054.048 1.37.058 4.041.058h.08c2.597 0 2.917-.01 3.96-.058.976-.045 1.505-.207 1.858-.344.466-.182.8-.398 1.15-.748.35-.35.566-.683.748-1.15.137-.353.3-.882.344-1.857.048-1.055.058-1.37.058-4.041v-.08c0-2.597-.01-2.917-.058-3.96-.045-.976-.207-1.505-.344-1.858a3.097 3.097 0 00-.748-1.15 3.098 3.098 0 00-1.15-.748c-.353-.137-.882-.3-1.857-.344-1.023-.047-1.351-.058-3.807-.058zM12 6.865a5.135 5.135 0 110 10.27 5.135 5.135 0 010-10.27zm0 1.802a3.333 3.333 0 100 6.666 3.333 3.333 0 000-6.666zm5.338-3.205a1.2 1.2 0 110 2.4 1.2 1.2 0 010-2.4z" clip-rule="evenodd"/>
                                        </svg>
                                    </a>
                                    <a href="https://twitter.com/stonealgo/" class="ml-6 text-gray-400 hover:text-gray-500">
                                        <span class="sr-only">Twitter</span>
                                        <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84"/>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                            <div class="mt-12 grid grid-cols-2 gap-8 xl:mt-0 xl:col-span-2">
                                <div class="md:grid md:grid-cols-2 md:gap-8">
                                    <div>
                                        <h4 class="text-sm leading-5 font-semibold tracking-wider text-gray-900 uppercase">
                                            Features
                                        </h4>
                                        <ul class="mt-4">
                                            <li>
                                                <a href="/diamond-price-calculator/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Price Calculator
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/diamond-search/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Search
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/lab-grown-diamonds/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Lab Grown Diamonds
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/diamond-details/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Price & Quality Check
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="mt-12 md:mt-0">
                                        <h4 class="text-sm leading-5 font-semibold tracking-wider text-gray-900 uppercase">
                                            Prices
                                        </h4>
                                        <ul class="mt-4">
                                            <li>
                                                <a href="/diamond-prices/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Diamond Prices
                                                </a>
                                            </li>                  
                                            <li class="mt-4">
                                                <a href="/diamond-prices/0.7-carat-diamond-prices/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    0.7 Carat Prices
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/diamond-prices/1-carat-diamond-prices/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    1 Carat Prices
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/diamond-prices/2-carat-diamond-prices/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    2 Carat Prices
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="md:grid md:grid-cols-2 md:gap-8">
                                    <div>
                                        <h4 class="text-sm leading-5 font-semibold tracking-wider text-gray-900 uppercase">
                                            More
                                        </h4>
                                        <ul class="mt-4">
                                            <li>
                                                <a href="/blog/section/diamond-ring-guides" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Guides
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/blog/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Blog
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/our-retailers/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Partners
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/local-jewelers/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Local Jewelers
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="mt-12 md:mt-0">
                                        <h4 class="text-sm leading-5 font-semibold tracking-wider text-gray-900 uppercase">
                                            Company
                                        </h4>
                                        <ul class="mt-4">
                                            <li>
                                                <a href="/about/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    About
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/frequently-asked-questions/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    FAQ
                                                </a>
                                            </li>
                                            <li class="mt-4">
                                                <a href="/privacy-policy/" class="text-base font-medium text-gray-500 hover:text-gray-700 px-1.5 py-1 hover:bg-gray-200 duration-300 transition-all rounded-md">
                                                    Privacy
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mt-12 border-t border-gray-200 pt-8">
                            <p class="text-base leading-6 text-gray-400 xl:text-center font-normal">
                                &copy; 2024 StoneAlgo, Inc. All rights reserved.
                            </p>
                        </div>
                    </div>
                </div>-->

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
                                <a href="">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    About Us
                                </a>
                            </li>
                            <li>
                                <a href="">
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
</div>



<!-- Facebook Pixel Code -->
<script>
    setTimeout(function () {
        !function (f, b, e, v, n, t, s)
        {
            if (f.fbq)
                return;
            n = f.fbq = function () {
                n.callMethod ?
                        n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq)
                f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
                'https://connect.facebook.net/en_US/fbevents.js');

        var cookies = document.cookie
                .split(';')
                .map(cookie => cookie.split('='))
                .reduce((accumulator, [key, value]) => ({...accumulator, [key.trim()]: decodeURIComponent(value)}), {});

        fbq('init', '340729326380335', {em: '', fbc: cookies['_fbc'], fbp: cookies['_fbp']});
        fbq('track', 'PageView');
    }, 3500)
</script>
<noscript><img height="1" width="1" style="display:none"
               src="https://www.facebook.com/tr?id=340729326380335&ev=PageView&noscript=1"
               /></noscript>
<!-- End Facebook Pixel Code -->



<script async defer src="https://stonealgo-3.b-cdn.net/static/dist/js/sa-polyfill.js?v=1.07"></script>


<script src="https://stonealgo-3.b-cdn.net/static/dist/bundles/sa_diamond_detail_landing-37824afe61b1fb207ac9.js" ></script>
<script type="text/javascript">
    var return_status_details = "False"
    var is_authenticated = "false";
</script>


<script src="https://stonealgo-3.b-cdn.net/static/dist/bundles/sa_next_global-37824afe61b1fb207ac9.js" ></script>

<script type="text/javascript">
    var local_region = ""
    var show_local = "False"
    var static_url = "https://stonealgo-3.b-cdn.net/static/"
</script>







<script>
    window.intercomSettings = {
        app_id: "ingw3avi",
        custom_launcher_selector: '#custom-intercom-button'
    };
</script>


<script async defer src="https://stonealgo-3.b-cdn.net/static/dist/js/widgets/sa-intercom_facade.js"></script>
<script defer src="assets/js/validationLogin.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/custom.js"></script>
<script src="assets/js/jquery-3.5.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/js/script.js"></script>










</body>
</html>
