<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
</head>
<body>
<c:url var="myAction" value="/addApplicant.obj" ></c:url> 
<form:form  action="${myAction}" method="post" modelAttribute="applicant" >
<table>
<tr>
<th>Full name</th>
<th><input type="text" name="fullName"/></th>
</tr>
<tr>
<th>DOB</th>
<th><input type="date" name="dateOfBirth"/></th>
</tr>
<tr>
<th>HighestQualification</th>
<th><input type="text" name="highestQualification"/></th>
</tr>
<tr>
<th>Marks Obtained</th>
<th><input type="text" name="marksObtained"/></th>
</tr>
<tr>
<th>Goals</th>
<th><input type="text" name="goals"/></th>
</tr>
<tr>
<th>Email</th>
<th><input type="text" name="emailID"/></th>
</tr>
<tr>
<th>scheduledProgramId</th>
<th><input type="text" name="scheduledProgramID"  value="${programId}" readonly="readonly"/></th>
</tr>
<tr>
<th><input type="submit" value="apply"></th>
</tr>
</table>
</form:form>
</body>
</html>