<%-- 
    Document   : Checking
    Created on : Jun 12, 2024, 4:05:12 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Checking</title>
    </head>
    <body>
        <h1>Check Price by ID</h1>
        <form action="MainController">
            Enter your Diamond's ID: <input type="text" name="ID" value="${param.ID}" /> <br/>
            <input type="submit" value="Check" name ="btAction" />
        </form>
        <c:set var= "price" value="${requestScope.PRICE_CHECK}" />
        <c:if test="${price != null}">
            <label>Price: ${price}$</label>
        </c:if>
        <c:set var= "error" value="${requestScope.ERROR}" />
        <c:if test="${error != null}">
            <label color = "red" >Price: ${error}</label>
        </c:if>
    </body>
</html>
