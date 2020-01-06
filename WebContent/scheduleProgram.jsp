<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Schedule</title>
<style>
 body {
    background-color: #323030;
}

.form{
	margin:5% 0 0 0;
}
*[role="form"] {
    max-width: 430px;
    padding: 15px;
    margin: 0 auto;
    background-color: #323030;
    color:#c2c2d6;
    border-radius: 0.3em;
}
*[role="form"] h5{
	color: black;
}

*[role="form"] h3 {
    margin-left: 5em;
    margin-bottom: 1em;
}
.footer{
	position: fixed;
	color:#f2f2f2;
	width:50%;
	margin:9% 40% 0;

	
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

</head>
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
        <li><a href="AdminHome.jsp">BACK</a></li>
       </ul>
</div>
</nav>
<div class="form">
<center></center>
 <c:url var="myAction" value="/addSchedule.obj" ></c:url> 
<form  action="${myAction}" method="post" class="form-horizontal" role="form" modelAttribute="program" >

     <h3 >Enter Schedule Program </h3>
   <div class="form-group">
      	          <label for="pn" class="col-sm-3 control-label">Program Name:</label>
                    <div class="col-sm-9">
                      <input type="text" name="programName" value="${schedule}" readonly class="form-control" >    
                    </div>
                </div>
                
      <div class="form-group">
                    <label for="location" class="col-sm-3 control-label">Location :</label>
                    <div class="col-sm-9">
                        <select name="location" class="form-control" required">
                            <option>Hyderabad</option>
                            <option>Bangalore</option>
                            <option>Mumbai</option>
                            <option>Pune</option>
                        </select>
                    </div>
                </div> <!-- /.form-group -->
       
         <div class="form-group">
                    <label for="sd" class="col-sm-3 control-label">Start Date :</label>
                    <div class="col-sm-9">
                        <input type="date" id="datefield" name="startDate" class="form-control"  min="2017-12-10" required>
                    </div>
                </div>
                
          <div class="form-group">
                    <label for="ed" class="col-sm-3 control-label">End Date :</label>
                    <div class="col-sm-9">
                        <input type="date" name="endDate" class="form-control" min="2018-01-10" required>
                    </div>
                </div>
                
          <div class="form-group">
      	          <label for="spw" class="col-sm-3 control-label">Sessions Per Week :</label>
                    <div class="col-sm-9">
                      <input type="text" name="sessionPerWeek" title="Enter number only" pattern="[0-9]{1,2}" required class="form-control" >    
                    </div>
                </div>
                
            <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                       <h5> <input type="submit" value="Schedule Program"></h5>
                    </div>
                </div>
            

</form>
</div>

     <div class="footer">
						<h6>&#9400;	2017 CAPGEMINI PRIVATE LIMITED </h6>
					</div> 
</body>
</html>