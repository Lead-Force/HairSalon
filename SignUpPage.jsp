<%-- 
    Document   : SignUpPage
    Created on : Apr 12, 2021, 12:51:49 PM
    Author     : krism
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../Stylesheets/signup.css">
</head>

<body>
<h1 style="text-align:center">Welcome New Users to THS Hair Salon!</h1>
<h3 style="text-align:center">Please take a moment to fill out the Form </h3>
 <img src="https://cdn.discordapp.com/attachments/692467198655987833/804975854101725224/Picture1-removebg-preview.png" alt="Avatar" width="247" height="300">
 
<form action="SignUpServlet" method = "post">
    
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

     <label for="CustID"><b>Customer ID Number</b></label>
    <input type="text" placeholder="Enter 4-6 digits for your Customer ID Number" name="CustID" required>
    
    <label for="FirstName"><b>First Name</b></label>
    <input type="text" placeholder="Enter your First Name" name="FirstName" required>
    
    <label for="LastName"><b>Last Name</b></label>
    <input type="text" placeholder="Enter your Last Name" name="LastName" required>
    
    <label for="Address"><b>Address</b></label>
    <input type="text" placeholder="Enter your Address" name="Address" required> 
   
    <label for="PhoneNo"><b>Phone Number</b></label>
    <input type="text" placeholder="Enter a valid Phone Number in (xxx)xxx-xxxx or xxx-xxx-xxxx Format" name="PhoneNo" required>
    
    <label for="Email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="Email" required>
    
    <label for="CUser"><b>Username</b></label>
    <input type="text" placeholder="Enter an Username" name="CUser" id="CUser" required>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    
    
        <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="login.jsp">Login</a>.</p>
   </div>

</form> 

</body>
</html>