
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String booking_id = request.getParameter("booking_id");
    String s_name = request.getParameter("s_name");
    String s_email = request.getParameter("s_email");
    String s_phone = request.getParameter("s_phone");
    String s_address = request.getParameter("s_address");
    String r_name = request.getParameter("r_name");    
    String r_email = request.getParameter("r_email");
    String r_phone = request.getParameter("r_phone");
    String r_address = request.getParameter("r_address");
    String deliver_boy = request.getParameter("delivery_boy");
     String weight = request.getParameter("weight"); 
     String price = request.getParameter("price");
     String status = request.getParameter("status");
     
     
    
 

    try {
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/delivery", "root", "");
        Statement stmt = con.createStatement();
        stmt = con.createStatement();
        int a = stmt.executeUpdate("UPDATE booking SET s_name='" + s_name + "',s_email='" + s_email + "',s_phone='" + s_phone + "',s_address='" + s_address + "',r_name='" + r_name + "',r_email='" + r_email + "',r_phone='" + r_phone + "',r_address='" + r_address + "',deliver_boy ='" + deliver_boy + "' ,weight='" + weight + "',price='" + price + "',status='" + status + "' WHERE booking_id='" + booking_id + "'");
        if (a > 0) {

        }

        response.sendRedirect("add_Home.jsp");
    } catch (Exception e) {
        out.println("unsuccess"+e.getMessage());
        
    }
%>
