<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>my Invoices</title>
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

			.profile{
				padding: 10px;
				box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
				height: 53ch;
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

		</style>
</head>
<body>
	<div class="main">
		<div class="navbar">
			
			<h2 style="padding-left: 10px;margin-top: 20%;color: white"><i class="fa fa-podcast" aria-hidden="true"></i>
			ZEBKART</h2>
			<i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 100px;color: white;margin-left: 25px;"></i>

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
					<h4>WELCOME PRITHIVI</h4>
				</div>
				<div style="float: right;" class="tray">	
						<a href="/myApp/admin/home">home</a>
						<a href="">notification</a>
						<a href="/myApp/admin/account">profile</a>
						<a href="/myApp/logout">logout</a>
					</ul>
				</div>
			</div>
			
			<div class="profile">
				<h3 style="padding-left: 30px">INVOICES</h3>
				<div class="form">
					<table border="1">
						<tr>
							<th>INVOICE ID</th>
							<th>USERNAME</th>
							<th>PRODUCT</th>
							<th>DATE</th>
							<th>VIEW</th>
						</tr>
						<tr>
							<td>93850</td>
							<td>prithivi</td>
							<td>car</td>
							<td>26/05/2021</td>
							<td><a href="/myApp/admin/editCustomer?username=${customer.username}" style="text-decoration: none;outline: none;color: black"><i class="fa fa-sign-in" aria-hidden="true"></i></a></td>
						</tr>
					</table>

				</div>
			</div>
		</div>

	</div>
</body>
</html>