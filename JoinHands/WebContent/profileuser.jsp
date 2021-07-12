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
  <li><a  href="main.jsp">Home</a></li>
  <li><a class="active" href="profileuser.jsp">Profile</a></li>
  
  <form action="home-user.jsp">

<button>logout</button>

</form>
  
</ul>

</div>

<div style="margin-top:7%; font-color: #333333;">


<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/joinhands" user="root" password="vns_1998"/>  


<sql:query var="rs" dataSource="${db}"> select * from user where email = '${email}'</sql:query>


<div class="card">
  
  
  <div class="container">
  <br/><br/>
    <c:forEach items="${rs.rows}" var="row">
	<h1 ><c:out value="${row.name}" ></c:out></h1>  <br/> <br/><br/>
	<h6> Address </h6> <h4><c:out value="${row.address}" > </c:out> , </h4> <h4><c:out value="${row.area}" > </c:out> </h4> <h4>, <c:out value="${row.city}" > </c:out> </h4> <br/><br/>
	 <h4><c:out value="${row.state}" > </c:out> </h4> <br/><br/>
	<h6>Contact number </h6><h4><c:out value="${row.phonenumber}" ></c:out></h4> <br/><br/>
	<h6>Email </h6><h4><c:out value="${row.email}" ></c:out></h4> <br/><br/>
	<br/><br/>
	
	<h3>Your projects</h3>
	<br/><br/>

</c:forEach> 



</div>

</div>
<br/><br/>


  </div>
  
  














</body>
</html>