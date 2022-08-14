
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
}
main {
background-image:url('https://youthincmag.com/wp-content/uploads/2018/10/hostel-1.jpg');
height:100vh;
-webkit-background-size:cover;
background-size:cover;
background-position:center center;
position:relative;

}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color:white
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: 1px solid black;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #88ff4d;
  font-size:20px;
  color: black;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  outline:none;
  text-align:center;
  box-sizing:border box;
  width:50%;
  padding:10px;
  color:white;
  background-color: green;
}
a:hover {
background:dogger blue;
}
/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: white;
  text-align: center;
}
h1 {
text-align: center;
color:black;
}
form {
position:absolute;
top:20px;
right:300px;
bottom:300px;
left:300px;

}

header{
	height:100px;
	background-color:#003366;
}


* {
	margin: 0;
	padding: 0;
}
body {
	font-family: 'Poppins', sans-serif;
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
	color: #ffffff;
	text-decoration: none;
	padding: 5px 20px;
	font-family: poppins;
	font-size: 16px;
	text-transform: uppercase;

}
.nav-area li a:hover {
	background: #ffffff;
	color: #333;
}
.logo {
	float: left;
}
.logo img {
	width: 100%;
	padding: 15px 0;
}
.active{
	background: #66ccff;
	color: #333;
}

</style>
</head>
<body>
 <header>
    <div class="wrapper">
        <div class="logo">
            <img src="https://i.postimg.cc/mg4rWBmv/logo.png" alt="">
        </div>
<ul class="nav-area">
<li><a href="home.jsp">Home</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="image.jsp">Hostels</a></li>
<li><a href="signup.jsp" class="active">Login</a></li>
<li><a href="#">Contact</a></li>
</ul>
</div>
</header>


<main>
<img src="https://youthincmag.com/wp-content/uploads/2018/10/hostel-1.jpg"  alt="">
<form action="signup_action.jsp" method="post">
  <div class="container";div style="background-color:white; color:black ; padding:20px;">
    <h1>REGISTER</h1>
    <p align="center"><strong>Please fill this form to create an account.</strong></p>
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required></br>
   
 
    <label for="gender-select"><b>Gender</b></label><br />
     <br/>
    <input type="radio" name="gender" value="male" id="gender-select" required/>Male <br />
    <input type="radio" name="gender" value="female" id="gender-select" required  />Female <br />
    </br>
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

    <label for="psw-repeat"><b>Confirm Password</b></label>
    <input type="password" placeholder="Confirm Password" name="psw-repeat" id="psw-repeat" required>
    

    <hr>
    <p align="center" >By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn"><strong>Register</strong></button>
  </div>
  <div>
  </div>
   
  <div class="signin">
    <%
          String msg = request.getParameter("msg");
    	  if("valid".equals(msg))
    	  {
    		  %>
    		  <h4>Succesfully Regestered</h4>
    		  <%
    	  }%>
    <%
         if("invalid".equals(msg))
         {
        	 %>
        	 <h4>Something went wrong. Try Again!</h4>
        	 <%
         }%>
    <p>Already have an account? <a href="login.jsp">Sign in</a>.</p>
  </div>
</form>
</main>
</body>
</html>