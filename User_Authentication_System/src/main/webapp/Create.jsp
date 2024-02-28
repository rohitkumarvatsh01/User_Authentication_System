<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
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
            <form class="form-container" action="CreateServlet" method="post" onsubmit="create()">
                <h3>CREATE A NEW RECORD</h3>
                <br>
                <div class="form-group">
                    <label for="Name">Full Name:</label>
                    <input type="text" id="Name" name="FullName" required placeholder="Enter your full name">
                </div>

                <div class="form-group">
                    <label for="MobileNo">Mobile No:</label>
                    <input type="tel" id="MobileNo" name="MobileNo" required placeholder="Enter your mobile number">
                </div>

                <div class="form-group">
                    <label for="EmailId">Email Id:</label>
                    <input type="email" id="EmailId" name="EmailId" required placeholder="Enter your email id">
                </div>

                <div class="form-group">
                    <label for="UserName">UserName:</label>
                    <input type="text" id="UserName" name="UserName" required placeholder="Enter your username">
                </div>

                <div class="form-group">
                    <label for="Password">Password:</label>
                    <input type="password" id="Password" name="Password" required placeholder="Enter your password">
                </div>

				<input type="submit" class="submit-btn" value="Create Record" onclick="Create()">
				
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