<%-- 
    Document   : employee
    Created on : Apr 12, 2021, 10:45:30 AM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Home - Employee</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="Stylesheets\employee.css">
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

<body style="overflow:auto;">

<div class="main">
<br>
    <center>
		<a href="todayappointment.jsp">
			<div class="tile">
				<p style="margin: 0; color: black;">Today's Appts</p>
				<img src="https://raw.githubusercontent.com/Lead-Force/HairSalon/FE/Resources/calendar.jpg" height="100" width="130" style="padding-top: 10px; border-radius: 20px;"></img>
			</div>
		</a>

		<a href="ViewCustomer.jsp">
			<div class="tile1">
				<p style="margin: 0; color: black;">All Customers</p>
				<img src="https://raw.githubusercontent.com/Lead-Force/HairSalon/FE/Resources/customer.png" height="110" width="110" style="padding-top: 5px;"></img>
			</div>
		</a>
		
		<a href="recentappointment.jsp">
			<div class="tile2">
				<p style="margin: 0; color: black;">Recent Appts</p>
				<img src="https://raw.githubusercontent.com/Lead-Force/HairSalon/FE/Resources/today.jpg" height="130" width="130"></img>
			</div>
		</a>
	</center>
</div>
</body>
</html>
