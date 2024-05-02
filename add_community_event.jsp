<!DOCTYPE html>
<html>
<head>
    <title>Add Community Event</title>
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
        <h1>Add Community Event</h1>
        <div class="form-container">
        <form action="submit_community_event.jsp" method="post">
            <label for="eventName">Event Name:</label><br>
            <input type="text" id="eventName" name="eventName"><br><br>
            <label for="eventDate">Event Date:</label><br>
            <input type="date" id="eventDate" name="eventDate"><br><br>
            <label for="eventLocation">Event Location:</label><br>
            <input type="text" id="eventLocation" name="eventLocation"><br><br>
            <label for="eventDescription">Event Description:</label><br>
            <textarea id="eventDescription" name="eventDescription" rows="4" cols="50"></textarea><br><br>
            <input type="submit" value="Add Event">
        </form>
    </div>
    </div>
</body>
</html>
