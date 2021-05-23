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
      
      .container {
        margin-left:80px;
      }

      .container .option-pane {
        margin-top: 5%;
        display: grid;
        grid-template-columns: 1.5fr 1.5fr 1.5fr 1.5fr;
        padding: 1rem;
        grid-column-gap: 20px;
        background-color: transparent;
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
    
    </style>

</head>
<body>
    <div class="container">
      <div id="header">
        <!-- <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>		 -->
        <h1>CUSTOMER SUPPORT
        	<form:form action="logout" method="POST">
	        	<button type="submit" style="float: right;color: black"><i class="fa fa-power-off" aria-hidden="true" style="margin-right: 30px;"></i></button>
	        </form:form>
       	</h1>
		<hr>
      </div>

      <h2>Welcome back, admin!</h2>

        <div class="option-pane" id="option-pane">
          
            <a href="/customer-management/customer/showCustomer">
              <div class="datas" style="margin-top: 0; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-users" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">CUSTOMERS</h4>
              </div>
            </a>

            <a href="#">
              <div class="datas" style="margin-top: 0; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-paper-plane" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">PRODUCTS</h4>
              </div>
            </a>

            <a href="#">
              <div class="datas" style="margin-top: 0px; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-user-o" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">MY ACCOUNT</h4>
              </div>
            </a>

            <a href="#">
              <div class="datas" style="margin-top: 0px; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-comment-o" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">COMMUNICATION</h4>
              </div>
            </a>
 			
 			 <a href="#">
              <div class="datas" style="margin-top: 20px; text-align: center;">
                <i style="font-size: 50px;margin-top: 10%" class="fa fa-tasks" aria-hidden="true"></i><br><br>
                <h4 style="margin-top: 0px;">TASK</h4>
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