<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Join Hands</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Handshake_logo.svg/1200px-Handshake_logo.svg.png" >

<link href="home-user.css" rel="stylesheet" type="text/css">

<style>


html{
height:200%;
 background-image: url("https://executemps.co.uk/wp-content/uploads/2018/08/grey-abstract-bg.png");

  backgound-position:fixed;

  /* Center and scale the image nicely */
  
  background-repeat: no-repeat;
  background-size: cover;


}

</style>


</head>

<header style="text-align:center;" >

<div class="login" >
<form action="Loginuser" method="post">
	<input type="email" id="email" name="email" placeholder="email" style = "padding : 5px;  width:20%;" >  <input type="password" id="password" name="password"  placeholder="password" style = "padding : 5px;  width:20%;" > <t> <button type="submit">Login</button>
</form>


</div>
 	
 
</header>


<body>


 


<div class="main">
 
    <div><h1 style="font-size : 60px; font-style : italic;">Join hands  </h1> <h2> Get service professionals at your doorstep!</h2> <br/></div> 
    
    <p style="font-size:14px;" >A goto platform helping customers to complete the project that are important to their day to day lives. <br/> <br/>To make our urban lives bliss to solve their needs at their instance! </p>
	

</div>


<div class="signup" >
<h4  >Sign-up here</h4>

<form action="Signupuser" method="post">
	<input type="text" id="name" name="name" placeholder="name"> <br/><br/>
	<input type="text" id="address" name="address" placeholder="address"> <br/><br/>
	
	<input type="text" id="area" name="area" placeholder="area"> <br/><br/>
	<input type="text" id="city" name="city" placeholder="city"> <br/><br/>
	<input type="text" id="state" name="state" placeholder="state"> <br/><br/>
	<input type="text" id="phonenumber" name="phonenumber"  placeholder="phonenumber" pattern="[1-9]{1}[0-9]{9}"> <br/><br/>
 	<input type="email" id="email" name="email" placeholder="email">  <br/><br/>
	<input type="password" id="password" name="password"  placeholder="password"> <br/><br/>
	<button type="submit">Sign-up</button>
</form>


</div>



</body>




</html>