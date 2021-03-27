
<%@page language="java"%>
<%-- 
    Document   : add_Home
    Created on : 24-Jan-2020, 10:35:45
    Author     : USER
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li><a href="deliverHome.jsp">Home</a></li>
							<li><a href="#">Logout</a></li>					
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.html" class="logo pull-left"><img src="themes/images//logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						
					</nav>
				</div>
			</section>			
			<section class="header_text sub">
			<img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
				<h4><span>Our Products  </span></h4>
			</section>
                    <section class="main-content">				
				<div class="row">
				
					<div class="span7">
                                                           <form method="POST" action="update_deliver.jsp">
                                            <table  border='2' cellpadding='12%' cellspacing='10%'>
<tr><th>Booking ID</th>
                      <th>Sender Name</th>
                      <th>Sender Email</th>
                      <th>Sender Phone Number</th>
                      <th>Sender Address</th>
                      <th>Receiver Name</th>
                      <th>Receiver Email</th>
                      <th>Receiver Phone Number</th>
                      <th>Receiver Address</th>
                      <th>Deliver Boy</th>
                      <th>Weight</th>
                      <th>Price</th>
                      <th>Status</th>
                      <th></th>
     
                        

                            <%
                                String id = request.getParameter("id");
                                int no = Integer.parseInt(id);

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/delivery", "root", "");
                                    Statement stmt = con.createStatement();
                                    String query = "SELECT * FROM booking WHERE booking_id='" + no + "'";

                                    ResultSet rs = stmt.executeQuery(query);

                                    while (rs.next()) {

                            %>
                            <tr>
                               <td><input type="text" name="booking_id" value="<%=rs.getString(1)%>"></td>
                                <td><input type="text" name="s_name" value="<%=rs.getString(2)%>"size="100"</td>
                                <td><input type="hidden" name="s_email" value="<%=rs.getString(3)%>"size="10"</td>
                                <td><input type="hidden" name="s_phone" value="<%=rs.getString(4)%>"size="10"></td>
                                <td><input type="hidden" name="s_address" value="<%=rs.getString(5)%>"size="10"></td>
                                <td><input type="text" name="r_name" value="<%=rs.getString(6)%>"size="10"></td>
                                <td><input type="hidden" name="r_email" value="<%=rs.getString(7)%>"></td>
                                <td><input type="hidden" name="r_phone" value="<%=rs.getString(8)%>"size="100"</td>
                                <td><input type="hidden" name="r_address" value="<%=rs.getString(9)%>"size="10"</td>
                                <td><input type="hidden" name="delivery_boy" value="<%=rs.getString(10)%>"size="10"></td>
                                <td><input type="text" name="weight" value="<%=rs.getString(11)%>"size="10"></td>
                                <td><input type="text" name="price" value="<%=rs.getString(12)%>"size="10"></td>
                                   <td><input type="text" name="status" value="<%=rs.getString(13)%>"size="10"></td>
                                <td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
                           
                                
                            </tr>
                            <tr>
                                 </tr>
                            <%
                                    }
                                } catch (Exception e) {
                                }
                            %>
                        </table>
                    </form>
                </div>
            </section>
        </div>
    </body>
</html>
