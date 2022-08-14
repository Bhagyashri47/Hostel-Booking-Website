
<%@ page import = "java.sql.*"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <%
    String checkin = request.getParameter("checkin");
    String roomtype = request.getParameter("roomtype");
    Integer Id = (Integer)session.getAttribute("Id");
    System.out.println("roomtype and Id = "+roomtype+" " +Id);
    int res=0;
    Connection con;
    Statement st;
    ResultSet rs;
    PreparedStatement ps;
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");
    	con= DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Bhagyashri47");
    	st=con.createStatement();
   	    rs = st.executeQuery("select * from hostel_sharing where Id = '"+Id+"'");
   	 while(rs.next())
   	 {
   		 res = rs.getInt(roomtype);
   		 if(res > 0)
   		 {
   			response.sendRedirect("commontemp.jsp?flag=available");
   		 }
   		 else if(res==0)
   		 {
   			response.sendRedirect("commontemp.jsp?flag=not_available");
   		 }
   	 }
    }
    catch(Exception e)
    {
    	System.out.println(e);
   	    response.sendRedirect("commontemp.jsp?flag=invalid");
    }
    session.setAttribute("roomtype",roomtype);
    session.setAttribute("res",res);
    %>

</body>
</html>