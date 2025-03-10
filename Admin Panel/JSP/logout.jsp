<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Invalidate the current session
   //HttpSession session = request.getSession(false); // Fetch session if it exists
    if (session != null) {
        session.invalidate(); // End session
    }

    // Redirect to login page
    response.sendRedirect("login.jsp");
%>