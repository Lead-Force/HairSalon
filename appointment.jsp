<%-- 
    Document   : appointment
    Created on : Apr 12, 2021, 10:13:43 AM
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
<link rel="stylesheet" href="../Stylesheets/home.css">
</head>


<header>
    <div class="container">
      <a href="home.jsp"><img src="../Resources/Logo3.jpg" alt="logo" class="logo"></a>

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
					<a href="../Employee/employeelogin.html">Employee</a>
					<a href="../Admin/adminlogin.html">Admin</a>
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

	<h3 style="color: red; text-align: center;">* Dear customer, Please Make sure that you are logged in first. Thank you!</h3>

	<form action="" method="post" style="padding-top: 20px;">
	  <center>
		<label for="apptTime"><b>Date/Time:</b></label>
		<input type="datetime-local" placeholder="Schedule a Time" name="apptTime" style="height: auto; width: 222px;" required><br><br>
		
		<label for="CustID"><b>Customer ID:</b></label>
		<input type="number" min="0" placeholder="Enter your Customer ID Number" name="CustID" style="height: auto; width: 220px;" required><br><br>
		
		<label for="Hairdresser"><b>Hairdresser:</b></label>
		  <select name="Hairdresser" id="Hairdresser" style="height: auto; width: 228px;" required><br><br>
			<option value ="">Choose your Hairdresser</option>
			<option value="HD1">Hairdresser1</option>
			<option value="HD2">Hairdresser2</option>
			<option value="HD3">Hairdresser3</option>
			<option value="HD4">Hairdresser4</option>
			<option value="HD5">Hairdresser5</option>
			<option value="HD6">Hairdresser6</option>
		  </select><br><br>

		<label for="services">Services:</label>
		  <select name="service" id="service" style="height: auto; width: 228px;" required><br><br>
			<option value="">Choose your Service</option>
		  </select><br><br>
		  
		<label for="styletype">Type:</label>
		  <select name="type" id="type" style="height: auto; width: 228px;" required><br><br>
			<option value="">Choose you service type</option>
		  </select><br><br>
		
		<button type="submit">Submit</button>
	  </center>
	</form>

<script>

var subjectObject = {
  
  "Hair Services": {
    "Women’s Cut & Style - $35 to $43": [],
    "Men’s Cut & Style - $25 to $30": [],
    "Bang Trim - $10": [],
    "Shampoo & Blow Dry - $20 to $25": [],
    "Updo - $60 & up": [],
    "Children ages - $11 to $18 Depends on each cut": []
  },
  
  "Color Services": {
    "Touch up - $67": [],
    "Full Highlights - $85 & up": [],
    "Partial Highlights - $68 & up": [],
    "Balage - $40 & up": []
  },
  
  "Waxing": {
	"Eyebrows - $16": [],
	"Lip - $12": [],
	"Chin - $25": [],
	"Bikini - $40": []
  },
  
  "Retexturizers": {
	"Permanent Waves - $73 (+haircut)": [],
	"Special Wrap Perms - $90 (+haircut)": [],
	"partial Perms - $64 (+haircut)": [],
	"Keratin Treatments": [],
	"Keratin Express - $60 & up": [],
	"Cezanne - $150 & up": []
  },
  
  "Nail Services": {
	"Manicure - $24": [],
	"French Manicure - $27": [],
	"French Tip Wrap - $29": [],
	"Gel Manicure - $34": [],
	"French Gel Manicure - $37": [],
	"Polish Change Nails - $13": [],
	"Acrylic Full Set - $42": [],
	"Gel Tips Full Set - $50": [],
	"Fill Ins - $32": [],
	"Soak Off - $15": [],
	"Repairs - $5": [],
	"Spa Pedicure - $48": [],
	"with French Manicure - $50": [],
	"Polish Change Toes - $15": []
  },
  
  "Other Services": {
	"Make-up - $35": [],
	"Gift Certificates Available": []
  }
  
}
window.onload = function() {
  var subjectSel = document.getElementById("service");
  var topicSel = document.getElementById("type");
  for (var x in subjectObject) {
    subjectSel.options[subjectSel.options.length] = new Option(x, x);
  }
  subjectSel.onchange = function() {
    //empty Chapters- and Topics- dropdowns
    topicSel.length = 1;
    //display correct values
    for (var y in subjectObject[this.value]) {
      topicSel.options[topicSel.options.length] = new Option(y, y);
    }
  }
}
</script>

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
				<li><a href=""> <img src="../Resources/facebook.jpg" height="35" width="40" style="border-radius: 13%;"></img></a></li>
				<li><a href=""> <img src="../Resources/twitter.png" height="45" width="75" style="border-radius: 8%;"></img></a></li>
				<li><a href=""> <img src="../Resources/Instagram.jpg" height="35" width="40" style="border-radius: 13%;"></img></a></li>
			</ul>
		</section>

	</div>
</footer>

</body>
</html>