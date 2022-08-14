

<%  
   session.removeAttribute("email");
   session.invalidate();   //to remove all the data
   response.sendRedirect("home.jsp");

%>