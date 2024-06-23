<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diamond Valuation Request</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/request-form.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Diamond Valuation Request Form</h1>
        <form id="valuation-form" class="mt-4">
            <fieldset class="border p-4 rounded">
                <legend class="w-auto">Customer's Information:</legend>
                <div class="form-group">
                    <label for="first-name">First Name:</label>
                    <input type="text" class="form-control" id="first-name" name="first-name" required>
                </div>
                <div class="form-group">
                    <label for="last-name">Last Name:</label>
                    <input type="text" class="form-control" id="last-name" name="last-name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="tel" class="form-control" id="phone" name="phone" required>
                </div>
            </fieldset>
            
            <fieldset class="border p-4 rounded mt-4">
                <legend class="w-auto">Pricing Plan:</legend>
                <div class="card-deck">
                    <div class="card pricing-plan" id="basic" onclick="selectPlan('basic')">
                        <div class="card-body">
                            <h2 class="card-title">Basic</h2>
                            <p class="card-text">$100.0</p>
                            <ul class="list-unstyled">
                                <li>Accurate Valuation</li>
                                <li>Contain all the critical information</li>
                                <li>Following the qualified process within 6 days</li>
                            </ul>
                        </div>
                    </div>
                    <div class="card pricing-plan" id="advanced" onclick="selectPlan('advanced')">
                        <div class="card-body">
                            <h2 class="card-title">Advanced</h2>
                            <p class="card-text">$200.0</p>
                            <ul class="list-unstyled">
                                <li>Comprehensive Valuation</li>
                                <li>Include all the necessary details</li>
                                <li>Expedited process within 3 days</li>
                            </ul>
                        </div>
                    </div>
                    <div class="card pricing-plan" id="express" onclick="selectPlan('express')">
                        <div class="card-body">
                            <h2 class="card-title">Express</h2>
                            <p class="card-text">$300.0</p>
                            <ul class="list-unstyled">
                                <li>Fastest Valuation</li>
                                <li>Complete information package</li>
                                <li>Immediate process within 1 day</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </fieldset>
            
            <input type="hidden" id="selected-plan" name="selected-plan" required>
            <button type="submit" class="btn btn-primary btn-block mt-4">Submit</button>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/request-form.js"></script>
</body>
</html>
