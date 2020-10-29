<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Checkout Form</title>
</head>
<body>
<h1>Checkout Form</h1>
  <table style="width:75%" align="center">
  <tr>
  <th><h3 align="left">Billing Address</h3></th>
  <th><h3 align="left">Payment </h3></th>
  </tr>
  <tr><td>First Name</td>
  <td>Accepted cards</td></tr>
   <tr><td><input type="text" name="firstname"></td>
   <td> <i class="fa fa-cc-visa" style="color:navy;"></i>
        <i class="fa fa-cc-amex" style="color:blue;"></i>
        <i class="fa fa-cc-mastercard" style="color:red;"></i>
        <i class="fa fa-cc-discover" style="color:orange;"></i>
   </td>
   </tr>
   
   <tr><td>Email</td>
   <td>Name on Card</td></tr>
   <tr><td><input type="text" name="email"></td>
   <td><input type="text" name="name"></td></tr>
   
   <tr><td>Address</td>
   <td>Credit card number</td></tr>
   <tr><td><input type="text" name="address"></td>
   <td><input type="text" name="card_num"></td></tr>
   
   <tr><td>City</td>
   <td>Exp. Month</td></tr>
   <tr><td><input type="text" name="city"></td>
   <td><input type="text" name="exp_month"></td></tr>
   
   <tr><td>State</td>
   <td>Exp. Year</td></tr>
   <tr><td><input type="text" name="state"></td>
   <td><input type="text" name="exp_year"></td></tr>
   
   <tr><td>Zip Code</td>
   <td>CVV</td></tr>
   <tr><td><input type="text" name="zip_code"></td>
   <td><input type="text" name="cvv"></td></tr>
   </table>
   
   <br>
   
   <input type="submit" value="Continue to checkout">
   
  </body>
  </html>