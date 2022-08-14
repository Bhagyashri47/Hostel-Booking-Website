<!DOCTYPE html>
<!--Code by Divinector (www.divinectorweb.com)-->
<html lang="en">
<head>
<link rel="stylesheet" href="homeC.css">
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
    <title>Welcome to HostelDekho.com</title>
   
    <link rel="stylesheet" href="homeC.css"> 
    <style>
    .active{
    background:#66ccff;
	color: #000000;
    }
    <style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 100px;
 
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
h2{
text-align: center;
color:#800080;
font-family:Verdana;
text-transform: uppercase;
font-size: 40px;
}
ul{
padding-left:10px;
font-family:Georgia;
font-size:20px;
</style>
    </style>   
</head>
<body>
    <header>
        <div class="wrapper">
        <div class="logo">
            <img src="https://previews.123rf.com/images/leoedition/leoedition1708/leoedition170800070/83560367-hostel-logo-hotel-logo-travel-rest-place-vector-illustration.jpg" alt="" width="100" height="100" >
        </div>

        <% String msg = request.getParameter("msg");
       

       %>
<ul class="nav-area">
<li><a href="home.jsp" class="active">Home</a></li>
<li><a href="about.jsp">About</a></li>
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



<div class="welcome-text" style="margin-left:25%; margin-top:15%;">
        <h1>
Welcome to HostelDekho.com</h1>
<!--Make sure the form has the autocomplete function switched off:-->
<form autocomplete="off" action="Search.jsp">
  <div class="autocomplete" style="width:500px;">
    <input id="myInput" type="text" name="h" placeholder="Search Hostel by Name/Area" >
  </div>
  <input type="submit" value="Search">
</form>

<script>
var countries = ["Chitale Hostel","City Pride Chowk","Chaitanya Girls Hostel","Dinanath Boy's Hostel","Daulat Hostel","Daizy Hostel","Durwankur Girls Hostel","David Hostel","Deccan Gymkhana","Galaxy Luxury Hostel","Hostel Staywel","Hinjawadi","Keerthi Inn Ladies And Gents PG/Hostels","Katraj","Kharadi","Koregaon Park","Karve Nagar","Manish Hostel","Nehru Nagar","Nandini Hostel","Pooja Hostel","Procida Hostel","Ramadan Hostel","Shree Venkat Sai","Swaroop Hostel","Sayaji Boys Hostel","Sakal Nagar","United Enterprises Paying Guest/Hostels","Vaidya Girls Hostel","Viman Nagar"];
function autocomplete(inp, arr) {
	  /*the autocomplete function takes two arguments,
	  the text field element and an array of possible autocompleted values:*/
	  var currentFocus;
	  /execute a function when someone writes in the text field:/
	  inp.addEventListener("input", function(e) {
	      var a, b, i, val = this.value;
	      /close any already open lists of autocompleted values/
	      closeAllLists();
	      if (!val) { return false;}
	      currentFocus = -1;
	      /create a DIV element that will contain the items (values):/
	      a = document.createElement("DIV");
	      a.setAttribute("id", this.id + "autocomplete-list");
	      a.setAttribute("class", "autocomplete-items");
	      /append the DIV element as a child of the autocomplete container:/
	      this.parentNode.appendChild(a);
	      /for each item in the array.../
	      for (i = 0; i < arr.length; i++) {
	        /check if the item starts with the same letters as the text field value:/
	        if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
	          /create a DIV element for each matching element:/
	          b = document.createElement("DIV");
	          /make the matching letters bold:/
	          b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
	          b.innerHTML += arr[i].substr(val.length);
	          /insert a input field that will hold the current array item's value:/
	          b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
	          /execute a function when someone clicks on the item value (DIV element):/
	              b.addEventListener("click", function(e) {
	              /insert the value for the autocomplete text field:/
	              inp.value = this.getElementsByTagName("input")[0].value;
	              /*close the list of autocompleted values,
	              (or any other open lists of autocompleted values:*/
	              closeAllLists();
	          });
	          a.appendChild(b);
	        }
	      }
	  });
	  /execute a function presses a key on the keyboard:/
	  inp.addEventListener("keydown", function(e) {
	      var x = document.getElementById(this.id + "autocomplete-list");
	      if (x) x = x.getElementsByTagName("div");
	      if (e.keyCode == 40) {
	        /*If the arrow DOWN key is pressed,
	        increase the currentFocus variable:*/
	        currentFocus++;
	        /and and make the current item more visible:/
	        addActive(x);
	      } else if (e.keyCode == 38) { //up
	        /*If the arrow UP key is pressed,
	        decrease the currentFocus variable:*/
	        currentFocus--;
	        /and and make the current item more visible:/
	        addActive(x);
	      } else if (e.keyCode == 13) {
	        /If the ENTER key is pressed, prevent the form from being submitted,/
	        e.preventDefault();
	        if (currentFocus > -1) {
	          /and simulate a click on the "active" item:/
	          if (x) x[currentFocus].click();
	        }
	      }
	  });
	  function addActive(x) {
	    /a function to classify an item as "active":/
	    if (!x) return false;
	    /start by removing the "active" class on all items:/
	    removeActive(x);
	    if (currentFocus >= x.length) currentFocus = 0;
	    if (currentFocus < 0) currentFocus = (x.length - 1);
	    /add class "autocomplete-active":/
	    x[currentFocus].classList.add("autocomplete-active");
	  }
	  function removeActive(x) {
	    /a function to remove the "active" class from all autocomplete items:/
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
	/execute a function when someone clicks in the document:/
	document.addEventListener("click", function (e) {
	    closeAllLists(e.target);
	});
	}


autocomplete(document.getElementById("myInput"), countries);
</script>
    </div>
</header>

  <section class ="right_main" style= "width :40%">
	<div id="carouselExampleIndicators"
		class="carousel slide" data-ride="carousel"
		data-interval="800">
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
https://nitte.edu.in/img/facilities/hostels/b/1.jpg
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
      <h2>Looking for a Hostel ?</h2>
      <br>
	  <h1 style="color : #000099; font-family:fantasy; letter-spacing:3px;">HostelDekho.com</h1> 
	  <br>
	  <h3>is here to help you find a best <br>second home for YOU!</h3>
	  <br>
	  </div>
	  <hr>
	  <br>
	  <h2>We Offer You </h2>
	  <br>
	  <ul class="a">
	  <li>Best Hostel searching trip at your comfort</li>
	  <li>Get all Hostel Details here</li>
	  <li>Valuable feedback about hostel from our users</li>
	  </ul>
	 
	
	<br>
	
    </aside>
    
    <br/>
    <br/>
  
    <h1 style="margin-left:%;text-align:center;color:#800080;">Enjoy Your Best Moments </h1>
   
   <div class="row">
  <div class="column">
    <img src="images\nature friendly home 2.jpg" alt="Snow" style="width:100%">
 
    <h3 style="padding:40px;">Nature Friendly Hostels</h3>
  </div>
  <div class="column">
    <img src="images\increase friend circle.jpg" alt="Forest" style="width:100%">
   
    <h3 style="padding:40px;">Increase your friend circle</h3>
  </div>
  <div class="column">
    <img src="images\working women.jpg" alt="Mountains" style="width:100%">
    <h3 style="padding:40px;">Work in a peacefull environment</h3>
  </div>
</div>
   

    <section class="ridge" id="about" style=" text-align:center;background-color:#34282C;color:#B6B6B4;	">
   <br/>
   <h3>Get connected with us on</h3><br/>
   <form>
 <a href ="https://instagram.com/hosteldekho20?igshid=YmMyMTA2M2Y=" style="color:black;font-size:20px;"><img src="https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c521.png" height="50" width="50"/></a>
 <a href =" https://www.facebook.com/hosteldekho20/" style="color:black;font-size:20px;"><img src="https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png" height="50" width="50"/></a>
 <a href =" mailto:hosteldekho20@gmail.com" style="color:black;font-size:20px;"><img src="https://1000logos.net/wp-content/uploads/2021/05/Gmail-logo.png" height="50" width="50"/></a>
   <br/>
   <br/>
<p align="center"><a href="help.jsp"><span class="fa fa-question-circle"> Help</a></p>
<p>2022 Hosteldekho.com limited</p>
<p>    Customer Data Protection Notice     |   Terms &Legal     |    Site Map   |     Web-site Testing    |  Cookies Settings    </p>
		
        </form>
    
    
    </section>
    


</body>
</html>