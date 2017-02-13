<%@page import="org.springframework.web.bind.annotation.RequestParam"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<a href="/articles">View Articles</a>
	<br>

	<h3>Publish an article</h3>
	<form action="/articles/publish" method="GET">
		<input type="text" placeholder="Title" name="title" required autofocus />
		<input type="text" placeholder="Content" name="content" required /> <input
			type="hidden" name=userId value=<%=request.getParameter("userId")%>>
		<button type="submit" class="btn waves-effect waves-light">Publish</button>
	</form>

</body>
</html>