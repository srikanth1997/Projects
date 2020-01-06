<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Interview</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
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

*[role="form"] h2 {
    margin-left: 4em;
    margin-bottom: 1em;
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
  .footer{
	position: fixed;
	color:#f2f2f2;
	width:50%;
	margin:20% 40% 0;

	
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
        <li><a href="MACHome.jsp">BACK</a></li>
       </ul>
</div>
</div>
</nav>
<div class="form">
     <form action="interview.obj" method="post" modelAttribute="interview"class="form-horizontal" role="form">
     <h2>Confirm Interview </h2>
     			<div class="form-group">
      	          <label for="pn" class="col-sm-3 control-label">Application Id:</label>
                    <div class="col-sm-9">
                      <input type="text" name="appId" value="${applicant}" readonly class="form-control" >    
                    </div>
                </div>
     
     			 <div class="form-group">
      	          <label for="pn" class="col-sm-3 control-label">Interview Date:</label>
                    <div class="col-sm-9">
                      <input type="date" name="dateOfInterview"class="form-control" >    
                    </div>
                </div>
                
               <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                       <h5> <input type="submit" value="interview"></h5>
                    </div>
                </div>   
                </form>
                </div>
                
             <div class="footer">
						<h6>&#9400;	2017 CAPGEMINI PRIVATE LIMITED </h6>
					</div> 
</body>
</html>



































<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url var="myAction" value="interview.obj"></c:url>
<form:form action="${myAction}" method="post" modelAttribute="interview">
<table>
<tr>
<th>ApplicationId</th>
<th><input type="text" value=${applicant } name ="appId"readonly="readonly"></th>
</tr>
<tr>
<th>InterviewDate</th>
<th><input type="date" name="dateOfInterview"></th>
</tr>
<tr>
<th><input type="submit" value="interview"></th>
</tr>
</table>
</form:form>
</body>
</html> --%>