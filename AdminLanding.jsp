<%-- 
    Document   : AdminLanding
    Created on : Feb 16, 2021, 12:57:06 AM
    Author     : renel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1" content="text/html; charset=UTF-8">
        <title>Admin Landing</title>
        <link rel="stylesheet" href="StyleSheets/adminprofile.css">
    </head>
<header>
    <div class="container">
      <a href="AdminLanding.jsp"><img src="Resources/image.png" alt="logo" class="logo"></a>

      <center>
      <nav>
        <ul>
          <li><a href="AdminLanding.jsp">Home</a></li>
          <li><a href="cas.jsp">Make Schedule</a></li>
          <li><a href="hdManager.jsp">Manage New Hire</a></li>
          <li><a href="HomePage.jsp">Log Out</a></li>
        </ul>
      </nav>
      </center>
    </div>
</header>

<body>

<div class="main">
<br>
<h1>Welcome Admin</h1>

<center>
	  <a href="cas.jsp">
		<div class="tile">
			<img src="Resources/schedule.png" height="120" width="120" style="padding-left: 10px;"></img>
			<p style="margin: 0; color: black;">Make Schedule</p>
		</div>
	  </a>
	  
	  <a href="hdManager.jsp">
		<div class="tile1">
			<img src="Resources/new employee.jpg" height="120" width="120"></img>
			<p style="margin: 0; color: black;">Manage New Hire</p>
		</div>
</center>

</div>

</body>
    
</html>