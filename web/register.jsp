<%-- 
    Document   : register
    Created on : May 30, 2024, 7:45:18 AM
    Author     : DELL
--%>

<%@page import="group6.dao.ErrorRegistration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Diamond Valuation System</title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" href="assets/css/style.css"> 
        <script defer src="assets/js/index.js"></script>    
    </head>
    <%
        String userNameLenError = "";
        String passwordLenError = "";
        String confirmNotMatch = "";
        String fistNameLenError = "";
        String lastNameLenError = "";
        String accountExisted = "";
        String emailValidationError = "";
        String phoneValidationError = "";

        ErrorRegistration errors = (ErrorRegistration) request.getAttribute("ERRORS");
        if (errors != null) {
            userNameLenError = errors.getUserNameLenError();
            passwordLenError = errors.getPasswordLenError();
            confirmNotMatch = errors.getConfirmNotMatch();
            fistNameLenError = errors.getFirstNameLenError();
            lastNameLenError = errors.getLastNameLenError();
            accountExisted = errors.getAccountExisted();
            emailValidationError = errors.getEmailValidationError();
            phoneValidationError = errors.getPhoneValidationError();
        }
    %>

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
                                <h1 class="mb-3">Register</h1>
                                <form action="MainController" method="post">    
                                    <div class="form-group">
                                        <input class="form-control" id="firstname" type="text" name="txtFirstName" value="${sessionScope.firstName}"  placeholder="Firstname"> 
                                        <font color="red">${requestScope.ERRORS.firstNameLenError}</font>
                                        <div class="error"></div>
                                    </div>  

                                    <div class="form-group">
                                        <input class="form-control" id="lastname" type="text" name="txtLastName" value="${sessionScope.lastName}" placeholder="Lastname"> 
                                         <font color="red">${requestScope.ERRORS.lastNameLenError}</font>
                                        <div class="error"></div>
                                    </div>  

                                    <div class="form-group">
                                        <input class="form-control" id="phonenumber" type="text" name="txtPhoneNumber" value="${sessionScope.phoneNumber}" placeholder="Phonenumber"> 
                                        <font color="red">${requestScope.ERRORS.phoneValidationError}</font>
                                        <div class="error"></div>
                                    </div>  

                                    <div class="form-group">
                                        <input class="form-control" id="username" type="text" name="txtUserName" value="${sessionScope.username}" placeholder="Username"> 
                                        <div class="error"></div>
                                        <font color="red">${requestScope.ERRORS.userNameLenError}</font>
                                        <font color="red"><p>${requestScope.ErrorMessage}</p></font>
                                    </div>                 
                                    <div class="form-group">
                                        <input class="form-control" id="email" type="text" name="txtEmail" value="${sessionScope.email}" placeholder="Email"> 
                                        <font color="red">${requestScope.ERRORS.emailValidationError}</font> 
                                        <div class="error"></div>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control"  id="password" type="password" name="txtPassword" value="${sessionScope.password}" placeholder="Password"> 
                                        <font color="red">${requestScope.ERRORS.passwordLenError}</font>
                                        <div class="error"></div>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="password2" type="password" name="txtConfirmPassword" value="${sessionScope.confirmPassword}" placeholder="Confirm Password"> 
                                          <font color="red">${requestScope.ERRORS.confirmNotMatch}</font>
                                        <div class="error"></div>
                                    </div>
                                    <div class="form-group mb-0">
                                        <button class="btn btn-primary btn-block" name = "btAction" type="submit" value="Signup">Register</button>
                                    </div>
                                </form>
                                <div class="login-or"> <span class="or-line"></span> <span class="span-or">or</span> </div>
                                <div class="social-login"> <span>Register with</span> <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a><a href="#" class="google"><i class="fab fa-google"></i></a> </div>
                                <div class="text-center dont-have">Already have an account? <a href="MainController?btAction=Signin">Login</a> </div>
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