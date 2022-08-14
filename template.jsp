<!DOCTYPE html>
<!--Code by Divinector (www.divinectorweb.com)-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to HostelDekho.com</title>
   
   <link rel="stylesheet" href="template.css">    
</head>
<body>
   <header>
    <div class="wrapper">
        <div class="logo">
            <img src="https://i.postimg.cc/mg4rWBmv/logo.png" alt="">
        </div>
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


</body>
</html>