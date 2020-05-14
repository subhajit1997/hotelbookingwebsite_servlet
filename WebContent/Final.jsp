<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style type="text/css">
		body{
			background-image: url(file:///F:/java/HOTELZO1/WebContent/css/hotel.jpg);
		    min-height: 100%;
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-position: center;
			background-size: cover;   
		  	 
		  	}
		.navbar-brand
		{
		    
		    width: 100%;
		    text-align: center;
		    margin:0 auto;
		}
		.button1:hover {
		  		opacity:1;
		}
		
		#jumbo1{
			padding: 30px;
			background-color:rgba(10,10,10,0.3);
		}
</style>
</head>
<body>
	<%
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("Welcome.jsp");
			out.print("log in ");
		}
	%>

<form action="Logout">
	<nav  class="navbar navbar-light" style="background-color: #79a5ea;">
  		<a class="navbar-brand" href="Hotelview.jsp" >
    	<img src="https://cdn1.iconfinder.com/data/icons/hotel-and-restaurant-glyphs-2/128/61-512.png" width="30" height="30" class="d-inline-block align-top" alt="">
    	HOTELZOO  <input class="btn btn-success"type="submit" value="logout">
    	</a>
    </nav>
	</form>
	
<center>
	<div class=jumbotron id="jumbo1">
		<h3 class="font-weight-light">Congrats Your hotel is BOOKED</h3>
		
		<h1 class="display-4">
		<form action="Welcome.jsp">
		<input class="btn btn-large btn-primary" type="submit" value="Home">
		</form>
	</div>
	</center>
	<script src="https://code.jquery.com/jquery-2.1.3.js"></script>	
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
</body>
</html>