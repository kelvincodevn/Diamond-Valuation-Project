<%-- 
    Document   : progress-status
    Created on : Jun 18, 2024, 12:56:36 PM
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Progress Bar Controls</title>
    <link rel="stylesheet" href="css/progress-bar.css">
</head>
<body>
    <div class="controls">
        <label for="step-select">Select Step:</label>
        <select id="step-select">
            <option value="0">Submitted</option>
            <option value="1">Consulting</option>
            <option value="2">Payment</option>
            <option value="3">Sample Received</option>
            <option value="4">Valuation in Progress</option>
            <option value="5">Result Sent</option>
            <option value="6">Order Status</option>
        </select>
        <button id="set-active">Set Active</button>
        <button id="set-completed">Set Completed</button>
        <button id="set-cancelled">Set Cancelled</button>
        <button id="reset-progress">Reset</button>
    </div>
    <script defer src="js/progressbar.js"></script>
</body>
</html>