<%-- 
    Document   : MainPage
    Created on : May 25, 2024, 8:45:31 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MAIN PAGE HOME</title>
    </head>
    <body>
        <h1>MAIN PAGE HOME</h1>
        <%
            Cookie[] checkCookies = request.getCookies();
            
         %>   
        <form action="MainController" method="post">
            <input type="submit" name="btAction" value="Logout"/>
        </form>
        <a href="MainController?btAction=ViewProfile">View Profile</a><br/>
        <a href="MainController?btAction=ViewProfile">Edit Profile</a>
    </body>
</html>
