<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Front_panel</title>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: black;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
.about-section {
  padding: 30px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 12px;
  text-decoration: none;
  font-size: 15px;
}

.topnav a:hover {
  background-color: #BFC9CA ;
  color: black;
}

.topnav a.active {
  background-color: #E74C3C;
  color: white;
}

.topnav .search-container {
  float: left;
  
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 6px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 50px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}
.topnav .search-container button:hover {
  background: #ccc;
}

.cart_btn{

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>
</head>

<body>
<div class="topnav">
  <a class="active" href="Front_panel.jsp">Home</a>
  <a href="Customer_care.jsp">24/7 Customer care</a>
  <div class="search-container">
    <form action="Searchservelet" method="post">
      <input type="text" placeholder = "Product Type" name="Product"/>
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
 
  <div class="topnav">
  <a>
  <% if(session.getAttribute("email") != null)
  {
	  String user = (String)session.getAttribute("email");
	  out.println("Hello:" + user);
  }
  else{
 	out.println(" <a href='Login_page.jsp'>Login/Signup</a>");
  }
%>
</a>
	 <a href="Return_order.jsp">Return order</a>
	 <a href="Cart_page.jsp" >
	  <i class='fas fa-cart-arrow-down' style='font-size:18px;color:red;'>Cart</i>
	  </a>
	  <% if(session.getAttribute("email")!=null){
		 out.println("<a href='Logoutservlet'>Logout</a>") ;
	  }
	  %>
	  
	 
  </div>

 <div class="about-section">
  <h1>Your Account</h1>
  <table style="width:25%" align="center">
	 <tr>
	 <th><img src="intropage/orders.png"></th>
	 <th><img src="intropage/login_security.png"></th>
	 <th><img src="intropage/prime.png"></th>
	 <th><img src="intropage/gift_cards.png"></th>
	 <th><img src="intropage/your device and content.png"></th>
	  </tr>
	  
	 <tr>
	 <th>Track Your Orders, return, or buy things again</th>
	 <th>High Security And Username Login</th>
	 <th>Check Balance And payment settings</th>
	 <th>Rewards,Gift cards or redeem a card</th>
	 <th>Manage your devices and digital content</th>
	 </tr>
  </table>
</div>
  
  <table style='border:2px solid white;width:100%; margin-top:5px; height:40px;'>
		   <tr><th><h2>Electronics</h2></th></tr>
		   <tr>
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="electronics/Blutooth_Earphone.jpeg" width="100" height="100">
		   <h3>Blutooth Earphone</h3><i class="price">Rs.1,499, 50% off</i></a>
		   <a href="Cartservelet?id=101&product=Blutooth+Earphone&descr=Rs.1,499, 50%off">Add to Cart</a>
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="electronics/Blutooth_Headphone.jpeg" width="100" height="100">
		   <h3>Blutooth Headphone</h3><i class="price">Rs.899, 30% off</i></a>
		   <a href="Cartservelet?id=102&product=Blutooth Headphone&descr=Rs.1,499, 50% off">Add to Cart</a>		  
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="electronics/desktop.jpeg" width="100" height="100">
		   <h3>desktop</h3><i class="price">Rs.6,999, 70% off</i></a>
		   <a href="Cartservelet?id=103&product=desktop&descr=Rs.6,999, 70% off">Add to Cart</a>		   
		   </td>
		   
		    <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="electronics/Laptop_Speakers.jpeg" width="100" height="100">
		   <h3>Keyboard and combos</h3><i class="price">Rs.1,999, 40% off</i></a>
		   <a href="Cartservelet?id=104&product=Keyboard and combos&descr=Rs.1,999, 40% off">Add to Cart</a>
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="electronics/Mobile_Holders.jpeg" width="100" height="100">
		   <h3>Laptop Speakers</h3><i class="price">Rs.1,499, 20% off</i></a>
		   <a href="Cartservelet?id=105&product=Laptop Speakerse&descr=Rs.1,499, 20% off">Add to Cart</a>		   
		   </td>
		   </tr>
  </table>
  
  <table style='border:2px solid white;width:100%; margin-top:5px; height:40px;'>
		   <tr><th><h2>Mobile Phones</h2></th></tr>
		   <tr>
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="phones/honor-9x-pro-hlk-l42-original-imafrhvgkp3mr5my.jpeg" width="150" height="230">
		   <h3>Honor 9X pro</h3><i class="price">RS.14,999, 50% off</i></a>
           <a href="Cartservelet?id=110&product=Honor 9x Pro &descr=RS.14,999, 50% off">Add to Cart</a>
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="phones/honor-9x-stk-l22-original-imafnmjdghen7aph.jpeg" width="150" height="230">
		   <h3>Honor 9X</h3><i class="price">RS.13,999, 15% off</i></a>
           <a href="Cartservelet?id=111&product=Honor 9x &descr=RS.13,999, 15% off">Add to Cart</a>
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="phones/motorola-racer-turbo-edge-xt2061-3-original-imafrcvgpqx23mcq.jpeg" width="150" height="230">
		   <h3>Motorola Edge+</h3><i class="price">RS.74,999, 20% off</i></a>
		   <a href="Cartservelet?id=108&product=Motorola Edge+&descr=RS.74,999, 20% off">Add to Cart</a>
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="phones/poco-x2-mzb9011in-original-imafzz2hbfkvftm5.jpeg" width="150" height="230">
		   <h3>POCO X2</h3><i class="price">RS.17,499, 30% off</i></a>
			<a href="Cartservelet?id=109&product=POCO X2&descr=RS.17,499, 30% off">Add to Cart</a>		   
			</td>
		   
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="phones/realme-6-rbs0604in-original-imafpmftdkbsjnwn.jpeg" width="150" height="230">
		   <h3>Realme 6</h3><i class="price">RS.13,999, 20% off</i></a>
		   <a href="Cartservelet?id=107&product=Realme 6&descr=RS.13,999, 20% off">Add to Cart</a>		   
		   </td>
		   </tr>
  </table>
  
  <table style='border:2px solid white;width:100%; margin-top:5px; height:40px;'>
		   <tr><th><h2>Men's Fasion</h2></th></tr>
		   <tr>
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="cloths for men/61DSf-iLZML._AC_UL320_.jpg" width="150" height="200">
		   <h3>Men Solid Casual Spread Shirt</h3><i class="price">Price:Rs.699, 25% off</i></a>
		   <a href="Cartservelet?id=113&product=Men Solid Casual Spread Shirt&descr=Price:Rs.699, 25% off">Add to Cart</a>		   
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="cloths for men/7174YIrFcKL._AC_UL320_.jpg" width="150" height="200">
		   <h3>Men Solid Casual Mandarin Shirt</h3><i class="price">Price:Rs.842, 30% off</i></a>
		   <a href="Cartservelet?id=114&product=Men Solid Casual Mandarin Shirt&descr=Price:Rs.842, 30% off">Add to Cart</a>		   
		   </td>
		   
		    <td>
		    <a href="welcome.jsp" class="card" >
		   <img src="cloths for men/717apFKyfSL._AC_UL320_.jpg" width="150" height="200">
		   <h3>Men Self Design Casual Spread Shirt</h3><i class="price">Price:Rs.899, 40% off</i></a>
		   <a href="Cartservelet?id=115&product=Men Self Design Casual Spread Shirt&descr=Price:Rs.899, 40% off">Add to Cart</a>		   
		   </td>
		   
		    <td>
		    <a href="welcome.jsp" class="card" >
		   <img src="cloths for men/71Bzbskz0DL._AC_UL320_.jpg" width="150" height="200">
		   <h3>Men Solid Casual Mandarin Shirt</h3><i class="price">Price:Rs.599, 20% off</i></a>
		   <a href="Cartservelet?id=116&product=Men Solid Casual Mandarin Shirt&descr=Price:Rs.599, 20% off">Add to Cart</a>		   
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card" >
		   <img src="cloths for men/71id+wwTw-L._AC_UL320_.jpg" width="150" height="200">
		   <h3>Men Solid Casual Mandarin Shirt</h3><i class="price">Price:Rs.749, 35% off</i></a>
		   <a href="Cartservelet?id=117&product=Men Solid Casual Mandarin Shirt&descr=Price:Rs.749, 35% off">Add to Cart</a>		   
		   </td>
		   </tr>
  </table>
  
  <table style='border:2px solid white;width:100%; margin-top:5px; height:40px;'>
		   <tr><th><h2>Women's Fasion</h2></th></tr>
		   <tr>
		   <td>
		   <a href="welcome.jsp" class="card">
		   <img src="womens fasion/144-free-new-desiger-gagri-gown-mayur-fabrics-420-original-imafc5azvr6ctshv.jpeg" width="130" height="220">
		   <h3>Mohnish Fashion Art Silk Embroidered Gown</h3><i class="price">Rs.1,299, 40% off</i></a>
		   <a href="Cartservelet?id=118&product=Mohnish Fashion Art Silk Embroidered Gown&descr=Rs.1,299, 40% off">Add to Cart</a>
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card">
		   <img src="womens fasion/drm-03-fexel-original-imafp4tykayg3wrb.jpeg" width="150" height="200">
		   <h3>Bandidhari Fashion Rayon Embroidered Kurta & Sharara Fabric</h3><i class="price">Rs.899, 20% off</i></a>
		  <a href="Cartservelet?id=119&product=Bandidhari Fashion Rayon Embroidered Kurta & Sharara Fabric&descr=Rs.899, 20% off">Add to Cart</a> 
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card">
		   <img src="womens fasion/matki-blue-pmd-fashion-original-imafzbf9eznwznhf.jpeg" width="150" height="220">
		   <h3>PMD Fashion Brocade Woven Salwar Suit Material</h3><i class="price">Rs.599, 30% off</i></a>
		   <a href="Cartservelet?id=120&product=>PMD Fashion Brocade Woven Salwar Suit Material&descr=Rs.599, 30% off">Add to Cart</a>
		   </td>
		   
		   <td>
		   <a href="welcome.jsp" class="card">
		   <img src="womens fasion/na-free-maroon-tanvi-creation-na-original-imafdz2ffg5qgqrg.jpeg" width="150" height="200">
		   <h3>Dresses Creation Cotton Rayon Blend Solid Kurta Fabric</h3><i class="price">Rs.1,139, 55% off</i></a>
		   <a href="Cartservelet?id=121&product=Dresses Creation Cotton Rayon Blend Solid Kurta Fabric&descr=Rs.1,139, 55% off">Add to Cart</a>		   
		   </td>
		   </tr>
		   
  </table>
  
  <div class="about-section">
  <h1>About Us Page</h1>
  <table style="width:25%" align="center">
  <tr>
  <th><a href="#">ABOUT</a></th>
  <th><a href="#">HELP</a></th>
  <th><a href="#">POLICY</a></th>
  <th><a href="#">SOCIAL</a></th>
  </tr>
  </table>
</div>
  
</body>
</html>