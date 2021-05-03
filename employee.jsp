<%-- 
    Document   : employee
    Created on : Apr 30, 2021, 9:15:03 PM
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
<link rel="stylesheet" href="../Stylesheets/employee.css">
</head>


<header>
    <div class="container">
      <a href="employee.jsp"><img src="../Resources/imageb.png" alt="logo" class="logo"></a>

      <center>
	  <nav>
        <ul>
		  <li><a href="employee.jsp">Home</a></li>
          <li><a href="todayappointment.jsp">Today's Appts</a></li>
          <li><a href="allcustomer.jsp">All Customers</a></li>
          <li><a href="recentappointment.jsp">Recent Appts</a></li>
          <li>
			<div class="dropdown">
				<button class="dropbtn">Profile</button>
				<div class="dropdown-content">
					<a href="myprofile.jsp">My Profile</a>
					<a href="">Log Out</a>
				</div>
			</div>
		  </li>
		</ul>
      </nav>
	  </center>
    </div>
</header>

<body style="overflow:auto;">

<div class="main">
<br>
  <h1>Welcome Employee</h1>
    <center>
		<a href="todayappointment.jsp">
			<div class="tile">
				<p style="margin: 0; color: black;">Today's Appts</p>
				<img src="../Resources/calendar.jpg" height="100" width="130" style="padding-top: 10px; border-radius: 20px;"></img>
			</div>
		</a>

		<a href="allcustomer.jsp">
			<div class="tile1">
				<p style="margin: 0; color: black;">All Customers</p>
				<img src="../Resources/customer.png" height="110" width="110" style="padding-top: 5px;"></img>
			</div>
		</a>
		
		<a href="recentappointment.jsp">
			<div class="tile2">
				<p style="margin: 0; color: black;">Recent Appts</p>
				<img src="../Resources/today.jpg" height="130" width="130"></img>
			</div>
		</a>
	</center>
  
</div>

</body>

</html>