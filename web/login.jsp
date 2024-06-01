<%-- 
    Document   : login
    Created on : May 30, 2024, 7:45:05 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Diamond Valuation System</title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" href="assets/css/style.css"> </head>
        <script defer src="assets/js/validationLogin.js"></script>    
</head>
<style>
  
</style>

<body>
    <div class="main-wrapper login-body">
        <div class="login-wrapper">
            <div class="container">
                <div class="loginbox">                                      
                    <div class="login-left"> 
                        <h3>Welcome to DVS!</h3>
                        <p>The best diamond valuation partner you can find out there!</p>
                        <img class="img-fluid" src="images/Image-2-1.png" alt="Logo"> 
                    </div>
                    <div class="login-right">
                        <div class="login-right-wrap">
                            <h1>Login</h1>
                            <p class="account-subtitle">Let's have a good deal today</p>
                            <form action="MainController" method="post">
                                <div class="form-group">
                                    <input class="form-control" id="username" type="text" name="txtUsername" placeholder="Username"> 
                                    <div class="error"></div>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="password" type="password"  name="txtPassword"  placeholder="Password"> 
                                    <div class="error"></div>
                                </div>
                                <%
                                    String errorSignIn = (String) request.getAttribute("INVALID");
                                %>    
                                <font color="red"><p>${requestScope.INVALID}</p></font>
                                <div class="form-group">
                                    <button class="btn btn-primary btn-block" name = "btAction" type="submit" value="Signin">Login</button>
                                </div>
                            </form>
                            <div class="text-center forgotpass"><a href="forgot-password.html">Forgot Password?</a> </div>
                            <div class="login-or"> <span class="or-line"></span> <span class="span-or">or</span> </div>
                            <div class="social-login"> <span>Login with</span> <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a><a href="#" class="google"><i class="fab fa-google"></i></a> </div>
                            <div class="text-center dont-have">Don’t have an account? <a href="MainController?btAction=Signup">Register</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-3.5.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="assets/js/script.js"></script>
</body>

</html>
