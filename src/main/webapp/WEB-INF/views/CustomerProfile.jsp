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
			padding: 0;
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

	</style>
	

</head>
<body>
	<div class="main">
		<div class="navbar">
			
			<h2 style="color: white">LOGO</h2>
			<h4 style="padding-left: 10px;margin-top: 10%;color: white">NAVBAR</h4>
			
			<ul>
				<li><a href=""><i class="fa fa-users" aria-hidden="true"></i> customers</a></li>
				<li><a href=""><i class="fa fa-paper-plane" aria-hidden="true"></i> service</a></li>
				<li><a href=""><i class="fa fa-exclamation-circle" aria-hidden="true"></i> tickets</a></li>
				<li><a href=""><i class="fa fa-tasks" aria-hidden="true"></i> invoices</a></li>
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
						<a href="">profile</a>
						<a href="/myApp/logout">logout</a>
					</ul>
				</div>
			</div>
			<br>
			
			<div class="split">
				<div class="options">
					<ul>
						<li><a href=""><i class="fa fa-pencil" aria-hidden="true"></i> 	Edit Profile</a></li>
						<li><a href=""><i class="fa fa-trash-o" aria-hidden="true"></i> 	Delete</a></li>
					</ul>
				</div>

				<div class="profile">
					<h3 style="padding-left: 30px">Edit Profile</h3>
	              <div class="form">
		            
	              	<form:form action="UpdateProfile" method="POST" modelAttribute="customer">
	              		<div class="name" style="display: grid; grid-template-columns: 1fr 1fr;">
	              			<div class="usernmae" style="margin-left: 40px;">
	              				<label for="username">Username</label><br>
	              				<form:input path="username" id="username" value="${customer.username }"/>
	              			</div>

	              			<div class="companyName">
	              				<label for="company">COMPANY NAME</label><br>
	              				<form:input path="companyName" id="company" value="${customer.companyName}"/>
	              			</div>
	              		</div>
	              		<br>
	              		<br>

	              		<div class="name" style="display: grid; grid-template-columns: 1fr 1fr;
	              				grid-column-gap: 20px;">
	              			
	              			<div class="usernmae" style="margin-left: 40px;">
	              				<label for="email">EMAIL</label><br>
	              				<form:input path="email" id="email" value="${customer.email}"/>
	              			</div>

	              			<div class="companyName">
	              				<label for="contact">CONTACT</label><br>
	              				<form:input path="mobile" id="contact" value="${customer.mobile }"/>
	              			</div>
	              		</div>
						<br>
						<br>
						
	              		<div class="name" style="display: grid; grid-template-columns: 1fr 1fr;
	              				grid-column-gap: 20px;">
	              			
	              			<div class="usernmae" style="margin-left: 40px;">
	              				<label for="city">CITY</label><br>
	              				<form:input path="city" id="city" value="${customer.city }"/>
	              			</div>

	              			<div class="companyName">
	              				<label for="state">STATE</label><br>
	              				<form:input path="state" id="state" value="${customer.state }"/>
	              			</div>
	              		</div>
						<br>
						<br>
						
	              		<div class="fields" style="margin-left: 40px;">
	              			<label for="website">WEBSITE</label><br>
	              			<form:input path="website" id="website" value="${customer.website }"/>
	              		</div>

	              		<button class="button">UPDATE</button><br><br>
	              	</form:form>
	              </div>

				</div>
			</div>
		</div>

	</div>
	
</body>
</html>