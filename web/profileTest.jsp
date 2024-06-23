<%-- 
    Document   : profileTest
    Created on : May 30, 2024, 7:59:44 PM
    Author     : DELL
--%>

<%@page import="group6.entity.UsersDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>              
        <p>Username: ${requestScope.UserProfile.getUserName()}</p>
        <p>Name: ${requestScope.UserProfile.getFirstName()} ${requestScope.UserProfile.getLastName()}</p>
        <p>Email: ${requestScope.UserProfile.getEmail()}</p>
        <p>Phone number: ${requestScope.UserProfile.getPhoneNumber()}</p>
    </body>
</html>
