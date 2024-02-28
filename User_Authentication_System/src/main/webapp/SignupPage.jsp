<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SIGN UP PAGE</title>
    <link rel="stylesheet" type="text/css" href="LoginSignupStyle.css">
</head>
<body>
    <form class="form-container" action="CreateServlet" method="post">
    	<div class="welcome-container">
            <h1>Welcome to User Authentication System!</h1>
        </div>
        <h1>SIGN UP</h1>
        
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

        <button type="submit" class="submit-btn">Submit</button>
        
        <p>Already have an account? <a href="index.html">Log in</a></p>
    </form>
</body>
</html>
