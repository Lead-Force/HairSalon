<%-- 
    Document   : todayappointment
    Created on : Apr 26, 2021, 2:23:49 PM
    Author     : PC
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BO.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Today's Appointments</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="StyleSheets/employee.css">
</head>

<%
// Code that will get data from database and allow us to display to the JSP 
    // Get the selected day/week from the Servlet
    String week = (String) session.getAttribute("Week");
    String day = (String) session.getAttribute("Day");
    ArrayList<Appointment> table = new ArrayList<Appointment>();
    ArrayList<Appointment> table2 = new ArrayList<Appointment>();
    //properties
    Appointment aa1 = new Appointment();
    //out.println(day);
    System.out.println(week);
    //listsize
    int listSize = Appointment.getAppointmentCount();
    //populate the list
    table = Appointment.getAllAppointment();
    
    List<Appointment> defaults = new ArrayList<Appointment>();
    int counter=0;
    for (int index=0;index<listSize;index++){
    table2.add(table.get(index));
    out.println(table2.get(index));
    }
    if (week != null && day != null) {
        for (Appointment str : table2) {
            if (str.getAptDays().equals(day) && str.getWeek().equals(week)) {
                defaults.add(str);
                counter++;//out.println(defaults.get(0).getHdAptID());
                out.println(counter);
            }
        }
    
    }
//myArrayList.removeAll(toRemove);
    //listsize
    //int listSize = Appointment.getAppointmentCount();
    //store the list in an array
    Appointment[] aArray = new Appointment[counter];
    if (week != null && day != null) {
        //for loop to store list in array
        for (int aCount = 0; aCount < counter; aCount++) {
            aArray[aCount] = defaults.get(aCount);
            //out.println(aArray[aCount].getHdAptID());
        }
    }
%>

<header>
    <div class="container">
      <a href="HdLanding.jsp"><img src="https://cdn.discordapp.com/attachments/692467198655987833/804975854101725224/Picture1-removebg-preview.png
" alt="logo" class="logo"></a>

      <center>
	  <nav>
        <ul>
          <li><a href="HdLanding.jsp">Home</a></li>
          <li><a href="todayappointment.jsp">Appointment Lookup</a></li><br>
          <li><a href="ViewCustomer.jsp">List of Customers</a></li>
          <li><a href="recentappointment.jsp">Recent Appointments</a></li><br>
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

	<form action="http://localhost:8080/TheSalonProject/AppointmentDateLookupServlet" method="post" style="padding-top: 20px;">
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
               <%if (week != null && day != null) {%>
            Available appointments:
           <table border="2">
                <tr>
                    <th>Time</th>
                    <th>Id</th>
                    <th>Week</th>
                    <th>Day</th>
                    <th>Reserve</th>
                </tr>
                <%  for(int row=0; row < counter; row++) { %>
                <tr>
                    <td><input type="text" name="timeTb" value="<%= aArray[row].getAptTime()%>"readonly></td>
                    <td><input type="text" name="hdAptIdTb" value="<%= aArray[row].getHdAptID()%>"readonly></td>
                    <td><input type="text" name="weekTb" value="<%= aArray[row].getWeek()%>"readonly></td>
                    <td><input type="text" name="dayTb" value="<%= aArray[row].getAptDays()%>"readonly></td>
                    <td><input type="text" name="reserveTb" value="<%= aArray[row].getReserved()%>"readonly></td>
                </tr>
                <% } }%>
            </table>
</body>
</html>