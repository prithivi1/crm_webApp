<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet"/>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	
	<title>login</title>
	
	<style type="text/css">
		body{
			margin: 0;
			padding: 10px;
			font-family: 'Raleway', sans-serif;
			background-color:  #f2f2f2;
		}

		.header{
			width: 100%;
			display: grid;
			grid-template-columns: 2.5fr 2.5fr;
			box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
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
			margin-top:30px;
			box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
		}

		.register-form{
			margin-top:20px;
			padding: 50px;
		}

		.reg-form input{
			width: 50%;
		  	margin: 5px 0;
			border:none;
		    border-bottom: 1px solid #1890ff;
		    background:transparent;
		    padding: 10px 15px;
		    outline: none; 
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
			<a href="/myApp/signUp">signUp</a>
		</div>
	</div>

	<div class="content">
		<div class="img">
			<img src="/myApp/URLToReach/img/pic.jpg" alt="pic" width="400" height="400" style="float: right;margin-top: 50px;">
		</div>
		
		<div class="register-form">
			<form:form method="POST" class="reg-form">
				<c:if test="${param.error !=null}">
					<i style="color: red">INVALID CREDENTIALS</i>
					<br>
					<br>
				</c:if>
				
				<c:if test="${param.register_success !=null}">
					<i style="color: green">registration successful</i>
					<br>
					<br>
				</c:if>
			
				<c:if test="${param.logout !=null}">
					<i style="color: green">Successfully logout....</i>
					<br>
					<br>
				</c:if>
				<div>
					<label for="user">USERNAME</label><br>
					<input type="text" name="username" id="user">
				</div>
				<br>
				<div>
					<label for="password">PASSWORD</label><br>
					<input type="password" name="password" id="password">
				</div>
				<br>
				<div>
  					<input type="checkbox" id="remember">
  					<label for="remember">Remember Me</label>
				</div>
				<br>
				<div>
					<a href="#" style="margin-left: 180px;">forget password</a>
					<br>
					<input type="submit" value="Login" style="border: 1px solid #1890ff">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>