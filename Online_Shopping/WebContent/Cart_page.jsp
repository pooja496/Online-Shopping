<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart page</title>
</head>
<body>
		 <% if(session.getAttribute("email") != null)
		  {  
			 String connectionURL = "jdbc:mysql://localhost:3306/Search"; 
			Connection connection = null; 
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); 
			connection = DriverManager.getConnection(connectionURL, "root", "pooja");
			Statement stmnt = connection.createStatement();
				
			 String user=(String)session.getAttribute("email");
			 ResultSet result = stmnt.executeQuery("Select * from cartproducts where user='"+user+"'");%>
		     <h1>Shopping Cart</h1><br><br>
			 <%=user %><br><br>
				
				<table border='1'>
				<tr>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Buy</th>
				<th>Delete</th>
				</tr>
		<% while(result.next()){ %>
		
		<tr>
		<th><%= result.getString(2)%></th>
		<th><%= result.getString(3)%></th>
		<th><a href='Check_page.jsp'>Buy Now!</a></th>
		<th><a href='deleteServlet?id=<%= result.getString(2)%>'>Delete</a></th>
		</tr>
		<%} %>
		
		</table>
		</br></br>
		<a href='Front_panel.jsp'>Back</a>
		
			 
		    
		 <%  }
		  else{
			RequestDispatcher rdy = request.getRequestDispatcher("Login_page.jsp");
		    rdy.forward(request,response);
		  }
		%>
</body>
</html>