<%-- 
    Document   : appttime
    Created on : Apr 13, 2021, 2:02:35 PM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Book Appointment - The Hair Salon</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="Stylesheets/home.css">
</head>


<header>
    <div class="container">
      <a href="home.jsp"><img src="Resources/Logo3.jpg" alt="logo" class="logo"></a>

      <center>
	  <nav>
        <ul>
          <li><a href="home.jsp">Home</a></li>
          <li><a href="services.jsp">Services</a></li><br><br>
          <li><a href="appointment.jsp">Book Appointment</a></li>
          <li>
			<div class="dropdown">
				<button class="dropbtn">Login</button>
				<div class="dropdown-content">
					<a href="login.html">Customer</a>
					<a href="Employee/employeelogin.html">Employee</a>
					<a href="Admin/adminlogin.html">Admin</a>
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
<center>
<h3>list of Available Appointments</h3>

                            <table style="width: 400px; text-align: center">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>ApptTime</th>
                                        <th>ApptID</th>
                                        <th>Service</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    <tr>
                                        <td>04-13</td>
                                        <td>1 pm to 2pm</td>
                                        <td>9001</td>
                                        <td>Haircut</td>
                                    </tr>
                                    <tr>
                                        <td>04-13</td>
                                        <td>2 pm to 3pm</td>
                                        <td>9002</td>
                                        <td>Hair Color</td>
                                    </tr>
                                </tbody>
                            </table>
</center>
<br><br>

<footer class="page-footer page-footer-default">
	<div class="content" >
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
				<li><a href=""> <img src="Resources/facebook.jpg" height="35" width="40" style="border-radius: 13%;"></img></a></li>
				<li><a href=""> <img src="Resources/twitter.png" height="45" width="75" style="border-radius: 8%;"></img></a></li>
				<li><a href=""> <img src="Resources/Instagram.jpg" height="35" width="40" style="border-radius: 13%;"></img></a></li>
			</ul>
		</section>

	</div>
</footer>

</body>
</html>