<%-- 
    Document   : adminlogin
    Created on : Apr 12, 2021, 12:39:27 PM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
	<link rel="stylesheet" href="../Stylesheets/adminlogin.css">
</head>

<body>
    <br><br><h2>Admin Login Page</h2>
    <div class="login">
	<center>
    <form name="loginForm" action="http://localhost:8080/THS/LoginServletAdminDB" method="post">
        <label style="padding-right: 214px;"><b>User Name:</b></label>
        <input type="text" name="Uname" id="Uname" placeholder="Username" required>
        <br><br>
        <label><b>Password:</b></label>
        <input type="Password" name="Pass" id="Pass" placeholder="Password" required>
        <br><br><br>
        <button type="submit">LOGIN</button>
        <br><br>
        <span><input type="checkbox" id="check">Remember me</span>
        <br><br>
        <a href="">Forgot Password?</a>
    </form>
	</center>
</div>
</body>
</html>