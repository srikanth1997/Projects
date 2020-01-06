<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>



<style>


body {
	   
	 margin: 0;
	padding: 0;
	color: #E3F2FD;
	 background-size: cover;
	font-family: Arial;
	font-size: 12px;
	
}

body img{
	-webkit-filter: grayscale(100%); /* Safari 6.0 - 9.0 */
    filter: grayscale(100%);
}

  .body {
  	
	position: absolute;
	top: -90px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	
} 

 .grad {
	position: absolute;
	top: -90px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
} 


.header{
	position: absolute;
	top: 50%;
	left: 20%;

}


html, body{overflow:hidden;}

.header div {
	float: left;
	color: #E3F2FD;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
	
	
}

#grad3 {
 
  	height:700px;
    background: -moz-linear-gradient(180deg, #323030, #4c4c4c); /* For Firefox 3.6 to 15 */
    background: linear-gradient(180deg, #323030, #4c4c4c); /* Standard syntax (must be last) */
}

.header span{
	color: #E3F2FD;
}

.login {
	position: absolute;
	top: 50%;
	left: 40%;
	
}

.login input[type=text] {
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255, 255, 255, 0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password] {
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255, 255, 255, 0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=submit] {
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #777;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=submit]:hover {
	opacity: 0.8;
}

.login input[type=submit]:active {
	opacity: 0.6;
}

.login input[type=text]:focus {
	outline: none;
	border: 1px solid rgba(255, 255, 255, 0.9);
}

.login input[type=password]:focus {
	outline: none;
	border: 1px solid rgba(255, 255, 255, 0.9);
}

.login input[type=submit]:focus {
	outline: none;
}

::-webkit-input-placeholder {
	color: rgba(255, 255, 255, 0.6);
}

::-moz-input-placeholder {
	color: rgba(255, 255, 255, 0.6);
}

.footer {
	position: fixed;
	color: #fff;
	width: 100%;
	margin: 47% 40% 0;
}
</style>


</head>

<body id="grad3">
	<%
		session = request.getSession(true);
		session.setAttribute("check", "user");
	%>

	<form action="login.obj" method="post">
	 	 <div class="body"></div> 
		<div class="grad"></div>
	 		<div class="header">
			<div >
				University<br />
				<span>Login Form</span>
			</div>
		 </div>
		<br>
		
		<div class="login">
			<input type="text" placeholder="username" name="user"><br>
			<input type="password" placeholder="password" name="password"><br>
			<input type="submit" value="Login">
		</div>
	</form>

	<div class="footer">
		<h4>&#9400;All rights reserved by Capgemini. Copyright © 2017</h4>
	</div>
</body>
</html>