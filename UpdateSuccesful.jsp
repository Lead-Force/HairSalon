<%-- 
    Document   : UpdateSuccessful
    Created on : Apr 12, 2021, 10:48:14 AM
    Author     : Jean
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BusinessObjects.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>All Customers List</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="Stylesheets\employee.css">
<style>
           h2 {text-align: center;}
            body {
background-image: url("https://cdn.pixabay.com/photo/2017/09/07/09/55/square-2724387__340.jpg");
background-repeat: no-repeat;
background-position: center;
background-size: cover;
}
</style>
</head>

<header>
    <div class="container">
      <a href="employee.jsp"><img src="https://cdn.discordapp.com/attachments/692467198655987833/804975854101725224/Picture1-removebg-preview.png
" alt="logo" class="logo"></a>

      <center>
	  <nav>
        <ul>
          <li><a href="employee.jsp">Home</a></li>
          <li><a href="todayappointment.jsp">Appointment Lookup</a></li><br>
          <li><a href="ViewCustomer.jsp">List of Customers</a></li>
          <li><a href="recentappointment.jsp">Recent Appointments</a></li><br>
          <li>
			<div class="dropdown">
				<button class="dropbtn">Profile</button>
				<div class="dropdown-content">
					<a href="myprofile.jsp">My Profile</a>
					<a href="employeelogin.jsp">Log Out</a>
				</div>
			</div>
		  </li><br><br>
		</ul>
      </nav>
	  </center>
    </div>
</header>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Successful Page</title>
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>
        <h2>Dear Hairdresser, your Profile has successfully been updated!</h2>
    </body>
</html>