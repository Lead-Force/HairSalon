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
        
<script type="text/javascript">
function validateForm() {
  var user = document.HDLoginForm.user.value;
  var psw = document.HDLoginForm.psw.value;
  
  if (user.length >20 || psw.length>20){
    alert("Username and password must be greater than 20 characters");
    document.HDLoginForm.user.focus();
    document.HDLoginForm.psw.focus();
  }
  
  if (user < 2000 || user > 4000) { 
    alert("User needs to be a number between 2000 and 4000");
    document.HDLoginForm.user.focus();
    document.HDLoginForm.psw.focus();
  }
  
  if (isNan(user)) { 
    alert("User needs to be a number");
    document.HDLoginForm.user.focus();
    document.HDLoginForm.psw.focus();
  }
}
</script>
</head>

<body>
    <br><br><h2>Employee Login Page</h2>
    <div class="login">
	<center>
    <form name="HDLoginForm" action="HDLoginServlet" method="post">
        <label style="padding-right: 214px;"><b>User Name:</b></label>
        <input type="text" name="user" id="user" placeholder="Username" onChange="validateForm()" required>
        <br><br>
        <label><b>Password:</b></label>
        <input type="Password" name="psw" id="psw" placeholder="Password" onChange="validateForm()" required>
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
