<%@page import="org.omg.PortableInterceptor.USER_EXCEPTION"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
</head>
<body>
	
				<table class="highlight">
					<thead>
						<td>UserName</td>
						<td>Password</td>
						<td>EmailId</td>
						<td>Role</td>
					</thead>
					<c:forEach var="c" items="${USER_LIST}" varStatus="i">
						<tr>
							<td>${c.userName}</td>
							<td>${c.password}</td>
							<td>${c.emailId}</td>
							<td>${c.roleId.roleName}</td>
							<td><a href="users/update?id=${c.id}">Update</a></td>
							<td><a href="users/delete?id=${c.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</table>

</body>
</html>