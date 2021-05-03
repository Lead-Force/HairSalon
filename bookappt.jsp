<%-- 
    Document   : bookappt
    Created on : Apr 29, 2021, 1:14:32 AM
    Author     : kimmy
--%>

<%@page import="business.Customer"%>
<%@page import="business.AppointmentList"%>
<%@page import="business.Appointment"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="business.Strings"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>

<head>
<title>Book Appointment - The Hair Salon</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="home.css">
<style>
#button1{
width: 200px;
height: 30px;

}
#button2{
width: 200px;
height: 30px;
}
</style>
</head>
  <%
   // Code that will get data from database and allow us to display to the JSP 
   //customer stuff
    session = request.getSession();
    Customer c1 = (Customer)(session.getAttribute("customer"));
    String customerId=null;
        // Get the selected day/week from the Servlet
        
        String week = (String) session.getAttribute("Week");
        String day = (String) session.getAttribute("Day");
        String service = (String) session.getAttribute("Service");//this doesnt work yet
        if(c1!=null){
             customerId = c1.getCustID();
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

        Appointment def0 = new Appointment("01","9 AM", customerId,  false, week, day, service, "A");
        Appointment def1 = new Appointment("02","11 AM", customerId,  false, week, day, service, "B");
        Appointment def2 = new Appointment("03","3 PM", customerId,  false, week, day, service, "C");
        Appointment def3 = new Appointment("04","4 PM", customerId, false, week, day, service, "D");
        Appointment def4 = new Appointment("05","5 PM", customerId, false, week, day, service, "E");

        defaults.add(def0);
        defaults.add(def1);
        defaults.add(def2);
        defaults.add(def3);
        defaults.add(def4);

        int dSize = defaults.size();
        int counter = 5;

        for (int index = 0; index < listSize; index++) {
            table2.add(table.get(index));             
            System.out.println(" Table1"+table.get(index).getHdAptID()+ " Table2"+table.get(index).getHdAptID());
        }
        
       Appointment p = new Appointment();
for (ListIterator<Appointment> iterator = table2.listIterator(); iterator.hasNext();) {
                p = iterator.next();
                if (p.getWeek().equals(week) && p.getAptDays().equals(day)) {
                    g = p.getReserved();
                    System.out.println(" p1's g: " + g);
                    Appointment p2 = new Appointment();
                    for (ListIterator<Appointment> iterator2 = defaults.listIterator(); iterator2.hasNext();) {
                        p2 = iterator2.next();
                        //Tell the next if statement to remove the inserted appointment
                        if (ia2 != null) {
                            g = ia2.getReserved();
                            System.out.println(" ia2's G:" + g);
                            iterator.remove();
                            out.println("Your appointment at: "+ ia2.getAptTime()+ " was successfully booked"+ " on "+ ia2.getAptDays()+", "+ia2.getWeek());
                            ia2 = null;
                        }
                        //remove 
                        if (g.equals(p2.getReserved())) {
                            System.out.println(" p2's reserve: " + p2.getReserved());
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
      <a href="HomePage.jsp"><img src="https://raw.githubusercontent.com/Lead-Force/HairSalon/FE/Resources/image.png" alt="logo" class="logo"></a>

      <nav>
        <ul>
          <li><a href="HomeLogin.jsp">Home</a></li>
          <li><a href="servicelogin.jsp">Services</a></li>
          <li><a href="bookapptlogin.jsp">Book Appointment</a></li>
          <li><a href="DisplayAppts.jsp">Previous Appointment</a></li>
          <li>
			<div class="dropdown">
				<button class="dropbtn">Profile</button>
				<div class="dropdown-content">
					<a href="customerprofile.jsp">My Profile</a>
					<a href="THSLogin.jsp">Log Out</a>
				</div>
			</div>
		  </li>
		</ul>
      </nav>
    </div>
</header>


<body style="overflow:auto;">
<br><br>

		<form action="LookupAppointmentServlet" method="post" style="padding-top: 20px;">
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
                <button type="Submit" onclick="alert('Please Login First')">Go</button>
          </center>
        </form>
               <%
               %>
            Available appointments:
           <table border="2">
               <form name="insertApptForm" action="BookAppointmentServlet" method="post">
                <tr>
                    <th>Id</th>
                    <th>Time</th>
                    <th>Customer Id</th>
                    <th>Week</th>
                    <th>Day</th>
                    <th>Service</th>
                    <th>Reserve</th>
                    <th>Book</th>
                </tr>
                <% System.out.println("Step10 ok");for(int row=0; row < defaults.size(); row++) { %>
                <tr>
                    <td><input type="text" name="hdAptIdTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getHdAptID()%>"/></td>
                    <td><input type="text" name="timeTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getAptTime()%>"/></td>
                    <td><input type="text" name="CustID<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getCustID() %>"/></td>
                    <td><input type="text" name="weekTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getWeek()%>"/></td>
                    <td><input type="text" name="dayTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getAptDays()%>"/></td>
                    <td><input type="text" name="serviceTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getService()%>"/></td>
                    <td><input type="text" name="reserveTb<%=defaults.indexOf(apptArray[row])%>" value="<%= apptArray[row].getReserved()%>"/></td>
                    <td><button type="submit" name="button" value="bookInsert<%=defaults.indexOf(apptArray[row])%>">Book at <%=apptArray[row].getAptTime()%></button></td>
                </tr>
                <% }%>
               
            </table>
</form>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
           <footer class="page-footer page-footer-default">
	<div class="content">
		<section class="location" style="margin: 0;">
			<div class="address">
				<h4 class="name" itemprop="name">The Hair Salon (THS)</h4>
				<div class="street">123 Main Street</div>
                <div class="street2">Suite 108</div>
                <span class="city">Kennesaw,</span>
                <span class="state">GA</span>
                <span class="zip">30152</span>
			</div>
		</section>

		<section class="contact-info" style="margin: 0;">
				<h4>Contact Us</h4>
					<div class="practice">
						<div class="footer-pc-text">E-mail - <a href="mailto:info@thehairsalon.com">info@thehairsalon.com</a></div>
					</div>
                <h4 class="tel" itemprop="telephone">Phone - <a href="tel:+1-123-456-7890">123-456-7890</a></h4>
		</section>
		
		<section class="hours">
				<h4>Salon Hours:</h4>
					<center>
					<div class="days">
						<div class="day" itemprop="openingHoursSpecification" itemscope="" itemtype="http://schema.org/OpeningHoursSpecification" data-day="1">
							<link itemprop="dayOfWeek" href="http://schema.org/Monday">
							<span class="label" title="Monday">Mon</span>
							<span class="time">
								<time class="start" itemprop="opens" content="09:00:00">9:00 AM</time>
								<span class="sep">–</span>
								<time class="end" itemprop="closes" content="18:00:00">6:00 PM</time>
							</span>
						</div>
						
						<div class="day" itemprop="openingHoursSpecification" itemscope="" itemtype="http://schema.org/OpeningHoursSpecification" data-day="2">
							<link itemprop="dayOfWeek" href="http://schema.org/Tuesday">
							<span class="label" title="Tuesday">Tue</span>
							<span class="time">
								<time class="start" itemprop="opens" content="09:00:00">9:00 AM</time>
								<span class="sep">–</span>
								<time class="end" itemprop="closes" content="18:00:00">6:00 PM</time>
							</span>
						</div>
						
						<div class="day" itemprop="openingHoursSpecification" itemscope="" itemtype="http://schema.org/OpeningHoursSpecification" data-day="3">
							<link itemprop="dayOfWeek" href="http://schema.org/Wednesday">
							<span class="label" title="Wednesday">Wed</span>
							<span class="time">
								<time class="start" itemprop="opens" content="09:00:00">9:00 AM</time>
								<span class="sep">–</span>
								<time class="end" itemprop="closes" content="18:00:00">6:00 PM</time>
							</span>
						</div>
						
						<div class="day" itemprop="openingHoursSpecification" itemscope="" itemtype="http://schema.org/OpeningHoursSpecification" data-day="4">
							<link itemprop="dayOfWeek" href="http://schema.org/Thursday">
							<span class="label" title="Thursday">Thu</span>
							<span class="time">
								<time class="start" itemprop="opens" content="09:00:00">9:00 AM</time>
								<span class="sep">–</span>
								<time class="end" itemprop="closes" content="18:00:00">6:00 PM</time>
							</span>
						</div>
						
						<div class="day" itemprop="openingHoursSpecification" itemscope="" itemtype="http://schema.org/OpeningHoursSpecification" data-day="5">
							<link itemprop="dayOfWeek" href="http://schema.org/Friday">
							<span class="label" title="Friday">Fri</span>
							<span class="time">
								<time class="start" itemprop="opens" content="09:00:00">9:00 AM</time>
								<span class="sep">–</span>
								<time class="end" itemprop="closes" content="18:00:00">6:00 PM</time>
							</span>
						</div>
						
						<div class="day" itemprop="openingHoursSpecification" itemscope="" itemtype="http://schema.org/OpeningHoursSpecification" data-day="6">
							<link itemprop="dayOfWeek" href="http://schema.org/Friday">
							<span class="label" title="Saturday">Sat</span>
							<span class="time">
								<time class="start" itemprop="opens" content="10:00:00">10:00 AM</time>
								<span class="sep">–</span>
								<time class="end" itemprop="closes" content="18:00:00">6:00 PM</time>
							</span>
						</div>
						
						<div class="day" itemprop="openingHoursSpecification" itemscope="" itemtype="http://schema.org/OpeningHoursSpecification" data-day="7">
							<link itemprop="dayOfWeek" href="http://schema.org/Friday">
							<span class="label" title="Sunday" style="color:red;">Sun</span>
							<span class="time">
								<time class="start" itemprop="opens" content="10:00:00">10:00 AM</time>
								<span class="sep">–</span>
								<time class="end" itemprop="closes" content="18:00:00">6:00 PM</time>
							</span>
						</div>
					</div>
					</center>
		<br>
		<div class="fade_rule"></div>
		<br>
					
		</section>
		
		<section class="social" style="margin: 0;">
			<h4>Social Media</h4>
			<ul class="social-icons">
				<li><a href=""> <img src="https://media.discordapp.net/attachments/804523300302618646/821091772071149568/facebook.JPG" height="35" width="40" style="border-radius: 13%;"></img></a></li>
				<li><a href=""> <img src="https://cdn.discordapp.com/attachments/804523300302618646/821091849678749706/twitter.png" height="45" width="75" style="border-radius: 8%;"></img></a></li>
				<li><a href=""> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/768px-Instagram_logo_2016.svg.png" height="35" width="40" style="border-radius: 13%;"></img></a></li>
			</ul>
		</section>

	</div>
</footer>
</body>
</html>