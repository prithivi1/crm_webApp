<%@page import="java.util.List"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>customer support</title>
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
			box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px
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
			height: 55ch;
			/*background-color: yellow;*/
		}
	  
	  table {
          border-collapse: collapse;
          width: 100%;
          margin-left:20px;
          outline: none;
          border: none;
          font-family: 'Raleway', sans-serif;
        }

        th {
          text-align: center;
          padding: 8px;
          height: 20px;
		  font-family: 'Raleway', sans-serif;
        }
        
        td{
        	padding-left:2px;
        	padding-top:20px;
        	text-align: center;
        }

        tr {
          background-color: transparent;
          color:black;
        }
        
        .view-table a{
        	outline: black solid 1px;
        	padding:5px;
        	color:black;
        }
    
		.reg-form{
			margin-top:-80px;
			padding: 50px;
		}

		.reg-form input{
		  	margin: 5px 0;
			border:none;
		    border-bottom: 1px solid #1890ff;
		    padding: 10px 15px;
		    outline: none; 
		    background: transparent;
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
					<h4>MY CUSTOMERS</h4>
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
						<li id="op"><a href="/myApp/admin/addCustomer"><i class="fa fa-user-plus" aria-hidden="true"></i> 		Add Customers</a></li>
						<li style="margin-left: 10px;"><a href=""><i class="fa fa-users" aria-hidden="true"></i> 	View Customers</a></li>
						<li id="op"><a href=""><i class="fa fa-pencil" aria-hidden="true"></i> 	Edit Customer</a></li>
					</ul>
				</div>

				<div class="profile">
					<h3 style="padding-left: 30px">Customers</h3>
						<div class="view-table">
							<c:set var="size" scope="session" value="${fn:length(customers)}"/> 
							<c:choose>
							<c:when test="${size>0}">  
								<table border="1">
									<tr>
										<th>ID</th>
										<th>USERNAME</th>
										<th>EMAIL</th>
										<th>EDIT</th>
									</tr>
									<%int i=1; %>
									<c:forEach var="customer" items="${customers}">
										<tr>
											<td><%=i++%></td>
											<td>${customer.username}</td>
											<td>${customer.email}</td>
											<td><a href="/myApp/admin/editCustomer?username=${customer.username}" style="text-decoration: none;outline: none"><i class="fa fa-pencil" aria-hidden="true" style="margin-bottom: 5px;"></i></a></td>
										</tr>
									</c:forEach>
								</table>
							</c:when>
						</c:choose>
					</div>	
				</div>
			</div>
		</div>
	</div>

</body>
</html>