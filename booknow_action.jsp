<%@ page import = "connection.Connection_provider"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
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
      Integer res = (Integer)session.getAttribute("res");
      Integer Id = (Integer)session.getAttribute("Id");
      String email = request.getParameter("email");
      String Name = request.getParameter("Name");
      String address = request.getParameter("address");
      String nationality = request.getParameter("nationality");
      String occupancy_type = request.getParameter("occupancy_type");
      String name_on_card = request.getParameter("name_on_card");
      String card_number = request.getParameter("card_number");
      String validity = request.getParameter("validity");
      String upi_id = request.getParameter("upi_id");
      String phone  = request.getParameter("Phone");
      String cvv  = request.getParameter("cvv");
      String amount_paid = request.getParameter("amount_paid");
      
      
      
      
      try {
    	  Connection con = Connection_provider.getCon();
    	  ResultSet rs;
    	  Statement st=con.createStatement();
    	  PreparedStatement ps = con.prepareStatement("insert into user_details values(?,?,?,?,?,?,?,?,?,?,?,?)");
    	  ps.setString(1,email);
    	  ps.setString(2,Name);
    	  ps.setString(3,phone);
    	  ps.setString(4,address);
    	  ps.setString(5,nationality);
    	  ps.setString(6,occupancy_type);
    	  ps.setString(7,name_on_card);
    	  ps.setString(8,card_number);
    	  ps.setString(9,validity);
    	  ps.setString(10,cvv);
    	  ps.setString(11,upi_id);
    	  ps.setString(12,amount_paid);
    	  ps.executeUpdate();
    	  int update = res-1;
    	  int numUpd;
    	  String sql = "update hostel_sharing set "+occupancy_type+" = "+update+" where Id = "+Id+"";
    	  st.executeUpdate(sql);
    	  System.out.println("done update");

      }catch(Exception e){
	System.out.println(e);
}
      response.sendRedirect("home.jsp");
      %>
</body>
</html>