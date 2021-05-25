<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>profile</title>
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet"/>
  	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  
	<style type="text/css">

		body{
			margin: 0;
			padding: 5px;
			font-family: 'Raleway', sans-serif;
		}

		.main{
			display: grid;
			grid-template-columns: 0.6fr 4fr;
			grid-column-gap: 10px;
		}

		.navbar{
			background-color: blue;
			height: 100%;
		}

		.navbar li{
			list-style: none;
			padding-bottom: 30px;
		}

		.navbar a{
			color: white;
			text-decoration: none;
		}

		.navbar a:hover{
			color: black;
		}

		.header{
			display: grid;
			grid-template-columns: 2.5fr 2.5fr;
			height:50px;
			box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
		}

		.tray{
			padding: 3%;
			margin-left: 80px;
		}

		.tray a{
			padding: 20px;
		}

		.split{
			margin-top: -10px;
			display: grid;
			grid-template-columns: 1fr 4fr;
			box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
		}

		.options{
			background-color: grey;
		}

		.options li{
			list-style: none;
			padding-bottom: 30px;
		}

		.options a{
			color: white;
			text-decoration: none;
		}

		.options a:hover{
			color: black;
		}


		.profile{
			width: 90%;
			/*background-color: yellow;*/
		}

		.avatar-upload{
			margin-left: 230px;
		}

		.form{
			margin-left: 0%;
			width: 100%;
			height: 100%;
			/*background-color: red;*/

		}

		.form input{
			width: 50%;
		  	margin: 5px 0;
		    border: 1px solid #1890ff;
		    padding: 10px 15px;
		    outline: none; 
		    background: #f2f2f2;
		    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
		}

		.button {
	        background-color: blue;
	        border: none;
	        color: white;
	        padding: 15px 32px;
	        text-align: center;
	        text-decoration: none;
	        display: inline-block;
	        font-size: 16px;
	        margin: 4px 20px;
	        cursor: pointer;
	        margin-top: 20px;
	        margin-left: 40px;
	      }
	      
	    #error{
			color:red;
		}
		
		#op:hover{
			margin-left: 10px;
		}

	</style>
	

</head>
<body>
	<div class="main">
		<div class="navbar">
			
			<h2 style="color: white">LOGO</h2>
			<h4 style="padding-left: 10px;margin-top: 10%;color: white">NAVBAR</h4>
			
			<ul>
				<li id="op"><a href="/myApp/admin/Customers"><i class="fa fa-users" aria-hidden="true"></i> customers</a></li>
				<li id="op"><a href=""><i class="fa fa-shopping-cart" aria-hidden="true"></i> products</a></li>
				<li id="op"><a href=""><i class="fa fa-paper-plane" aria-hidden="true"></i> service</a></li>
				<li id="op"><a href=""><i class="fa fa-exclamation-circle" aria-hidden="true"></i> tickets</a></li>
				<li id="op"><a href=""><i class="fa fa-tasks" aria-hidden="true"></i> invoices</a></li>
			</ul>
		</div>

		<div class="container">
			<div class="header">
				<div class="head" style="padding-left: 10px;">
					<h4>MY PROFILE</h4>
				</div>
				<div style="float: right;" class="tray">	
						<a href="/myApp/admin/home">home</a>
						<a href="">notification</a>
						<a href="/myApp/admin/account">profile</a>
						<a href="/myApp/logout">logout</a>
					</ul>
				</div>
			</div>
			<br>
			
			<div class="split">
				<div class="options">
					<ul>
						<li style="margin-left: 10px;"><a href="@"><i class="fa fa-user-plus" aria-hidden="true"></i> 		Add Customers</a></li>
						<li id="op"><a href="/myApp/admin/Customers"><i class="fa fa-users" aria-hidden="true"></i> 	View Customers</a></li>
						<li id="op"><a href=""><i class="fa fa-pencil" aria-hidden="true"></i> 	Edit Customer</a></li>
					</ul>
				</div>

				<div class="profile">
					<h3 style="padding-left: 30px">ADD CUSTOMER</h3>
	              <div class="form">
		            
	              	<form:form action="registerCustomer" method="POST" modelAttribute="customer">
	              	
	              		<c:if test="${param.error!=null}">
							<p style="color: red;margin-left:20px;">username already exist or password mismatch</p>
							<br>
						</c:if>
						
						<c:if test="${param.register_success !=null}">
							<i style="color: green;margin-left:20px;">registration successful</i>
							<br>
							<br>
						</c:if>
			            
	              		<div class="fields" style="margin-left: 40px;">
	              			<label for="username">USERNAME</label><br>
	              			<form:input path="username" id="username"/>
	              			<form:errors path="username" id="error"/>
	              		</div>
	              		<br>
	              		<br>
	              		
	              		<div class="fields" style="margin-left: 40px;">
	              			<label for="email">EMAIL</label><br>
	              			<form:input path="email" id="email"/>
	              			<form:errors path="email" id="error"/>
	              		</div>
	              		<br>
	              		<br>
						
						<div class="fields" style="margin-left: 40px;">
	              			<label for="password">PASSWORD</label><br>
	              			<form:password path="password" id="password"/>
	              			<form:errors path="password" id="error"/>
	              		</div>
	              		<br>
	              		<br>
	              		
	              		<div class="fields" style="margin-left: 40px;">
	              			<label for="confirm_password">CONFIRM PASSWORD</label><br>
	              			<form:password path="confirm_password" id="confirm_password"/>
	              			<form:errors path="confirm_password" id="error"/>
	              		</div>
	              		
	              		<form:hidden path="terms" value="true"/>
						
	              		<button class="button">SAVE</button><br><br>
	              	</form:form>
	              </div>

				</div>
			</div>
		</div>

	</div>
	
</body>
</html>