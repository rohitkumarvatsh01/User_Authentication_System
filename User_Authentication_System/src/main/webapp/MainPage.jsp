<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Authentication System</title>
    <link rel="stylesheet" type="text/css" href="MainStyle.css">
    <script src="Script.js"></script>
</head>
<body>
    <!-- Navigation bar -->
    <div class="navbar">
        <a href="MainPage.jsp">HOME</a>
        <a href="About.jsp">ABOUT</a>
        <a href="Create.jsp">CREATE</a>
        <a href="Read.jsp">READ</a>
        <a href="Update.jsp">UPDATE</a>
        <a href="Delete.jsp">DELETE</a>
        <a href="index.jsp" onclick="Logout()">LOG OUT</a>
    </div>

    <!-- Content -->
    <div class="content-container">
        <div class="content">
            <h3>WELCOME TO USER AUTHENTICATION SYSTEM</h3>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Created by Rohit Kumar. All rights reserved.</p>
    </div>

    <!-- JavaScript -->
    <script src="Script.js"></script>
</body>
</html>