<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Programs Offered</title>
<style>
  body {
    background-color: #323030;
}

.regform{
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
    margin-left: 5em;
    margin-bottom: 1em;
}
.footer{
	position: fixed;
	color:#f2f2f2;
	width:50%;
	margin:5% 42% 0;

	
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
<div class="regform">
     <form action="addPrograms.obj" method="get" class="form-horizontal" role="form">
                <h2>Enter Programs</h2>
                <div class="form-group">
                    <label for="pn" class="col-sm-3 control-label">Program Name:</label>
                    <div class="col-sm-9">
                        <input type="text" name="programName" title="min 3 and max 5 alphabets" pattern="[A-Za-z]{3,5}" required class="form-control" >
                        
                    </div>
                </div>

               <div class="form-group">
                    <label for="des" class="col-sm-3 control-label">Description:</label>
                    <div class="col-sm-9">
                        <input type="text" name="description" title="min 3 and max 20 alphabets" pattern="[A-Z\sa-z]{3,20}" required  class="form-control" >
                       
                    </div>
                </div>

               <div class="form-group">
                    <label for="applicantEligibility" class="col-sm-3 control-label">Applicant Eligibilty :</label>
                    <div class="col-sm-9">
                        <select name="applicantEligibility" required class="form-control">
                            <option>BTech</option>
                            <option>MTech</option>
                            <option>MBA</option>
                            <option>BSC</option>
                        </select>
                    </div>
                </div> <!-- /.form-group -->
                
                <div class="form-group">
                    <label for="duration" class="col-sm-3 control-label">Duration :</label>
                    <div class="col-sm-9">
                        <input type="number" name="duration" size="10" name="duration" title="Enter number > 0 < 24" min="1" max="24" placeholder="in months" required  class="form-control" >
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="dcer" class="col-sm-3 control-label">Degree Certificate :</label>
                    <div class="col-sm-9">
                        <input type="text" name="degreeCertificate" size="10" name="degreeCertificate" title="min 3 and max 10 characters" pattern="[A-Z\sa-z]{3,10}" required  class="form-control" >
                       
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <h5><input type="submit" value="Add Program"></h5>
                    </div>
                </div>
     </form>
</div>
                   <div class="footer">
						<h5>&#9400;	2017 CAPGEMINI PRIVATE LIMITED </h5>
					</div> 
</body>
</html>