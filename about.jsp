<!DOCTYPE html>
<!--Code by Divinector (www.divinectorweb.com)-->
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- CSS only -->
	<link href=
"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		rel="stylesheet" />
	<script src=
"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	</script>
	<script src=
"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js">
	</script>
	<script src=
"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
	</script>
    <meta charset="UTF-8">
    <title>About Us</title>
   
    <style>
    .active{
    background:#66ccff;
	color: #000000;
    }
 
	{
	margin: 0;
	padding: 0;
}
body {
	font-family: 'Poppins', sans-serif;
}
.wrapper {
	width: 1170px;
	margin: auto;
}
header {
	background:url(https://images.pexels.com/photos/1000445/pexels-photo-1000445.jpeg);
	height: 80vh;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	position: relative;
	
}
.nav-area {
	float: right;
	list-style: none;
	margin-top: 30px;
}
.nav-area li {
	display: inline-block;
}
.nav-area li a {
	color: #fff;
	text-decoration: none;
	padding: 5px 20px;
	font-family: poppins;
	font-size: 16px;
	text-transform: uppercase;
}
.nav-area li a:hover {
	background: #fff;
	color: #333;
}
.logo {
	float: left;
}

.logo img {
	width: 100%;
	padding: 15px 0;
}
.welcome-text {
	position: absolute;
	top:30px;
	right:60px;
	left:60px;
	bottom:100px;
	width: 600px;
	height: 300px;
	margin: 20% 30%;
	text-align:center;
}
.welcome-text h1 {
	text-align: center;
	color: #fff;
	text-transform: uppercase;
	font-size: 70px;
}
.welcome-text h2 {
	text-align: center;
	color:	#ffa07a;
	font-size: 30px;
}
.welcome-text h1 span {
	color: #00fecb;
}
.welcome-text a {
	border: 1px solid #fff;
	padding: 10px 25px;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 14px;
	margin-top: 20px;
	display: inline-block;
	color: #fff;
}
.welcome-text a:hover {
	background: #fff;
	color: #333;
}


@media (max-width:600px) {
	.wrapper {
		width: 100%;
	}
	.logo {
		float: none;
		width: 70%;
		text-align: center;
		margin: auto;
	}
	.user_icon {
		float: right;
		width: 50%;
		text-align: center;
		margin: auto;
	}
	.nav-area {
		float: none;
		margin-top: 0;
	}
	.nav-area li a {
		padding: 5px;
		font-size: 11px;
	}
	.nav-area {
		text-align: center;
	}
	.welcome-text {
		width: 100%;
		height: auto;
		margin: 30% 0;
	}
	.welcome-text h1 {
		font-size: 30px;
	}
}
.right_main{
	float:right;
	margin-right:3%;
	margin-bottom:3%;
	margin-top:3%;
	width:40%;
}

aside{
	float:left;
	margin-top:2%;
	margin-left:2%;
}
.intro{
	margin-left:20%;
}
p{
text-align:center;
font-style:Italic;
font-family:Georgia;
font-size:20px;
}

h1{
text-align: center;
color:#800080;
font-family:Verdana;
text-transform: uppercase;
font-size: 70px;
}
ul{
font-family:Georgia;
font-size:20px;
}
h3{
text-align:center;
color:#B6B6B4;
font-family:Times New Roman;
font-size: 40px;
}
footer
{
    margin-top:35%;
    background-color:#34282C;
    color:#B6B6B4;		
    padding:50px;
}
footer p{
text-align:center;
font-family:Arial;
color:black;
}
.type p{
color:#B6B6B4;	
}
.ridge{
	border-style:ridge;
}



* { box-sizing: border-box; }
body {
  font: 16px Arial;
}
.autocomplete {
  /the container must be positioned relative:/
  position: relative;
  display: inline-block;
}
input {
  border: 1px solid transparent;
  background-color: #f1f1f1;
  padding: 10px;
  font-size: 16px;
}
input[type=text] {
  background-color: #f1f1f1;
  width: 100%;
}
input[type=submit] {
  background-color: DodgerBlue;
  color: #fff;
}
.autocomplete-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  /position the autocomplete items to be the same width as the container:/
  top: 100%;
  left: 0;
  right: 0;
}
.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff;
  border-bottom: 1px solid #d4d4d4;
}
.autocomplete-items div:hover {
  /when hovering an item:/
  background-color: #e9e9e9;
}
.autocomplete-active {
  /when navigating through the items using the arrow keys:/
  background-color: DodgerBlue !important;
  color: #ffffff;
}

}
    </style>   
</head>
<body>
    <header>
    <div class="wrapper">
        <div class="wrapper">
        <div class="logo">
            <img src="https://previews.123rf.com/images/leoedition/leoedition1708/leoedition170800070/83560367-hostel-logo-hotel-logo-travel-rest-place-vector-illustration.jpg" alt="" width="100" height="100" >
        </div>

        <% String msg = request.getParameter("msg");
       

       %>
<ul class="nav-area">
<li><a href="home.jsp" >Home</a></li>
<li><a href="about.jsp" class="active">About</a></li>
<li><a href="image.jsp?msg=<%=msg%>">Hostels</a></li>
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
<li><a href="MyBooking.jsp">My Bookings</a></li>



<%



if("done".equals(msg))
{
	  
	String email = session.getAttribute("email").toString();
	  %>
	  
	  
	      <li><a href="#"><% out.print(email); %></a></li>
	  <%
}%>


</ul>



<div class="welcome-text" style="margin-left:25%; margin-top:5%;">
        <h1><strong>About Us</strong></h1>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <h2>HostelDekho.com is an online hostel booking web-site for college students or working professionals to book a hostel/PG as per their convenience.</h2>
<!--Make sure the form has the autocomplete function switched off:-->
<!--<form autocomplete="off" action="Search.jsp">
    <div class="autocomplete" style="width:500px;">
    <input id="myInput" type="text" name="h" placeholder="Search Hostel by Name/Area" >
  </div>
  <input type="submit" value="Search">
</form>-->

</div>
</div>
</header>

  <section class ="right_main" style= "width :40%">
	<div id="carouselExampleIndicators"
		class="carousel slide" data-ride="carousel"
		data-interval="1200">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators"
				data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators"
				data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators"
				data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators"
				data-slide-to="3"></li>
			<li data-target="#carouselExampleIndicators"
				data-slide-to="4"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src=
"https://www.collinsdictionary.com/images/full/hostel_772708525_1000.jpg"
					alt="Second slide" >
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src=
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPCuRMPcOxH1uEufn1Jjjw_D-78GVikXZNeA&usqp=CAU.jpg"
					alt="Second slide">
			</div>
			<div class="carousel-item" id="image2">
				<img class="d-block w-100" src=
"https://media-cdn.tripadvisor.com/media/photo-s/11/5c/8c/70/youthville-serviced-girls.jpg"
					alt="Third slide">
			</div>
			
			<div class="carousel-item">
				<img class="d-block w-100" src=
"https://www.cambridge.edu.in/wp-content/uploads/2020/12/CIT-139-1024x678.jpg"
					alt="Fourth slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src=
"https://play-zelo-production.s3.ap-south-1.amazonaws.com/uploads/center_caption_photo/photo/5dc5b46109ba996c9832c6dc/1.jpg"
					alt="Fifth slide">
			</div>
		</div>
		<a class="carousel-control-prev"
		href="#carouselExampleIndicators"
		role="button" data-slide="prev">
			<span class="carousel-control-prev-icon"
				aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next"
		href="#carouselExampleIndicators"
		role="button" data-slide="next">
			<span class="carousel-control-next-icon"
				aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	</section>
   
   
  <aside class ="middle" style="width:50%">
  <div class = "intro">
  <h1>Our Story</h1>
      <p>We developed "HostelDekho.com" software developed for managing various activities related  to the hostel. For the past few years the number of educational institutions are increasing rapidly. Thereby the need for hostels are also increasing  for the accommodation of the students studying in this institution.This website helps such students to solve their problem and connect them with the best hostels .
 </p>
      <ul>
	  <li>Best Hostel searching trip at your comfort</li>
	  <li>Get all Hostel Details here</li>
	  <li>Valuable feedback about hostel from our users</li>
	  </ul>
	</div>
    </aside>
   <footer>
  <h3>Get connected with us on</h3><br/>
  <form align="center">
 <a href ="https://instagram.com/hosteldekho20?igshid=YmMyMTA2M2Y=" style="color:black;font-size:20px;"><img src="https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c521.png" height="50" width="50"/></a>
 <a href =" https://www.facebook.com/hosteldekho20/" style="color:black;font-size:20px;"><img src="https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png" height="50" width="50"/></a>
 <a href =" mailto:hosteldekho20@gmail.com" style="color:black;font-size:20px;"><img src="https://1000logos.net/wp-content/uploads/2021/05/Gmail-logo.png" height="50" width="50"/></a>
   </form>
   <br/>
<div class="type" >
<p align="center"><a href="help.jsp"><span class="fa fa-question-circle"> Help</a></p>
<p>2022 Hosteldekho.com limited</p>
<p>    Customer Data Protection Notice     |   Terms &Legal     |    Site Map   |     Web-site Testing    |  Cookies Settings    </p>
</div>
</footer>
</body>
</html>