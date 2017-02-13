<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Article</title>

</head>
<body>
<h2>Update Article</h2>
					<form action="updateArticle" method="GET">
							<input type="text" placeholder="Title" name="title" required autofocus />
							<input type="text" placeholder="Content" name="content" required />
							<input type="hidden" name="articleId" value=<%=request.getParameter("id")%>>
							<button type="submit" class="btn waves-effect waves-light">Update</button>
					</form>
</body>
</html>