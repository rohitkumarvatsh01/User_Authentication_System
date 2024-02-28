<%@ page import="java.util.List" %>
<%@ page import="com.servlet.UserData" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Read Page</title>
    <link rel="stylesheet" type="text/css" href="ReadStyle.css">
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
            <form class="form-container" action="ReadServlet" method="get">

                <h3>ALL RECORDS</h3>
                <br>
				<input type="submit" class="submit-btn" value="Get All Records" onclick="Read()">
				<br>
                <table border="1">
                    <tr>
                        <th>Full Name</th>
                        <th>Mobile No</th>
                        <th>Email Id</th>
                        <th>User Name</th>
                        <th>Password</th>
                    </tr>

                    <% List<UserData> dataList = (List<UserData>) request.getAttribute("dataList");
                       if (dataList != null) {
                           for (UserData user : dataList) { %>
                                <tr>
                                    <td><%= user.getFullName() %></td>
                                    <td><%= user.getMobileNo() %></td>
                                    <td><%= user.getEmailId() %></td>
                                    <td><%= user.getUserName() %></td>
                                    <td><%= user.getPassword() %></td>
                                </tr>
                            <% }
                        } %>
                </table>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; <%= new java.util.Date().getYear() + 1900 %> Created by Rohit Kumar. All rights reserved.</p>
    </div>
    
	<script src="Script.js"></script>
    

</body>
</html>
