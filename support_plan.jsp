<!DOCTYPE html>
<html>
<head>
    <title>Support Plan</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="profile.jsp">Profile</a>
        <a href="support_plan.jsp">Support Plan</a>
        <a href="add_community_event.jsp">Add Community</a>
        <a href="community.jsp">Community Events</a>
        <a href="view_plans.jsp">View Plans</a>
        <a href="education_materials.jsp">Educational Materials</a>
        <a href="login.jsp">Exit</a>
    </div>
    <div class="content">
        <h1>Support Plan</h1>
        <div class="form-container">
        <p>Here you can receive personalized support plans tailored to your needs:</p>
        <p>Request a personalized support plan:</p>
        <form action="submit_support_request.jsp" method="post">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username"><br>
            <label for="preferences">Preferences:</label><br>
            <textarea id="preferences" name="preferences" rows="4" cols="50"></textarea><br>
            <label for="requests">Requests:</label><br>
            <textarea id="requests" name="requests" rows="4" cols="50"></textarea><br><br>
            <input type="submit" value="Request Support Plan">
        </form>
    </div>
</div>
</body>
</html>
