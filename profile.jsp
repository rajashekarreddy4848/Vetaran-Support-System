<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
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
        <h1>User Profile</h1>
        <div class="form-container">
            <form action="update_profile.jsp" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" ><br><br>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" ><br><br>
                <label for="service_branch">Service Branch:</label>
                <input type="text" id="service_branch" name="service_branch" "><br><br>
                <label for="rank">Rank:</label>
                <input type="text" id="rank" name="rank" ><br><br>
                <label for="achievements">Achievements:</label>
                <textarea id="achievements" name="achievements"></textarea><br><br>
                <label for="experience">Experience:</label>
                <textarea id="experience" name="experience"></textarea><br><br>
                <!-- Add more fields for profile details as needed -->
                <input type="submit" value="Update Profile">
            </form>
        </div>
    </div>
</body>
</html>
