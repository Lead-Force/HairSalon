<%-- 
    Document   : services
    Created on : Apr 12, 2021, 10:18:13 AM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Services - The Hair Salon</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="../Stylesheets/home.css">
</head>


<header>
    <div class="container">
      <a href="home.jsp"><img src="../Resources/image.png" alt="logo" class="logo"></a>

      <center>
	  <nav>
        <ul>
          <li><a href="home.jsp">Home</a></li>
          <li><a href="services.jsp">Services</a></li>
          <li><a href="bookappt.jsp">Book Appointment</a></li>
          <li>
			<div class="dropdown">
				<button class="dropbtn">Login</button>
				<div class="dropdown-content">
					<a href="login.jsp">Customer</a>
					<a href="../Employee/employeelogin.html">Employee</a>
					<a href="../adminlogin.jsp">Admin</a>
				</div>
			</div>
		  </li><br><br>
		</ul>
      </nav>
      </center>
    </div>
</header>

<body style="overflow:auto; background-image: url('../Resources/background.jpg'); background-position: center; background-repeat: no-repeat; background-size: cover; position: relative;">

<div class="container2">
  <div class="item">
	<h2 style="color:Red;"><u>Hair Services</u></h2>
		<h5>Women’s Cut &amp; Style<div style="float: right;">$35-$43</div></h5>
		<h5>Men’s Cut &amp; Style<div style="float: right;">$25-$30</div></h5>
		<h5>Children up to age 11<div style="float: right;">$12</div></h5>
		<h5>Bang Trim<div style="float: right;">$10</div></h5>
		<h5>Shampoo &amp; Blow Dry<div style="float: right;">$20-$25</div></h5>
		<h5>Updo  <div style="float: right;">$60 &amp; up</div></h5>
		<h5>Children ages<div style="float: right;">$11-$18 Depends on each cut</div></h5>
  </div>
  
  &emsp;&emsp;
  
  <div class="item">
	<h2 style="color:Red;"><u>Color Services</u></h2>
		<h5>Touch up<div style="float:right;">$67</div></h5>
		<h5>Full Highlights<div style="float:right;">$85 &amp; up</div></h5>
		<h5>Partial Highlights<div style="float:right;float">$68 &amp; up</div></h5>
		<h5>Balage<div style="float:right;">$40 &amp; up</div></h5>
  </div>
  
  &emsp;&emsp;
  
  <div class="item">
	<h2 style="color:Red;"><u>Waxing</u></h2>
		<h5>Eyebrows<div style="float:right;">$16</div></h5>
		<h5>Lip<div style="float:right;">$12</div></h5>
		<h5>Chin<div style="float:right;">$25</div></h5>
		<h5>Bikini<div style="float:right;">$40</div></h5>
  </div>

  &emsp;&emsp;

  <div class="item">
	<img src="../Resources/scissors.png" alt="Scissors & Comb" height="100%" width="100%">
  </div>

  &emsp;&emsp;
  
  <div class="item">
	<img src="../Resources/wax.png" alt="Wax" height="60%" width="100%" style="padding-top: 90px;">
  </div>
  
  &emsp;&emsp;
  
  <div class="item">
	<h2 style="color:Red;"><u>Retexturizers</u></h2>
		<h5>Permanent Waves<div style="float:right;">$73 (+haircut)</div></h5>
		<h5>Special Wrap Perms<div style="float:right;">$90 (+ haircut)</div></h5>
		<h5>Partial Perms<div style="float:right;">$64 (+ haircut)</div></h5>
		<h5>Keratin Treatments</h5>
		<h5>Keratin Express<div style="float:right;">$60 &amp; up</div></h5>
		<h5>Cezanne<div style="float:right;">$150 &amp; up</div></h5>
  </div>

  &emsp;&emsp;
  
    <div class="item">
	<h2 style="color:Red;"><u>Nail Services</u></h2>
		<h5>Manicure<div style="float:right;">$24</div></h5>
		<h5>French Manicure<div style="float:right;">$27</div></h5>
		<h5>French Tip Wrap<div style="float:right;">$29</div></h5>
		<h5>Gel Manicure<div style="float:right;">$34</div></h5>
		<h5>French Gel Manicure<div style="float:right;d">$37</div></h5>
		<h5>Polish Change Nails<div style="float:right;">$13</div></h5>
		<h5>Acrylic Full Set<div style="float:right;">$42</div></h5>
		<h5>Gel Tips Full Set<div style="float:right;">$50</div></h5>
		<h5>Fill Ins<div style="float:right;">$32</div></h5>
		<h5>Soak Off<div style="float:right;">$15</div></h5>
		<h5>Repairs<div style="float:right;">$5</div></h5>
		<h5>Spa Pedicure<div style="float:right;">$48</div></h5>
		<h5>with French Manicure<div style="float:right;">$50</div></h5>
		<h5>Polish Change Toes<div style="float:right;">$15</div></h5>
  </div>

  &emsp;&emsp;

  <div class="item">
  <h2 style="color:Red;"><u>Other Services</u></h2>
		<h5>Make-up<div style="float:right;">$35</div></h5>
		<h5>Gift Certificates Available</h5>
  
  <br><br><br>
  <br><br><br>
  <br><br>
  
  <img src="../Resources/makeup.jpg" alt="Make-Up" height="30%" width="100%">
  </div>
  
</div>

<br>

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
				<li><a href=""> <img src="../Resources/facebook.jpg" height="35" width="40" style="border-radius: 13%;"></img></a></li>
				<li><a href=""> <img src="../Resources/twitter.png" height="45" width="75" style="border-radius: 8%;"></img></a></li>
				<li><a href=""> <img src="../Resources/Instagram.jpg" height="35" width="40" style="border-radius: 13%;"></img></a></li>
			</ul>
		</section>

	</div>
</footer>	

</body>
</html>
