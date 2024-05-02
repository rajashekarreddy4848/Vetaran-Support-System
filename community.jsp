<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Community Events</title>
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
        <h1>Community Events</h1>
        <table border="1">
            <tr>
                <th>Event Name</th>
                <th>Event Date</th>
                <th>Event Location</th>
                <th>Event Description</th>
            </tr>
            <% 
                // JDBC driver name, database URL, username, and password
                String jdbcUrl = "jdbc:mysql://localhost:3306/veteran_database";
                String dbUser = "root";
                String dbPassword = "";
                
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                
                try {
                    // Register JDBC driver
                    Class.forName("com.mysql.jdbc.Driver");

                    // Open a connection
                    conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                    // Execute SQL query to retrieve event records from CommunityEvents table
                    String sql = "SELECT * FROM CommunityEvents";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(sql);

                    // Iterate over the result set and display event records in the table
                    while (rs.next()) {
                        out.println("<tr>");
                        out.println("<td>" + rs.getString("eventName") + "</td>");
                        out.println("<td>" + rs.getDate("eventDate") + "</td>");
                        out.println("<td>" + rs.getString("eventLocation") + "</td>");
                        out.println("<td>" + rs.getString("eventDescription") + "</td>");
                        out.println("</tr>");
                    }

                } catch (SQLException e) {
                    e.printStackTrace();
                    // Handle SQL exceptions
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                    // Handle class not found exception
                } finally {
                    // Close resources
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
        </table>
    </div>
</body>
</html>
