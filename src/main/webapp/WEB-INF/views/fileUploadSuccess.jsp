<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Upload Result</title>
</head>
<body>
	<h1>${message }</h1>
	<img alt="image" src="<c:url value="/resources/images/${fileName }"/>"/>
</body>
</html>