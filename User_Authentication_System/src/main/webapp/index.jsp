<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LOG IN PAGE</title>
    <link rel="stylesheet" type="text/css" href="LoginSignupStyle.css">
</head>
<body>
    
    <form class="form-container" action="LoginServlet" method="post">
    	<div class="welcome-container">
            <h1>Welcome to User Authentication System!</h1>
            <p>Discover a world of opportunities and exciting features.</p>
        </div>
        <h1>LOG IN</h1>

        <div class="form-group">
            <label for="UserName">UserName:</label>
            <input type="text" id="UserName" name="UserName" required placeholder="Enter your username">
        </div>

        <div class="form-group">
            <label for="Password">Password:</label>
            <input type="password" id="Password" name="Password" required placeholder="Enter your password">
        </div>

        <button type="submit" class="submit-btn">Log In</button>
        
        <p>Don't have an account? <a href="SignupPage.jsp">Create Account</a></p>
    </form>
</body>
</html>
