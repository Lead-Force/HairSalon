<%-- 
    Document   : employeelogin
    Created on : Apr 12, 2021, 10:46:24 AM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Employee Login</title>
	<link rel="stylesheet" href="Stylesheets\employeelogin.css">
</head>

<body>
    <br><br><h2>Employee Login Page</h2>
    <div class="login">
	<center>
    <form action="HDLoginServlet" method="post">
        <label style="padding-right: 214px;"><b>User Name:</b></label>
        <input type="text" name="user" id="user" placeholder="Username" required>
        <br><br>
        <label><b>Password:</b></label>
        <input type="Password" name="psw" id="psw" placeholder="Password" required>
        <br><br><br>
        <button type="submit">LOGIN</button>
        <br><br>
        <span><input type="checkbox" id="check">Remember me</span>
        <br><br>
    </form>
	</center>
</div>
</body>
</html>