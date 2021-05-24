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
	  body {
		overflow:scroll;
        font-family: 'Raleway', sans-serif;
        background-color: #f2f2f2;
      }
      
      .header{
			display: grid;
			grid-template-columns: 2fr 2.5fr;
			background: white;
			box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
		}

		.header .tray{
			padding: 3%;
			float:right;
		}

		.tray a{
			padding: 20px;
		}

	
	  .container .view-table{
	  	padding: 20px;
	  }
	  
	  .content{
	  		margin-top:20px;
	  		display: grid;
			grid-template-columns: 1fr 4fr;
			grid-column-gap: 20px;
	  }
	  
	  .sidenav {
	      background: #eee;
		  overflow-x: hidden;
		  padding: 8px 10px;
		  background-color: white;
		  box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
		}
		
		.sidenav a {
		  padding: 6px 8px 6px 16px;
		  text-decoration: none;
		  font-size: 20px;
		  color: #2196F3;
		  display: block;
		}
		
		.sidenav a:hover {
		  color: #064579;
		}
			  
	  
	  .customer-details{
	  	background-color: white;
	  	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	  }
	  
	  .button {
		  background-color: #4CAF50;
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
		}
	  
	  
	  table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
          outline: none;
          border: none;
          border-top-left-radius:30px;
          border-top-right-radius:30px;
        }

        th {
          text-align: center;
          padding: 8px;
          height: 20px;
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
        
        /* The Modal (background) */
		.modal {
		  display: none; /* Hidden by default */
		  margin-left:5%;
		  width: 80%; 
		  overflow: auto; /* Enable scroll if needed */
		  background-color: rgb(0,0,0); /* Fallback color */
		  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		}
		
		/* Modal Content/Box */
		.modal-content {
		  background-color: #fefefe;
		  margin: 5% auto 15% auto; 
		  border: 1px solid #888;
		  width: 80%; /* Could be more or less, depending on screen size */
		}
        
        .close {
		  color: #000;
		  font-size: 35px;
		  font-weight: bold;
		  float: right;
		  margin-right: 30px;
		}
		
		.close:hover,
		.close:focus {
		  color: red;
		  cursor: pointer;
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
		
		
	</style>

</head>
<body>
	<div class="container">
    	<div class="header">

			<div class="logo">
				<h2 style="margin-left: 20px;">COMPANY LOGO</h2>
			</div>
			<div class="tray">
				<div style="float: right;">	
					<a href="/myApp/admin/home">home</a>
					<a href="">notification</a>
					<a href="">profile</a>
					<a href="/myApp/logout">logout</a>
				</div>
			</div>
		</div>
		
	<div class="content">	      
		<div class="sidenav">
			<h2>NAV-BAR</h2>
			  <a href="#">CUSTOMERS</a>
			  <a href="#">SERVICE</a>
			  <a href="#">INVOICES</a>
			  <a href="#">TICKETS</a>
		</div>
		
		<div class="customer-details">
			<form action="addCustomer">
				<input type="submit" value="ADD" class="button">
			</form>
			
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
								<th>DELETE</th>
								<th>VIEW</th>
							</tr>
							<%int i=1; %>
							<c:forEach var="customer" items="${customers}">
								<tr>
									<td><%=i++%></td>
									<td>${customer.username}</td>
									<td>${customer.email}</td>
									<td><a href="/myApp/admin/profile?username=${customer.username}" style="text-decoration: none;outline: none"><i class="fa fa-pencil" aria-hidden="true" style="margin-bottom: 5px;"></i></a></td>
									<td><a href="/myApp/admin/deleteCustomer?userId=${customer.customerId}" onclick="if(!(confirm('Are you sure want to delete?'))) return false"  style="text-decoration: none;outline: none"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
									
									<td><button onclick="expand()" style="width: auto;">VIEW</button></td>
									
									<div class="modal" id="view-details">
						
										<h3 style="padding: 5%;">DETAILS HERE<span onclick="document.getElementById('view-details').style.display='none'" class="close" title="Close Modal">&times;</span></h3>	
										
										<div class="reg-form">	
											<label for="user">USERNAME</label>
											<input id="user" value="${customer.username}" readonly="readonly"/>
											<br>
											<label for="company">COMPANY NAME</label>
											<input id="company" value="${customer.companyName}" readonly="readonly"/>
											<br>
											<label for="email">EMAIL</label>
											<input id="email" value="${customer.email}" readonly="readonly"/>
											<br>
											<label for="address">ADDRESS</label>
											<input id="address" value="${customer.address}" readonly="readonly"/>
											<br>
											<label for="city">CITY</label>
											<input id="city" value="${customer.city}" readonly="readonly"/>
											<br>
											<label for="state">STATE</label>
											<input id="state" value="${customer.state}" readonly="readonly"/>
											<br>
											<label for="mobile">CONTACT</label>
											<input id="mobile" value="${customer.mobile}" readonly="readonly"/>
											<br>
											<label for="website">WEBSITE</label>
											<input id="website" value="${customer.website}" readonly="readonly"/>
											
											<div class="">
												<a href="#">edit</a>
												<a href="#">delete</a>
											</div>
										</div>
									</div>
								</tr>
							</c:forEach>
						</table>
					</c:when>
				</c:choose>
			</div>	
		</div>
		</div>
	</div>

	<script type="text/javascript">
	
		function expand(){
			document.getElementById('view-details').style.display='block';
		}
	
	</script>

</body>
</html>