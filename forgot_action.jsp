
<%@page import="javax.mail.MessagingException"%>
<%@ page import = "connection.Connection_provider"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.Properties"%>
<%@ page import = "javax.mail.internet.InternetAddress"%>
<%@ page import = "javax.mail.Authenticator"%>
<%@ page import = "javax.mail.Message"%>
<%@ page import = "javax.mail.PasswordAuthentication"%>
<%@ page import = "javax.mail.Session"%>
<%@ page import = "javax.mail.Transport"%>
<%@ page import = "javax.mail.internet.MimeMessage"%>
<%
  

String to = request.getParameter("email");

String from = "hosteldekho20@gmail.com";
String pass = "dshkzrehvxsgrlps";

String host = "Smtp.gmail.com";

//your host email smtp server details
Properties pr = new Properties();
pr.put("mail.smtp.host", host);
pr.put("mail.transport.protocol", "smtp");
pr.put("mail.smtp.auth", "true");
pr.put("mail.smtp.starttls.enable", "true");
pr.put("mail.user",from);
pr.put("mail.password", pass);
pr.put("mail.smtp.port", "587");

Session mailSession = Session.getInstance(pr, new Authenticator() {
   
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(from, pass);
    }
});
String msg="";
try{
MimeMessage message = new MimeMessage(mailSession);
message.setFrom(new InternetAddress(from));
message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
message.setSubject("From HostelDekho.com");
String res="";
int z=1;
try
{
	 Connection con = Connection_provider.getCon();
	 Statement st = con.createStatement();
	 ResultSet rs = st.executeQuery("select password from users where email = '"+to+"'");
	 while(rs.next())
	 {
		 z=1;
		 res = rs.getString("password");
	 }
	 con.close();
	 
}

catch(Exception e)
{
	 System.out.println(e);
	 
}
message.setText("Your Password is : "+res);
Transport.send(message);
if(z==1)
{
  response.sendRedirect("login.jsp?msg=match");
}
else
{
	response.sendRedirect("login.jsp?msg=notmatch");
}
}

catch(MessagingException mex)
{
	System.out.println("Error is this = "+mex);
	mex.printStackTrace();
	response.sendRedirect("forgot_password.jsp?msg=invalid");
}
%>
