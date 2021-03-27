
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
                       
                            String user_name = request.getParameter("user_name");
                            String email = request.getParameter("email");                       
                            String password = request.getParameter("password");
                            String user_type = request.getParameter("user_type");
                             
                    
                               try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/delivery", "root", "");
                Statement stmt = con.createStatement();
                String query = "INSERT INTO user(user_name,email,password,user_type) VALUES('"+user_name+"','"+email+"','"+password+"','"+user_type+"')";
                int a = stmt.executeUpdate(query);
                if(a > 0){
                    
                    }
           response.sendRedirect("add_staff.jsp");
                                     
                                    } catch (Exception e) {
                                        out.println("<p style='red'>ERROR" + e.getMessage() + "</p>");
                                    }
                       
                                %>