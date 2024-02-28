<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>About - User Authentication System</title>
    <link rel="stylesheet" type="text/css" href="AboutStyle.css">
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
            <h3>ABOUT</h3>
            <h4>User Authentication System</h4>

            <p>
                <strong>Description:</strong>
               
                The User Authentication System is a web application developed using JavaServer Pages (JSP) to manage user accounts and authentication.
                This system provides functionalities for user registration, login, and error handling in case of failed login attempts.
            </p>

            <br>
            <strong>Key Features:</strong>
            <br>
                <ul>
                    <li>User Registration: Users can create new accounts by providing essential information such as Full Name, Mobile Number, Email ID, Username, and Password.</li>
                    <li>User Login: Registered users can log in using their credentials. The system validates the provided username and password against the stored records in the database.</li>
                    <li>Failed Login Handling: In case of failed login attempts, users are redirected to a "Login Failed" page, displaying a message indicating that the provided username and password combination is incorrect. Users are given the option to try logging in again or navigate to the registration page.</li>
                    <li>Navigation Bar: The application includes a navigation bar for easy access to different sections of the system, including Home, Create Account, Read (displaying user data), Update (modify user information), Delete (remove user account), and Logout.</li>
                </ul>
            
           <br>
                <strong>Technologies Used:</strong>
                <br>
                <ul>
                    <li>Java</li>
                    <li>Object Oriented Programming (OOPS)</li>
                    <li>JavaServer Pages (JSP)</li>
                    <li>Java Servlets</li>
                    <li>Java Database Connectivity (JDBC)</li>
                    <li>MySQL Database for user data storage</li>
                    <li>HTML</li>
                    <li>CSS</li>
                    <li>JavaScript</li>
                    <li>Tomcat Server for deployment</li>
                </ul>
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
