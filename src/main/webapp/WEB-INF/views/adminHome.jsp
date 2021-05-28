<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>customer support</title>
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet"/>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
    <style type="text/css">
    
    	::-webkit-scrollbar {
            width: 0px;  /* Remove scrollbar space */
            background: transparent;  /* Optional: just make scrollbar invisible */
        }
        /* Optional: show position indicator in red */
        ::-webkit-scrollbar-thumb {
            background: #FF0000;
        }

      body {
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
      
      .container .option-pane {
        
        display: grid;
        grid-template-columns: 1.5fr 1.5fr 1.5fr 1.5fr;
        padding: 1rem;
        grid-column-gap: 20px;
        background-color: white;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        
      }
      
      .container .option-pane a{
      	text-decoration: none;
      	color: #47d1d1;
      }
      
      .container .option-pane a:hover{
      		transform: scale(1.5);
      		transition: linear 0.5s;
      }

      .container .option-pane .datas {
        margin-left: 2%;
        margin-top: 2%;
        padding: 4px;
        overflow: hidden;
      }
    
      .dash{
      	display:grid;
      	margin-left:20%;
      	text-align:center;
      	grid-template-columns: 1.5fr 1.5fr 1.5fr 1.5fr;
        padding: 1rem;
        grid-column-gap: 20px;
      }
      
      .data{
      	background-color: white;
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
					<a href="">home</a>
					<a href="">notification</a>
					<a href="/myApp/admin/account">profile</a>
					<a href="/myApp/logout">logout</a>
				</div>
			</div>
		</div>
		
		<h2 style="margin-left: 40px;">Welcome back, admin!</h2>

		<div class="dash">
			<div class="data">
				<h2>TOTAL USERS</h2>
				<h4>2</h4>
			</div>
			
			<div class="data">
				<h2>TOTAL EARNINGS</h2>
				<h4>$500</h4>
			</div>
			
			<div class="data">
				<h2>TICKETS</h2>
				<h4>0</h4>
			</div>
		</div>

        <div class="option-pane" id="option-pane">
          
            <a href="/myApp/admin/Customers">
              <div class="datas" style="margin-top: 0; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-users" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">CUSTOMERS</h4>
              </div>
            </a>
            
            <a href="/myApp/admin/addProduct">
              <div class="datas" style="margin-top: 0px; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-shopping-cart" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">PRODUCTS</h4>
              </div>
            </a>

            <a href="#">
              <div class="datas" style="margin-top: 0; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-paper-plane" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">SERVICES</h4>
              </div>
            </a>

            <a href="#">
              <div class="datas" style="margin-top: 0px; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-comment-o" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">TICKETS</h4>
              </div>
            </a>
 			
 			 <a href="/myApp/admin/invoices">
              <div class="datas" style="margin-top: 20px; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-tasks" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">INVOICES</h4>
              </div>
            </a>
            
             <a href="#">
              <div class="datas" style="margin-top: 20px; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-thumb-tack" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">TO DO</h4>
              </div>
            </a>
            
            
             <a href="#">
              <div class="datas" style="margin-top: 20px; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-cog" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">SETTINGS</h4>
              </div>
            </a>
 			
        </div>
    </div>
</body>
</html>