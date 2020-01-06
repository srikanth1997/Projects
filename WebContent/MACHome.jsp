
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MAC Home</title>  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
      background-color: #323030;
  }
  .adminname{
	position:relative;
	font-family: Monospace;
	font-size:45px;
	color:#b3b3c6;
	margin:14% 0 0 75%;
}
.adminimg{
	position:relative;
	margin:3% 0 0 70%;
}
#imgcontent{
	position:absolute;
	margin-top:9%;
}
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
   .footer{
	position: fixed;
	color:#f2f2f2;
	width:50%;
	margin:10% 40% 0;
}
 
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <a class="navbar-brand" href="#">WELCOME MAC</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
       <li><a href="showScheduledPrograms.obj">ALLOW APPLICANT</a></li>       	
       <li><a href="viewAllAplicants.obj">UPDATE STATUS</a></li>
         <li><a href="logout.obj">LOGOUT</a></li>
        
       
          </ul>
       <%
session = request.getSession(false);
String check = (String)session.getAttribute("check");
if(check==null)
	response.sendRedirect("invalid.jsp");
%>
      
    </div>
  </div>
</nav>
<div class="container-fluid">
	<img src="m1.png" id="imgcontent" width="550" height="450">
	
	<div>
		<h1 class="adminname">MAC</h1>  
	</div>
	<div class="adminimg">  
	  <img src="mac.jpg" class="img-circle" alt="mac" width="204" height="236"> 
	</div>
</div>

<div class="footer">
	<h6>&#9400;	2017 CAPGEMINI PRIVATE LIMITED </h6>
</div> 
</body>

</html>
