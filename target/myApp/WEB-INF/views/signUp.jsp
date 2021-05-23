<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet"/>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

	<title>signUp</title>
	
	<style type="text/css">
		body{
			margin: 0;
			padding: 0;
			font-family: 'Raleway', sans-serif;
			background-color:  #f2f2f2;
		}

		.header{
			width: 100%;
			display: grid;
			grid-template-columns: 2.5fr 2.5fr;
			/*background-color: #ffdb4d;*/
		}

		.header a{
			margin-top:  3%;
			margin-right: 5%;
			float: right;
		}

		.content{
			display: grid;
			grid-template-columns: 2fr 2.5fr;
		}

		.register-form{
			margin-top:-40px;
			padding: 50px;
		}

		.reg-form input{
			width: 50%;
		  	margin: 5px 0;
			border:none;
		    border-bottom: 1px solid #1890ff;
		    padding: 10px 15px;
		    outline: none; 
		    background: transparent;
		}

		.reg-form input[type=checkbox]{
			width: 10px;
		}
		
		#error{
			color:red;
		}

	</style>
</head>
<body>
	
	<div class="header">
		<div class="company-name">
			<h2 style="margin-left: 20px">WELCOME CUSTOMER</h2>
		</div>
		<div class="login">
			<a href="/myApp/login">LOGIN</a>
		</div>
	</div>

	<div class="content">
		<div class="img">
			<img src="/myApp/URLToReach/img/pic.jpg" alt="pic" width="400" height="400" style="float: right;margin-top: 50px;">
		</div>

		<div class="register-form">
			<form:form action="register" method="POST" modelAttribute="customer" class="reg-form">
							
				<c:if test="${param.error!=null}">
					<p style="color: red">username already exist or password mismatch</p>
					<br>
				</c:if>
				
				<div>
					<label for="user">USERNAME</label><br>
					<form:input path="username" id="user"/>
					<form:errors path="username" id="error"/>
				</div>
				<br>
				<div>
					<label for="email">EMAIL</label><br>
					<form:input path="email" id="email"/>
					<form:errors path="email" id="error"/>
				</div>
				<br>
				<div>
					<label for="pass">PASSWORD</label><br>
					<form:password path="password" id="pass"/>
					<form:errors path="password" id="error"/>
				</div>
				<br>
				<div>						
					<label for="confirm_pass">CONFIRM PASSWORD</label><br>
					<form:password path="confirm_password" id="confirm_pass"/>
					<form:errors path="confirm_password" id="error"/>
				</div>
				<br>	
				<div>
					<form:checkbox path="terms" id="terms"/> 
  					<label for="terms"> I agree to terms&condition</label>
					<form:errors path="terms" id="error"/>
				</div>
				<br>
				<div>
					<input type="submit" value="signUp">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>