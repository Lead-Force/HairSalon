<%-- 
    Document   : myprofile
    Created on : Apr 12, 2021, 10:58:19 AM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>My Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="Stylesheets\employee.css">
</head>


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

<body style="overflow:auto;">

<div class="main">
<br>
<h2>Welcome $User</h2>
<p style="color:red; text-align:center;">*Please click edit to change your profile information an then save to save it in the system</p>
<br>
<center>
<form name='' id='' action= "ProfileServlet" method='post' style="border: 2px solid black; border-width: auto; height: 270px; width:500px;">
<table border="0" cellpadding="5" cellspacing="0">
	<tr>
	<br>
		<td style="width: 50%; padding: 10px;">
			<label for="First_Name"><b>First name *</b></label><br />
			<input name="fname" type="text" style="height:20px;width:100%;max-width: 260px; text-align:left;" />
		</td>

		<td style="width: 50%; padding: 10px;">
			<label for="Last_Name"><b>Last name *</b></label><br />
			<input name="lname" type="text" style="height:20px;width:100%;max-width: 260px; text-align:left;" />
		</td>
	</tr> 

	<tr> 
		<td style="width: 50%; padding: 10px;">
			<label for="Phone"><b>Phone No*</b></label><br />
			<input name="phone" type="text" style="height:20px;width:100%;max-width: 260px; text-align:left;" />
		</td> 
		
		<td style="width: 50%; padding: 10px;">
			<label for="Email_Address"><b>Email *</b></label><br />
			<input name="email" type="text" style="height:20px;width:100%;max-width: 260px; text-align:left;" />
		</td>
	</tr> 
	
	<tr> 
		<td colspan="2">
			<label for="Address"><b>Address *</b></label><br />
			<input name="address" type="text" style="height:20px;width:100%;max-width: 480px; text-align:left;" />
		</td>
	</tr>
	
	<tr>
		<td>
		<br>
			<input type="button" name='edit' value='Edit'>&emsp;&emsp;
			<input type="submit" name='save' value='Save'>
		</td>
	</tr>
</table>
    </form>
</center>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
        
     $(document).ready(function(){

         $("form input[type=text],form input[type=checkbox]").prop("disabled",true);

         $("input[name=edit]").on("click",function(){

                 $("input[type=text],input[type=checkbox],select").removeAttr("disabled");
         })

         $("input[name=save]").on("click",function(){

             $("input[type=text],input[type=checkbox],select").prop("disabled",true);
         })

     })
    </script>
</div>
</body>
</html>