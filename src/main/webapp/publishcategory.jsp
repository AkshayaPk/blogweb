<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h3>Publish a category</h3>
	<form action="/category/publish" method="GET">
		Category: <input type="text" name="category" required autofocus />
		<input type="hidden" name=userId value=<%=request.getParameter("userId")%>>
		<input type="hidden" name=title value=<%=request.getParameter("title")%>>
		<button type="submit" class="btn waves-effect waves-light">Publish</button>
	</form>
	<%if(request.getParameter("success")!=null){
		%>
		<a>Category exists</a>
		<%
			}
		%>
</body>
</html>