<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>

<%
    // Retrieve form data
    String username = request.getParameter("username");
    String preferences = request.getParameter("preferences");
    String requests = request.getParameter("requests");

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

        // Create SQL query to insert support request details into the database
        String sql = "INSERT INTO SupportPlan (username, preferences, requests) VALUES (?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, preferences);
        pstmt.setString(3, requests);

        // Execute the insert query
        int rowsAffected = pstmt.executeUpdate();

        // Check if the insert was successful
        if (rowsAffected > 0) {
            // Redirect to support plan page with a success message
            response.sendRedirect("support_plan.jsp?request=success");
        } else {
            // Redirect to support plan page with an error message
            response.sendRedirect("support_plan.jsp?request=error");
        }

    } catch (SQLException e) {
        e.printStackTrace();
        // Handle SQL exceptions
        response.sendRedirect("support_plan.jsp?request=error");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        // Handle class not found exception
        response.sendRedirect("support_plan.jsp?request=error");
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
