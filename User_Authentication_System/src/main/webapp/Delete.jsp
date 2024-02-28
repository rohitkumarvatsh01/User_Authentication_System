<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Page</title>
    <link rel="stylesheet" type="text/css" href="DeleteStyle.css">
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
            <form class="form-container" action="DeleteServlet" method="post">
                <h3>DELETE RECORD</h3>
                <br>
                <!-- Input field for the name to delete -->
                <label for="FullNameToDelete">Full Name to Delete:</label>
                <input type="text" id="FullNameToDelete" name="FullNameToDelete" required>
                <br>
                <hr>

                <input type="submit" class="submit-btn" value="Delete Record" onclick="Delete()">
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
