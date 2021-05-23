<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			padding: 50px;
		}

		.reg-form input{
			width: 50%;
		  	margin: 5px 0;
			border:none;
		    border-bottom: 1px solid #1890ff;
		    padding: 10px 15px;
		    outline: none; 
		}

		.reg-form input[type=checkbox]{
			width: 10px;
		}

	</style>
</head>
<body>
	
	<div class="header">
		<div class="company-name">
			<h2 style="margin-left: 20px">WELCOME CUSTOMER</h2>
		</div>
		<div class="login">
			<a href="#">LOGIN</a>
		</div>
	</div>

	<div class="content">
		<div class="img">
			<img src="/myApp/resources/img/signUp.png" alt="pic" width="700" height="500" style="margin-left: -100px">
		</div>

		<div class="register-form">
			<form:form action="register" method="POST" modelAttribute="customer" class="reg-form">
				<div>
					<label for="user">USERNAME</label><br>
					<form:input path="username" id="user"/>
					<form:errors path="username"/>
				</div>
				<br>
				<div>
					<label for="email">EMAIL</label><br>
					<form:input path="email" id="email"/>
					<form:errors path="email"/>
				</div>
				<br>
				<div>
					<label for="pass">PASSWORD</label><br>
					<form:password path="password" id="pass"/>
					<form:errors path="password"/>
				</div>
				<br>
				<div>						
					<label for="confirm_pass">CONFIRM PASSWORD</label><br>
					<form:input path="confirm_password"/>
					<form:errors path="confirm_password"/>
				</div>
				<br>	
				<div>
					<form:checkbox path="terms" id="terms"/> 
  					<label for="terms"> I agree to terms&condition</label>
					<form:errors path="terms"/>
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