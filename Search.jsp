<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import = "java.util.logging.Logger" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>  

* { box-sizing: border-box; }
body {
  font: 16px Arial;
}
.autocomplete {
  /*the container must be positioned relative:*/
  position: relative;
  display: inline-block;
  margin-top:2%;
  margin-left:4%;
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
  /*position the autocomplete items to be the same width as the container:*/
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
  /*when hovering an item:*/
  background-color: #e9e9e9;
}
.autocomplete-active {
  /*when navigating through the items using the arrow keys:*/
  background-color: DodgerBlue !important;
  color: #ffffff;
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
    background:#66ccff;
	color: #000000;
    }


</style>
<link rel="stylesheet" href="imageC.css">

<title>JSP Page</title>
</head>
<body>

<%


String h=request.getParameter("h");


%>



<header>
    <div class="wrapper">
        <div class="logo">
            <img src="https://previews.123rf.com/images/leoedition/leoedition1708/leoedition170800070/83560367-hostel-logo-hotel-logo-travel-rest-place-vector-illustration.jpg" alt="" width="100" height="100">
        </div>
        
        <!--Make sure the form has the autocomplete function switched off:-->
<form autocomplete="off" action="Search.jsp">
  <div class="autocomplete" style="width:300px;">
    <input id="myInput" type="text" name="h" placeholder="Search Hostel by Name/Area">
  </div>
  <input type="submit" value="Search">
</form>
<script>
var countries = ["Chitale Hostel","City Pride Chowk","Daizy Hostel","David Hostel","Deccan Gymkhana","Koregaon Park","Karve Nagar","Nandini Hostel","Ramadan Hostel","Swaroop Hostel","Viman Nagar"];
function autocomplete(inp, arr) {
	  /*the autocomplete function takes two arguments,
	  the text field element and an array of possible autocompleted values:*/
	  var currentFocus;
	  /*execute a function when someone writes in the text field:*/
	  inp.addEventListener("input", function(e) {
	      var a, b, i, val = this.value;
	      /*close any already open lists of autocompleted values*/
	      closeAllLists();
	      if (!val) { return false;}
	      currentFocus = -1;
	      /*create a DIV element that will contain the items (values):*/
	      a = document.createElement("DIV");
	      a.setAttribute("id", this.id + "autocomplete-list");
	      a.setAttribute("class", "autocomplete-items");
	      /*append the DIV element as a child of the autocomplete container:*/
	      this.parentNode.appendChild(a);
	      /*for each item in the array...*/
	      for (i = 0; i < arr.length; i++) {
	        /*check if the item starts with the same letters as the text field value:*/
	        if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
	          /*create a DIV element for each matching element:*/
	          b = document.createElement("DIV");
	          /*make the matching letters bold:*/
	          b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
	          b.innerHTML += arr[i].substr(val.length);
	          /*insert a input field that will hold the current array item's value:*/
	          b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
	          /*execute a function when someone clicks on the item value (DIV element):*/
	              b.addEventListener("click", function(e) {
	              /*insert the value for the autocomplete text field:*/
	              inp.value = this.getElementsByTagName("input")[0].value;
	              /*close the list of autocompleted values,
	              (or any other open lists of autocompleted values:*/
	              closeAllLists();
	          });
	          a.appendChild(b);
	        }
	      }
	  });
	  /*execute a function presses a key on the keyboard:*/
	  inp.addEventListener("keydown", function(e) {
	      var x = document.getElementById(this.id + "autocomplete-list");
	      if (x) x = x.getElementsByTagName("div");
	      if (e.keyCode == 40) {
	        /*If the arrow DOWN key is pressed,
	        increase the currentFocus variable:*/
	        currentFocus++;
	        /*and and make the current item more visible:*/
	        addActive(x);
	      } else if (e.keyCode == 38) { //up
	        /*If the arrow UP key is pressed,
	        decrease the currentFocus variable:*/
	        currentFocus--;
	        /*and and make the current item more visible:*/
	        addActive(x);
	      } else if (e.keyCode == 13) {
	        /*If the ENTER key is pressed, prevent the form from being submitted,*/
	        e.preventDefault();
	        if (currentFocus > -1) {
	          /*and simulate a click on the "active" item:*/
	          if (x) x[currentFocus].click();
	        }
	      }
	  });
	  function addActive(x) {
	    /*a function to classify an item as "active":*/
	    if (!x) return false;
	    /*start by removing the "active" class on all items:*/
	    removeActive(x);
	    if (currentFocus >= x.length) currentFocus = 0;
	    if (currentFocus < 0) currentFocus = (x.length - 1);
	    /*add class "autocomplete-active":*/
	    x[currentFocus].classList.add("autocomplete-active");
	  }
	  function removeActive(x) {
	    /*a function to remove the "active" class from all autocomplete items:*/
	    for (var i = 0; i < x.length; i++) {
	      x[i].classList.remove("autocomplete-active");
	    }
	  }
	  function closeAllLists(elmnt) {
	    /*close all autocomplete lists in the document,
	    except the one passed as an argument:*/
	    var x = document.getElementsByClassName("autocomplete-items");
	    for (var i = 0; i < x.length; i++) {
	      if (elmnt != x[i] && elmnt != inp) {
	      x[i].parentNode.removeChild(x[i]);
	    }
	  }
	}
	/*execute a function when someone clicks in the document:*/
	document.addEventListener("click", function (e) {
	    closeAllLists(e.target);
	});
	}


autocomplete(document.getElementById("myInput"), countries);
</script>
        
        <% String msg = request.getParameter("msg"); %>
<ul class="nav-area">
<li><a href="home.jsp" >Home</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="image.jsp" class="active">Hostels</a></li>
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

</header>


<br>

	<table >
	
	
   <%if("Chitale Hostel".equals(h) || "Karve Nagar".equals(h))
       {%>
		<tr>
		
			<td>
			<form method=post >
			<a href ="Retrive.jsp?Id=1" style="color:black;font-size:20px;"><img src="http://youthvillehostel.com/img/article-31.jpg" height="350" width="400" alt="chitale hostel" /></a>
		
        </form>
	    
			</td>
			
			<td style="width:65%;">
			 <div class="right">
			      <h3> Chitale Hostel</h3>
			      <h2>Karve Nagar</h2>
			      
			 </div>
			</td>
		</tr>
		<%} 
     if("Daizy Hostel".equals(h) || "Koregaon Park".equals(h))
     {
		%>
		<tr>	
			
			<td>
			<a href ="Retrive.jsp?Id=2" style="color:black;font-size:20px;"><img src="https://thumbs.dreamstime.com/b/bunk-beds-hostel-room-54783568.jpg" height="350" width="400"  alt="daizy hostel" /></a>
			
			</td>
			<td style="width:65%;"> 
			 <div>
			 <h3>Daizy Hostel</h3>
			  <h2>Koregaon Park</h2> </div>
			</td>
		</tr>
		<%}
     if("David Hostel".equals(h) || "Koregaon Park".equals(h))
     {
     %>
		<tr>
			<td>
			<a href="Retrive.jsp?Id=3" style="color:black;font-size:20px;"><img src="https://is1-2.housingcdn.com/01c16c28/205e800d2fd69beab5f96de3c8a1f0c1/v0/medium/3_rk_-for-rent-nagavara-Bangalore-others.jpg" height="350" width="400"  alt=""/></a>
			
			</td>
			<td style="width:65%;">
			 <div> <h3>David Hostel</h3>
			  <h2>Koregaon Park</h2></div>
			
			</td>
		</tr>
		<%}
     if("Nandini Hostel".equals(h) || "Viman Nagar".equals(h))
     {
     %>
		<tr>
		
		
			<td>
			<a href="Retrive.jsp?Id=4" style="color:black;font-size:20px;"><img src="https://indiasomeday.com/wp-content/uploads/2016/03/the-madpackers-hostel.jpg" height="350" width="400"  alt=""/></a>
			</td>
			<td style="width:65%;">
			 <div> <h3>Nandini Hostel</h3>
			  <h2>Viman Nagar</h2></div>
			
			</td>
			</tr>
			<%}
     if("Ramadan Hostel".equals(h) || "City Pride Chowk".equals(h)) 
     {
     %>
			<tr>
			
			<td>
			<a href="Retrive.jsp?Id=5" style="color:black;font-size:20px;"><img src="https://sbu.ac.in/img/hostel.jpg" height="350" width="400"  alt=""/></a>
			
			</td>
			<td style="width:65%;">
			 <div><h3>Ramadan Hostel</h3>
			  <h2>City Pride Chowk</h2></div>
			
			</td>
			</tr>
			<%}
     if("Swaroop Hostel".equals(h) || "Deccan Gymkhana".equals(h))
     {
     %>
			<tr>
			
			<td>
			<a href="Retrive.jsp?Id=6" style="color:black;font-size:20px;"><img src="https://www.ranimeyyammaihostel.org/wp-content/uploads/2021/04/04_s.jpg" height="350" width="400"  alt=""/></a>
			
			</td>
			<td style="width:65%;">
			 <div> <h3>Swaroop Hostel</h3>
			  <h2>Deccan Gymkhana</h2></div>
			
			</td>
		</tr>
		<%} %>
		
		
	</table>

</body>
</html>