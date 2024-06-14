<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <div class="logo">Company Logo</div>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </nav>
        <div class="profile">
            <img src="profile-icon.png" alt="Profile">
            <div class="dropdown">
                <a href="#">Profile</a>
                <a href="#">Settings</a>
                <a href="#">Logout</a>
            </div>
        </div>
    </header>
    <main>
        <section class="welcome">
            <h1>Welcome, [Customer Name]!</h1>
        </section>
        <section class="summary-cards">
            <div class="card">Active Requests: 5</div>
            <div class="card">Pending Requests: 3</div>
            <div class="card">Completed Requests: 10</div>
        </section>
        <section class="requests">
            <h2>Your Requests</h2>
            <table>
                <thead>
                    <tr>
                        <th>Request ID</th>
                        <th>Submission Date</th>
                        <th>Status</th>
                        <th>Diamond Type</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>12345</td>
                        <td>2024-06-01</td>
                        <td>In Progress</td>
                        <td>Round</td>
                        <td><button>View Details</button></td>
                    </tr>
                    <!-- More rows -->
                </tbody>
            </table>
        </section>
        <section class="recent-calculations">
            <h2>Recent Diamond Calculations</h2>
            <ul>
                <li>
                    <span>Diamond ID: 67890</span>
                    <span>Valuation Date: 2024-06-07</span>
                    <span>Estimated Value: $5000</span>
                    <button>View Full Details</button>
                </li>
                <!-- More items -->
            </ul>
        </section>
        <section class="notifications">
            <h2>Notifications</h2>
            <div class="notification-icon">
                <img src="notification-bell.png" alt="Notifications">
            </div>
            <div class="notifications-dropdown">
                <ul>
                    <li>Valuation request #12345 completed</li>
                    <!-- More notifications -->
                </ul>
            </div>
        </section>
        <section class="profile-management">
            <h2>Profile Management</h2>
            <div class="profile-summary">
                <p>Name: [Customer Name]</p>
                <p>Email: customer@example.com</p>
                <p>Phone: 123-456-7890</p>
                <button>Edit Profile</button>
            </div>
            <div class="security-settings">
                <h3>Security Settings</h3>
                <button>Change Password</button>
                <button>Manage Two-Factor Authentication</button>
            </div>
        </section>
        <section class="new-request">
            <button>New Valuation Request</button>
            <!-- Modal for new request form -->
        </section>
        <section class="interactive-tools">
            <h2>Interactive Tools</h2>
            <div class="valuation-calculator">
                <!-- Valuation calculator widget -->
            </div>
            <a href="#">Educational Resources</a>
        </section>
        <section class="support">
            <button>Live Chat</button>
            <a href="#">FAQ</a>
        </section>
    </main>
    <footer>
        <div class="quick-links">
            <a href="#">Privacy Policy</a>
            <a href="#">Terms of Service</a>
            <a href="#">Support</a>
        </div>
        <div class="contact-info">
            <p>Company Address</p>
            <p>Phone: 123-456-7890</p>
            <p>Email: support@example.com</p>
        </div>
        <div class="social-media">
            <a href="#"><img src="facebook-icon.png" alt="Facebook"></a>
            <a href="#"><img src="twitter-icon.png" alt="Twitter"></a>
            <!-- More icons -->
        </div>
    </footer>
</body>
</html>

<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    color: #fff;
    padding: 10px 20px;
}
header .logo {
    font-size: 24px;
}
header nav ul {
    list-style: none;
    display: flex;
    gap: 20px;
}
header nav ul li a {
    color: #fff;
    text-decoration: none;
}
header .profile {
    position: relative;
}
header .profile img {
    width: 40px;
    height: 40px;
    border-radius: 50%;
}
header .profile .dropdown {
    display: none;
    position: absolute;
    top: 50px;
    right: 0;
    background-color: #fff;
    color: #333;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
header .profile:hover .dropdown {
    display: block;
}
header .profile .dropdown a {
    display: block;
    padding: 10px;
    text-decoration: none;
    color: inherit;
}
main {
    padding: 20px;
}
.welcome {
    margin-bottom: 20px;
}
.summary-cards {
    display: flex;
    gap: 20px;
    margin-bottom: 20px;
}
.summary-cards .card {
    background-color: #f0f0f0;
    padding: 20px;
    flex: 1;
    text-align: center;
}
.requests table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}
.requests table, .requests table th, .requests table td {
    border: 1px solid #ddd;
}
.requests table th, .requests table td {
    padding: 10px;
    text-align: left;
}
.recent-calculations ul {
    list-style: none;
    padding: 0;
}
.recent-calculations ul li {
    display: flex;
    justify-content: space-between;
    background-color: #f9f9f9;
    padding: 10px;
    margin-bottom: 10px;
}
.notifications .notification-icon img {
    width: 30px;
    height: 30px;
}
.notifications .notifications-dropdown {
    display: none;
}
.notifications .notification-icon:hover + .notifications-dropdown {
    display: block;
}
.profile-management {
    margin-bottom: 20px;
}
.profile-management .profile-summary p {
    margin: 5px 0;
}
.profile-management .security-settings h3 {
    margin-top: 20px;
}
footer {
    background-color: #333;
    color: #fff;
    padding: 20px;
    display: flex;
    justify-content: space-between;
}
footer .quick-links, footer .contact-info, footer .social-media {
    flex: 1;
}
footer .social-media a img {
    width: 30px;
    height: 30px;
    margin-right: 10px;
}
</style>