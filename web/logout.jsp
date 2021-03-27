<%-- 
    Document   : logout
    Created on : Jan 25, 2020, 4:10:58 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
    %>