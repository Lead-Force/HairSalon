<%-- 
    Document   : todayappointment
    Created on : Apr 30, 2021, 9:19:33 PM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE h<!DOCTYPE html>
<html>

<head>
<title>Today's Appointments</title>
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
<br><br>
  <h1>Today's Appointments</h1>
  <p>Some text some text some text some text..</p>
</div>

</body>

</html>