<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>

<%
    // Retrieve form data
    String eventName = request.getParameter("eventName");
    String eventDate = request.getParameter("eventDate");
    String eventLocation = request.getParameter("eventLocation");
    String eventDescription = request.getParameter("eventDescription");

    // JDBC driver name, database URL, username, and password
    String jdbcUrl = "jdbc:mysql://localhost:3306/veteran_database";
    String dbUser = "root";
    String dbPassword = "";

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Register JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Open a connection
        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

        // Create SQL query to insert community event details into the database
        String sql = "INSERT INTO CommunityEvents (eventName, eventDate, eventLocation, eventDescription) VALUES (?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, eventName);
        pstmt.setString(2, eventDate);
        pstmt.setString(3, eventLocation);
        pstmt.setString(4, eventDescription);

        // Execute the insert query
        int rowsAffected = pstmt.executeUpdate();

        // Check if the insert was successful
        if (rowsAffected > 0) {
            // Redirect to community events page with a success message
            response.sendRedirect("add_community_event.jsp?event=added");
        } else {
            // Redirect to community events page with an error message
            response.sendRedirect("add_community_event.jsp?event=error");
        }

    } catch (SQLException e) {
        e.printStackTrace();
        // Handle SQL exceptions
        response.sendRedirect("add_community_event.jsp?event=error");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        // Handle class not found exception
        response.sendRedirect("add_community_event.jsp?event=error");
    } finally {
        // Close resources
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
