<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>my Products</title>
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet"/>
  	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	  
		<style type="text/css">

			body{
				margin: 0;
				padding: 5px;
				font-family: 'Raleway', sans-serif;
			}

			::-webkit-scrollbar {
	            width: 0px;  /* Remove scrollbar space */
	            background: transparent;  /* Optional: just make scrollbar invisible */
		    }
		    
		    ::-webkit-scrollbar-thumb {
		        background: transparent;
		    }
			
			.main{
				display: grid;
				grid-template-columns: 0.6fr 4fr;
				grid-column-gap: 10px;
			}

			.navbar{
				background-color: blue;
				height: 61.5ch;
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
				margin-left: 120px;
			}

			.tray a{
				padding: 20px;
			}

			.split{
				display: grid;
				grid-template-columns: 1fr 4fr;

				box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
			}

			.options{
				background-color: grey;
				height: 54ch;
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
				height: 55ch;
				overflow-x: scroll;
				/*background-color: yellow;*/
			}

			.area{
				width: 100%;
				padding: 10px;
			}


			.item{
				display: grid;
				grid-template-columns: 1fr 3fr;
				margin-left: 10px;
				width: 80%;
				outline: 0.5px solid black;
				padding: 10px;
				text-align: center;
				line-height: 5px;
				box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
			}

			.item:hover{
				background-color: #f2f2f2;
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
			<br>
			<h4 align="center" style="color: white">WELCOME</h4>
			<i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 90px;color: white;margin-left: 25px;"></i>

			<ul>
				<li id="op"><a href="/myApp/customer/home"><i class="fa fa-shopping-bag" aria-hidden="true"></i> shop</a></li>
				<li id="op"><a href="/myApp/customer/myProduct"><i class="fa fa-shopping-cart" aria-hidden="true"></i> my products</a></li>
				<li id="op"><a href="/myApp/customer/service"><i class="fa fa-paper-plane" aria-hidden="true"></i> service</a></li>
				<li id="op"><a href="/myApp/customer/invoice"><i class="fa fa-tasks" aria-hidden="true"></i> invoices</a></li>
			</ul>
		</div>

		<div class="container">
			<div class="header">
				<div class="head" style="padding-left: 10px;">
					<h4>PRODUCTS</h4>
				</div>
				<div style="float: right;" class="tray">	
						<a href="/myApp/customer/home">home</a>
						<a href="">notification</a>
						<a href="/myApp/customer/account">profile</a>
						<a href="/myApp/logout">logout</a>
					</ul>
				</div>
			</div>
			<br>
			
			<div class="split">
				<div class="options">
					<ul>
						<li id="op"><a href=""><i class="fa fa-bars" aria-hidden="true"></i> 		my Products</a></li>
						<li id="op"><a href=""><i class="fa fa-pencil" aria-hidden="true"></i> 	my Cart</a></li>
					</ul>
				</div>

				<div class="profile">
					<h3 style="padding-left: 30px">My Products</h3>
					<div class="area">
						<c:forEach var="i" items="${product}">
							
							<div class="item">
								<div>
									<img src="/myApp/getPhoto/<c:out value='${i.name}'/>" alt="image" 
										width="100" height="100">
								</div>
								<div>
									<h3>${i.name}</h3>
									<h4>${i.cost}</h4>
									<p style="line-height: 15px;">${i.discription}</p>
								</div>
							</div>
							<br>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>