<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOTELZO</title>
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
		
		
		
		* {
    box-sizing: border-box;
}

body {
    
    font-family: Arial;
}

/* Center website */
.main {
    max-width: 1000px;
    margin: auto;
}

h1 {
    font-size: 50px;
    word-break: break-all;
}

.row {
    margin: 8px -16px;
}

/* Add padding BETWEEN each column (if you want) */
.row,
.row > .column {
    padding: 8px;
}

/* Create three equal columns that floats next to each other */
.column {
    float: left;
    width: 33.33%;
    display: none; /* Hide columns by default */
}

/* Clear floats after rows */ 
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Content */
.content {
    background-color: white;
    padding: 10px;
}

/* The "show" class is added to the filtered elements */
.show {
    display: block;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

/* Add a grey background color on mouse-over */
.btn:hover {
  background-color: #ddd;
}

/* Add a dark background color to the active button */
.btn.active {
  background-color: #666;
   color: white;
}
		
		
.container{
background-color: rgba(10,10,20,0.2);
padding-top: 10px;
padding-bottom: 5px;
}		
		
</style>
<script type="text/javascript">

filterSelection("all") 
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

// Show filtered elements
function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {
      element.className += " " + arr2[i];
    }
  }
}

// Hide elements that are not selected
function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1); 
    }
  }
  element.className = arr1.join(" ");
}

// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}



</script>


<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="Logout">
	<nav  class="navbar navbar-light" style="background-color: #79a5ea;">
  		<a class="navbar-brand" href="Hotelview.jsp" >
    	<img src="https://cdn1.iconfinder.com/data/icons/hotel-and-restaurant-glyphs-2/128/61-512.png" width="30" height="30" class="d-inline-block align-top" alt="">
    	HOTELZOO  <input class="btn btn-success"type="submit" value="logout">
    	</a>
    </nav>
    <br>
	</form>


<div class="container">

<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')">ALL INDIA</button>
  <button class="btn" onclick="filterSelection('kolkata')"> KOLKATA</button>
  <button class="btn" onclick="filterSelection('delhi')"> DELHI</button>
  <button class="btn" onclick="filterSelection('mumbai')">MUMBAI</button>
</div>
<form action="Booking.jsp">

				<div class="row">
				  <div class="column kolkata">
				    <div class="content">
				      <img src="https://media-cdn.tripadvisor.com/media/photo-w/01/8e/e4/cf/the-obeoi-grand-kolkata.jpg" style="width:100%">
				      <h4>The Oberoi Grand</h4>
				   <div>
				   	<div>Rs.<span class="font-weight-light">13,000</span></div>
				   	<div>Rating: <span class="font-weight-bold">5<span></div>
				   </div>
				      <input class="btn btn-primary" type="submit"  value="BOOK">
				    </div>
				  </div>
				  <div class="column kolkata">
				    <div class="content">
				      <img src="https://media-cdn.tripadvisor.com/media/photo-w/11/cd/bc/da/the-park-kolkata.jpg" style="width:100%">
				      <h4>The Park Kolkata</h4>
				  
				   <div>
				   	<div>Rs.<span class="font-weight-light">13,000</span></div>
				   	<div>Rating: <span class="font-weight-bold">5<span></div>
				   </div>
				      <input class="btn btn-primary" type="submit"   value="BOOK">
				    </div>
				  </div>
				  <div class="column kolkata">
				    <div class="content">
				      <img src="https://media-cdn.tripadvisor.com/media/photo-o/12/02/49/e1/pool.jpg" style="width:100%">
				      <h4>Tag Bengal Kolkata</h4>
				       <div>
				   	<div>Rs.<span class="font-weight-light">16,000</span></div>
				   	<div>Rating: <span class="font-weight-bold">4<span></div>
				   </div>
				      <input class="btn btn-primary" type="submit" name="3" value="BOOK">
				    </div>
				  </div>
				
				  <div class="column delhi">
				    <div class="content">
				      <img src="https://media-cdn.tripadvisor.com/media/photo-o/11/3d/57/8c/exterior.jpg" style="width:100%">
				      <h4>Red Fox Hotel Delhi</h4>
				       <div>
				   	<div>Rs.<span class="font-weight-light">19,000</span></div>
				   	<div>Rating: <span class="font-weight-bold">4.5<span></div>
				   </div>
				      <input class="btn btn-primary" type="submit" name="4" value="BOOK">
				    </div>
				  </div>
				  <div class="column delhi">
				    <div class="content">
				      <img src="https://media-cdn.tripadvisor.com/media/photo-w/07/51/de/0f/ginger-new-delhi.jpg" style="width:100%">
				      <h4>Ginger New Delhi</h4>
				       <div>
				   	<div>Rs.<span class="font-weight-light">17,000</span></div>
				   	<div>Rating: <span class="font-weight-bold">4<span></div>
				   </div>
				      <input class="btn btn-primary" type="submit" name="Ginger New Delhi" value="BOOK">
				    </div>
				  </div>
				  <div class="column delhi">
				    <div class="content">
				      <img src="https://media-cdn.tripadvisor.com/media/photo-w/13/61/05/25/exterior-day.jpg" style="width:100%">
				      <h4>The Leela Palace New Delhi</h4>
				       <div>
				   	<div>Rs.<span class="font-weight-light">25,000</span></div>
				   	<div>Rating: <span class="font-weight-bold">5<span></div>
				   </div>
				      <input class="btn btn-primary" type="submit" name="5" value="BOOK">
				    </div>
				  </div>
				
				  <div class="column mumbai">
				    <div class="content">
				      <img src="https://images.treebohotels.com/files/Treebo_Laxvas/Reception_04.jpg?w=1000&h=450&fm=pjpg&fit=crop"  style="width:100%">
				      <h4>Treebo Saside	</h4>
				       <div>
				   	<div>Rs.<span class="font-weight-light">21,000</span></div>
				   	<div>Rating: <span class="font-weight-bold">5<span></div>
				   </div>
				      <input class="btn btn-primary" type="submit" value="BOOK" name="6">
				    </div>
				  </div>
				  <div class="column mumbai">
				    <div class="content">
				      <img src="https://imgio.trivago.com/gtximages/uploadimages/20/50/20507506_y@2x.jpeg" alt="People" style="width:100%">
				      <h4>Emperia Hotel</h4>
				       <div>
				   	<div>Rs.<span class="font-weight-light">19,000</span></div>
				   	<div>Rating: <span class="font-weight-bold">4<span></div>
				   </div>
				      <input class="btn btn-primary" type="submit" value="BOOK" name="7">
				    </div>
				  </div>
				  <div class="column mumbai">
				    <div class="content">
				      <img src="https://imgio.trivago.com/uploadimages/28/26/28265274_x.jpeg" alt="People" style="width:100%">
				      <h4>Apollo hotel</h4>
				       <div>
				   	<div>Rs.<span class="font-weight-light">4,000</span></div>
				   	<div>Rating: <span class="font-weight-bold">3<span></div>
				   </div>
				      <input class="btn btn-primary" type="submit" value="BOOK" name="8">
				    </div>
				  </div>
				<!-- END GRID -->
				</div>
	</form>	
	</div>

	
	
	
	
	
	
	
<script src="https://code.jquery.com/jquery-2.1.3.js"></script>	
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
</body>
</html>