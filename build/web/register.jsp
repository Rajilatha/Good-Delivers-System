<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.swing.JOptionPane"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register.jsp</title>
    </head>		
             
					
                                                 <%
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            
            
            
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/delivery","root","");
               Statement stmt=con.createStatement();
               String query ="INSERT INTO user(user_name,email,password)VALUES('"+username+"','"+email+"','"+password+"')";
               int a =stmt.executeUpdate(query);
                
               if((a > 0)){
               out.print("<p> Sucessfully registered <a href=register.html>login</a></p>");
               }
               
           }
           catch (Exception e) {
            out.println(e);
        }
           %>
					

   
       
    </body>
</html>
