<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="login.jsp">Login</a>
        <a href="profile.jsp">Profile</a>
        <a href="support_plan.jsp">Support Plan</a>
        <a href="community.jsp">Community Events</a>
        <a href="education.jsp">Educational Materials</a>
        <!-- Add other menu items here -->
    </div>
    <div class="content">
        <h1>Register</h1>
        <form action="register_process.jsp" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username"><br><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password"><br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email"><br><br>
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
