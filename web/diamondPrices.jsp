<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Diamond Price Chart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Current Diamond Price Chart – Updated June 2024</h2>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Diamond Carat Weight</th>
                <th>Price (Per Carat, Round Brilliant Cut)</th>
                <th>Total Price</th>
                <th>Diamond Example</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="diamondPrice" items="${diamondPrices}">
                <tr>
                    <td>${diamondPrice.caratWeight}</td>
                    <td>${diamondPrice.pricePerCarat}</td>
                    <td>${diamondPrice.totalPrice}</td>
                    <td><a href="${diamondPrice.diamondLink}" target="_blank">Click here for diamond example</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <h3>Calculate Diamond Price</h3>
    <form action="DiamondPriceServlet" method="get" class="form-inline">
        <div class="form-group mb-2">
            <label for="carat" class="sr-only">Carat</label>
            <input type="number" step="0.01" min="0.01" max="5.00" class="form-control" id="carat" name="carat" placeholder="Enter carat weight">
        </div>
        <button type="submit" class="btn btn-primary mb-2">Calculate</button>
    </form>

    <c:if test="${not empty calculatedPrice}">
        <h4>Calculated Price: $${calculatedPrice}</h4>
    </c:if>

    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
