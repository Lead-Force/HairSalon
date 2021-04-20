<%-- 
    Document   : login
    Created on : Apr 12, 2021, 12:46:16 PM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../Stylesheets/login.css">
</head>
<body>

<h1>Welcome to THS Hair Salon</h1>
<h2>Please Login</h2>

<form action= "CustomerServlet">
    
  <div class="imgcontainer">
    <img src="https://cdn.discordapp.com/attachments/692467198655987833/804975854101725224/Picture1-removebg-preview.png" alt="Avatar" width="247" height="300">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
      <br> <br>
      <label>Don't have an account yet?  <a href="SignUpPage.jsp">Sign Up</a></label>
    
    </label>
  </div>

  <div class="container">
    <input class="cancelbtn" type="button" onclick="javascript:window.location('HomePage.html')" value="Cancel" />
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

</body>
</html>