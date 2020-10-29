<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Page</title>
</head>
<body>
<center><font size="20" color="red">Create Account</font></center>
<form action="signupservlet" method="post">
<br><br>
<table align="center">
<tr>
<td>First Name</td><td><input type="text" name="firstname" required placeholder = "First Name"></td>
</tr>

<tr>
<td>Last Name</td><td><input type="text" name="lastname" required placeholder = "Last Name"></td>
</tr>
<tr>
<td>Mobile No.</td><td><input type="text" name="mobileno" required placeholder = "Mobile No."></td>
</tr>
<tr>
<td>Email Id</td><td><input type="text" name="emailid" required placeholder = "Email Id"></td>
</tr>
<tr>
<td>Password</td><td><input type="password" name="password" required placeholder = "Password"></td>
</tr>
<tr>
<td>Confirm Password</td><td><input type="password" name="confirm_password" required placeholder = "Confirm Password"></td>
</tr>

<tr>
<td><input type="submit" value="Save"></td>
</tr>
</table>
</form>
</body>
</html>