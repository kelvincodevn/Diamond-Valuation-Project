<%-- 
    Document   : editprofileTest
    Created on : May 30, 2024, 8:33:44 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border='1'>
            <thead>
                <th>Username</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Phone number</th>
                <th>Email</th>
            </thead>
            <tbody>
                <tr>
            <form action="MainController" method="post">
                <td><input type="text" name="txtUserName" value="${requestScope.UserProfile.getUserName()}"</td>
                <td><input type="text" name="txtFirstName" value="${requestScope.UserProfile.getFirstName()}"</td>
                <td><input type="text" name="txtLastName" value="${requestScope.UserProfile.getLastName()}"</td>
                <td><input type="text" name="txtPhoneNumber" value="${requestScope.UserProfile.getPhoneNumber()}"</td>
                <td><input type="text" name="txtEmail" value="${requestScope.UserProfile.getEmail()}"</td>
                <td><input type="submit" name="btAction" value="Update Profile"/></td>
            </form> 
        </tr>
    </tbody>                
</table>
</body>
</html>
