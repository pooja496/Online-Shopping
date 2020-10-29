<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>

<center><font size="30" color="red">Welcome to Sign in</font></center>
<br>
<br>
<div align="center">
<form action="Loginservelet" method="post">
	<table>
	<tr>
	<td>Email</td><td><input type="text" name="emailid" size="40" required placeholder = "Enter Email ID"></td>
	</tr>
	<tr>
	<td>Password</td><td><input type="password" name="password" size="40" required placeholder = "Enter Password"></td>
	</tr>
	<tr><td ><input type = "submit" value = "Login"/></td></tr>
	</table>
</form>
<br>
<br>
New user?
<a href="signup.jsp">Create account</a>
</div>
</body>
</html>



