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
				<h4><span>Order Details </span></h4>
			</section>
                    <section class="main-content">				
				<div class="row">
			
					<div class="span7">
			
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
                     </tr>                                              
                       <%     
                               String username = request.getParameter("username");
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/delivery", "root", "");
                                Statement stmt = con.createStatement();
                                
                                String query = "SELECT * FROM booking where deliver_boy = 'username'";
                                ResultSet rs = stmt.executeQuery(query);
                        %>
                        <%       
                            while (rs.next()) {
                        %>
                        <tr>
                            <td> <%=rs.getString(1)%>  </td>
                            <td> <%=rs.getString(2)%>  </td>
                            <td> <%=rs.getString(3)%>  </td>
                            <td> <%=rs.getString(4)%> </td>
                            <td> <%=rs.getString(5)%> </td>
                            <td> <%=rs.getString(6)%> </td>
                                <td> <%=rs.getString(7)%>  </td>
                            <td> <%=rs.getString(8)%>  </td>
                            <td> <%=rs.getString(9)%>  </td>
                            <td> <%=rs.getString(10)%> </td>
                            <td> <%=rs.getString(11)%> </td>
                            <td> <%=rs.getString(12)%> </td>
                               <td> <%=rs.getString(13)%> </td>
                           
                          
                   
                         
                            <td> <a href="editdeliver.jsp?id=<%out.println(rs.getString(1));%>" >Edit</a></td>
                            
                        </tr>

                        <%    }

                            } catch (Exception e) {

                            }%>
	</table>
		</div>				
				</div>
			</section>
        
        <section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.html">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contac Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
							<li><a href="./register.html">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><a href="#">My Account</a></li>
							<li><a href="#">Order History</a></li>
							<li><a href="#">Wish List</a></li>
							<li><a href="#">Newsletter</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
						<br/>
						<span class="social_icons">
							<a class="facebook" href="#">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 bootstrappage template  All right reserved.</span>
			</section>
		</div>
		
    </body>
</html>
