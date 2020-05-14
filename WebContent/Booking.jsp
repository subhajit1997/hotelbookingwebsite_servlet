<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



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
		p{
			color: white;
			font-weight: bold;
		}
</style>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
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
	<br>

	
	
<div class="container ">
<div class="jumbotron jumbotron-fluid" id="jumbo1">
<form  action="Booking">
		<center>
		<h3 class="my-3">Enter your details</h3>
		</center>
<table  class="table" id="table"align="center" border="3" padding:"30px">
<thead class="thead-dark">
    <tr>
      <th scope="col">Form values</th>
      <th scope="col">Your data</th>
    </tr>
  </thead>
  <tbody>
	<tr>
		<td><p>Select a hotel<p></td>
		<td><select name="name">
		<option value="The Oberoi Grand">The Oberoi Grand</option>
		<option value="The Park Kolkata">The Park Kolkata</option>
		<option value="Tag Bengal Kolkata">Tag Bengal Kolkata</option>
		<option>Red Fox Hotel Delhi</option>
		<option>Ginger New Delhi</option>
		<option>The Leela Palace New Delhi</option>
		<option>Treebo Saside	</option>
		<option>Emperia Hotel</option>
		<option >Apollo hotel</option>
		</select>
	</tr>
	<tr><td><p>Your name: <p></td><td><input type="text" name="reservtn" /></td></tr>
	<tr><td><p>Number of rooms<p></td><td colspan="3"><input type="text" name="roomNo" /></td></tr>
	<tr><td><p>Number of days<p></td><td colspan="3"><input type="text" name="days"/></td></tr>
	<tr><td><p>Arrival date:</p></td><td colspan=3><input type="text" name="date"></td></tr>
</tbody>
</table>
<center><input class="btn btn-primary button1" type="submit" value="Add reservation"></center>

</form>
	
	</div>
	</div>
<script src="https://code.jquery.com/jquery-2.1.3.js"></script>	
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
</body>
</html>