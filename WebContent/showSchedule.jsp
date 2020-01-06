<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
 <style>
 a {color: #ffb3b3}
 td {color:  #e6e6ff}
 h2 {color: #e6e6ff}
 body {background-color: #323030}
  .container{
   margin:5% 0 0 8%;
 }
 .footer{
	position: fixed;
	color:#f2f2f2;
	width:50%;
	margin:28% 40% 0;

	
}
 
 .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
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
 </style>
<body>
 <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                       
      </button>
     <a class="navbar-brand" href="#">EMINENCE UNIVERSITY</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="MACHome.jsp">BACK</a></li>
       </ul>
</div>
</div>
</nav>
<div class="container">
<center>
  <h2>View Applicants</h2>  
 </center>                                                                         
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
			<th bgcolor="#c2c2d6">Program Id</th>
			<th bgcolor="#c2c2d6">Program Name</th>
			<th bgcolor="#c2c2d6"> Action</th>
		</tr>
    </thead>
    
    <tbody>

	<c:forEach var="scheduleList" items="${scheduleList}">
<tr>
			<td>${scheduleList.programId}</td>
			<td>${scheduleList.programName}</td>
			<td><a href="search.obj?programId=${scheduleList.programId}">view Applicants</a></td>
</tr>
</c:forEach>

</tbody>
  </table>
  </div>
</div>
    <div class="footer">
						<h5>&#9400;	2017 CAPGEMINI PRIVATE LIMITED </h5>
					</div> 
</body>
</html>