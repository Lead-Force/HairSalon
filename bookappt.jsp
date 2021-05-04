<%-- 
    Document   : bookappt
    Created on : Apr 14, 2021, 12:17:52 PM
    Author     : renel
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="BO.Strings"%>
<%@page import="BO.Appointment"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Book Appointment - The Hair Salon</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
        <link rel="stylesheet" href="StyleSheets/HomePage.css">
    </head>
    <%
   // Code that will get data from database and allow us to display to the JSP 
        // Get the selected day/week from the Servlet
        String week = (String) session.getAttribute("Week");
        String day = (String) session.getAttribute("Day");
        String service = (String) session.getAttribute("Service");//this doesnt work yet
        String customerId = (String) session.getAttribute("CustID");
        boolean test=false;
        if(week!=null){
        test = (Boolean) session.getAttribute("test"); 
        out.println("test"+test);
        }
        ArrayList<Appointment> table = new ArrayList<Appointment>();
        ArrayList<Appointment> table2 = new ArrayList<Appointment>();
        String g = null;
        String h =null;
        //more properties
        Appointment ia2 = (Appointment) session.getAttribute("ia1");
        String ia3 = null;
        //populate the list
        table = Appointment.getAllAppointment();
        //listsize
        int listSize = Appointment.getAppointmentCount();
        List<Appointment> defaults = new ArrayList<Appointment>();
        Appointment def0 = new Appointment("9", customerId, "02", false, week, day, service, "A");
        Appointment def1 = new Appointment("11", customerId, "03", false, week, day, service, "B");
        Appointment def2 = new Appointment("3", customerId, "04", false, week, day, service, "C");
        Appointment def3 = new Appointment("4", customerId, "05", false, week, day, service, "D");
        Appointment def4 = new Appointment("5", customerId, "04", false, week, day, service, "E");
                  //
        defaults.add(def0);
        defaults.add(def1);
        defaults.add(def2);
        defaults.add(def3);
        defaults.add(def4);
                    //
        int dSize = defaults.size();
        int counter = 5;
        for (int index = 0; index < listSize; index++) {
            table2.add(table.get(index));
            
                  //commented out for testing purposes      
            //out.println(" Table1"+table.get(index).getHdAptID()+ " Table2"+table.get(index).getHdAptID());
        }
        
       Appointment p = new Appointment();
for (ListIterator<Appointment> iterator = table2.listIterator(); iterator.hasNext();) {
                p = iterator.next();  
                if (p.getWeek().equals(week) && p.getAptDays().equals(day)) {
     
                    g = p.getReserved();
                    out.println(" p1's g: " + g);
                    Appointment p2 = new Appointment();
                    for (ListIterator<Appointment> iterator2 = defaults.listIterator(); iterator2.hasNext();) {
                        p2 = iterator2.next();
                        //Tell the next if statement to remove the inserted appointment
                        if (ia2 != null) {
                            g = ia2.getReserved();
                            out.println(" ia2's G:" + g);
                            iterator.remove();
                            //ia2 = null;
                        }
                        //remove 
                        if (g.equals(p2.getReserved())) {
                            out.println(" p2's reserve: " + p2.getReserved());
                            iterator2.remove();
                        }
                    }}}
        Appointment[] apptArray = new Appointment[5];
        for (int sCount = 0; sCount < defaults.size(); sCount++) {
                apptArray[sCount] = defaults.get(sCount);
               //out.println("table2" + table2.get(sCount));
               
        }   
%>

<header>
    <div class="container">
      <a href="HomePage.jsp"><img src="Resources/image.png" alt="logo" class="logo"></a>

      <nav>
        <ul>
          <li><a href="HomePage.jsp">Home</a></li>
          <li><a href="servicepage.jsp">Services</a></li>
          <li><a href="bookappt.jsp">Book Appointment</a></li>
          <li>
			<div class="dropdown">
				<button class="dropbtn">Login</button>
				<div class="dropdown-content">
					<a href="CustomerLogin.jsp">Customer</a>
					<a href="HdLogin.jsp">Employee</a>
					<a href="adminlogin.jsp">Admin</a>
				</div>
			</div>
		  </li>
		</ul>
      </nav>
    </div>
</header>

<body style="overflow:auto;">
<br><br>

	<form action="http://localhost:8080/TheSalonProject/BookAppointmentServlet" method="post" style="padding-top: 20px;">
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
                <label for="service"><b>Service:</b></label>
                <select name="ServiceSelect" style="height: auto; width: 190px;" required>
                  <option value="">Please choose your service type:</option>
                  <option value="Haircut">Haircut</option>
                  <option value="Color">Color</option>
                  <option value="Nails">Nails</option>
                </select>
                <br><br>
                <button>Go</button>
          </center>
        </form>
               <%
               
               %>
            Available appointments:
           <table border="2">
               <form name="insertApptForm" action="http://localhost:8080/TheSalonProject/BookAppointmentServlet2" method="post">
                <tr>
                    <th>Time</th>
                    <th>Id</th>
                    <th>Week</th>
                    <th>Day</th>
                    <th>Service</th>
                    <th>Reserve</th>
                    <th>Book</th>
                </tr>
                <% System.out.println("Step10 ok");for(int row=0; row < defaults.size(); row++) { %>
                <tr>
                    <td><input type="text" name="timeTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getAptTime()%>"/></td>
                    <td><input type="text" name="hdAptIdTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getHdAptID()%>"/></td>
                    <td><input type="text" name="weekTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getWeek()%>"/></td>
                    <td><input type="text" name="dayTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getAptDays()%>"/></td>
                    <td><input type="text" name="dayTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getService()%>"/></td>
                    <td><input type="text" name="reserveTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getReserved()%>"/></td>
                    <td><button type="submit" name="button" value="bookInsert<%=defaults.indexOf(apptArray[row])%>">Book at <%=apptArray[row].getAptTime()%></button></td>
                </tr>
                <% }%>
               
            </table>
</form>
            <% out.println(Strings.footer);%>
</body>
</html>