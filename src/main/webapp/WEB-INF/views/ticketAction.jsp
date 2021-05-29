<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>service</title>
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
				height: 61ch;
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
				overflow: scroll;
			}

			.divide{
				display: grid;
				grid-template-columns: 2.5fr 2fr;
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
				width: 93%;
				outline: 0.5px solid black;
				padding: 10px;
				text-align: center;
				line-height: 5px;
				box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
			}

			.item:hover{
				background-color: #f2f2f2;
			}

			.form{
				margin-left: 0%;
				width: 100%;
				/*background-color: red;*/

			}

			.form input{
				width: 70%;
			  	margin: 5px 0;
			    border: 1px solid #1890ff;
			    padding: 10px 15px;
			    outline: none; 
			    background: #f2f2f2;
			    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
			}

			.form textarea{
				width: 70%;
			  	margin: 5px 0;
			    border: 1px solid #1890ff;
			    padding: 10px 15px;
			    outline: none; 
			    background: #f2f2f2;
			    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
			}


			.form select{
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

			table {
		      border-collapse: collapse;
		      width: 90%;
		      margin-left:20px;
		      font-family: 'arial', sans-serif;
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

		</style>
</head>
<body>
	<div class="main">
		<div class="navbar">
			
			<br>
			<h4 align="center" style="color: white">WELCOME</h4>
			<i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 90px;color: white;margin-left: 25px;"></i>
			

			<ul>
				<li id="op"><a href="/myApp/admin/Customers"><i class="fa fa-users" aria-hidden="true"></i> customers</a></li>
				<li id="op"><a href="/myApp/admin/addProduct"><i class="fa fa-shopping-cart" aria-hidden="true"></i> products</a></li>
				<li id="op"><a href="/myApp/admin/ticketsPending"><i class="fa fa-paper-plane" aria-hidden="true"></i> tickets</a></li>
				<li id="op"><a href=""><i class="fa fa-exclamation-circle" aria-hidden="true"></i> Teams</a></li>
				<li id="op"><a href="/myApp/admin/invoices"><i class="fa fa-tasks" aria-hidden="true"></i> invoices</a></li>
			</ul>
		</div>

		<div class="container">
			<div class="header">
				<div class="head" style="padding-left: 10px;">
					<h4>SERVICE</h4>
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
						<li id="op"><a href="/myApp/admin/ticketsPending"><i class="fa fa-ticket" aria-hidden="true"></i>	Pending Tickets</a></li>
						<li id="op"><a href="/myApp/admin/ticketsResolved"><i class="fa fa-check" aria-hidden="true"></i> 	Resolved Tickets</a></li>
						<li id="op"><a href=""><i class="fa fa-pencil" aria-hidden="true"></i> 	Assign Work</a></li>
						<li id="op"><a href=""><i class="fa fa-pencil" aria-hidden="true"></i> 	Create Team</a></li>
						<li id="op"><a href=""><i class="fa fa-pencil" aria-hidden="true"></i> 	View Work</a></li>

					</ul>
				</div>

				<div class="profile">
					<h3 style="padding-left: 30px">ACTION</h3>
					<div class="form">
						<c:if test="${param.success!=null}">
						<p style="color: green;margin-left:40px;">profile updated successfully</p>
						<br>
					</c:if>
	              	<form:form action="profile" method="POST" modelAttribute="ticket">
	              		<form:hidden path="serviceId" value="${ticket.serviceId }"/>
	              		
	              		<div class="name" style="display: grid; grid-template-columns: 1fr 1fr;">
	              			<div class="usernmae" style="margin-left: 40px;">
	              				<label for="username">Username</label><br>
	              				<form:input path="customerName" id="username" value="${ticket.customerName}"/>
	              			</div>

	              			<div class="companyName">
	              				<label for="company">Date</label><br>
	              				<form:input path="date" id="company" value="${ticket.date}"/>
	              			</div>
	              		</div>
	              		<br>
	              		<br>

	              		<div class="name" style="display: grid; grid-template-columns: 1fr 1fr;
	              				grid-column-gap: 20px;">
	              			
	              			<div class="usernmae" style="margin-left: 40px;">
	              				<label for="email">e-mail</label><br>
	              				<form:input path="customerEmail" id="email" value="${ticket.customerEmail}"/>
	              			</div>

	              			<div class="companyName">
	              				<label for="contact">Item</label><br>
	              				<form:input path="item" id="contact" value="${ticket.item}"/>
	              			</div>
	              		</div>
						<br>
						<br>
						
	              		<div class="name" style="display: grid; grid-template-columns: 1fr 1fr;
	              				grid-column-gap: 20px;">
	              			
	              			<div class="field" style="margin-left: 40px;">
	              				<label for="address">Description</label><br>
	              				<form:textarea path="description" rows="6" value="${ticket.description}"/>
	              			</div>
	              			
	              			<div class="field">
	              				<label for="website">Action</label><br>
	              				<form:textarea path="action" id="website" rows="6"/>
	              			</div>
	              		</div>
						<br>
						<br>
						
						<div class="name" style="display: grid; grid-template-columns: 1fr 1fr;
	              				grid-column-gap: 20px;">
	              			
	              			<div class="usernmae" style="margin-left: 40px;">
	              				<label for="state">Assign Team</label><br>
	              				<form:select path="item">
	              					<form:option value="car" label="car"/>
	              				</form:select>  
	              			</div>
	              			
	              			<div class="name" style="display: grid; grid-template-columns: 1fr 1fr;
	              				grid-column-gap: 20px;">
	              			
		              			<div class="usernmae">
		              				<button class="button">UPDATE</button><br><br>
		              			</div>
	
		              			<div class="companyName">
		              				<button class="button" style="background-color: red">END</button><br><br>
		              			</div>
		              		</div>

	              		</div>
						<br>
						
	              		
	              	</form:form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>