<%@page import="java.sql.Connection"%>
<%@ page import = "connection.Connection_provider"%>
<%@ page import = "java.sql.*"%>

<%
     String email = request.getParameter("email");
     String psw = request.getParameter("psw");
     
     int z=0;
   
     try
     {
    	 Connection con = Connection_provider.getCon();
    	 Statement st = con.createStatement();
    	 ResultSet rs = st.executeQuery("select * from users where email = '"+email+"'and password = '"+psw+"'");
    	 while(rs.next())
    	 {
    		 z=1;
    		
    		 session.setAttribute("email",email);
    		 
    		 response.sendRedirect("home.jsp?msg=done");
    	 }
    	 if(z==0)
    	 {
    		 response.sendRedirect("login.jsp?msg=notdone");
    	 }
     }
     catch(Exception e)
     {
    	 System.out.println(e);
    	 response.sendRedirect("login.jsp?msg=invalid");
     }
     
%>