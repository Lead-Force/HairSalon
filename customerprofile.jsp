<%-- 
    Document   : customerprofile
    Created on : Apr 12, 2021, 10:16:09 AM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>My Profile - The Hair Salon</title>
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
				<button class="dropbtn">Profile</button>
				<div class="dropdown-content">
					<a href="customerprofile.html">My Profile</a>
					<a href="">Logout</a>
				</div>
			</div>
		  </li><br><br>
		</ul>
      </nav>
      </center>
    </div>
</header>

<body style="overflow:auto;">
	<br>
	  <h2>Welcome $User</h2>
		<p style="color:red; text-align:center;">*Please click edit to change your profile information an then save to save it in the system</p>
		<br>
		<center>
		<form name='' id='' action='' method='post' style="border: 2px solid black; border-width: auto; height: auto; width:500px;">
		<table border="0" cellpadding="5" cellspacing="0">
			<tr>
			<br>
				<td style="width: 50%; padding: 10px;">
					<label for="CustID"><b>Customer ID</b></label><br />
					<input name="CustID" type="number" min="0" style="height:20px;width:100%;max-width: 260px; text-align:left;" readonly/>
				</td>
			</tr>

			<tr> 
				<td>
					<label for="CUser"><b>Username</b></label><br />
					<input name="CUser" type="text" style="height:20px;width:100%;max-width: 182px; text-align:left;" readonly/>
				</td>
				
				<td>
					<label for="psw"><b>Password *</b></label><br />
					<input name="psw" type="text" style="height:20px;width:100%;max-width: 182px; text-align:left;" />
				</td>
			</tr>
			
			<tr>
				<td style="width: 50%; padding: 10px;">
					<label for="First_Name"><b>First name *</b></label><br />
					<input name="First_Name" type="text" style="height:20px;width:100%;max-width: 260px; text-align:left;" />
				</td>

				<td style="width: 50%; padding: 10px;">
					<label for="Last_Name"><b>Last name *</b></label><br />
					<input name="Last_Name" type="text" style="height:20px;width:100%;max-width: 260px; text-align:left;" />
				</td>
			</tr> 

			<tr> 
				<td style="width: 50%; padding: 10px;">
					<label for="Phone"><b>Phone No*</b></label><br />
					<input name="Phone" type="text" style="height:20px;width:100%;max-width: 260px; text-align:left;" />
				</td> 
				
				<td style="width: 50%; padding: 10px;">
					<label for="Email_Address"><b>Email *</b></label><br />
					<input name="Email_Address" type="text" style="height:20px;width:100%;max-width: 260px; text-align:left;" />
				</td>
			</tr> 
			
			<tr> 
				<td colspan="2">
					<label for="Address"><b>Address *</b></label><br />
					<input name="Address" type="text" style="height:20px;width:100%;max-width: 480px; text-align:left;" />
				</td>
			</tr>
						
			<tr>
				<td>
				<br>
					<input type="button" name='edit' value='Edit'>&emsp;&emsp;
					<input type="button" name='save' value='Save'>
				<br>
				<br>
				</td>
			</tr>
		</table>
			</form>
		</center>
			
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
			
$(document).ready(function(){

	$("form input[type=text],input[type=number],form input[type=checkbox]").prop("disabled",true);

	$("input[name=edit]").on("click",function(){
		$("input[type=text],input[type=number],input[type=checkbox],select").removeAttr("disabled");
	})

		 $("input[name=save]").on("click",function(){

			 $("input[type=text],input[type=number],input[type=checkbox],select").prop("disabled",true);
		 })

})

</script>

<br><br><br>

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