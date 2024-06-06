<%-- 
    Document   : editProfileTestVer2
    Created on : May 30, 2024, 10:07:20 PM
    Author     : DELL
--%>

<%@page import="group6.dao.ErrorRegistration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile Admin</title>
    </head>
    <%
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
    <body>
        <form action="MainController" method="post">
            <font color="green">${requestScope.SuccessMessage}</font>
            <p>Username</p> <input type="text" name="txtUserName" value="${requestScope.UserProfile.getUserName()}"/><br/>
            <font color="red">${requestScope.ERRORS.userNameLenError}</font>
            <font color="red"><p>${requestScope.ErrorMessage}</p></font>
            <p>First name</p><input type="text" name="txtFirstName" value="${requestScope.UserProfile.getFirstName()}"/><br/>
            <font color="red">${requestScope.ERRORS.firstNameLenError}</font>
            <p>Last name</p><input type="text" name="txtLastName" value="${requestScope.UserProfile.getLastName()}"/><br/>
            <font color="red">${requestScope.ERRORS.lastNameLenError}</font>
            <p>Phone number</p><input type="text" name="txtPhoneNumber" value="${requestScope.UserProfile.getPhoneNumber()}"/><br/>
            <font color="red">${requestScope.ERRORS.phoneValidationError}</font>
            <p>Email</p><input type="text" name="txtEmail" value="${requestScope.UserProfile.getEmail()}"/><br/>
            <font color="red">${requestScope.ERRORS.emailValidationError}</font> 
            <input type="submit" name="btAction" value="Update Profile"/>
        </form>

    </body>
</html>
