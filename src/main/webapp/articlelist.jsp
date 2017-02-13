<%@page import="org.omg.PortableInterceptor.USER_EXCEPTION"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>


	<h2>Article List</h2>
	<c:if test="${userId==null}">

		<form action="../articles/viewbycategory" method="GET">

			<select name="category" id="category">
				<option value="" disabled selected>Choose your Category</option>
				<c:forEach var="c" items="${CATEGORY_LIST}" varStatus="i">
					<option value="${c.name}">${c.name}</option>
				</c:forEach>
			</select>
			<button type="submit">View By Category</button>

		</form>

	</c:if>



	<c:forEach var="c" items="${ARTICLE_LIST}" varStatus="i">

		<h2>${c.title}</h2>
		<small>Published By-${c.userId.userName}</small>
		<br>
		<small>Published On-${c.publishedDate}</small>
		<br>
		<font style="font-size: 30px">${c.content}</font>
		<c:if test="${update!=0}">
			<br>
			<a href="../articles/update?id=${c.id}">Update</a>
			<a href="delete?id=${c.id}">Delete</a>
		</c:if>
		<c:if test="${update==0&&userId!=null}">

			<form action="../comment/save" method="GET">
				Comment: <input type="text" name="comment" required autofocus /> <input
					type="hidden" name="id" value="${c.id}"> <input
					type="hidden" name="userId" value="${userId}">
				<button type="submit">Comment</button>
			</form>
			<a href="comments?articleId=${c.id}">View Comments</a>

		</c:if>

		<br>
	</c:forEach>

	<c:if test="${userId!=null}">
		<a href="../category/list?userId=${userId}">View Category</a>
	</c:if>

</body>
</html>