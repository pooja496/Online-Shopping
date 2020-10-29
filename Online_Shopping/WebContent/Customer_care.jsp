<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer care</title>
</head>
<body>
<div align="center">
<h1>Login to get help with your recent orders</h1>
<img src="Customer_care.png">
<br>
<br>
<form action="#" method="post">

<a>
  <% if(session.getAttribute("email") != null)
  {
	  String user = (String)session.getAttribute("email");
	  out.println("Hello:" + user);
	  out.println("<html>");
	  out.println("<body>");
	  out.println("<br>");
	  out.println("<br>");
      out.println("password");
      out.println("<br>");
      out.println("<br>");
      out.println("<input type='password' name='password'>");
      out.println("<input type='submit' value='Login'>");
      out.println("<body>");
      out.println("</html>");

  }
  else{
 	out.println(" <a href='Login_page.jsp'>Login/Signup</a>");
  }
%>
</a>
</body>
</html>