<%-- 
    Document   : recentappointment
    Created on : Apr 12, 2021, 10:48:45 AM
    Author     : krism
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BusinessObjects.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Recent Appointments</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="Stylesheets\employee.css">
</head>

<%
// Code that will get data from database and allow us to display to the JSP
    Appointment a1 = new Appointment(); 
    // 
    a1.selectDB("Cust001");
    // New array list of Appointments
    ArrayList<Appointment> cList = new ArrayList<Appointment>(); 
    // This is where we get the database objects and store them initially (getAllAppointments())
    cList = a1.getAllAppointments();
    // Get Count returns the amount of objects inside database and stores it as listSize
    int listSize = a1.getAppointmentCount();
    // Create a new array that will pass info from the array list
    Appointment[] cArray = new Appointment[listSize];
    // For loop to actually store the Appointments to the array one by one
        for (int count = 0; count < listSize; count++) {
            // Get info from normal array into array list
            cArray[count] = cList.get(count);
            //out.println("This is the array: " + cArray[count].getFirstName());
        }
%>

<header>
    <div class="container">
      <a href="employee.jsp"><img src="../Resources/Logo3.jpg" alt="logo" class="logo"></a>

      <center>
	  <nav>
        <ul>
          <li><a href="employee.jsp">Home</a></li>
          <li><a href="todayappointment.jsp">Today's Appts</a></li><br>
          <li><a href="ViewCustomer.jsp">All Customers</a></li>
          <li><a href="recentappointment.jsp">Recent Appts</a></li><br>
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

<table border="3">
          <tr>
            <th>Appointment ID</th>
            <th>Appointment ID</th>
            <th>Appointment Date</th>
            <th>Appointment Time</th>
            <th>Customer ID</th>
            <th>Hairdresser</th>
            <th>Service</th>
            </tr>
        <% for (int row = 0; row < listSize; row++) { %>
            <tr>
            <td><input type="text"  value="<%=cArray[row].getAptID() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getAptDate() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getAptTime() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getCustID() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getHairdresser() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getService() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getServiceType() %>" readonly/></td>
            </tr>
        <% } %>
        <table style="width:50%">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
</div>
</body>
</html>