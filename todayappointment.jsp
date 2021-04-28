<%-- 
    Document   : todayappointment
    Created on : Apr 12, 2021, 10:47:48 AM
    Author     : krism
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessObjects.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Today's Appointments</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="Stylesheets\employee.css">
</head>

<%
// Code that will get data from database and allow us to display to the JSP
    Appointment a1 = new Appointment(); 
    // Get the selected day/week from the Servlet
    String week = (String)session.getAttribute("Week");
    String day = (String)session.getAttribute("Day");
    a1.selectDB("Cust001");
    // New array list of Appointments
    ArrayList<Appointment> aList = new ArrayList<Appointment>(); 
    // This is where we get the database objects and store them initially (getAllAppointments())
    aList = Appointment.getAllAppointment();
    // Get Count returns the amount of objects inside database and stores it as listSize
    int listSize = a1.getAppointmentCount();
    // Create a new array that will pass info from the array list
    Appointment[] aArray = new Appointment[listSize];
    // Iterator
    if (week != null && day != null) {
    for(Iterator<Appointment> iterator = aList.iterator(); iterator.hasNext(); ) {
                            if(iterator.next().getWeek().equals(week) && iterator.next().getAptDays().equals(day));
                            //iterator.remove();
                            out.println("Iteration: " + iterator + ".");
                        }
    }
    // For loop to actually store the Appointments to the array one by one
        for (int count = 0; count < listSize; count++) {
            // Get info from normal array into array list
            aArray[count] = aList.get(count);
            // out.println("This is the array: " + aArray[count].getAptTime());
        }
%>

<header>
    <div class="container">
      <a href="employee.jsp"><img src="../Resources/Logo3.jpg" alt="logo" class="logo"></a>

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
					<a href="">Log Out</a>
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

	<form action="http://localhost:8080/THS/AppointmentDateLookupServlet" method="post" style="padding-top: 20px;">
	  <center>
		<label for="apptTime"><b>Week:</b></label>
		<input type="Week" name="WeekSelect" id="week" placeholder="Schedule a Time" style="height: auto; width: 190px;" required><br><br>
                
		<label for="Weekday"><b>Day:</b></label>
                <select name="DaySelect" style="height: auto; width: 190px;" required>
                  <option value="">Please choose your day</option>
                  <option value="M">Monday</option>
                  <option value="T">Tuesday</option>
                  <option value="W">Wednesday</option>
                  <option value="R">Thursday</option>
                  <option value="F">Friday</option>
                  <option value="S">Saturday</option>
                  <option value="Z">Sunday</option>
                </select>
                <br><br>
                
                <button>Go</button>
          </center>
        </form>
               
            Available appointments:
           <table border="2">
                <tr>
                    <th>Time</th>
                    <th>Id</th>
                    <th>Week</th>
                    <th>Day</th>
                    <th>Reserve</th>
                </tr><
                <% for(int row=0; row < listSize; row++) { %>
                <tr>
                    <td><input type="text" name="timeTb" value="<%= aArray[row].getAptTime()%>"readonly></td>
                    <td><input type="text" name="hdAptIdTb" value="<%= aArray[row].getHdAptID()%>"readonly></td>
                    <td><input type="text" name="weekTb" value="<%= aArray[row].getWeek()%>"readonly></td>
                    <td><input type="text" name="dayTb" value="<%= aArray[row].getAptDays()%>"readonly></td>
                    <td><input type="text" name="reserveTb" value="<%= aArray[row].getReserved()%>"readonly></td>
                </tr>
                <% } %>
            </table>
</body>
</html>
