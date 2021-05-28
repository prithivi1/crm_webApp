<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>invoice</title>
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet"/>
  	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

	
	<style type="text/css">
		
		body{
			margin: 5% 20%;
			padding: 20px;
			outline: 1px solid black;
			font-family: 'Raleway', sans-serif;
			box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
		}

		.split{
			display: grid;
			grid-template-columns: 2.5fr 2.5fr;
		}

		.item{
			display: grid;
			grid-template-columns: 1fr 3fr;
			margin-left:  -10px;
			width: 100%;
			outline: 0.5px solid black;
			padding: 10px;
			text-align: center;
			line-height: 5px;
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
	      }

	</style>
</head>
<body>
	<h1 align="center">INVOICE</h1>
	<hr>
		<div class="content">
			<div class="split">
				<div>
					<h3>INVOICE ID : ${invoice.invoiceId }</h3>	
					<hr>
					<h3>NAME : ${invoice.username }</h3>
					<h3>EMAIL : ${invoice.email }</h3>
					<h3>CONTACT : ${invoice.contact }</h3>	
				</div>
				<div>
					<h3 style="margin-left: 30%">INVOICE DATE : ${invoice.invoiceDate }</h3>	
					<hr>
					<div class="item">
						<div>
							<img src="/myApp/getPhoto/${invoice.productName }" alt="image" 
								width="100" height="100">
						</div>
						<div>
							<h3>${invoice.productName }</h3>
							<h4>${invoice.productCost }</h4>
						</div>
					</div>
					<br>
					<form:form>
						<button class="button">PRINT</button>
					</form:form>	
					<br>
				</div>
			</div>	
			<hr>
			<h4 align="center">THANKS FOR SHOPPING!!!</h4>
			<br>
		</div>
		
</body>
</html>