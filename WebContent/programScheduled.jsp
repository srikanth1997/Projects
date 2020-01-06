<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schedule</title>
</head>
<body>
<center>
<h1>Enter Scheduled Programs</h1>
<form action="addscheduled.obj" method="get">
	<table>
				<tr><td><label for="pid">Program Id:</label></td>
					<td><input type="text" size="10" name="programId"></td>
				</tr>
				<tr><td><label for="pname">Program Name:</label></td>
					<td><input type="text" size="10" name="programName"/></td>
				</tr>
				
				<tr>
					<td>Location</td>
					<td><input type="radio" name="location" value="Chennai" >Chennai
					<br/></td>
					<td><input type="radio" name="location" value="Bangalore">Bangalore
					<br/></td>
					<td><input type="radio" name="location" value="Hyderabad" >Hyderabad
					<br/></td>
					<td><input type="radio" name="location" value="Mumbai">Mumbai
					<br/></td>
				</tr>
				
				<tr><td><label for="sdate">Start Date:</label></td>
					<td><input type="date" name="startDate"/></td>
				</tr>
				
				<tr><td><label for="edate">End Date:</label></td>
					<td><input type="date" name="endDate"/></td>
				</tr>
				
				<tr><td><label for="spw">Sessions Per Week:</label></td>
					<td><input type="text" name="sessionPerWeek"/></td>
				</tr>
				
				<tr>
				<td>
				<input type="submit" value="Add Scheduled Programs"/>
				</td>
				</tr>
			</table>
				
	
	
</form>
</center>
</body>
</html>