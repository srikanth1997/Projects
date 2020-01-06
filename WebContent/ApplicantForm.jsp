<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Program Schedule</title>
</head>
<body>
<table border=1>
<tr>
		<th bgcolor="bisque">Program Name</th>
		<th bgcolor="bisque">Location</th>
		<th bgcolor="bisque">StartDate</th>
		<th bgcolor="bisque">EndDate</th>
		<th bgcolor="bisque">sessionsPerWeek</th>
		<th bgcolor="bisque">Apply</th>
</tr>

<tr>
			<td>${scheduleList.programName}</td>
			<td>${scheduleList.location}</td>
			<td>${scheduleList.startDate}</td>
			<td>${scheduleList.endDate}</td>
			<td>${scheduleList.sessionPerWeek}</td>
			 <td><a href="apply.obj?programId=${scheduleList.programId}">Apply</a></td>
</tr>

</table>
</body>
</html>