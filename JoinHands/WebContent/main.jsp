<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="main.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Handshake_logo.svg/1200px-Handshake_logo.svg.png" >

<title>Join Hands</title>

<style>
h3,h1,h2,h5,h4,p,h6{

display:inline;

}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: black;
}

.active {
  background-color: white;
  color:black;
}
button{
	text-align:right;
	background-color:#ff4d4d;
	margin-left:80%;
	color:black;
	padding:10px 40px;
	border:none;
	text-decoration:none;
}

html{
height:200%;
text-align:center;
color:#2626262;
 background-image: url("https://executemps.co.uk/wp-content/uploads/2018/08/grey-abstract-bg.png");
font-family:sans-serif;
  backgound-position:fixed;

  /* Center and scale the image nicely */
  
  background-repeat: no-repeat;
  background-size: cover;


}

.card {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
}

/* On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.container {
  padding: 2px 1px;
}






</style>




</head>



<body>



<div>

<ul>
  <li><a class="active" href="main.jsp">Home</a></li>
  <li><a href="profileuser.jsp">Profile</a></li>
  
  <form action="home-user.jsp">

	<button>logout</button>

  </form>
  
</ul>

</div>

<div style="margin-top:7%; font-color: #333333;">


<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/joinhands" user="root" password="vns_1998"/>  

<sql:query var="rs" dataSource="${db}"> select * from user where email = '${email}'</sql:query>

<c:forEach items="${rs.rows}" var="row">
	<h4>Welcome </h4> <h2><c:out value="${row.name} " ></c:out></h2>
	
	<h4> Search results showing for </h4> <h2> <c:out value="${row.city}" > </c:out> </h2> <br/><br/>
	
	

</c:forEach> 


<sql:query var="rs" dataSource="${db}"> select * from service where area = ( select area from user where email = '${email}' ) </sql:query>

<p style="font-size:10px;">Results < 10 kms</p><br/>
  
<div class="card">
  
  
  <div class="container">
  <br/><br/>
    <c:forEach items="${rs.rows}" var="row">
	<h1 ><c:out value="${row.name}" ></c:out></h1> <h4> <c:out value="${row.profession}" > </c:out> </h4> <br/> <br/><br/>
	<h6> Service location </h6> <h4><c:out value="${row.area}" > </c:out> </h4> <h4>, <c:out value="${row.city}" > </c:out> </h4> <br/><br/>
	 <h6> Experience </h6><h4> <c:out value="${row.experience}" > </c:out> years </h4> <br/><br/>
	<br/><br/>
	
	
	<button style="background-color:black; color:white; margin-left:0%;"  onclick="window.location.href = 'ProfileUserService.jsp?reqname=${row.name}';">Profile</button>

	<br/><br/>

</c:forEach> 



</div>

</div>
<br/><br/>
<sql:query var="rs" dataSource="${db}"> select * from service where city = ( select city from user where email = '${email}' ) and area <> (select area from user where email = '${email}') </sql:query>

 <p style="font-size:10px;">Results > 10 kms</p><br/>
 

<div class="card">
  
  
  <div class="container">
  <br/><br/>
  
    <c:forEach items="${rs.rows}" var="row">
	<h1 ><c:out value="${row.name}" ></c:out></h1> <h4> <c:out value="${row.profession}" > </c:out> </h4> <br/> <br/><br/>
	<h6> Service location </h6><h4> <c:out value="${row.area}" > </c:out> </h4>,<h4><c:out value="${row.city}" > </c:out> </h4> <br/><br/>
	 <h6> Experience </h6><h4> <c:out value="${row.experience}" > </c:out> years</h4> <br/><br/>
	<br/><br/>
		
	
	<button style="background-color:black; color:white; margin-left:0%;"  onclick="location.href = 'ProfileUserService.jsp?reqname=${row.name}';">Profile</button>

		
	
	
	<br/><br/>
	

</c:forEach> 



  </div>
  
  
</div>

</div>















</body>
</html>