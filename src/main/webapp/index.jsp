

<html>
<head>
<title>Blog Management System</title>


</head>
<body>
	<h2>New User Registration</h2>
	<form action="users/save" method="POST">
	UserName :	<input type="text" id="userName" name="userName" required autofocus /><br>
		
	Password :	<input type="password"
			id="password" name="password" required /> <br>
			
	Email Id :	<input type="email" id="EmailId" name="emailId" required /><br>

		<button type="submit">Register</button><br>
	</form>
	<%
		if (request.getParameter("registersuccess") != null) {
	%>
	<a>User Name or Email Id already exists</a>
	<%
		}
	%>

	<h2>Login</h2>
	<form action="users/login" method="POST">
	UserName :	<input type="text" id="userName" name="userName" required /> <br>
		
	Password :		<input type="password" id="password" name="password" required /> <br>
			
		<button type="submit">Login</button><br>
	</form>
	<%
		if (request.getParameter("success") != null) {
	%>
	<a>Invalid Login!</a>
	<%
		}
	%>
	<%
		if (request.getParameter("activate") != null) {
			if (Integer.parseInt(request.getParameter("activate")) == 0) {
	%>
	<a>Please active your mail</a>
	<%
		}
	%>
	<%
		if (Integer.parseInt(request.getParameter("activate")) == 1) {
	%>
	<a>Activation Successfull</a>
	<%
		}
		}
	%>

</body>
</html>
