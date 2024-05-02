<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Personalized Plans</title>
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
        <h1>View Personalized Plans</h1>
        <div class="plan-container">
            <table>
                <tr>
                    <th>Plan Name</th>
                    <th>Plan Description</th>
                    <th>Plan Date</th>
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

                        // Execute SQL query to retrieve personalized plans from PersonalizedPlans table
                        String sql = "SELECT * FROM PersonalizedPlans";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(sql);

                        // Iterate over the result set and display plan records in the table
                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getString("planName") + "</td>");
                            out.println("<td>" + rs.getString("planDescription") + "</td>");
                            out.println("<td>" + rs.getDate("planDate") + "</td>");
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
    </div>
</body>
</html>
