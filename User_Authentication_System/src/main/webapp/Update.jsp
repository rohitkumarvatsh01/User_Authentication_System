<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Page</title>
    <link rel="stylesheet" type="text/css" href="CreateStyle.css">
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
            <form class="form-container" action="UpdateServlet" method="post">
                <h3>UPDATE RECORD</h3>
                <br>
                <!-- Input field for the original name -->
                <label for="OriginalName">Full Name to Update:</label>
                <input type="text" id="OriginalName" name="OriginalName" required>
                <br>
                <hr>
                
                <!-- Input fields for updating the record -->
                <label for="MobileNo">Mobile Number:</label>
                <input type="text" id="MobileNo" name="MobileNo" required>
                <br>

                <label for="EmailId">Email ID:</label>
                <input type="email" id="EmailId" name="EmailId" required>
                <br>

                <label for="UserName">UserName:</label>
                <input type="text" id="UserName" name="UserName" required>
                <br>

                <label for="Password">Password:</label>
                <input type="password" id="Password" name="Password" required>
                <br>

				<input type="submit" class="submit-btn" value="Update Record" onclick="Update()">
                
                
            </form>
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
