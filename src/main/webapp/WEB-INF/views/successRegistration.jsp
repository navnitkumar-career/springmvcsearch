<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Name is : ${student.name }</h2>
	<h2>ID is : ${student.id }</h2>
	<h2>Birth Date is : ${student.date }</h2>
	<h2>Courses is : ${student.courses }</h2>
	<h2>Gender is : ${student.gender }</h2>
	<h2>Student Type is : ${student.studentType }</h2>
	<h2>Street is : ${student.address.street }</h2>
	<h2>City is : ${student.address.city }</h2>
</body>
</html>