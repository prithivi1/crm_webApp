<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h1>SIGN UP HERE</h1>
	<form:form action="register" method="POST" modelAttribute="customer">
		
		<form:input path="username" placeholder = "username"/>
		<form:errors path="username"/>
		<br>
		<form:input path="email" placeholder = "email"/>
		<form:errors path="email"/>
		<br>
		<form:input path="password" placeholder = "password"/>
		<form:errors path="password"/>
		<br>
		<form:input path="confirm_password" placeholder = "confirm_password"/>
		<form:errors path="confirm_password"/>
		<br>
		<form:checkbox path="terms" value="agree terms and condition"/>
		<form:errors path="terms"/>
		<br>
		<input type="submit" value="signUp">
	</form:form>
</body>
</html>