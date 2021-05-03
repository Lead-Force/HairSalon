<%-- 
    Document   : HomePage
    Created on : Apr 27, 2021, 9:37:11 PM
    Author     : kimmy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Home - The Hair Salon</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="home.css">
</head>


<header>
    <div class="container">
      <a href="HomePage.jsp"><img src="https://raw.githubusercontent.com/Lead-Force/HairSalon/FE/Resources/image.png" alt="logo" class="logo"></a>

      <nav>
        <ul>
          <li><a href="HomePage.jsp">Home</a></li>
          <li><a href="servicepage.jsp">Services</a></li>
          <li><a href="bookappt.jsp">Book Appointment</a></li>
          
          <li>
			<div class="dropdown">
				<button class="dropbtn">Login</button>
				<div class="dropdown-content">
					<a href="THSLogin.jsp">Customer</a>
					<a href="Employee/employeelogin.html">Employee</a>
					<a href="Admin/adminlogin.html">Admin</a>
				</div>
			</div>
		  </li>
		</ul>
      </nav>
    </div>
</header>

<body>

<div class="container1" id="home">
  <div class="content">
  &nbsp;
  
  <h3 style="text-align:center; color:#990000;">
  Welcome to The Hair Salon, the premier hair and make-up salon in Kennesaw, GA.</h3>
  <h5>Step into our salon and experience the most contemporary hair cutting, coloring, and designing techniques in demand today.
  Our talented team of devoted stylist has dedicated their time by continuing their education to ensure you have the latest up to date style.
  Come in and enjoy the most modern salon.
  </h5>
  
  &nbsp;
  
  <img src="https://media.discordapp.net/attachments/804523300302618646/821091765963980810/beuhair_interior.jpg?width=1692&height=781" style="width: 100%; height: 100%;" align="right"></img>
  
  <br><br><br><br>
  <br><br><br><br>
  <br><br><br><br>
  <br><br><br><br>
  <br><br><br><br>
  
  <h3 style="text-align:center; color:DarkBlue;">Want to checkout all the Services that we offer? Click <a href="servicepage.jsp">here</a> or the Services tab in top menu!</h3>
  
  </div>
  
  <br>
  <br>
  
  <div class="content" style="position: relative; text-align: center; color: black; width:100%; height: 100%;">
	<img src="https://media.discordapp.net/attachments/804523300302618646/821091765607071804/design.jpg" style="width:100%; height: 420px; opacity:0.30;">
	  <div class="centered" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
	  <h2 style="text-align:center; color:#990000">Testimonials</h2>

	  <h6 style="text-align:center; margin: 0;"><b>“For years, I was looking for the perfect salon. THS exceeded my expectations and I’ve already scheduled my next appointment.”</b></h6>
	  <h6 style="text-align:center; margin: 0; padding-top: 15px;"><b>– Charlotte</b></h6>

	  <h6 style="text-align:center; margin: 0;  padding-top: 30px;"><b>“All of them are the best. I always walk out of the salon feeling like a million dollars.”</b></h6>
	  <h6 style="text-align:center; margin: 0;  padding-top: 10px;"><b>– Brielle</b></h6>

	  <h6 style="text-align:center; margin: 0;  padding-top: 30px;"><b>“My friend referred me to THS and I am so happy I decided to give it a try. My hair looks amazing and the manicure was excellent.”</b></h6>
	  <h6 style="text-align:center; margin: 0;  padding-top: 10px;"><b>– Chris</b></h6>
	  </div>
  
  </div>
  
</div>

<br>

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