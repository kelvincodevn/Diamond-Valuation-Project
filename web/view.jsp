<%-- 
    Document   : view
    Created on : May 28, 2024, 1:50:55 PM
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
        <h1>View user info</h1>
        <%
            String id = request.getAttribute("id").toString();
            String name = request.getAttribute("name").toString();
            String email = request.getAttribute("email").toString();
            out.print("Id: " + id);
            out.print("<br/>Name: " + name);
            out.print("<br/>Email: " + email);
        %>
    </body>
</html>
