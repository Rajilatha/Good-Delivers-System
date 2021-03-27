<%-- 
    Document   : login
    Created on : Jan 25, 2020, 3:18:58 AM
    Author     : HP
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login.jsp</title>
    </head>
    <body>
       <%
            String username = request.getParameter("user_name");
            String password = request.getParameter("password");
            
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/delivery","root","");
               Statement stmt=con.createStatement();
               String query ="INSERT INTO user WHERE'"+username+"','"+password+"')";
               ResultSet rs=stmt.executeQuery(query);
                              
               String user_type="";
            
            while(rs.next()){
                user_type = rs.getString("user_type");
            }
            if(user_type.equals("Deliver_Boy")){
                response.sendRedirect("deliverHome.jsp");
            }
            else if(user_type.equals("Admin")){
                response.sendRedirect("Admin.html");
            }
            else{
            response.sendRedirect("index.html");
            }
            if(rs.next())
               {
              session.setAttribute("uid",rs.getString("user_id"));
              response.sendRedirect("index.jsp?user="+rs.getString("user_name"));
               
             
               }
               else
               {
                   
               }
           
                    
            }catch(Exception e){
            
            }
        %>
    </body>
</html>
