<%-- 
    Document   : login
    Created on : Feb 15, 2021, 5:37:45 PM
    Author     : renel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        	<link rel="stylesheet" href="StyleSheets/adminlogin.css">
    </head>

<body>
    <h2>Admin Login Page</h2><br>
    <div class="login">
	<center>
    <form name="loginForm" action="http://localhost:8080/TheSalonProject/LoginServletAdminDB" method="post">
        <label style="padding-right: 214px;"><b>User Name:</b></label>
        <input type="text" name="idtb" id="Uname" placeholder="Username" required>
        <br><br>
        <label><b>Password:</b></label>
        <input type="Password" name="pwtb" id="Pass" placeholder="Password" required>
        <br><br>
        <input type="submit" value="Login"></input>
        <br><br>
        <span><input type="checkbox" id="check">Remember me</span>
        <br><br>
        <a href="">Forgot Password?</a>
    </form>
	</center>
</div>
</body>
</html>