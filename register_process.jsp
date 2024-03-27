<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Process</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        
        // Perform registration logic here
        boolean isRegistered = true; // Example: Perform registration logic here
        
        if(isRegistered) {
            // Redirect to login page upon successful registration
            response.sendRedirect("login.jsp?registered=1");
        } else {
            // If registration fails, redirect back to registration page with an error message
            response.sendRedirect("register.jsp?error=1");
        }
    %>
</body>
</html>
