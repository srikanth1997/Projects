<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style>
  .bg-1 { 
       background-color: #323030 
        color: #323030;
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
    color: #323030 !important;
}
  </style>
</head>



<body>
	<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">EMINENCE UNIVERSITY</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    </div>
  </div>
</nav>

   <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
			<th bgcolor="#c2c2d6">Program Name</th>
			<th bgcolor="#c2c2d6">Description</th>
			<th bgcolor="#c2c2d6">ApplicantEligibility</th>
			<th bgcolor="#c2c2d6">Duration</th>
			<th bgcolor="#c2c2d6">DegreeCertificateOffered</th>
			<th bgcolor="#c2c2d6">Update</th>
			<th bgcolor="#c2c2d6">Delete</th>
		</tr>
    </thead>
    
    <tbody>

	<c:forEach var="programsList" items="${list}">
	<tr>
			<td>${programsList.programName}</td>
			<td>${programsList.description}</td>
			<td>${programsList.applicantEligibility}</td>
			<td>${programsList.duration}</td>
			<td>${programsList.degreeCertificate}</td>
			<td><a href="update.obj?programName=${programsList.programName}">update</a></td>
			<td><a href="delete.obj?programName=${programsList.programName}">delete</a></td>
	</tr>
</c:forEach>

</tbody>
  </table>
  </div>

  
  
</body>
</html>