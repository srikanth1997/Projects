<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.dateform{
	margin:5% 0 0 0;
}
  body {
    background-color: #323030;
}


*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    background-color: #323030;
    color:#c2c2d6;
    border-radius: 0.3em;
}

*[role="form"] h5{
     color:black;
}

*[role="form"] h2 {
    margin-left: 5em;
    margin-bottom: 1em;
}
.footer{
	position: fixed;
	color:#f2f2f2;
	width:50%;
	margin:22% 40% 0;

	
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
     <a class="navbar-brand" href="#">MY UNIVERSITY</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="AdminHome.jsp">BACK</a></li>
       </ul>
</div>
</nav>


<div class="dateform">
    <form action="getschedulesbydate.obj"  class="form-horizontal" role="form">
    <h2>Enter Time Period</h2>
    <div class="form-group">
                    <label for="sd" class="col-sm-3 control-label">Start Date :</label>
                    <div class="col-sm-9">
                        <input type="Date" name="StartDate" class="form-control" >
                    </div>
                </div>
                
          <div class="form-group">
                    <label for="ed" class="col-sm-3 control-label">End Date :</label>
                    <div class="col-sm-9">
                        <input type="Date" name="EndDate" class="form-control" >
                    </div>
                </div>

          <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                       <h5> <input type="submit" value="Get Schedule"></h5>
                    </div>
                </div>
    </form>
</div>

  					<div class="footer">
						<h5>&#9400;	2017 CAPGEMINI PRIVATE LIMITED </h5>
					</div> 




</body>
</html>