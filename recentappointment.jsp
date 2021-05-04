
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Home - Employee</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="StyleSheets/employee.css">
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>

<header>
    <div class="container">
      <a href="HdLogin.jsp"><img src="https://cdn.discordapp.com/attachments/692467198655987833/804975854101725224/Picture1-removebg-preview.png
" alt="logo" class="logo"></a>

      <center>
	  <nav>
        <ul>
          <li><a href="HdLanding.jsp">Home</a></li>
          <li><a href="todayappointment.jsp">Appointment Lookup</a></li>
          <li><a href="ViewCustomer.jsp">List of Customers</a></li>
          <li><a href="recentappointment.jsp">Recent Appointments</a></li>
          <li>
			<div class="dropdown">
				<button class="dropbtn">Profile</button>
				<div class="dropdown-content">
					<a href="myprofile.jsp">My Profile</a>
					<a href="HomePage.jsp">Log Out</a>
				</div>
			</div>
		  </li><br><br>
		</ul>
      </nav>
	  </center>
    </div>
</header>

<body style="overflow:auto;">
<br><br>

	<h3 style="color: red; text-align: center;">* Dear Hairdresser, Please enter the Customer ID to search for your customer's recent appointments. Thank you!</h3>
        
	<form action="RecentApptServlet" method="post" style="padding-top: 20px;">
	  <center>
              <table
                <label for="CustID"><b>Customer ID:</b></label>
		<input type="text" min="0" placeholder="Enter your Customer ID Number" name="CustID" style="height: auto; width: 220px;" required><br><br>
                
		  </select><br><br>
		<button type="submit">Search</button>
	  </center>
	</form>
<script>
</script>
</body>
</html>