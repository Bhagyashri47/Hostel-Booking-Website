<%@ page import = "connection.Connection_provider"%>
<%@ page import = "java.sql.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import = "java.util.logging.Logger" %>
<%@page import = "jakarta.servlet.*" %>
<%@page import = "jakarta.servlet.http.*" %>
<!DOCTYPE html>
<!--Code by Divinector (www.divinectorweb.com)-->
<html lang="en">
<% 
String Name = session.getAttribute("Name").toString();

String Contact = session.getAttribute("Contact").toString();
String Address = session.getAttribute("Address").toString();
String Description = session.getAttribute("Description").toString();
String rooms = session.getAttribute("rooms").toString();
String Rating = session.getAttribute("Rating").toString();
String img_1 = session.getAttribute("img1").toString();
String img2 = session.getAttribute("img2").toString();
String img3 = session.getAttribute("img3").toString();
Integer Id = (Integer)session.getAttribute("Id");

System.out.println("img 2 = "+img2);
System.out.println("Id = "+Id);

%>
<head>
    <meta charset="UTF-8">
    <title>Welcome to HostelDekho.com</title>
   
    <link rel="stylesheet" href="commonC.css"> 

    <style>
    body {
  font-family: Verdana, sans-serif;
  margin: 0;
}

* {
  box-sizing: border-box;
}

.row > .column {
  padding: 0 8px;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

.column {
  float: left;
  width: 25%;
}

/* The Modal (background) */
.modal {
  display: none;
  position: fixed;
  z-index: 1;
  padding-top: 100px;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: black;
}

/* Modal Content */
.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  width: 90%;
  max-width: 1200px;
}

/* The Close Button */
.close {
  color: white;
  position: absolute;
  top: 10px;
  right: 25px;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #999;
  text-decoration: none;
  cursor: pointer;
}

.mySlides {
  display: none;
}

.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

img {
  margin-bottom: -4px;
}

.caption-container {
  text-align: center;
  background-color: black;
  padding: 2px 16px;
  color: white;
}

.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}

img.hover-shadow {
  transition: 0.3s;
}

.hover-shadow:hover {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
    
body {font-family: Arial, Helvetica, sans-serif;}

#myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}
    
    header {
	background: url('images/<%=img_1%>.jpg');
	height: 70vh;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	position: relative;
}
    
    .active{
    background:#66ccff;
	color: #000000;
    }
    </style>   
</head>
<body>



    <header>
    <div class="wrapper">
        <div class="logo">
            <img src="https://previews.123rf.com/images/leoedition/leoedition1708/leoedition170800070/83560367-hostel-logo-hotel-logo-travel-rest-place-vector-illustration.jpg" alt="" width="100" height="100">
        </div>
        <% String msg = request.getParameter("msg"); %>
<ul class="nav-area">
<li><a href="home.jsp" class="active">Home</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="image.jsp">Hostels</a></li>
<li><a <%
    if("done".equals(msg))
    {%>
    	href="logout.jsp"<%
    } 
    else{
    %>
    href="signup.jsp"<%
    }%>>
    <%
    if("done".equals(msg))
    {%>
    	Logout<%
    } 
    else{
    %>
    Login<%
    }%></a></li>
<li><a href="#">Contact</a></li>



<%



if("done".equals(msg))
{
	  String email = session.getAttribute("email").toString();
	  %>
	  
	      <li><a href="#"><% out.print(email); %></a></li>
	  <%
}%>


</ul>
</div>

<div class="welcome-text">
        <h1>
<%=Name %></h1>

    </div>
</header>
<main>
     <h1> <%=Name %></h1>
     <br>
    <div class="row">
  <div class="column1">
    <h2>Ratings</h2>
    <p><%=Rating %></p>
  </div>
  <div class="column2">
  
   <h2>Description</h2>
    <p><%=Description %></p></div>
</div>
     <div class = "hostel_images">
     <br>
     <h3>Images</h3>
     <br>
	    <div class="row">
	  <div class="column">
	    <img onclick="openModal();currentSlide(1)" src="images\<%=img_1 %>.jpg" class="hover-shadow cursor" alt="img1" style="margin: 1px 1px 1px 1px;">
	  </div>
	  <div class="column">
	   <img onclick="openModal();currentSlide(1)" src="images\<%=img2 %>.jpg" class="hover-shadow cursor" alt="img2" style="margin: 1px 1px 1px 1px;">
	  </div>
	  <div class="column">
	    <img onclick="openModal();currentSlide(1)" src="images\<%=img3 %>.jpg" class="hover-shadow cursor" alt="img3" style="margin: 1px 1px 1px 1px;">
	  </div>
	</div>
     </div>
	<div id="myModal" class="modal">
  <span class="close cursor" onclick="closeModal()">&times;</span>
  <div class="modal-content">

    <div class="mySlides">
      <div class="numbertext">1 / 4</div>
      <img src="images\<%=img_1 %>.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">2 / 4</div>
      <img src="images\<%=img2 %>.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">3 / 4</div>
      <img src="images\<%=img3 %>.jpg" style="width:100%">
    </div>
    
    <div class="mySlides">
      <div class="numbertext">4 / 4</div>
      <img src="img_lights_wide.jpg" style="width:100%">
    </div>
    
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>

    <div class="caption-container">
      <p id="caption"></p>
    </div>


    <div class="column">
      <img class="demo cursor" src="images\<%=img_1 %>.jpg" style="width:100%" onclick="currentSlide(1)" alt="Image 1">
    </div>
    <div class="column">
      <img class="demo cursor" src="images\<%=img2 %>.jpg" style="width:100%" onclick="currentSlide(2)" alt="Image 2">
    </div>
    <div class="column">
      <img class="demo cursor" src="images\<%=img3 %>.jpg" style="width:100%" onclick="currentSlide(3)" alt="Image 3">
    </div>
    <div class="column">
      <img class="demo cursor" src="img_lights_wide.jpg" style="width:100%" onclick="currentSlide(4)" alt="Image 4">
    </div>
  </div>
</div>

<script>
function openModal() {
  document.getElementById("myModal").style.display = "block";
}

function closeModal() {
  document.getElementById("myModal").style.display = "none";
}

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
</script>
    

	   
 <br>
 <%
      
 %>
     <h3>Check Availability</h3>
     <br>
     <div class="availabilty">
     <form  action = "submit_avail.jsp" method="post">
      <label><b>Check In Date</b></label>
      <input type="date" placeholder="Enter Date" name="checkin" required>
      <br>
      <br>
      
      <label for="roomtype">Select Room</label>

		<select name="roomtype" id="roomtype">
		  <option value="1_sharing">1_sharing</option>
		  <option value="2_sharing">2_sharing</option>
		  <option value="3_sharing">3_sharing</option>
		  
		</select>
		<br>
       <button type="submit"><strong>Submit</strong></button> 
       
       <%
       String flag = request.getParameter("flag");
       if("available".equals(flag))
       {
    	   %><h6>Bed Available</h6>
             <br>
            <a href="booknow.jsp">Book Now</a>
            <br>
    	   <% 
    	   
       }
       else if("not_available".equals(flag))
    		   {
    	        %><h6>Bed Not Available. Please select different seater room</h6><%
    		   }
       if("invalid".equals(flag))
       {
    	   %><h6>Something went wrong. Please try again!</h6><% 
       }
       %>
     
     </form>
     
     </div>
</main>
</body>
</html>