<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Booking page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  background-image:url('https://wallpaperaccess.com/full/983279.jpg');
height:100vh;
-webkit-background-size:cover;
background-size:cover;
background-position:center center;
position:relative;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  padding: 5px 20px 15px 20px;
}

h3 {
outline:none;
border:none;
color:#D3D3D3;;
font-family:Times New Roman;
font-size:25px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

form {
position:absolute;
top:55px;
right:10px;
bottom:10px;
left:10px;
padding:60px 10px 10px 10px;
}


h1 {
font-family:Georgia;
font-style:	Italic;
color:#00BFFF;
font-size:40px;
text-align:center;
}

p {
color:#800080;
font-family:Verdana;
font-size:24px;
text-shadow:3px 2px 3px pink;
}

a {
  outline:none;
  text-align:center;
  box-sizing:border box;
  width:50%;
  padding:10px;
  color:blue;
}
a:hover {
background:dogger blue;
}

label {
  margin-bottom: 10px;
  display: block;
  color:#E0FFFF;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.bookbtn {
  background-color: #04AA6D;
  color: white;
  padding: 20px;
  margin: 10px 0;
  border: none;
  width:100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.bookbtn:hover {
  background-color: #45a049;
}
a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<%
int amount_paid=0;
Integer Id = (Integer)session.getAttribute("Id");
String occupancy_type = (String)session.getAttribute("roomtype");
Connection con;
Statement st;
ResultSet rs;
PreparedStatement ps;
try {
Class.forName("com.mysql.jdbc.Driver");
con= DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Bhagyashri47");
st=con.createStatement();
String query = "select * from hostel_price where Id = '"+Id+"' ";
rs = st.executeQuery(query);

int cnt =0;

while(rs.next())
		{
	        cnt = 1;
	        amount_paid = rs.getInt(occupancy_type);
		}
if(cnt == 0)
{
	System.out.println("roomtype price not fetched");
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>

<script>
function myFunction() {
  alert("Booking Successful");
 // window.open('home.jsp');

}
</script>

<div class="w3-container w3-center w3-animate-top">
<h1>BOOK NOW!</h1>
<p><strong>My Hostel,My New Home</strong></p>
</div>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="booknow_action.jsp" method="post" onsubmit = "myFunction()">
      
           <div class="row">
          <div class="col-50">
            <h3>Personal Details</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="Name" placeholder="Name">
            <label for="Mobile Number"><i class="fa fa-telephone-receiver"></i>Mobile Number</label>
            <input type="text" id="Mobile Number" name="phone" placeholder="+91">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="Address">
            <label for="city"><i class="fa fa-envelope" aria-hidden="true"></i>Email</label>
            <input type="text" id="city" name="email" placeholder="">

            <div class="row">
              <div class="col-50">
               <label for="Nationality">Nationality</label>
                <input type="text" id="Nationality" name="nationality" placeholder="Indian">
              </div>
              <div class="col-50">
               <label for="Occupancy">Occupancy Type</label>
               <input type="text" id="occupancy_type" name="occupancy_type" value="<%=occupancy_type %>" readonly>
              </div>
         
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Debit/Credit Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <div class="row">
             <div class="col-50">
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="name_on_card" placeholder="Riya Mehta">
            </div>
            <div class="col-50">
            <label for="ccnum">Card number</label>
            <input type="text" id="ccnum" name="card_number" placeholder="1111-2222-3333-4444">
            </div>
            </div>
            <div class="row">
              <div class="col-50">
                <label for="Validity">Validity</label>
                <input type="text" id="Validity" name="validity" placeholder="MM/YY">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
            <label for="UPI">UPI ID(Gpay,Paytm,Phonepe,BhimUPI...)</label>
            <input type="text" id="UPI" name="upi_id" placeholder="1234567890@upi">
            <label>Amount Payable</label>
            <input type="text" id="amount_paid" name="amount_paid" value="<%=amount_paid%>" readonly>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="terms&privacy">I have read and agree all<a href="#">Terms & Privacy</a>
        </label>
        <hr>
        <label>
        <input type="submit" value="BOOK" class="bookbtn" >
        </label>
      </form>
    </div>
  </div>
</div>
</body>
</html>