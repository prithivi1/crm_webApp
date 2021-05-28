<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>products</title>
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

		.area{
			display: grid;
			grid-template-columns: 3fr 2fr;
		}

		.form{
			margin-left: 0%;
			width: 100%;
			height: 100%;
			/*background-color:green;*/

		}

		.fields{
			margin-left: 40px;
		}

		.form input{
			width: 90%;
		  	margin: 5px 0;
		    border: 1px solid #1890ff;
		    padding: 10px 15px;
		    outline: none; 
		    background: #f2f2f2;
		    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
		}

		.form textarea{
			width: 90%;
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

	    .avatar-preview{
	    	margin: 30% 20%;
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
					<h4>PRODUCTS</h4>
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
						<li id="op"><a href="/myApp/admin/shop"><i class="fa fa-shopping-bag" aria-hidden="true"></i> 		Shop</a></li>
						<li style="margin-left: 10px;"><a href="@"><i class="fa fa-cart-plus" aria-hidden="true"></i> 		Add Products</a></li>
						<li id="op"><a href="/myApp/admin/Customers"><i class="fa fa-list" aria-hidden="true"></i> 	View products</a></li>
						<li id="op"><a href=""><i class="fa fa-pencil" aria-hidden="true"></i> 	Edit Products</a></li>
					</ul>
				</div>

				<div class="profile">
					<h3 style="padding-left: 30px">ADD PRODUCT</h3>
					<div class="area">
			              <div class="form">
			              		<form:form action="saveProduct" method="POST" modelAttribute="command" enctype="multipart/form-data">
									
									<div class="fields">
				              			<label for="name">NAME</label><br>
				              			<input type="text" name="name" id="name">
				              		</div>
			              			<br>
			              			<div class="fields">
			              				<label for="cost">COST</label><br>
				              			<input type="text" name="cost" id="cost">
			              			</div>
			              			<br>
			              			<div class="fields">
				              			<label for="discription">DESCRIPTION</label><br>
				              			<textarea name="discription" id="discription"></textarea>
				              		</div>
			              			<br>
			              			<div class="fields">
										<label for="picture">PICTURE</label><br>
										<input type="file" name="picture" id="picture"/>
									</div>
									<br>

						            <button class="button">SAVE</button><br><br><br>
			              		</form:form>
			              </div>
			              <div class="picture">
			              		<div class="avatar-preview">
						             	<img id="imagePreview" src="/myApp/URLToReach/img/cart.png" 
						                  			alt="pic" width="200px" height="200px" />
							    </div>
			              </div>
			       	</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>