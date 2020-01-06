<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applicant</title>
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
    max-width: 530px;
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
	margin:2% 20% 0;

	
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
        <li><a href="black.jsp">BACK</a></li>
       </ul>
</div>
</nav>
<div class="form">
            <form class="form-horizontal" role="form" action="addApplicant.obj">
                <h2>Registration Form</h2>
                <div class="form-group">
                    <label for="fullName" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input type="text" name="fullName" placeholder="Full Name" class="form-control" autofocus required
                        pattern="[A-Z]{1}[a-zA-Z\s]+"
                        >
                        <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="dateOfBirth" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-9">
                        <input type="date" name="dateOfBirth" class="form-control" min="1985-01-01" max="1997-01-01" required>
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="highestQualification" class="col-sm-3 control-label">Highest Qualification</label>
                    <div class="col-sm-9">
                        <select name="highestQualification" class="form-control">
                            <option>BTech</option>
                            <option>MTech</option>
                            <option>BSC</option>
                            <option>MCA</option>
                        </select>
                    </div>
                </div> <!-- /.form-group -->
                
                 <div class="form-group">
                    <label for="marksObtained" class="col-sm-3 control-label">Marks Obtained</label>
                    <div class="col-sm-9">
                        <input type="number" name="marksObtained" placeholder="Enter your marks" class="form-control" min="45" max="100" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="goals" class="col-sm-3 control-label">Goals</label>
                    <div class="col-sm-9">
                        <input type="text" name="goals" placeholder="Enter your goals" class="form-control" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="emailID" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" name="emailID" placeholder="Email" class="form-control" required
                        pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
                        >
                    </div>
                </div>
                <div class="form-group">
                    <label for="scheduledProgramID" class="col-sm-3 control-label">Scheduled Program Id</label>
                    <div class="col-sm-9">
                        <input type="text" name="scheduledProgramID" value="${id}" class="form-control" readonly>
                    </div>
                </div>              
                
              
               
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                       <h5> <input type="submit" value="Register"></h5>
                    </div>
                </div>
            </form> <!-- /form -->
       </div>
       
        <div class="footer">
						<h5>&#9400;	2017 CAPGEMINI PRIVATE LIMITED </h5>
					</div> 
       </body>
  </html>