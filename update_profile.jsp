<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>

<%
    // Retrieve form data
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String serviceBranch = request.getParameter("service_branch");
    String rank = request.getParameter("rank");
    String achievements = request.getParameter("achievements");
    String experience = request.getParameter("experience");

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

        // Create SQL query to insert user profile details into the database
        String sql = "INSERT INTO UserProfile (username, email, service_branch, rank, achievements, experience) VALUES (?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, email);
        pstmt.setString(3, serviceBranch);
        pstmt.setString(4, rank);
        pstmt.setString(5, achievements);
        pstmt.setString(6, experience);

        // Execute the insert query
        int rowsAffected = pstmt.executeUpdate();

        // Check if the insert was successful
        if (rowsAffected > 0) {
            // Redirect to profile page with a success message
            %>
            <script>
                alert("Profile update Successful!");
                window.location.href = "profile.jsp";
            </script>
<%
        } else {
            // Redirect to profile page with an error message
            %>
            <script>
                alert("Profile updated failed!");
                window.location.href = "profile.jsp";
            </script>
<%
        }

    } catch (SQLException e) {
        e.printStackTrace();
        // Handle SQL exceptions
        %>
            <script>
                alert("Profile update failed");
                window.location.href = "profile.jsp";
            </script>
<%
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        // Handle class not found exception
        response.sendRedirect("profile.jsp?insert=error");
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
