<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
#lower-footer {
	min-height: 12px;
	background-color: #323030;
}

.left-text {
	color: white;
}

.menu {
	padding: 5px 0 5px 0;
}

.menu li {
	display: inline-block;
	padding: 0 15px 0 15px;
	border-left: solid 1px #fff;
}

.menu li a {
	display: inline-block;
	padding: 0 15px 0 15px;
}

.menu li:first-child {
	border-left: none;
}

.menu li a {
	color: white;
}

.menu li a:hover {
	color: red;
}

.pad {
	padding-top: 12px;
}

body {
	font: 400 15px/1.8 Lato, sans-serif;
	color: #777;
}

h3, h4 {
	margin: 10px 0 30px 0;
	letter-spacing: 10px;
	font-size: 20px;
	color: #111;
}

.container {
	padding: 80px 120px;
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
}

.carousel-inner img {
	-webkit-filter: grayscale(90%);
	filter: grayscale(90%); /* make all photos black and white */
	width: 100%; /* Set width to 100% */
	margin: auto;
}

.bannerimage img {
	width: 100%; /* Set width to 100% */
	margin: auto;
}

.carousel-caption h3 {
	color: #fff !important;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
}

.bg-1 {
	background: #2a2a2a;
	color: #bdbdbd;
}

.bg-1 h3 {
	font-weight:bold;
	color: #fff;
}

.bg-1 p {
	font-style: normal;
}

.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.thumbnail {
	padding-top: 10px;
	border: none;
	border-radius: 2px;
	height: 8em;
	position: relative;
	left: 150px;
}

.thumbnail p {
	margin-top: 15px;
	color: #191919;
	font-style: normal;
}

.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}

.modal-header, h4, .close {
	background-color: #333;
	color: #fff !important;
	text-align: center;
	font-size: 30px;
}

.modal-header, .modal-body {
	padding: 40px 50px;
}

.nav-tabs li a {
	color: #777;
}

#googleMap {
	width: 100%;
	height: 400px;
	-webkit-filter: grayscale(100%);
	filter: grayscale(100%);
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

.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

.dropdown-menu li a {
	color: #000 !important;
}

.dropdown-menu li a:hover {
	background-color: red !important;
}

footer {
	background-color: #2d2d30;
	color: #f5f5f5;
	padding: 32px;
}

footer a {
	color: #f5f5f5;
}

footer a:hover {
	color: #777;
	text-decoration: none;
}

.form-control {
	border-radius: 0;
}

textarea {
	resize: none;
}
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">

	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">EMINENCE UNIVERSITY</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#myPage">HOME</a></li>
				<li><a href="#about">ABOUT</a></li>
				<li><a href="#applicant">APPLICANT</a></li>
				<li><a href="showlogin.obj">LOGIN</a></li>
				<%
					session.invalidate();
				%>
			</ul>

		</div>
	</div>
	</nav>
	<div class="bannerimage">
		<img alt="University" src="banner_bible.jpg">
	</div>

	<!-- Container (The ABOUT Section) -->
	<div id="about" class="container text-center">
		<h3>EMINENCE UNIVERSITY</h3>

		<p>Eminence University is a progressive educational institution
			that is dedicated to the pursuit of excellence. Students here are
			encouraged on this journey by our committed faculty, world-class
			facilities and student-friendly educational systems. university was
			founded in 1970 by Dr.B.Joseph in Telangana,as a self-financing
			institution called the My University Engineering college.Since then
			the institution has grown from strength to strength.</p>
		<br>

	</div>

	<!-- Container (APPlICANT Section) -->
	<div id="applicant" class="bg-1">
		<div class="container">
			<h3 class="text-center">APPLICANT</h3>
			<p class="text-center">Choose an action to perform!!</p>
			<br />

			<div class="row text-center">
				<div class="col-sm-4">

					<div class="thumbnail">
						<img src="icons8-prg.png" alt="Programs">
						<p>
							<strong>View Programs</strong>
						</p>
						<a href="viewAll.obj">Get All Programs</a>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="icons8-ok.png" alt="status">
						<p>
							<strong>View Status</strong>
						</p>
						<a href="viewstatus.obj">Get Status</a>
					</div>

				</div>

				<!-- Modal -->
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-body">
							<form role="form">
								<div class="form-group">
									<table class="table">
										<thead>
											<tr>
												<th bgcolor="bisque">ProgramName</th>
												<th bgcolor="bisque">Description</th>
												<th bgcolor="bisque">Eligibility</th>
												<th bgcolor="bisque">Duration</th>
												<th bgcolor="bisque">DegreeCertificate</th>
												<th bgcolor="bisque">ProgramId</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="program" items="${programsList}">
												<tr>
													<td bgcolor="bisque">${program.programName}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section id="lower-footer">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!--left text-->
				<div class="col-md-4">
					<div class="left-text pad">All rights reserved by Capgemini.
						Copyright © 2017</div>
				</div>

			</div>
		</div>
	</div>
	</section>

	<script>
		$(document).ready(
				function() {
					// Initialize Tooltip
					$('[data-toggle="tooltip"]').tooltip();

					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {

								// Make sure this.hash has a value before overriding default behavior
								if (this.hash !== "") {

									// Prevent default anchor click behavior
									event.preventDefault();

									// Store hash
									var hash = this.hash;

									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								} // End if
							});
				})
	</script>

</body>
</html>